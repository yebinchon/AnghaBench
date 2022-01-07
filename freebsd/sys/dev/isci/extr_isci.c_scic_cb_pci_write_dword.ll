; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci.c_scic_cb_pci_write_dword.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci.c_scic_cb_pci_write_dword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISCI_CONTROLLER = type { %struct.isci_softc* }
%struct.isci_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scic_cb_pci_write_dword(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ISCI_CONTROLLER*, align 8
  %9 = alloca %struct.isci_softc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @sci_object_get_association(i32 %12)
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @sci_object_get_association(i32 %15)
  %17 = inttoptr i64 %16 to %struct.ISCI_CONTROLLER*
  store %struct.ISCI_CONTROLLER* %17, %struct.ISCI_CONTROLLER** %8, align 8
  %18 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %8, align 8
  %19 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %18, i32 0, i32 0
  %20 = load %struct.isci_softc*, %struct.isci_softc** %19, align 8
  store %struct.isci_softc* %20, %struct.isci_softc** %9, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = ptrtoint i8* %21 to i32
  %23 = and i32 %22, -268435456
  %24 = lshr i32 %23, 28
  %25 = zext i32 %24 to i64
  store i64 %25, i64* %10, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = ptrtoint i8* %26 to i32
  %28 = and i32 %27, 268435455
  store i32 %28, i32* %11, align 4
  %29 = load %struct.isci_softc*, %struct.isci_softc** %9, align 8
  %30 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.isci_softc*, %struct.isci_softc** %9, align 8
  %37 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @bus_space_write_4(i32 %35, i32 %42, i32 %43, i64 %44)
  ret void
}

declare dso_local i64 @sci_object_get_association(i32) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
