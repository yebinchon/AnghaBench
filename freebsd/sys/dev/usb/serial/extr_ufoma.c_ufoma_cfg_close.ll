; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ufoma.c_ufoma_cfg_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ufoma.c_ufoma_cfg_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.ufoma_softc* }
%struct.ufoma_softc = type { i32 }

@UMCPC_ACM_MODE_DEACTIVATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*)* @ufoma_cfg_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufoma_cfg_close(%struct.ucom_softc* %0) #0 {
  %2 = alloca %struct.ucom_softc*, align 8
  %3 = alloca %struct.ufoma_softc*, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %2, align 8
  %4 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %4, i32 0, i32 0
  %6 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  store %struct.ufoma_softc* %6, %struct.ufoma_softc** %3, align 8
  %7 = load %struct.ufoma_softc*, %struct.ufoma_softc** %3, align 8
  %8 = load i32, i32* @UMCPC_ACM_MODE_DEACTIVATED, align 4
  %9 = call i32 @ufoma_cfg_activate_state(%struct.ufoma_softc* %7, i32 %8)
  ret void
}

declare dso_local i32 @ufoma_cfg_activate_state(%struct.ufoma_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
