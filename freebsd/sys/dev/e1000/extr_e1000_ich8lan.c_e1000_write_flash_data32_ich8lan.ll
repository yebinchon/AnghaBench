; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_write_flash_data32_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_write_flash_data32_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%union.ich8_hws_flash_status = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }
%union.ich8_hws_flash_ctrl = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"e1000_write_flash_data32_ich8lan\00", align 1
@e1000_pch_spt = common dso_local global i64 0, align 8
@ICH_FLASH_LINEAR_ADDR_MASK = common dso_local global i32 0, align 4
@E1000_ERR_NVM = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@ICH_FLASH_HSFSTS = common dso_local global i32 0, align 4
@ICH_FLASH_HSFCTL = common dso_local global i32 0, align 4
@ICH_CYCLE_WRITE = common dso_local global i32 0, align 4
@ICH_FLASH_FADDR = common dso_local global i32 0, align 4
@ICH_FLASH_FDATA0 = common dso_local global i32 0, align 4
@ICH_FLASH_WRITE_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Timeout error - flash cycle did not complete.\0A\00", align 1
@ICH_FLASH_CYCLE_REPEAT_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32, i32)* @e1000_write_flash_data32_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_write_flash_data32_ich8lan(%struct.e1000_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.ich8_hws_flash_status, align 8
  %9 = alloca %union.ich8_hws_flash_ctrl, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %12, align 8
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @e1000_pch_spt, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @ICH_FLASH_LINEAR_ADDR_MASK, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i64, i64* @E1000_ERR_NVM, align 8
  %26 = sub nsw i64 0, %25
  store i64 %26, i64* %4, align 8
  br label %130

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %3
  %29 = load i32, i32* @ICH_FLASH_LINEAR_ADDR_MASK, align 4
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %29, %30
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %33 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %31, %35
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %123, %28
  %38 = call i32 @usec_delay(i32 1)
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %40 = call i64 @e1000_flash_cycle_init_ich8lan(%struct.e1000_hw* %39)
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @E1000_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %128

45:                                               ; preds = %37
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %47 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @e1000_pch_spt, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %54 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %55 = call i32 @E1000_READ_FLASH_REG(%struct.e1000_hw* %53, i32 %54)
  %56 = ashr i32 %55, 16
  %57 = bitcast %union.ich8_hws_flash_ctrl* %9 to i32*
  store i32 %56, i32* %57, align 4
  br label %64

58:                                               ; preds = %45
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %60 = load i32, i32* @ICH_FLASH_HSFCTL, align 4
  %61 = call i8* @E1000_READ_FLASH_REG16(%struct.e1000_hw* %59, i32 %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = bitcast %union.ich8_hws_flash_ctrl* %9 to i32*
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %58, %52
  %65 = bitcast %union.ich8_hws_flash_ctrl* %9 to %struct.TYPE_6__*
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 3, i32* %66, align 4
  %67 = load i32, i32* @ICH_CYCLE_WRITE, align 4
  %68 = bitcast %union.ich8_hws_flash_ctrl* %9 to %struct.TYPE_6__*
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %71 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @e1000_pch_spt, align 8
  %75 = icmp sge i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %64
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %78 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %79 = bitcast %union.ich8_hws_flash_ctrl* %9 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 16
  %82 = call i32 @E1000_WRITE_FLASH_REG(%struct.e1000_hw* %77, i32 %78, i32 %81)
  br label %89

83:                                               ; preds = %64
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %85 = load i32, i32* @ICH_FLASH_HSFCTL, align 4
  %86 = bitcast %union.ich8_hws_flash_ctrl* %9 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @E1000_WRITE_FLASH_REG16(%struct.e1000_hw* %84, i32 %85, i32 %87)
  br label %89

89:                                               ; preds = %83, %76
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %91 = load i32, i32* @ICH_FLASH_FADDR, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @E1000_WRITE_FLASH_REG(%struct.e1000_hw* %90, i32 %91, i32 %92)
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %95 = load i32, i32* @ICH_FLASH_FDATA0, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @E1000_WRITE_FLASH_REG(%struct.e1000_hw* %94, i32 %95, i32 %96)
  %98 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %99 = load i32, i32* @ICH_FLASH_WRITE_COMMAND_TIMEOUT, align 4
  %100 = call i64 @e1000_flash_cycle_ich8lan(%struct.e1000_hw* %98, i32 %99)
  store i64 %100, i64* %11, align 8
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* @E1000_SUCCESS, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %89
  br label %128

105:                                              ; preds = %89
  %106 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %107 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %108 = call i8* @E1000_READ_FLASH_REG16(%struct.e1000_hw* %106, i32 %107)
  %109 = bitcast %union.ich8_hws_flash_status* %8 to i8**
  store i8* %108, i8** %109, align 8
  %110 = bitcast %union.ich8_hws_flash_status* %8 to %struct.TYPE_8__*
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  br label %123

115:                                              ; preds = %105
  %116 = bitcast %union.ich8_hws_flash_status* %8 to %struct.TYPE_8__*
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %115
  %121 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %128

122:                                              ; preds = %115
  br label %123

123:                                              ; preds = %122, %114
  %124 = load i64, i64* %12, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %12, align 8
  %126 = load i64, i64* @ICH_FLASH_CYCLE_REPEAT_COUNT, align 8
  %127 = icmp slt i64 %124, %126
  br i1 %127, label %37, label %128

128:                                              ; preds = %123, %120, %104, %44
  %129 = load i64, i64* %11, align 8
  store i64 %129, i64* %4, align 8
  br label %130

130:                                              ; preds = %128, %24
  %131 = load i64, i64* %4, align 8
  ret i64 %131
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i64 @e1000_flash_cycle_init_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_READ_FLASH_REG(%struct.e1000_hw*, i32) #1

declare dso_local i8* @E1000_READ_FLASH_REG16(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_FLASH_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLASH_REG16(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_flash_cycle_ich8lan(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
