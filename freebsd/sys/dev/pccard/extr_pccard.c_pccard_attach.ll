; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pccard_softc = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pccard_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pccard_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pccard_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.pccard_softc* @PCCARD_SOFTC(i32 %6)
  store %struct.pccard_softc* %7, %struct.pccard_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.pccard_softc*, %struct.pccard_softc** %4, align 8
  %10 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load %struct.pccard_softc*, %struct.pccard_softc** %4, align 8
  %12 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.pccard_softc*, %struct.pccard_softc** %4, align 8
  %14 = call i32 @pccard_device_create(%struct.pccard_softc* %13)
  store i32 %14, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %25

18:                                               ; preds = %1
  %19 = load %struct.pccard_softc*, %struct.pccard_softc** %4, align 8
  %20 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @STAILQ_INIT(i32* %21)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @bus_generic_attach(i32 %23)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %18, %16
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.pccard_softc* @PCCARD_SOFTC(i32) #1

declare dso_local i32 @pccard_device_create(%struct.pccard_softc*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
