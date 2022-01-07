; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_update_tpeeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_update_tpeeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32* }
%struct.firmware = type { i32, i32 }

@TP_SRAM_OFFSET = common dso_local global i32 0, align 4
@TP_VERSION_MAJOR = common dso_local global i32 0, align 4
@TP_VERSION_MINOR = common dso_local global i32 0, align 4
@TPEEPROM_NAME = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"could not load TP EEPROM: unable to load %s\0A\00", align 1
@TP_SRAM_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%s length is wrong len=%d expected=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Protocol SRAM image updated in EEPROM to %d.%d.%d\0A\00", align 1
@TP_VERSION_MICRO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Protocol SRAM image update in EEPROM failed\0A\00", align 1
@FIRMWARE_UNLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @update_tpeeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_tpeeprom(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca [32 x i8], align 16
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = load i32, i32* @TP_SRAM_OFFSET, align 4
  %13 = call i32 @t3_seeprom_read(%struct.adapter* %11, i32 %12, i32* %4)
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @G_TP_VERSION_MAJOR(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @G_TP_VERSION_MINOR(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @TP_VERSION_MAJOR, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @TP_VERSION_MINOR, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %104

26:                                               ; preds = %21, %1
  %27 = load %struct.adapter*, %struct.adapter** %2, align 8
  %28 = call signext i8 @t3rev2char(%struct.adapter* %27)
  store i8 %28, i8* %9, align 1
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %30 = load i8*, i8** @TPEEPROM_NAME, align 8
  %31 = load i8, i8* %9, align 1
  %32 = call i32 @snprintf(i8* %29, i32 32, i8* %30, i8 signext %31)
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %34 = call %struct.firmware* @firmware_get(i8* %33)
  store %struct.firmware* %34, %struct.firmware** %3, align 8
  %35 = load %struct.firmware*, %struct.firmware** %3, align 8
  %36 = icmp eq %struct.firmware* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %26
  %38 = load %struct.adapter*, %struct.adapter** %2, align 8
  %39 = getelementptr inbounds %struct.adapter, %struct.adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %42 = call i32 (i32, i8*, ...) @device_printf(i32 %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %41)
  br label %104

43:                                               ; preds = %26
  %44 = load %struct.firmware*, %struct.firmware** %3, align 8
  %45 = getelementptr inbounds %struct.firmware, %struct.firmware* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 4
  store i32 %47, i32* %8, align 4
  %48 = load %struct.adapter*, %struct.adapter** %2, align 8
  %49 = load %struct.firmware*, %struct.firmware** %3, align 8
  %50 = getelementptr inbounds %struct.firmware, %struct.firmware* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.firmware*, %struct.firmware** %3, align 8
  %53 = getelementptr inbounds %struct.firmware, %struct.firmware* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @t3_check_tpsram(%struct.adapter* %48, i32 %51, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %43
  br label %100

59:                                               ; preds = %43
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @TP_SRAM_LEN, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load %struct.adapter*, %struct.adapter** %2, align 8
  %65 = getelementptr inbounds %struct.adapter, %struct.adapter* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @TP_SRAM_LEN, align 4
  %70 = call i32 (i32, i8*, ...) @device_printf(i32 %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %67, i32 %68, i32 %69)
  br label %104

71:                                               ; preds = %59
  %72 = load %struct.adapter*, %struct.adapter** %2, align 8
  %73 = getelementptr inbounds %struct.adapter, %struct.adapter* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load %struct.firmware*, %struct.firmware** %3, align 8
  %77 = getelementptr inbounds %struct.firmware, %struct.firmware* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.firmware*, %struct.firmware** %3, align 8
  %80 = getelementptr inbounds %struct.firmware, %struct.firmware* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @TP_SRAM_OFFSET, align 4
  %83 = call i32 @set_eeprom(i32* %75, i32 %78, i32 %81, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %71
  %87 = load %struct.adapter*, %struct.adapter** %2, align 8
  %88 = getelementptr inbounds %struct.adapter, %struct.adapter* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @TP_VERSION_MAJOR, align 4
  %91 = load i32, i32* @TP_VERSION_MINOR, align 4
  %92 = load i32, i32* @TP_VERSION_MICRO, align 4
  %93 = call i32 (i32, i8*, ...) @device_printf(i32 %89, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %91, i32 %92)
  br label %99

94:                                               ; preds = %71
  %95 = load %struct.adapter*, %struct.adapter** %2, align 8
  %96 = getelementptr inbounds %struct.adapter, %struct.adapter* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i32, i8*, ...) @device_printf(i32 %97, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %99

99:                                               ; preds = %94, %86
  br label %100

100:                                              ; preds = %99, %58
  %101 = load %struct.firmware*, %struct.firmware** %3, align 8
  %102 = load i32, i32* @FIRMWARE_UNLOAD, align 4
  %103 = call i32 @firmware_put(%struct.firmware* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %63, %37, %25
  ret void
}

declare dso_local i32 @t3_seeprom_read(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @G_TP_VERSION_MAJOR(i32) #1

declare dso_local i32 @G_TP_VERSION_MINOR(i32) #1

declare dso_local signext i8 @t3rev2char(%struct.adapter*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext) #1

declare dso_local %struct.firmware* @firmware_get(i8*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @t3_check_tpsram(%struct.adapter*, i32, i32) #1

declare dso_local i32 @set_eeprom(i32*, i32, i32, i32) #1

declare dso_local i32 @firmware_put(%struct.firmware*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
