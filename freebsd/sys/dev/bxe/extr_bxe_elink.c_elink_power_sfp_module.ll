; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_power_sfp_module.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_power_sfp_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_phy = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Setting SFP+ power to %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elink_params*, %struct.elink_phy*, i32)* @elink_power_sfp_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_power_sfp_module(%struct.elink_params* %0, %struct.elink_phy* %1, i32 %2) #0 {
  %4 = alloca %struct.elink_params*, align 8
  %5 = alloca %struct.elink_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bxe_softc*, align 8
  store %struct.elink_params* %0, %struct.elink_params** %4, align 8
  store %struct.elink_phy* %1, %struct.elink_phy** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %9 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %8, i32 0, i32 0
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %9, align 8
  store %struct.bxe_softc* %10, %struct.bxe_softc** %7, align 8
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %15 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %28 [
    i32 129, label %17
    i32 130, label %17
    i32 128, label %24
  ]

17:                                               ; preds = %3, %3
  %18 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %19 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %18, i32 0, i32 0
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %19, align 8
  %21 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @elink_8727_power_module(%struct.bxe_softc* %20, %struct.elink_phy* %21, i32 %22)
  br label %29

24:                                               ; preds = %3
  %25 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @elink_warpcore_power_module(%struct.elink_params* %25, i32 %26)
  br label %29

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %28, %24, %17
  ret void
}

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32 @elink_8727_power_module(%struct.bxe_softc*, %struct.elink_phy*, i32) #1

declare dso_local i32 @elink_warpcore_power_module(%struct.elink_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
