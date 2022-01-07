; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_flash.c_opalflash_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_flash.c_opalflash_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.opalflash_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @opalflash_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opalflash_strategy(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.opalflash_softc*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = getelementptr inbounds %struct.bio, %struct.bio* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.opalflash_softc*
  store %struct.opalflash_softc* %9, %struct.opalflash_softc** %3, align 8
  %10 = load %struct.opalflash_softc*, %struct.opalflash_softc** %3, align 8
  %11 = call i32 @OPALFLASH_LOCK(%struct.opalflash_softc* %10)
  %12 = load %struct.opalflash_softc*, %struct.opalflash_softc** %3, align 8
  %13 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %12, i32 0, i32 0
  %14 = load %struct.bio*, %struct.bio** %2, align 8
  %15 = call i32 @bioq_disksort(i32* %13, %struct.bio* %14)
  %16 = load %struct.opalflash_softc*, %struct.opalflash_softc** %3, align 8
  %17 = call i32 @wakeup(%struct.opalflash_softc* %16)
  %18 = load %struct.opalflash_softc*, %struct.opalflash_softc** %3, align 8
  %19 = call i32 @OPALFLASH_UNLOCK(%struct.opalflash_softc* %18)
  ret void
}

declare dso_local i32 @OPALFLASH_LOCK(%struct.opalflash_softc*) #1

declare dso_local i32 @bioq_disksort(i32*, %struct.bio*) #1

declare dso_local i32 @wakeup(%struct.opalflash_softc*) #1

declare dso_local i32 @OPALFLASH_UNLOCK(%struct.opalflash_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
