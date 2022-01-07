; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_response_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_response_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_softc = type { i64 }

@HDAC_RIRBCTL = common dso_local global i32 0, align 4
@HDAC_RIRBCTL_RINTCTL = common dso_local global i32 0, align 4
@HDAC_RIRBSTS = common dso_local global i32 0, align 4
@HDAC_RIRBSTS_RINTFL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_softc*)* @hda_response_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hda_response_interrupt(%struct.hda_softc* %0) #0 {
  %2 = alloca %struct.hda_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.hda_softc* %0, %struct.hda_softc** %2, align 8
  %4 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  %5 = load i32, i32* @HDAC_RIRBCTL, align 4
  %6 = call i32 @hda_get_reg_by_offset(%struct.hda_softc* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @HDAC_RIRBCTL_RINTCTL, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  %13 = getelementptr inbounds %struct.hda_softc, %struct.hda_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  %18 = getelementptr inbounds %struct.hda_softc, %struct.hda_softc* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  %20 = load i32, i32* @HDAC_RIRBSTS, align 4
  %21 = load i32, i32* @HDAC_RIRBSTS_RINTFL, align 4
  %22 = load i32, i32* @HDAC_RIRBSTS_RINTFL, align 4
  %23 = call i32 @hda_set_field_by_offset(%struct.hda_softc* %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  %25 = call i32 @hda_update_intr(%struct.hda_softc* %24)
  br label %26

26:                                               ; preds = %16, %11, %1
  ret void
}

declare dso_local i32 @hda_get_reg_by_offset(%struct.hda_softc*, i32) #1

declare dso_local i32 @hda_set_field_by_offset(%struct.hda_softc*, i32, i32, i32) #1

declare dso_local i32 @hda_update_intr(%struct.hda_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
