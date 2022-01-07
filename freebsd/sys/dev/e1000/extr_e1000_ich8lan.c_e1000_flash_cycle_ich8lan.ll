; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_flash_cycle_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_flash_cycle_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%union.ich8_hws_flash_ctrl = type { i32 }
%union.ich8_hws_flash_status = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"e1000_flash_cycle_ich8lan\00", align 1
@e1000_pch_spt = common dso_local global i64 0, align 8
@ICH_FLASH_HSFSTS = common dso_local global i32 0, align 4
@ICH_FLASH_HSFCTL = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@E1000_ERR_NVM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i64)* @e1000_flash_cycle_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_flash_cycle_ich8lan(%struct.e1000_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %union.ich8_hws_flash_ctrl, align 4
  %7 = alloca %union.ich8_hws_flash_status, align 8
  %8 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %8, align 8
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @e1000_pch_spt, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %18 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %19 = call i32 @E1000_READ_FLASH_REG(%struct.e1000_hw* %17, i32 %18)
  %20 = ashr i32 %19, 16
  %21 = bitcast %union.ich8_hws_flash_ctrl* %6 to i32*
  store i32 %20, i32* %21, align 4
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %24 = load i32, i32* @ICH_FLASH_HSFCTL, align 4
  %25 = call i8* @E1000_READ_FLASH_REG16(%struct.e1000_hw* %23, i32 %24)
  %26 = ptrtoint i8* %25 to i32
  %27 = bitcast %union.ich8_hws_flash_ctrl* %6 to i32*
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %22, %16
  %29 = bitcast %union.ich8_hws_flash_ctrl* %6 to %struct.TYPE_4__*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %32 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @e1000_pch_spt, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %39 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %40 = bitcast %union.ich8_hws_flash_ctrl* %6 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 16
  %43 = call i32 @E1000_WRITE_FLASH_REG(%struct.e1000_hw* %38, i32 %39, i32 %42)
  br label %50

44:                                               ; preds = %28
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %46 = load i32, i32* @ICH_FLASH_HSFCTL, align 4
  %47 = bitcast %union.ich8_hws_flash_ctrl* %6 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @E1000_WRITE_FLASH_REG16(%struct.e1000_hw* %45, i32 %46, i32 %48)
  br label %50

50:                                               ; preds = %44, %37
  br label %51

51:                                               ; preds = %63, %50
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %53 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %54 = call i8* @E1000_READ_FLASH_REG16(%struct.e1000_hw* %52, i32 %53)
  %55 = bitcast %union.ich8_hws_flash_status* %7 to i8**
  store i8* %54, i8** %55, align 8
  %56 = bitcast %union.ich8_hws_flash_status* %7 to %struct.TYPE_6__*
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %68

61:                                               ; preds = %51
  %62 = call i32 @usec_delay(i32 1)
  br label %63

63:                                               ; preds = %61
  %64 = load i64, i64* %8, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %5, align 8
  %67 = icmp slt i64 %64, %66
  br i1 %67, label %51, label %68

68:                                               ; preds = %63, %60
  %69 = bitcast %union.ich8_hws_flash_status* %7 to %struct.TYPE_6__*
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = bitcast %union.ich8_hws_flash_status* %7 to %struct.TYPE_6__*
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %79, i32* %3, align 4
  br label %83

80:                                               ; preds = %73, %68
  %81 = load i32, i32* @E1000_ERR_NVM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %80, %78
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_FLASH_REG(%struct.e1000_hw*, i32) #1

declare dso_local i8* @E1000_READ_FLASH_REG16(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_FLASH_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLASH_REG16(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @usec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
