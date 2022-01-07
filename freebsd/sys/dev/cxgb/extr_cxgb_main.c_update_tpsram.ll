; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_update_tpsram.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_update_tpsram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.firmware = type { i32, i32 }

@TPSRAM_NAME = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"could not load TP SRAM\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"updating TP SRAM\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"loading protocol SRAM failed\0A\00", align 1
@FIRMWARE_UNLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @update_tpsram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_tpsram(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca [32 x i8], align 16
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = call signext i8 @t3rev2char(%struct.adapter* %8)
  store i8 %9, i8* %6, align 1
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %11 = load i8*, i8** @TPSRAM_NAME, align 8
  %12 = load i8, i8* %6, align 1
  %13 = call i32 @snprintf(i8* %10, i32 32, i8* %11, i8 signext %12)
  %14 = load %struct.adapter*, %struct.adapter** %3, align 8
  %15 = call i32 @update_tpeeprom(%struct.adapter* %14)
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %17 = call %struct.firmware* @firmware_get(i8* %16)
  store %struct.firmware* %17, %struct.firmware** %4, align 8
  %18 = load %struct.firmware*, %struct.firmware** %4, align 8
  %19 = icmp eq %struct.firmware* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.adapter*, %struct.adapter** %3, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %2, align 4
  br label %62

26:                                               ; preds = %1
  %27 = load %struct.adapter*, %struct.adapter** %3, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %26
  %32 = load %struct.adapter*, %struct.adapter** %3, align 8
  %33 = load %struct.firmware*, %struct.firmware** %4, align 8
  %34 = getelementptr inbounds %struct.firmware, %struct.firmware* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.firmware*, %struct.firmware** %4, align 8
  %37 = getelementptr inbounds %struct.firmware, %struct.firmware* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @t3_check_tpsram(%struct.adapter* %32, i32 %35, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %57

43:                                               ; preds = %31
  %44 = load %struct.adapter*, %struct.adapter** %3, align 8
  %45 = load %struct.firmware*, %struct.firmware** %4, align 8
  %46 = getelementptr inbounds %struct.firmware, %struct.firmware* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @t3_set_proto_sram(%struct.adapter* %44, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load %struct.adapter*, %struct.adapter** %3, align 8
  %53 = getelementptr inbounds %struct.adapter, %struct.adapter* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %51, %43
  br label %57

57:                                               ; preds = %56, %42
  %58 = load %struct.firmware*, %struct.firmware** %4, align 8
  %59 = load i32, i32* @FIRMWARE_UNLOAD, align 4
  %60 = call i32 @firmware_put(%struct.firmware* %58, i32 %59)
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %57, %20
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local signext i8 @t3rev2char(%struct.adapter*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext) #1

declare dso_local i32 @update_tpeeprom(%struct.adapter*) #1

declare dso_local %struct.firmware* @firmware_get(i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @t3_check_tpsram(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t3_set_proto_sram(%struct.adapter*, i32) #1

declare dso_local i32 @firmware_put(%struct.firmware*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
