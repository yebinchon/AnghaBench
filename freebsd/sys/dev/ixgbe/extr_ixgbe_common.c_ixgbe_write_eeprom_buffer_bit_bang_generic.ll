; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_write_eeprom_buffer_bit_bang_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_write_eeprom_buffer_bit_bang_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"ixgbe_write_eeprom_buffer_bit_bang_generic\00", align 1
@IXGBE_ERR_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@IXGBE_ERR_EEPROM = common dso_local global i64 0, align 8
@IXGBE_EEPROM_PAGE_SIZE_MAX = common dso_local global i64 0, align 8
@IXGBE_EEPROM_RD_BUFFER_MAX_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_write_eeprom_buffer_bit_bang_generic(%struct.ixgbe_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %12 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %12, i64* %9, align 8
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %17, align 8
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %20 = bitcast %struct.ixgbe_hw* %19 to %struct.ixgbe_hw.0*
  %21 = call i32 %18(%struct.ixgbe_hw.0* %20)
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i64, i64* @IXGBE_ERR_INVALID_ARGUMENT, align 8
  store i64 %25, i64* %9, align 8
  br label %90

26:                                               ; preds = %4
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = add nsw i64 %27, %28
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %31 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %29, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i64, i64* @IXGBE_ERR_EEPROM, align 8
  store i64 %36, i64* %9, align 8
  br label %90

37:                                               ; preds = %26
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %39 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @IXGBE_EEPROM_PAGE_SIZE_MAX, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @ixgbe_detect_eeprom_page_size_generic(%struct.ixgbe_hw* %48, i64 %49)
  br label %51

51:                                               ; preds = %47, %43, %37
  store i64 0, i64* %10, align 8
  br label %52

52:                                               ; preds = %85, %51
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %89

56:                                               ; preds = %52
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %10, align 8
  %59 = sub nsw i64 %57, %58
  %60 = load i64, i64* @IXGBE_EEPROM_RD_BUFFER_MAX_COUNT, align 8
  %61 = sdiv i64 %59, %60
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i64, i64* @IXGBE_EEPROM_RD_BUFFER_MAX_COUNT, align 8
  br label %69

65:                                               ; preds = %56
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %10, align 8
  %68 = sub nsw i64 %66, %67
  br label %69

69:                                               ; preds = %65, %63
  %70 = phi i64 [ %64, %63 ], [ %68, %65 ]
  store i64 %70, i64* %11, align 8
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* %10, align 8
  %74 = add nsw i64 %72, %73
  %75 = load i64, i64* %11, align 8
  %76 = load i64*, i64** %8, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = call i64 @ixgbe_write_eeprom_buffer_bit_bang(%struct.ixgbe_hw* %71, i64 %74, i64 %75, i64* %78)
  store i64 %79, i64* %9, align 8
  %80 = load i64, i64* %9, align 8
  %81 = load i64, i64* @IXGBE_SUCCESS, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %69
  br label %89

84:                                               ; preds = %69
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* @IXGBE_EEPROM_RD_BUFFER_MAX_COUNT, align 8
  %87 = load i64, i64* %10, align 8
  %88 = add nsw i64 %87, %86
  store i64 %88, i64* %10, align 8
  br label %52

89:                                               ; preds = %83, %52
  br label %90

90:                                               ; preds = %89, %35, %24
  %91 = load i64, i64* %9, align 8
  ret i64 %91
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixgbe_detect_eeprom_page_size_generic(%struct.ixgbe_hw*, i64) #1

declare dso_local i64 @ixgbe_write_eeprom_buffer_bit_bang(%struct.ixgbe_hw*, i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
