; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_upgrade_fw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_upgrade_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32 }
%struct.firmware = type { i32, i64 }

@FW_FNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Could not find firmware image %s\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"installing firmware on card\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to install firmware: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@FIRMWARE_UNLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @upgrade_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upgrade_fw(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = load i32, i32* @FW_FNAME, align 4
  %8 = call %struct.firmware* @firmware_get(i32 %7)
  store %struct.firmware* %8, %struct.firmware** %4, align 8
  %9 = icmp eq %struct.firmware* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @FW_FNAME, align 4
  %15 = call i32 (i32, i8*, ...) @device_printf(i32 %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @ENOENT, align 4
  store i32 %16, i32* %2, align 4
  br label %59

17:                                               ; preds = %1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i32, i8*, ...) @device_printf(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %17
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = load %struct.firmware*, %struct.firmware** %4, align 8
  %25 = getelementptr inbounds %struct.firmware, %struct.firmware* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  %28 = load %struct.firmware*, %struct.firmware** %4, align 8
  %29 = getelementptr inbounds %struct.firmware, %struct.firmware* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @t3_load_fw(%struct.TYPE_5__* %23, i32* %27, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %22
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 (i32, i8*, ...) @device_printf(i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %54

40:                                               ; preds = %22
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = call i32 @t3_get_fw_version(%struct.TYPE_5__* %41, i32* %6)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @G_FW_VERSION_MAJOR(i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @G_FW_VERSION_MINOR(i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @G_FW_VERSION_MICRO(i32 %51)
  %53 = call i32 @snprintf(i32* %46, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %48, i32 %50, i32 %52)
  br label %54

54:                                               ; preds = %40, %34
  %55 = load %struct.firmware*, %struct.firmware** %4, align 8
  %56 = load i32, i32* @FIRMWARE_UNLOAD, align 4
  %57 = call i32 @firmware_put(%struct.firmware* %55, i32 %56)
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %54, %10
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.firmware* @firmware_get(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @t3_load_fw(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @t3_get_fw_version(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @G_FW_VERSION_MAJOR(i32) #1

declare dso_local i32 @G_FW_VERSION_MINOR(i32) #1

declare dso_local i32 @G_FW_VERSION_MICRO(i32) #1

declare dso_local i32 @firmware_put(%struct.firmware*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
