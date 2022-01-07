; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_write_flash_data_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_write_flash_data_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%union.ich8_hws_flash_status = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }
%union.ich8_hws_flash_ctrl = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"e1000_write_ich8_data\00", align 1
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32, i32, i64)* @e1000_write_flash_data_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_write_flash_data_ich8lan(%struct.e1000_hw* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %union.ich8_hws_flash_status, align 8
  %11 = alloca %union.ich8_hws_flash_ctrl, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %16 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @e1000_pch_spt, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 4
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @ICH_FLASH_LINEAR_ADDR_MASK, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %23
  %31 = load i64, i64* @E1000_ERR_NVM, align 8
  %32 = sub nsw i64 0, %31
  store i64 %32, i64* %5, align 8
  br label %163

33:                                               ; preds = %26
  br label %48

34:                                               ; preds = %4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = icmp sgt i32 %38, 2
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @ICH_FLASH_LINEAR_ADDR_MASK, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %37, %34
  %45 = load i64, i64* @E1000_ERR_NVM, align 8
  %46 = sub nsw i64 0, %45
  store i64 %46, i64* %5, align 8
  br label %163

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %33
  %49 = load i32, i32* @ICH_FLASH_LINEAR_ADDR_MASK, align 4
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %49, %50
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %53 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %51, %55
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %155, %48
  %58 = call i32 @usec_delay(i32 1)
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %60 = call i64 @e1000_flash_cycle_init_ich8lan(%struct.e1000_hw* %59)
  store i64 %60, i64* %14, align 8
  %61 = load i64, i64* %14, align 8
  %62 = load i64, i64* @E1000_SUCCESS, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %161

65:                                               ; preds = %57
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %67 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @e1000_pch_spt, align 8
  %71 = icmp sge i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %74 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %75 = call i32 @E1000_READ_FLASH_REG(%struct.e1000_hw* %73, i32 %74)
  %76 = ashr i32 %75, 16
  %77 = bitcast %union.ich8_hws_flash_ctrl* %11 to i32*
  store i32 %76, i32* %77, align 4
  br label %84

78:                                               ; preds = %65
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %80 = load i32, i32* @ICH_FLASH_HSFCTL, align 4
  %81 = call i8* @E1000_READ_FLASH_REG16(%struct.e1000_hw* %79, i32 %80)
  %82 = ptrtoint i8* %81 to i32
  %83 = bitcast %union.ich8_hws_flash_ctrl* %11 to i32*
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %78, %72
  %85 = load i32, i32* %8, align 4
  %86 = sub nsw i32 %85, 1
  %87 = bitcast %union.ich8_hws_flash_ctrl* %11 to %struct.TYPE_6__*
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @ICH_CYCLE_WRITE, align 4
  %90 = bitcast %union.ich8_hws_flash_ctrl* %11 to %struct.TYPE_6__*
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %93 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @e1000_pch_spt, align 8
  %97 = icmp sge i64 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %84
  %99 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %100 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %101 = bitcast %union.ich8_hws_flash_ctrl* %11 to i32*
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 16
  %104 = call i32 @E1000_WRITE_FLASH_REG(%struct.e1000_hw* %99, i32 %100, i32 %103)
  br label %111

105:                                              ; preds = %84
  %106 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %107 = load i32, i32* @ICH_FLASH_HSFCTL, align 4
  %108 = bitcast %union.ich8_hws_flash_ctrl* %11 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @E1000_WRITE_FLASH_REG16(%struct.e1000_hw* %106, i32 %107, i32 %109)
  br label %111

111:                                              ; preds = %105, %98
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %113 = load i32, i32* @ICH_FLASH_FADDR, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @E1000_WRITE_FLASH_REG(%struct.e1000_hw* %112, i32 %113, i32 %114)
  %116 = load i32, i32* %8, align 4
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  %119 = load i64, i64* %9, align 8
  %120 = trunc i64 %119 to i32
  %121 = and i32 %120, 255
  store i32 %121, i32* %13, align 4
  br label %125

122:                                              ; preds = %111
  %123 = load i64, i64* %9, align 8
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %13, align 4
  br label %125

125:                                              ; preds = %122, %118
  %126 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %127 = load i32, i32* @ICH_FLASH_FDATA0, align 4
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @E1000_WRITE_FLASH_REG(%struct.e1000_hw* %126, i32 %127, i32 %128)
  %130 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %131 = load i32, i32* @ICH_FLASH_WRITE_COMMAND_TIMEOUT, align 4
  %132 = call i64 @e1000_flash_cycle_ich8lan(%struct.e1000_hw* %130, i32 %131)
  store i64 %132, i64* %14, align 8
  %133 = load i64, i64* %14, align 8
  %134 = load i64, i64* @E1000_SUCCESS, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %125
  br label %161

137:                                              ; preds = %125
  %138 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %139 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %140 = call i8* @E1000_READ_FLASH_REG16(%struct.e1000_hw* %138, i32 %139)
  %141 = bitcast %union.ich8_hws_flash_status* %10 to i8**
  store i8* %140, i8** %141, align 8
  %142 = bitcast %union.ich8_hws_flash_status* %10 to %struct.TYPE_8__*
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %137
  br label %155

147:                                              ; preds = %137
  %148 = bitcast %union.ich8_hws_flash_status* %10 to %struct.TYPE_8__*
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %147
  %153 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %161

154:                                              ; preds = %147
  br label %155

155:                                              ; preds = %154, %146
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %15, align 4
  %158 = sext i32 %156 to i64
  %159 = load i64, i64* @ICH_FLASH_CYCLE_REPEAT_COUNT, align 8
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %57, label %161

161:                                              ; preds = %155, %152, %136, %64
  %162 = load i64, i64* %14, align 8
  store i64 %162, i64* %5, align 8
  br label %163

163:                                              ; preds = %161, %44, %30
  %164 = load i64, i64* %5, align 8
  ret i64 %164
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
