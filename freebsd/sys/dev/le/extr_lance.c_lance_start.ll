; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_lance.c_lance_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_lance.c_lance_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.lance_softc* }
%struct.lance_softc = type { i32 (%struct.lance_softc*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @lance_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lance_start(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.lance_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %5 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %4, i32 0, i32 0
  %6 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  store %struct.lance_softc* %6, %struct.lance_softc** %3, align 8
  %7 = load %struct.lance_softc*, %struct.lance_softc** %3, align 8
  %8 = call i32 @LE_LOCK(%struct.lance_softc* %7)
  %9 = load %struct.lance_softc*, %struct.lance_softc** %3, align 8
  %10 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %9, i32 0, i32 0
  %11 = load i32 (%struct.lance_softc*)*, i32 (%struct.lance_softc*)** %10, align 8
  %12 = load %struct.lance_softc*, %struct.lance_softc** %3, align 8
  %13 = call i32 %11(%struct.lance_softc* %12)
  %14 = load %struct.lance_softc*, %struct.lance_softc** %3, align 8
  %15 = call i32 @LE_UNLOCK(%struct.lance_softc* %14)
  ret void
}

declare dso_local i32 @LE_LOCK(%struct.lance_softc*) #1

declare dso_local i32 @LE_UNLOCK(%struct.lance_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
