; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_erase_flash_bank_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_erase_flash_bank_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_5__, %struct.e1000_nvm_info }
%struct.TYPE_5__ = type { i64 }
%struct.e1000_nvm_info = type { i32, i64 }
%union.ich8_hws_flash_status = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i64 }
%union.ich8_hws_flash_ctrl = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"e1000_erase_flash_bank_ich8lan\00", align 1
@ICH_FLASH_HSFSTS = common dso_local global i32 0, align 4
@ICH_FLASH_SEG_SIZE_256 = common dso_local global i64 0, align 8
@ICH_FLASH_SEG_SIZE_4K = common dso_local global i64 0, align 8
@ICH_FLASH_SEG_SIZE_8K = common dso_local global i64 0, align 8
@ICH_FLASH_SEG_SIZE_64K = common dso_local global i64 0, align 8
@E1000_ERR_NVM = common dso_local global i64 0, align 8
@ICH_FLASH_ERASE_COMMAND_TIMEOUT = common dso_local global i64 0, align 8
@e1000_pch_spt = common dso_local global i64 0, align 8
@ICH_FLASH_HSFCTL = common dso_local global i32 0, align 4
@ICH_CYCLE_ERASE = common dso_local global i32 0, align 4
@ICH_FLASH_FADDR = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@ICH_FLASH_CYCLE_REPEAT_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i64)* @e1000_erase_flash_bank_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_erase_flash_bank_ich8lan(%struct.e1000_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.e1000_nvm_info*, align 8
  %7 = alloca %union.ich8_hws_flash_status, align 8
  %8 = alloca %union.ich8_hws_flash_ctrl, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 1
  store %struct.e1000_nvm_info* %18, %struct.e1000_nvm_info** %6, align 8
  %19 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %6, align 8
  %20 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %21, 2
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %10, align 8
  store i64 0, i64* %12, align 8
  %24 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %26 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %27 = call i8* @E1000_READ_FLASH_REG16(%struct.e1000_hw* %25, i32 %26)
  %28 = bitcast %union.ich8_hws_flash_status* %7 to i8**
  store i8* %27, i8** %28, align 8
  %29 = bitcast %union.ich8_hws_flash_status* %7 to %struct.TYPE_6__*
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %43 [
    i32 0, label %32
    i32 1, label %37
    i32 2, label %39
    i32 3, label %41
  ]

32:                                               ; preds = %2
  %33 = load i64, i64* @ICH_FLASH_SEG_SIZE_256, align 8
  store i64 %33, i64* %15, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @ICH_FLASH_SEG_SIZE_256, align 8
  %36 = sdiv i64 %34, %35
  store i64 %36, i64* %14, align 8
  br label %46

37:                                               ; preds = %2
  %38 = load i64, i64* @ICH_FLASH_SEG_SIZE_4K, align 8
  store i64 %38, i64* %15, align 8
  store i64 1, i64* %14, align 8
  br label %46

39:                                               ; preds = %2
  %40 = load i64, i64* @ICH_FLASH_SEG_SIZE_8K, align 8
  store i64 %40, i64* %15, align 8
  store i64 1, i64* %14, align 8
  br label %46

41:                                               ; preds = %2
  %42 = load i64, i64* @ICH_FLASH_SEG_SIZE_64K, align 8
  store i64 %42, i64* %15, align 8
  store i64 1, i64* %14, align 8
  br label %46

43:                                               ; preds = %2
  %44 = load i64, i64* @E1000_ERR_NVM, align 8
  %45 = sub nsw i64 0, %44
  store i64 %45, i64* %3, align 8
  br label %163

46:                                               ; preds = %41, %39, %37, %32
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %48 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i64, i64* %10, align 8
  br label %56

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i64 [ %54, %53 ], [ 0, %55 ]
  %58 = load i64, i64* %9, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %9, align 8
  store i64 0, i64* %13, align 8
  br label %60

60:                                               ; preds = %158, %56
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* %14, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %161

64:                                               ; preds = %60
  br label %65

65:                                               ; preds = %152, %64
  %66 = load i64, i64* @ICH_FLASH_ERASE_COMMAND_TIMEOUT, align 8
  store i64 %66, i64* %16, align 8
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %68 = call i64 @e1000_flash_cycle_init_ich8lan(%struct.e1000_hw* %67)
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %11, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i64, i64* %11, align 8
  store i64 %72, i64* %3, align 8
  br label %163

73:                                               ; preds = %65
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %75 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @e1000_pch_spt, align 8
  %79 = icmp sge i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %82 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %83 = call i32 @E1000_READ_FLASH_REG(%struct.e1000_hw* %81, i32 %82)
  %84 = ashr i32 %83, 16
  %85 = bitcast %union.ich8_hws_flash_ctrl* %8 to i32*
  store i32 %84, i32* %85, align 4
  br label %92

86:                                               ; preds = %73
  %87 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %88 = load i32, i32* @ICH_FLASH_HSFCTL, align 4
  %89 = call i8* @E1000_READ_FLASH_REG16(%struct.e1000_hw* %87, i32 %88)
  %90 = ptrtoint i8* %89 to i32
  %91 = bitcast %union.ich8_hws_flash_ctrl* %8 to i32*
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %86, %80
  %93 = load i32, i32* @ICH_CYCLE_ERASE, align 4
  %94 = bitcast %union.ich8_hws_flash_ctrl* %8 to %struct.TYPE_4__*
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %97 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @e1000_pch_spt, align 8
  %101 = icmp sge i64 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %92
  %103 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %104 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %105 = bitcast %union.ich8_hws_flash_ctrl* %8 to i32*
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 %106, 16
  %108 = sext i32 %107 to i64
  %109 = call i32 @E1000_WRITE_FLASH_REG(%struct.e1000_hw* %103, i32 %104, i64 %108)
  br label %116

110:                                              ; preds = %92
  %111 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %112 = load i32, i32* @ICH_FLASH_HSFCTL, align 4
  %113 = bitcast %union.ich8_hws_flash_ctrl* %8 to i32*
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @E1000_WRITE_FLASH_REG16(%struct.e1000_hw* %111, i32 %112, i32 %114)
  br label %116

116:                                              ; preds = %110, %102
  %117 = load i64, i64* %13, align 8
  %118 = load i64, i64* %15, align 8
  %119 = mul nsw i64 %117, %118
  %120 = load i64, i64* %9, align 8
  %121 = add nsw i64 %120, %119
  store i64 %121, i64* %9, align 8
  %122 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %123 = load i32, i32* @ICH_FLASH_FADDR, align 4
  %124 = load i64, i64* %9, align 8
  %125 = call i32 @E1000_WRITE_FLASH_REG(%struct.e1000_hw* %122, i32 %123, i64 %124)
  %126 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %127 = load i64, i64* %16, align 8
  %128 = call i64 @e1000_flash_cycle_ich8lan(%struct.e1000_hw* %126, i64 %127)
  store i64 %128, i64* %11, align 8
  %129 = load i64, i64* %11, align 8
  %130 = load i64, i64* @E1000_SUCCESS, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %116
  br label %157

133:                                              ; preds = %116
  %134 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %135 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %136 = call i8* @E1000_READ_FLASH_REG16(%struct.e1000_hw* %134, i32 %135)
  %137 = bitcast %union.ich8_hws_flash_status* %7 to i8**
  store i8* %136, i8** %137, align 8
  %138 = bitcast %union.ich8_hws_flash_status* %7 to %struct.TYPE_6__*
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %133
  br label %152

143:                                              ; preds = %133
  %144 = bitcast %union.ich8_hws_flash_status* %7 to %struct.TYPE_6__*
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %143
  %149 = load i64, i64* %11, align 8
  store i64 %149, i64* %3, align 8
  br label %163

150:                                              ; preds = %143
  br label %151

151:                                              ; preds = %150
  br label %152

152:                                              ; preds = %151, %142
  %153 = load i64, i64* %12, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %12, align 8
  %155 = load i64, i64* @ICH_FLASH_CYCLE_REPEAT_COUNT, align 8
  %156 = icmp slt i64 %154, %155
  br i1 %156, label %65, label %157

157:                                              ; preds = %152, %132
  br label %158

158:                                              ; preds = %157
  %159 = load i64, i64* %13, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %13, align 8
  br label %60

161:                                              ; preds = %60
  %162 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %162, i64* %3, align 8
  br label %163

163:                                              ; preds = %161, %148, %71, %43
  %164 = load i64, i64* %3, align 8
  ret i64 %164
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i8* @E1000_READ_FLASH_REG16(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1000_flash_cycle_init_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_READ_FLASH_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_FLASH_REG(%struct.e1000_hw*, i32, i64) #1

declare dso_local i32 @E1000_WRITE_FLASH_REG16(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_flash_cycle_ich8lan(%struct.e1000_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
