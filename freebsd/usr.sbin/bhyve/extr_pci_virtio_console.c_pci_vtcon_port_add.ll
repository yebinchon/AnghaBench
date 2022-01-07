; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_console.c_pci_vtcon_port_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_console.c_pci_vtcon_port_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_vtcon_port = type { i32, i8*, i32, i32, i32, i8*, i32*, %struct.pci_vtcon_softc* }
%struct.pci_vtcon_softc = type { i32, %struct.pci_vtcon_port* }

@VTCON_MAXPORTS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_vtcon_port* (%struct.pci_vtcon_softc*, i8*, i32*, i8*)* @pci_vtcon_port_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_vtcon_port* @pci_vtcon_port_add(%struct.pci_vtcon_softc* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.pci_vtcon_port*, align 8
  %6 = alloca %struct.pci_vtcon_softc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pci_vtcon_port*, align 8
  store %struct.pci_vtcon_softc* %0, %struct.pci_vtcon_softc** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %6, align 8
  %12 = getelementptr inbounds %struct.pci_vtcon_softc, %struct.pci_vtcon_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @VTCON_MAXPORTS, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @EBUSY, align 4
  store i32 %17, i32* @errno, align 4
  store %struct.pci_vtcon_port* null, %struct.pci_vtcon_port** %5, align 8
  br label %72

18:                                               ; preds = %4
  %19 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %6, align 8
  %20 = getelementptr inbounds %struct.pci_vtcon_softc, %struct.pci_vtcon_softc* %19, i32 0, i32 1
  %21 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %20, align 8
  %22 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %6, align 8
  %23 = getelementptr inbounds %struct.pci_vtcon_softc, %struct.pci_vtcon_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds %struct.pci_vtcon_port, %struct.pci_vtcon_port* %21, i64 %26
  store %struct.pci_vtcon_port* %27, %struct.pci_vtcon_port** %10, align 8
  %28 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %6, align 8
  %29 = getelementptr inbounds %struct.pci_vtcon_softc, %struct.pci_vtcon_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %10, align 8
  %33 = getelementptr inbounds %struct.pci_vtcon_port, %struct.pci_vtcon_port* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %6, align 8
  %35 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %10, align 8
  %36 = getelementptr inbounds %struct.pci_vtcon_port, %struct.pci_vtcon_port* %35, i32 0, i32 7
  store %struct.pci_vtcon_softc* %34, %struct.pci_vtcon_softc** %36, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %10, align 8
  %39 = getelementptr inbounds %struct.pci_vtcon_port, %struct.pci_vtcon_port* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %10, align 8
  %42 = getelementptr inbounds %struct.pci_vtcon_port, %struct.pci_vtcon_port* %41, i32 0, i32 6
  store i32* %40, i32** %42, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %10, align 8
  %45 = getelementptr inbounds %struct.pci_vtcon_port, %struct.pci_vtcon_port* %44, i32 0, i32 5
  store i8* %43, i8** %45, align 8
  %46 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %10, align 8
  %47 = getelementptr inbounds %struct.pci_vtcon_port, %struct.pci_vtcon_port* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %18
  %51 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %10, align 8
  %52 = getelementptr inbounds %struct.pci_vtcon_port, %struct.pci_vtcon_port* %51, i32 0, i32 2
  store i32 0, i32* %52, align 8
  %53 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %10, align 8
  %54 = getelementptr inbounds %struct.pci_vtcon_port, %struct.pci_vtcon_port* %53, i32 0, i32 3
  store i32 1, i32* %54, align 4
  br label %68

55:                                               ; preds = %18
  %56 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %6, align 8
  %57 = getelementptr inbounds %struct.pci_vtcon_softc, %struct.pci_vtcon_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %58, 2
  %60 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %10, align 8
  %61 = getelementptr inbounds %struct.pci_vtcon_port, %struct.pci_vtcon_port* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %10, align 8
  %63 = getelementptr inbounds %struct.pci_vtcon_port, %struct.pci_vtcon_port* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  %66 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %10, align 8
  %67 = getelementptr inbounds %struct.pci_vtcon_port, %struct.pci_vtcon_port* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %55, %50
  %69 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %10, align 8
  %70 = getelementptr inbounds %struct.pci_vtcon_port, %struct.pci_vtcon_port* %69, i32 0, i32 4
  store i32 1, i32* %70, align 8
  %71 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %10, align 8
  store %struct.pci_vtcon_port* %71, %struct.pci_vtcon_port** %5, align 8
  br label %72

72:                                               ; preds = %68, %16
  %73 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %5, align 8
  ret %struct.pci_vtcon_port* %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
