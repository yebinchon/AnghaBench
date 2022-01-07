; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_bios.c_bios_sigsearch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_bios.c_bios_sigsearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIOS_START = common dso_local global i64 0, align 8
@BIOS_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bios_sigsearch(i64 %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @BIOS_START, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %5
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @BIOS_START, align 8
  %20 = load i64, i64* @BIOS_SIZE, align 8
  %21 = add nsw i64 %19, %20
  %22 = icmp sle i64 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @BIOS_PADDRTOVADDR(i64 %24)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %12, align 8
  br label %36

27:                                               ; preds = %17, %5
  %28 = load i64, i64* %7, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i64, i64* @BIOS_START, align 8
  %32 = call i64 @BIOS_PADDRTOVADDR(i64 %31)
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %12, align 8
  br label %35

34:                                               ; preds = %27
  store i64 0, i64* %6, align 8
  br label %70

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %23
  %37 = load i64, i64* @BIOS_START, align 8
  %38 = load i64, i64* @BIOS_SIZE, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i64 @BIOS_PADDRTOVADDR(i64 %39)
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %13, align 8
  br label %42

42:                                               ; preds = %64, %36
  %43 = load i8*, i8** %12, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8*, i8** %13, align 8
  %51 = icmp ult i8* %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %42
  %53 = load i8*, i8** %12, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @bcmp(i8* %56, i8* %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %52
  %62 = load i8*, i8** %12, align 8
  %63 = call i64 @BIOS_VADDRTOPADDR(i8* %62)
  store i64 %63, i64* %6, align 8
  br label %70

64:                                               ; preds = %52
  %65 = load i32, i32* %10, align 4
  %66 = load i8*, i8** %12, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %12, align 8
  br label %42

69:                                               ; preds = %42
  store i64 0, i64* %6, align 8
  br label %70

70:                                               ; preds = %69, %61, %34
  %71 = load i64, i64* %6, align 8
  ret i64 %71
}

declare dso_local i64 @BIOS_PADDRTOVADDR(i64) #1

declare dso_local i32 @bcmp(i8*, i8*, i32) #1

declare dso_local i64 @BIOS_VADDRTOPADDR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
