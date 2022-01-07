; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_ucode.c_ucode_intel_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_ucode.c_ucode_intel_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucode_intel_header = type { i32, i32 }

@UCODE_INTEL_DEFAULT_DATA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucode_intel_header*, i64)* @ucode_intel_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucode_intel_verify(%struct.ucode_intel_header* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucode_intel_header*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ucode_intel_header* %0, %struct.ucode_intel_header** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ult i64 %10, 8
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %67

13:                                               ; preds = %2
  %14 = load %struct.ucode_intel_header*, %struct.ucode_intel_header** %4, align 8
  %15 = getelementptr inbounds %struct.ucode_intel_header, %struct.ucode_intel_header* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load i32, i32* @UCODE_INTEL_DEFAULT_DATA_SIZE, align 4
  %21 = sext i32 %20 to i64
  %22 = add i64 %21, 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %19, %13
  %25 = load %struct.ucode_intel_header*, %struct.ucode_intel_header** %4, align 8
  %26 = getelementptr inbounds %struct.ucode_intel_header, %struct.ucode_intel_header* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %67

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  %32 = srem i32 %31, 16
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %67

35:                                               ; preds = %30
  %36 = load i64, i64* %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %67

41:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  %42 = load %struct.ucode_intel_header*, %struct.ucode_intel_header** %4, align 8
  %43 = bitcast %struct.ucode_intel_header* %42 to i32*
  store i32* %43, i32** %7, align 8
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %59, %41
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = udiv i64 %48, 4
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %44
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %44

62:                                               ; preds = %44
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 1, i32* %3, align 4
  br label %67

66:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %65, %40, %34, %29, %12
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
