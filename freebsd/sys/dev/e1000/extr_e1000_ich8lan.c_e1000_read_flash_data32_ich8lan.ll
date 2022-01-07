; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_read_flash_data32_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_read_flash_data32_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%union.ich8_hws_flash_status = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }
%union.ich8_hws_flash_ctrl = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@E1000_ERR_NVM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"e1000_read_flash_data_ich8lan\00", align 1
@ICH_FLASH_LINEAR_ADDR_MASK = common dso_local global i32 0, align 4
@e1000_pch_spt = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@ICH_FLASH_HSFSTS = common dso_local global i32 0, align 4
@ICH_CYCLE_READ = common dso_local global i32 0, align 4
@ICH_FLASH_FADDR = common dso_local global i32 0, align 4
@ICH_FLASH_READ_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@ICH_FLASH_FDATA0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Timeout error - flash cycle did not complete.\0A\00", align 1
@ICH_FLASH_CYCLE_REPEAT_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32, i32*)* @e1000_read_flash_data32_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_read_flash_data32_ich8lan(%struct.e1000_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %union.ich8_hws_flash_status, align 8
  %9 = alloca %union.ich8_hws_flash_ctrl, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load i64, i64* @E1000_ERR_NVM, align 8
  %14 = sub nsw i64 0, %13
  store i64 %14, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %15 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @ICH_FLASH_LINEAR_ADDR_MASK, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %21 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @e1000_pch_spt, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19, %3
  %27 = load i64, i64* @E1000_ERR_NVM, align 8
  %28 = sub nsw i64 0, %27
  store i64 %28, i64* %4, align 8
  br label %105

29:                                               ; preds = %19
  %30 = load i32, i32* @ICH_FLASH_LINEAR_ADDR_MASK, align 4
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %30, %31
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %34 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %32, %36
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %98, %29
  %39 = call i32 @usec_delay(i32 1)
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %41 = call i64 @e1000_flash_cycle_init_ich8lan(%struct.e1000_hw* %40)
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @E1000_SUCCESS, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %103

46:                                               ; preds = %38
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %48 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %49 = call i32 @E1000_READ_FLASH_REG(%struct.e1000_hw* %47, i32 %48)
  %50 = ashr i32 %49, 16
  %51 = bitcast %union.ich8_hws_flash_ctrl* %9 to i32*
  store i32 %50, i32* %51, align 4
  %52 = bitcast %union.ich8_hws_flash_ctrl* %9 to %struct.TYPE_7__*
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32 3, i32* %53, align 4
  %54 = load i32, i32* @ICH_CYCLE_READ, align 4
  %55 = bitcast %union.ich8_hws_flash_ctrl* %9 to %struct.TYPE_7__*
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %58 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %59 = bitcast %union.ich8_hws_flash_ctrl* %9 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 16
  %62 = call i32 @E1000_WRITE_FLASH_REG(%struct.e1000_hw* %57, i32 %58, i32 %61)
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %64 = load i32, i32* @ICH_FLASH_FADDR, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @E1000_WRITE_FLASH_REG(%struct.e1000_hw* %63, i32 %64, i32 %65)
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %68 = load i32, i32* @ICH_FLASH_READ_COMMAND_TIMEOUT, align 4
  %69 = call i64 @e1000_flash_cycle_ich8lan(%struct.e1000_hw* %67, i32 %68)
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* @E1000_SUCCESS, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %46
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %75 = load i32, i32* @ICH_FLASH_FDATA0, align 4
  %76 = call i32 @E1000_READ_FLASH_REG(%struct.e1000_hw* %74, i32 %75)
  %77 = load i32*, i32** %7, align 8
  store i32 %76, i32* %77, align 4
  br label %103

78:                                               ; preds = %46
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %80 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %81 = call i32 @E1000_READ_FLASH_REG16(%struct.e1000_hw* %79, i32 %80)
  %82 = bitcast %union.ich8_hws_flash_status* %8 to i32*
  store i32 %81, i32* %82, align 8
  %83 = bitcast %union.ich8_hws_flash_status* %8 to %struct.TYPE_8__*
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %98

88:                                               ; preds = %78
  %89 = bitcast %union.ich8_hws_flash_status* %8 to %struct.TYPE_8__*
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %88
  %94 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %103

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %97, %87
  %99 = load i64, i64* %12, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %12, align 8
  %101 = load i64, i64* @ICH_FLASH_CYCLE_REPEAT_COUNT, align 8
  %102 = icmp slt i64 %99, %101
  br i1 %102, label %38, label %103

103:                                              ; preds = %98, %93, %73, %45
  %104 = load i64, i64* %11, align 8
  store i64 %104, i64* %4, align 8
  br label %105

105:                                              ; preds = %103, %26
  %106 = load i64, i64* %4, align 8
  ret i64 %106
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i64 @e1000_flash_cycle_init_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_READ_FLASH_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_FLASH_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_flash_cycle_ich8lan(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_READ_FLASH_REG16(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
