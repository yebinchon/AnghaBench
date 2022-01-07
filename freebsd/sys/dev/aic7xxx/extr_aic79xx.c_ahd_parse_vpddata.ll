; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_parse_vpddata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_parse_vpddata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }
%struct.vpd_config = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@VPDBOOTHOST = common dso_local global i32 0, align 4
@AHD_BOOT_CHANNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_parse_vpddata(%struct.ahd_softc* %0, %struct.vpd_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahd_softc*, align 8
  %5 = alloca %struct.vpd_config*, align 8
  %6 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %4, align 8
  store %struct.vpd_config* %1, %struct.vpd_config** %5, align 8
  %7 = load %struct.vpd_config*, %struct.vpd_config** %5, align 8
  %8 = call i32 @ahd_verify_vpd_cksum(%struct.vpd_config* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %3, align 4
  br label %27

13:                                               ; preds = %2
  %14 = load %struct.vpd_config*, %struct.vpd_config** %5, align 8
  %15 = getelementptr inbounds %struct.vpd_config, %struct.vpd_config* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @VPDBOOTHOST, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load i32, i32* @AHD_BOOT_CHANNEL, align 4
  %22 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %23 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %13
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %11
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @ahd_verify_vpd_cksum(%struct.vpd_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
