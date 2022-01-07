; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_bitset_strscan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_bitset_strscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitset = type { i32* }

@.str = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bitset*, i32, i8*)* @bitset_strscan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitset_strscan(%struct.bitset* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.bitset*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.bitset* %0, %struct.bitset** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.bitset*, %struct.bitset** %4, align 8
  %12 = call i32 @BIT_ZERO(i32 %10, %struct.bitset* %11)
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %9, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %52, %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @__bitset_words(i32 %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %55

19:                                               ; preds = %14
  %20 = load i8*, i8** %9, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 44
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %9, align 8
  br label %52

27:                                               ; preds = %19
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.bitset*, %struct.bitset** %4, align 8
  %30 = getelementptr inbounds %struct.bitset, %struct.bitset* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = call i32 @sscanf(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %27
  br label %55

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %48, %42
  %44 = load i8*, i8** %9, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call i64 @isxdigit(i8 signext %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %9, align 8
  br label %43

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %24
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %14

55:                                               ; preds = %41, %14
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  ret i32 %61
}

declare dso_local i32 @BIT_ZERO(i32, %struct.bitset*) #1

declare dso_local i32 @__bitset_words(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i64 @isxdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
