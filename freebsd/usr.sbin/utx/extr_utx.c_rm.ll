; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/utx/extr_utx.c_rm.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/utx/extr_utx.c_rm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utmpx = type { i32, i32, i32 }

@DEAD_PROCESS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: Invalid identifier format\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @rm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rm(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.utmpx, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  %6 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %3, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %3, i32 0, i32 1
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %3, i32 0, i32 2
  %9 = load i32, i32* @DEAD_PROCESS, align 4
  store i32 %9, i32* %8, align 4
  store i32 0, i32* %5, align 4
  %10 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %3, i32 0, i32 1
  %11 = call i32 @gettimeofday(i32* %10, i32* null)
  br label %12

12:                                               ; preds = %52, %1
  %13 = load i8**, i8*** %2, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %55

16:                                               ; preds = %12
  %17 = load i8**, i8*** %2, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @strlen(i8* %18)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp ule i64 %20, 4
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %3, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8**, i8*** %2, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strncpy(i32 %24, i8* %26, i32 4)
  br label %44

28:                                               ; preds = %16
  %29 = load i64, i64* %4, align 8
  %30 = icmp ne i64 %29, 8
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = load i8**, i8*** %2, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %3, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @b16_pton(i8* %33, i32 %35, i32 4)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31, %28
  %39 = load i32, i32* @stderr, align 4
  %40 = load i8**, i8*** %2, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %41)
  store i32 1, i32* %5, align 4
  br label %52

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %22
  %45 = call i32* @pututxline(%struct.utmpx* %3)
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i8**, i8*** %2, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @perror(i8* %49)
  store i32 1, i32* %5, align 4
  br label %51

51:                                               ; preds = %47, %44
  br label %52

52:                                               ; preds = %51, %38
  %53 = load i8**, i8*** %2, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i32 1
  store i8** %54, i8*** %2, align 8
  br label %12

55:                                               ; preds = %12
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i64 @b16_pton(i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32* @pututxline(%struct.utmpx*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
