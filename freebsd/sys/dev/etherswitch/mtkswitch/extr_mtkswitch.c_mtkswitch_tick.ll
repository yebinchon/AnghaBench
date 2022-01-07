; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch.c_mtkswitch_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch.c_mtkswitch_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { i32 }

@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mtkswitch_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtkswitch_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mtkswitch_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.mtkswitch_softc*
  store %struct.mtkswitch_softc* %5, %struct.mtkswitch_softc** %3, align 8
  %6 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %7 = call i32 @mtkswitch_miipollstat(%struct.mtkswitch_softc* %6)
  %8 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %9 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %8, i32 0, i32 0
  %10 = load i32, i32* @hz, align 4
  %11 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %12 = call i32 @callout_reset(i32* %9, i32 %10, void (i8*)* @mtkswitch_tick, %struct.mtkswitch_softc* %11)
  ret void
}

declare dso_local i32 @mtkswitch_miipollstat(%struct.mtkswitch_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.mtkswitch_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
