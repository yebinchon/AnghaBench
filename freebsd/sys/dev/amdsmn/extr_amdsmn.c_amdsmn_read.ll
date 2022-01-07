; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdsmn/extr_amdsmn.c_amdsmn_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdsmn/extr_amdsmn.c_amdsmn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdsmn_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdsmn_read(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.amdsmn_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.amdsmn_softc* @device_get_softc(i32 %9)
  store %struct.amdsmn_softc* %10, %struct.amdsmn_softc** %7, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @device_get_parent(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.amdsmn_softc*, %struct.amdsmn_softc** %7, align 8
  %14 = getelementptr inbounds %struct.amdsmn_softc, %struct.amdsmn_softc* %13, i32 0, i32 0
  %15 = call i32 @mtx_lock(i32* %14)
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.amdsmn_softc*, %struct.amdsmn_softc** %7, align 8
  %18 = getelementptr inbounds %struct.amdsmn_softc, %struct.amdsmn_softc* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @pci_write_config(i32 %16, i32 %21, i32 %22, i32 4)
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.amdsmn_softc*, %struct.amdsmn_softc** %7, align 8
  %26 = getelementptr inbounds %struct.amdsmn_softc, %struct.amdsmn_softc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pci_read_config(i32 %24, i32 %29, i32 4)
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.amdsmn_softc*, %struct.amdsmn_softc** %7, align 8
  %33 = getelementptr inbounds %struct.amdsmn_softc, %struct.amdsmn_softc* %32, i32 0, i32 0
  %34 = call i32 @mtx_unlock(i32* %33)
  ret i32 0
}

declare dso_local %struct.amdsmn_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
