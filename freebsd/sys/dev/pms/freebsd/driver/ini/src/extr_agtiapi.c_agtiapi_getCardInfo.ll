; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pms/freebsd/driver/ini/src/extr_agtiapi.c_agtiapi_getCardInfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pms/freebsd/driver/ini/src/extr_agtiapi.c_agtiapi_getCardInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agtiapi_softc = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@PCI_NUMBER_BARS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @agtiapi_getCardInfo(%struct.agtiapi_softc* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.agtiapi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store %struct.agtiapi_softc* %0, %struct.agtiapi_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %7, align 8
  %10 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %4, align 8
  %11 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @pci_get_device(i32 %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 4
  %16 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %4, align 8
  %17 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @pci_get_vendor(i32 %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %4, align 8
  %26 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PCI_NUMBER_BARS, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 4, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32 @memcpy(i32 %24, i32 %29, i32 %33)
  %35 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %4, align 8
  %36 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @pci_get_slot(i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %4, align 8
  %42 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %4, align 8
  %49 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %4, align 8
  %56 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %4, align 8
  %63 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @pci_get_bus(i32 %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  ret i32 0
}

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @pci_get_bus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
