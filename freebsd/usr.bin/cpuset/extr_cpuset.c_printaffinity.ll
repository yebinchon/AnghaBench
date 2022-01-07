; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/cpuset/extr_cpuset.c_printaffinity.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/cpuset/extr_cpuset.c_printaffinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitset = type { i32 }

@level = common dso_local global i64 0, align 8
@which = common dso_local global i64 0, align 8
@id = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"getaffinity\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %jd%s mask: \00", align 1
@whichnames = common dso_local global i8** null, align 8
@levelnames = common dso_local global i32* null, align 8
@CPU_SETSIZE = common dso_local global i32 0, align 4
@dflag = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"getdomain\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"%s %jd%s domain policy: %s mask: \00", align 1
@policynames = common dso_local global i32* null, align 8
@DOMAINSET_SETSIZE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @printaffinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printaffinity() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* @level, align 8
  %5 = load i64, i64* @which, align 8
  %6 = load i64, i64* @id, align 8
  %7 = call i64 @cpuset_getaffinity(i64 %4, i64 %5, i64 %6, i32 4, i32* %2)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* @EXIT_FAILURE, align 4
  %11 = call i32 @err(i32 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %0
  %13 = load i8**, i8*** @whichnames, align 8
  %14 = load i64, i64* @which, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = load i64, i64* @id, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i32*, i32** @levelnames, align 8
  %20 = load i64, i64* @level, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %16, i32 %18, i32 %22)
  %24 = bitcast i32* %2 to %struct.bitset*
  %25 = load i32, i32* @CPU_SETSIZE, align 4
  %26 = call i32 @printset(%struct.bitset* %24, i32 %25)
  %27 = load i64, i64* @dflag, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %12
  br label %59

30:                                               ; preds = %12
  %31 = load i64, i64* @level, align 8
  %32 = load i64, i64* @which, align 8
  %33 = load i64, i64* @id, align 8
  %34 = call i64 @cpuset_getdomain(i64 %31, i64 %32, i64 %33, i32 4, i32* %1, i32* %3)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EXIT_FAILURE, align 4
  %38 = call i32 @err(i32 %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %30
  %40 = load i8**, i8*** @whichnames, align 8
  %41 = load i64, i64* @which, align 8
  %42 = getelementptr inbounds i8*, i8** %40, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = load i64, i64* @id, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i32*, i32** @levelnames, align 8
  %47 = load i64, i64* @level, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** @policynames, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %43, i32 %45, i32 %49, i32 %54)
  %56 = bitcast i32* %1 to %struct.bitset*
  %57 = load i32, i32* @DOMAINSET_SETSIZE, align 4
  %58 = call i32 @printset(%struct.bitset* %56, i32 %57)
  br label %59

59:                                               ; preds = %39, %29
  %60 = load i32, i32* @EXIT_SUCCESS, align 4
  %61 = call i32 @exit(i32 %60) #3
  unreachable
}

declare dso_local i64 @cpuset_getaffinity(i64, i64, i64, i32, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, ...) #1

declare dso_local i32 @printset(%struct.bitset*, i32) #1

declare dso_local i64 @cpuset_getdomain(i64, i64, i64, i32, i32*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
