; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_poll_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_poll_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_softc = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @hdac_poll_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdac_poll_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hdac_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.hdac_softc*
  store %struct.hdac_softc* %5, %struct.hdac_softc** %3, align 8
  %6 = load %struct.hdac_softc*, %struct.hdac_softc** %3, align 8
  %7 = icmp eq %struct.hdac_softc* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %31

9:                                                ; preds = %1
  %10 = load %struct.hdac_softc*, %struct.hdac_softc** %3, align 8
  %11 = call i32 @hdac_lock(%struct.hdac_softc* %10)
  %12 = load %struct.hdac_softc*, %struct.hdac_softc** %3, align 8
  %13 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load %struct.hdac_softc*, %struct.hdac_softc** %3, align 8
  %18 = call i32 @hdac_unlock(%struct.hdac_softc* %17)
  br label %31

19:                                               ; preds = %9
  %20 = load %struct.hdac_softc*, %struct.hdac_softc** %3, align 8
  %21 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %20, i32 0, i32 2
  %22 = load %struct.hdac_softc*, %struct.hdac_softc** %3, align 8
  %23 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.hdac_softc*, %struct.hdac_softc** %3, align 8
  %26 = call i32 @callout_reset(i32* %21, i32 %24, void (i8*)* @hdac_poll_callback, %struct.hdac_softc* %25)
  %27 = load %struct.hdac_softc*, %struct.hdac_softc** %3, align 8
  %28 = call i32 @hdac_unlock(%struct.hdac_softc* %27)
  %29 = load %struct.hdac_softc*, %struct.hdac_softc** %3, align 8
  %30 = call i32 @hdac_intr_handler(%struct.hdac_softc* %29)
  br label %31

31:                                               ; preds = %19, %16, %8
  ret void
}

declare dso_local i32 @hdac_lock(%struct.hdac_softc*) #1

declare dso_local i32 @hdac_unlock(%struct.hdac_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.hdac_softc*) #1

declare dso_local i32 @hdac_intr_handler(%struct.hdac_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
