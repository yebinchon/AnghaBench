; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_i210.c_e1000_read_invm_word_i210.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_i210.c_e1000_read_invm_word_i210.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_ERR_INVM_VALUE_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"e1000_read_invm_word_i210\00", align 1
@E1000_INVM_SIZE = common dso_local global i64 0, align 8
@E1000_INVM_UNINITIALIZED_STRUCTURE = common dso_local global i64 0, align 8
@E1000_INVM_CSR_AUTOLOAD_STRUCTURE = common dso_local global i64 0, align 8
@E1000_INVM_CSR_AUTOLOAD_DATA_SIZE_IN_DWORDS = common dso_local global i64 0, align 8
@E1000_INVM_RSA_KEY_SHA256_STRUCTURE = common dso_local global i64 0, align 8
@E1000_INVM_RSA_KEY_SHA256_DATA_SIZE_IN_DWORDS = common dso_local global i64 0, align 8
@E1000_INVM_WORD_AUTOLOAD_STRUCTURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Read INVM Word 0x%02x = %x\00", align 1
@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Requested word 0x%02x not found in OTP\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i64, i64*)* @e1000_read_invm_word_i210 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_read_invm_word_i210(%struct.e1000_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load i64, i64* @E1000_ERR_INVM_VALUE_NOT_FOUND, align 8
  %13 = sub nsw i64 0, %12
  store i64 %13, i64* %7, align 8
  %14 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %9, align 8
  br label %15

15:                                               ; preds = %67, %3
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @E1000_INVM_SIZE, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %70

19:                                               ; preds = %15
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @E1000_INVM_DATA_REG(i64 %21)
  %23 = call i32 @E1000_READ_REG(%struct.e1000_hw* %20, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @INVM_DWORD_TO_RECORD_TYPE(i32 %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @E1000_INVM_UNINITIALIZED_STRUCTURE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %70

30:                                               ; preds = %19
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @E1000_INVM_CSR_AUTOLOAD_STRUCTURE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i64, i64* @E1000_INVM_CSR_AUTOLOAD_DATA_SIZE_IN_DWORDS, align 8
  %36 = load i64, i64* %9, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %9, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @E1000_INVM_RSA_KEY_SHA256_STRUCTURE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i64, i64* @E1000_INVM_RSA_KEY_SHA256_DATA_SIZE_IN_DWORDS, align 8
  %44 = load i64, i64* %9, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %9, align 8
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* @E1000_INVM_WORD_AUTOLOAD_STRUCTURE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @INVM_DWORD_TO_WORD_ADDRESS(i32 %51)
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %5, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @INVM_DWORD_TO_WORD_DATA(i32 %57)
  %59 = load i64*, i64** %6, align 8
  store i64 %58, i64* %59, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load i64*, i64** %6, align 8
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @DEBUGOUT2(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %60, i64 %62)
  %64 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %64, i64* %7, align 8
  br label %70

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %65, %46
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %9, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %9, align 8
  br label %15

70:                                               ; preds = %56, %29, %15
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @E1000_SUCCESS, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %75)
  br label %77

77:                                               ; preds = %74, %70
  %78 = load i64, i64* %7, align 8
  ret i64 %78
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_INVM_DATA_REG(i64) #1

declare dso_local i64 @INVM_DWORD_TO_RECORD_TYPE(i32) #1

declare dso_local i64 @INVM_DWORD_TO_WORD_ADDRESS(i32) #1

declare dso_local i64 @INVM_DWORD_TO_WORD_DATA(i32) #1

declare dso_local i32 @DEBUGOUT2(i8*, i64, i64) #1

declare dso_local i32 @DEBUGOUT1(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
