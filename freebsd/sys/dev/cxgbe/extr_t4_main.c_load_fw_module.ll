; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_load_fw_module.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_load_fw_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.firmware = type { i32 }
%struct.fw_info = type { i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"unable to look up firmware information for chip %d.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.firmware**, %struct.firmware**)* @load_fw_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_fw_module(%struct.adapter* %0, %struct.firmware** %1, %struct.firmware** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.firmware**, align 8
  %7 = alloca %struct.firmware**, align 8
  %8 = alloca %struct.fw_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.firmware** %1, %struct.firmware*** %6, align 8
  store %struct.firmware** %2, %struct.firmware*** %7, align 8
  %9 = load %struct.firmware**, %struct.firmware*** %6, align 8
  store %struct.firmware* null, %struct.firmware** %9, align 8
  %10 = load %struct.firmware**, %struct.firmware*** %7, align 8
  %11 = icmp ne %struct.firmware** %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load %struct.firmware**, %struct.firmware*** %7, align 8
  store %struct.firmware* null, %struct.firmware** %13, align 8
  br label %14

14:                                               ; preds = %12, %3
  %15 = load %struct.adapter*, %struct.adapter** %5, align 8
  %16 = call i32 @chip_id(%struct.adapter* %15)
  %17 = call %struct.fw_info* @find_fw_info(i32 %16)
  store %struct.fw_info* %17, %struct.fw_info** %8, align 8
  %18 = load %struct.fw_info*, %struct.fw_info** %8, align 8
  %19 = icmp eq %struct.fw_info* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load %struct.adapter*, %struct.adapter** %5, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.adapter*, %struct.adapter** %5, align 8
  %25 = call i32 @chip_id(%struct.adapter* %24)
  %26 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %4, align 4
  br label %49

28:                                               ; preds = %14
  %29 = load %struct.fw_info*, %struct.fw_info** %8, align 8
  %30 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.firmware* @firmware_get(i32 %31)
  %33 = load %struct.firmware**, %struct.firmware*** %6, align 8
  store %struct.firmware* %32, %struct.firmware** %33, align 8
  %34 = load %struct.firmware**, %struct.firmware*** %6, align 8
  %35 = load %struct.firmware*, %struct.firmware** %34, align 8
  %36 = icmp ne %struct.firmware* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %28
  %38 = load %struct.firmware**, %struct.firmware*** %7, align 8
  %39 = icmp ne %struct.firmware** %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.fw_info*, %struct.fw_info** %8, align 8
  %42 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.firmware* @firmware_get(i32 %43)
  %45 = load %struct.firmware**, %struct.firmware*** %7, align 8
  store %struct.firmware* %44, %struct.firmware** %45, align 8
  br label %46

46:                                               ; preds = %40, %37
  store i32 0, i32* %4, align 4
  br label %49

47:                                               ; preds = %28
  %48 = load i32, i32* @ENOENT, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %46, %20
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.fw_info* @find_fw_info(i32) #1

declare dso_local i32 @chip_id(%struct.adapter*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local %struct.firmware* @firmware_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
