; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_signal_state_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_signal_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec_inst = type { i32, %struct.hda_codec_inst* }
%struct.hda_softc = type { i32, %struct.hda_softc* }

@.str = private unnamed_addr constant [11 x i8] c"cad: 0x%x\0A\00", align 1
@HDAC_STATESTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec_inst*)* @hda_signal_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_signal_state_change(%struct.hda_codec_inst* %0) #0 {
  %2 = alloca %struct.hda_codec_inst*, align 8
  %3 = alloca %struct.hda_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.hda_codec_inst* %0, %struct.hda_codec_inst** %2, align 8
  store %struct.hda_softc* null, %struct.hda_softc** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.hda_codec_inst*, %struct.hda_codec_inst** %2, align 8
  %6 = bitcast %struct.hda_codec_inst* %5 to %struct.hda_softc*
  %7 = call i32 @assert(%struct.hda_softc* %6)
  %8 = load %struct.hda_codec_inst*, %struct.hda_codec_inst** %2, align 8
  %9 = getelementptr inbounds %struct.hda_codec_inst, %struct.hda_codec_inst* %8, i32 0, i32 1
  %10 = load %struct.hda_codec_inst*, %struct.hda_codec_inst** %9, align 8
  %11 = bitcast %struct.hda_codec_inst* %10 to %struct.hda_softc*
  %12 = call i32 @assert(%struct.hda_softc* %11)
  %13 = load %struct.hda_codec_inst*, %struct.hda_codec_inst** %2, align 8
  %14 = getelementptr inbounds %struct.hda_codec_inst, %struct.hda_codec_inst* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @DPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.hda_codec_inst*, %struct.hda_codec_inst** %2, align 8
  %18 = getelementptr inbounds %struct.hda_codec_inst, %struct.hda_codec_inst* %17, i32 0, i32 1
  %19 = load %struct.hda_codec_inst*, %struct.hda_codec_inst** %18, align 8
  %20 = bitcast %struct.hda_codec_inst* %19 to %struct.hda_softc*
  store %struct.hda_softc* %20, %struct.hda_softc** %3, align 8
  %21 = load %struct.hda_codec_inst*, %struct.hda_codec_inst** %2, align 8
  %22 = getelementptr inbounds %struct.hda_codec_inst, %struct.hda_codec_inst* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = shl i32 1, %23
  store i32 %24, i32* %4, align 4
  %25 = load %struct.hda_softc*, %struct.hda_softc** %3, align 8
  %26 = load i32, i32* @HDAC_STATESTS, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @hda_set_field_by_offset(%struct.hda_softc* %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.hda_softc*, %struct.hda_softc** %3, align 8
  %31 = call i32 @hda_update_intr(%struct.hda_softc* %30)
  ret i32 0
}

declare dso_local i32 @assert(%struct.hda_softc*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @hda_set_field_by_offset(%struct.hda_softc*, i32, i32, i32) #1

declare dso_local i32 @hda_update_intr(%struct.hda_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
