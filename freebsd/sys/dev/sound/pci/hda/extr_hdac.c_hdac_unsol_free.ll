; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_unsol_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_unsol_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @hdac_unsol_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdac_unsol_free(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hdac_softc*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.hdac_softc* @device_get_softc(i32 %8)
  store %struct.hdac_softc* %9, %struct.hdac_softc** %7, align 8
  %10 = load %struct.hdac_softc*, %struct.hdac_softc** %7, align 8
  %11 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.hdac_softc*, %struct.hdac_softc** %7, align 8
  %15 = call i32 @hdac_poll_reinit(%struct.hdac_softc* %14)
  ret void
}

declare dso_local %struct.hdac_softc* @device_get_softc(i32) #1

declare dso_local i32 @hdac_poll_reinit(%struct.hdac_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
