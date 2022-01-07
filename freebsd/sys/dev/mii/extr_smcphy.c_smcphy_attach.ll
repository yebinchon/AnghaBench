; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_smcphy.c_smcphy_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_smcphy.c_smcphy_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_phy_funcs = type { i32 }
%struct.mii_softc = type { i32 }
%struct.mii_attach_args = type { i32 }

@MII_MODEL_SEEQ_80220 = common dso_local global i64 0, align 8
@smcphy80220_funcs = common dso_local global %struct.mii_phy_funcs zeroinitializer, align 4
@smcphy_funcs = common dso_local global %struct.mii_phy_funcs zeroinitializer, align 4
@MIIF_NOISOLATE = common dso_local global i32 0, align 4
@MIIF_NOMANPAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @smcphy_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smcphy_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mii_softc*, align 8
  %4 = alloca %struct.mii_attach_args*, align 8
  %5 = alloca %struct.mii_phy_funcs*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.mii_softc* @device_get_softc(i32 %6)
  store %struct.mii_softc* %7, %struct.mii_softc** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.mii_attach_args* @device_get_ivars(i32 %8)
  store %struct.mii_attach_args* %9, %struct.mii_attach_args** %4, align 8
  %10 = load %struct.mii_attach_args*, %struct.mii_attach_args** %4, align 8
  %11 = getelementptr inbounds %struct.mii_attach_args, %struct.mii_attach_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @MII_MODEL(i32 %12)
  %14 = load i64, i64* @MII_MODEL_SEEQ_80220, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store %struct.mii_phy_funcs* @smcphy80220_funcs, %struct.mii_phy_funcs** %5, align 8
  br label %18

17:                                               ; preds = %1
  store %struct.mii_phy_funcs* @smcphy_funcs, %struct.mii_phy_funcs** %5, align 8
  br label %18

18:                                               ; preds = %17, %16
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @MIIF_NOISOLATE, align 4
  %21 = load i32, i32* @MIIF_NOMANPAUSE, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.mii_phy_funcs*, %struct.mii_phy_funcs** %5, align 8
  %24 = call i32 @mii_phy_dev_attach(i32 %19, i32 %22, %struct.mii_phy_funcs* %23, i32 1)
  %25 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %26 = call i32 @mii_phy_setmedia(%struct.mii_softc* %25)
  ret i32 0
}

declare dso_local %struct.mii_softc* @device_get_softc(i32) #1

declare dso_local %struct.mii_attach_args* @device_get_ivars(i32) #1

declare dso_local i64 @MII_MODEL(i32) #1

declare dso_local i32 @mii_phy_dev_attach(i32, i32, %struct.mii_phy_funcs*, i32) #1

declare dso_local i32 @mii_phy_setmedia(%struct.mii_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
