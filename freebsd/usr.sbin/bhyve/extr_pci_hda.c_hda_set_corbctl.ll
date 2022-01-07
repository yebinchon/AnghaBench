; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_set_corbctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_set_corbctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_softc = type { %struct.hda_codec_cmd_ctl }
%struct.hda_codec_cmd_ctl = type { i32 }

@HDAC_CORBCTL_CORBRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_softc*, i32, i32)* @hda_set_corbctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hda_set_corbctl(%struct.hda_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hda_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hda_codec_cmd_ctl*, align 8
  store %struct.hda_softc* %0, %struct.hda_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @hda_get_reg_by_offset(%struct.hda_softc* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  store %struct.hda_codec_cmd_ctl* null, %struct.hda_codec_cmd_ctl** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @HDAC_CORBCTL_CORBRUN, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @HDAC_CORBCTL_CORBRUN, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %24 = call i32 @hda_corb_start(%struct.hda_softc* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  br label %30

30:                                               ; preds = %22, %17
  br label %36

31:                                               ; preds = %3
  %32 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %33 = getelementptr inbounds %struct.hda_softc, %struct.hda_softc* %32, i32 0, i32 0
  store %struct.hda_codec_cmd_ctl* %33, %struct.hda_codec_cmd_ctl** %9, align 8
  %34 = load %struct.hda_codec_cmd_ctl*, %struct.hda_codec_cmd_ctl** %9, align 8
  %35 = call i32 @memset(%struct.hda_codec_cmd_ctl* %34, i32 0, i32 4)
  br label %36

36:                                               ; preds = %31, %30
  %37 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %38 = call i32 @hda_corb_run(%struct.hda_softc* %37)
  ret void
}

declare dso_local i32 @hda_get_reg_by_offset(%struct.hda_softc*, i32) #1

declare dso_local i32 @hda_corb_start(%struct.hda_softc*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.hda_codec_cmd_ctl*, i32, i32) #1

declare dso_local i32 @hda_corb_run(%struct.hda_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
