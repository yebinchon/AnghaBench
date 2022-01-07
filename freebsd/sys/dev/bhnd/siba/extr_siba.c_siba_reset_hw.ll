; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_reset_hw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_reset_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_devinfo = type { %struct.bhnd_resource** }
%struct.bhnd_resource = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@BHND_IOCTL_CLK_EN = common dso_local global i32 0, align 4
@BHND_IOCTL_CLK_FORCE = common dso_local global i32 0, align 4
@SIBA_TML_RESET = common dso_local global i32 0, align 4
@SIBA_TML_SICF_SHIFT = common dso_local global i32 0, align 4
@SIBA_CFG0_TMSTATELOW = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@SIBA_CFG0_TMSTATEHIGH = common dso_local global i32 0, align 4
@SIBA_TMH_SERR = common dso_local global i32 0, align 4
@SIBA_CFG0_IMSTATE = common dso_local global i32 0, align 4
@SIBA_IM_IBE = common dso_local global i32 0, align 4
@SIBA_IM_TO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i32)* @siba_reset_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siba_reset_hw(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.siba_devinfo*, align 8
  %11 = alloca %struct.bhnd_resource*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @device_get_parent(i64 %16)
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %5, align 4
  br label %113

22:                                               ; preds = %4
  %23 = load i64, i64* %7, align 8
  %24 = call %struct.siba_devinfo* @device_get_ivars(i64 %23)
  store %struct.siba_devinfo* %24, %struct.siba_devinfo** %10, align 8
  %25 = load %struct.siba_devinfo*, %struct.siba_devinfo** %10, align 8
  %26 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %25, i32 0, i32 0
  %27 = load %struct.bhnd_resource**, %struct.bhnd_resource*** %26, align 8
  %28 = getelementptr inbounds %struct.bhnd_resource*, %struct.bhnd_resource** %27, i64 0
  %29 = load %struct.bhnd_resource*, %struct.bhnd_resource** %28, align 8
  store %struct.bhnd_resource* %29, %struct.bhnd_resource** %11, align 8
  %30 = icmp eq %struct.bhnd_resource* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @ENODEV, align 4
  store i32 %32, i32* %5, align 4
  br label %113

33:                                               ; preds = %22
  %34 = load i32, i32* @BHND_IOCTL_CLK_EN, align 4
  %35 = load i32, i32* @BHND_IOCTL_CLK_FORCE, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %14, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %5, align 4
  br label %113

43:                                               ; preds = %33
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @bhnd_suspend_hw(i64 %44, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %15, align 4
  store i32 %49, i32* %5, align 4
  br label %113

50:                                               ; preds = %43
  %51 = load i32, i32* @SIBA_TML_RESET, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @SIBA_TML_SICF_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = or i32 %51, %54
  %56 = load i32, i32* @BHND_IOCTL_CLK_EN, align 4
  %57 = load i32, i32* @SIBA_TML_SICF_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = or i32 %55, %58
  %60 = load i32, i32* @BHND_IOCTL_CLK_FORCE, align 4
  %61 = load i32, i32* @SIBA_TML_SICF_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = or i32 %59, %62
  store i32 %63, i32* %12, align 4
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.siba_devinfo*, %struct.siba_devinfo** %10, align 8
  %66 = load i32, i32* @SIBA_CFG0_TMSTATELOW, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @UINT32_MAX, align 4
  %69 = call i32 @siba_write_target_state(i64 %64, %struct.siba_devinfo* %65, i32 %66, i32 %67, i32 %68)
  %70 = load %struct.bhnd_resource*, %struct.bhnd_resource** %11, align 8
  %71 = load i32, i32* @SIBA_CFG0_TMSTATEHIGH, align 4
  %72 = call i32 @bhnd_bus_read_4(%struct.bhnd_resource* %70, i32 %71)
  %73 = load i32, i32* @SIBA_TMH_SERR, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %50
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.siba_devinfo*, %struct.siba_devinfo** %10, align 8
  %79 = load i32, i32* @SIBA_CFG0_TMSTATEHIGH, align 4
  %80 = load i32, i32* @SIBA_TMH_SERR, align 4
  %81 = call i32 @siba_write_target_state(i64 %77, %struct.siba_devinfo* %78, i32 %79, i32 0, i32 %80)
  br label %82

82:                                               ; preds = %76, %50
  %83 = load %struct.bhnd_resource*, %struct.bhnd_resource** %11, align 8
  %84 = load i32, i32* @SIBA_CFG0_IMSTATE, align 4
  %85 = call i32 @bhnd_bus_read_4(%struct.bhnd_resource* %83, i32 %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @SIBA_IM_IBE, align 4
  %88 = load i32, i32* @SIBA_IM_TO, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %86, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %82
  %93 = load i64, i64* %7, align 8
  %94 = load %struct.siba_devinfo*, %struct.siba_devinfo** %10, align 8
  %95 = load i32, i32* @SIBA_CFG0_IMSTATE, align 4
  %96 = load i32, i32* @SIBA_IM_IBE, align 4
  %97 = load i32, i32* @SIBA_IM_TO, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @siba_write_target_state(i64 %93, %struct.siba_devinfo* %94, i32 %95, i32 0, i32 %98)
  br label %100

100:                                              ; preds = %92, %82
  %101 = load i64, i64* %7, align 8
  %102 = load %struct.siba_devinfo*, %struct.siba_devinfo** %10, align 8
  %103 = load i32, i32* @SIBA_CFG0_TMSTATELOW, align 4
  %104 = load i32, i32* @SIBA_TML_RESET, align 4
  %105 = call i32 @siba_write_target_state(i64 %101, %struct.siba_devinfo* %102, i32 %103, i32 0, i32 %104)
  %106 = load i64, i64* %7, align 8
  %107 = load %struct.siba_devinfo*, %struct.siba_devinfo** %10, align 8
  %108 = load i32, i32* @SIBA_CFG0_TMSTATELOW, align 4
  %109 = load i32, i32* @BHND_IOCTL_CLK_FORCE, align 4
  %110 = load i32, i32* @SIBA_TML_SICF_SHIFT, align 4
  %111 = shl i32 %109, %110
  %112 = call i32 @siba_write_target_state(i64 %106, %struct.siba_devinfo* %107, i32 %108, i32 0, i32 %111)
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %100, %48, %41, %31, %20
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.siba_devinfo* @device_get_ivars(i64) #1

declare dso_local i32 @bhnd_suspend_hw(i64, i32) #1

declare dso_local i32 @siba_write_target_state(i64, %struct.siba_devinfo*, i32, i32, i32) #1

declare dso_local i32 @bhnd_bus_read_4(%struct.bhnd_resource*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
