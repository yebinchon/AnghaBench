; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci.c_scic_cb_pci_read_dword.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci.c_scic_cb_pci_read_dword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISCI_CONTROLLER = type { %struct.isci_softc* }
%struct.isci_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @scic_cb_pci_read_dword(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ISCI_CONTROLLER*, align 8
  %7 = alloca %struct.isci_softc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @sci_object_get_association(i32 %10)
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @sci_object_get_association(i32 %13)
  %15 = inttoptr i64 %14 to %struct.ISCI_CONTROLLER*
  store %struct.ISCI_CONTROLLER* %15, %struct.ISCI_CONTROLLER** %6, align 8
  %16 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %6, align 8
  %17 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %16, i32 0, i32 0
  %18 = load %struct.isci_softc*, %struct.isci_softc** %17, align 8
  store %struct.isci_softc* %18, %struct.isci_softc** %7, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = ptrtoint i8* %19 to i32
  %21 = and i32 %20, -268435456
  %22 = lshr i32 %21, 28
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %8, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = ptrtoint i8* %24 to i32
  %26 = and i32 %25, 268435455
  store i32 %26, i32* %9, align 4
  %27 = load %struct.isci_softc*, %struct.isci_softc** %7, align 8
  %28 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.isci_softc*, %struct.isci_softc** %7, align 8
  %35 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @bus_space_read_4(i32 %33, i32 %40, i32 %41)
  ret i64 %42
}

declare dso_local i64 @sci_object_get_association(i32) #1

declare dso_local i64 @bus_space_read_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
