; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_read_flash_data_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_read_flash_data_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.ich8_hws_flash_status = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%union.ich8_hws_flash_ctrl = type { i8* }
%struct.TYPE_5__ = type { i32, i32 }

@E1000_ERR_NVM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"e1000_read_flash_data_ich8lan\00", align 1
@ICH_FLASH_LINEAR_ADDR_MASK = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@ICH_FLASH_HSFCTL = common dso_local global i32 0, align 4
@ICH_CYCLE_READ = common dso_local global i32 0, align 4
@ICH_FLASH_FADDR = common dso_local global i32 0, align 4
@ICH_FLASH_READ_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@ICH_FLASH_FDATA0 = common dso_local global i32 0, align 4
@ICH_FLASH_HSFSTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Timeout error - flash cycle did not complete.\0A\00", align 1
@ICH_FLASH_CYCLE_REPEAT_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32, i32, i32*)* @e1000_read_flash_data_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_read_flash_data_ich8lan(%struct.e1000_hw* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %union.ich8_hws_flash_status, align 8
  %11 = alloca %union.ich8_hws_flash_ctrl, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %13, align 4
  %16 = load i64, i64* @E1000_ERR_NVM, align 8
  %17 = sub nsw i64 0, %16
  store i64 %17, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %18 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %28, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sgt i32 %22, 2
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @ICH_FLASH_LINEAR_ADDR_MASK, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %21, %4
  %29 = load i64, i64* @E1000_ERR_NVM, align 8
  %30 = sub nsw i64 0, %29
  store i64 %30, i64* %5, align 8
  br label %122

31:                                               ; preds = %24
  %32 = load i32, i32* @ICH_FLASH_LINEAR_ADDR_MASK, align 4
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %32, %33
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %36 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %34, %38
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %114, %31
  %41 = call i32 @usec_delay(i32 1)
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %43 = call i64 @e1000_flash_cycle_init_ich8lan(%struct.e1000_hw* %42)
  store i64 %43, i64* %14, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* @E1000_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %120

48:                                               ; preds = %40
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %50 = load i32, i32* @ICH_FLASH_HSFCTL, align 4
  %51 = call i8* @E1000_READ_FLASH_REG16(%struct.e1000_hw* %49, i32 %50)
  %52 = bitcast %union.ich8_hws_flash_ctrl* %11 to i8**
  store i8* %51, i8** %52, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 %53, 1
  %55 = bitcast %union.ich8_hws_flash_ctrl* %11 to %struct.TYPE_5__*
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @ICH_CYCLE_READ, align 4
  %58 = bitcast %union.ich8_hws_flash_ctrl* %11 to %struct.TYPE_5__*
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %61 = load i32, i32* @ICH_FLASH_HSFCTL, align 4
  %62 = bitcast %union.ich8_hws_flash_ctrl* %11 to i8**
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @E1000_WRITE_FLASH_REG16(%struct.e1000_hw* %60, i32 %61, i8* %63)
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %66 = load i32, i32* @ICH_FLASH_FADDR, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @E1000_WRITE_FLASH_REG(%struct.e1000_hw* %65, i32 %66, i32 %67)
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %70 = load i32, i32* @ICH_FLASH_READ_COMMAND_TIMEOUT, align 4
  %71 = call i64 @e1000_flash_cycle_ich8lan(%struct.e1000_hw* %69, i32 %70)
  store i64 %71, i64* %14, align 8
  %72 = load i64, i64* %14, align 8
  %73 = load i64, i64* @E1000_SUCCESS, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %94

75:                                               ; preds = %48
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %77 = load i32, i32* @ICH_FLASH_FDATA0, align 4
  %78 = call i32 @E1000_READ_FLASH_REG(%struct.e1000_hw* %76, i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i32, i32* %13, align 4
  %83 = and i32 %82, 255
  %84 = load i32*, i32** %9, align 8
  store i32 %83, i32* %84, align 4
  br label %93

85:                                               ; preds = %75
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* %13, align 4
  %90 = and i32 %89, 65535
  %91 = load i32*, i32** %9, align 8
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %88, %85
  br label %93

93:                                               ; preds = %92, %81
  br label %120

94:                                               ; preds = %48
  %95 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %96 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %97 = call i8* @E1000_READ_FLASH_REG16(%struct.e1000_hw* %95, i32 %96)
  %98 = bitcast %union.ich8_hws_flash_status* %10 to i8**
  store i8* %97, i8** %98, align 8
  %99 = bitcast %union.ich8_hws_flash_status* %10 to %struct.TYPE_6__*
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  br label %114

104:                                              ; preds = %94
  %105 = bitcast %union.ich8_hws_flash_status* %10 to %struct.TYPE_6__*
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %104
  %110 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %120

111:                                              ; preds = %104
  br label %112

112:                                              ; preds = %111
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113, %103
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %15, align 4
  %117 = sext i32 %115 to i64
  %118 = load i64, i64* @ICH_FLASH_CYCLE_REPEAT_COUNT, align 8
  %119 = icmp slt i64 %117, %118
  br i1 %119, label %40, label %120

120:                                              ; preds = %114, %109, %93, %47
  %121 = load i64, i64* %14, align 8
  store i64 %121, i64* %5, align 8
  br label %122

122:                                              ; preds = %120, %28
  %123 = load i64, i64* %5, align 8
  ret i64 %123
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i64 @e1000_flash_cycle_init_ich8lan(%struct.e1000_hw*) #1

declare dso_local i8* @E1000_READ_FLASH_REG16(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_FLASH_REG16(%struct.e1000_hw*, i32, i8*) #1

declare dso_local i32 @E1000_WRITE_FLASH_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_flash_cycle_ich8lan(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_READ_FLASH_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
