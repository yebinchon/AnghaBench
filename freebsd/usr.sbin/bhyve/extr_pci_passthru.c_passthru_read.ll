; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_passthru.c_passthru_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_passthru.c_passthru_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.pci_devinst = type { %struct.TYPE_3__*, %struct.passthru_softc* }
%struct.TYPE_3__ = type { i64 }
%struct.passthru_softc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.iodev_pio_req = type { i32, i64, i64, i32 }

@PCIBAR_IO = common dso_local global i64 0, align 8
@IODEV_PIO_READ = common dso_local global i32 0, align 4
@iofd = common dso_local global i32 0, align 4
@IODEV_PIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i64, i32)* @passthru_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @passthru_read(%struct.vmctx* %0, i32 %1, %struct.pci_devinst* %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.vmctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_devinst*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.passthru_softc*, align 8
  %14 = alloca %struct.iodev_pio_req, align 8
  %15 = alloca i64, align 8
  store %struct.vmctx* %0, %struct.vmctx** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.pci_devinst* %2, %struct.pci_devinst** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.pci_devinst*, %struct.pci_devinst** %9, align 8
  %17 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %16, i32 0, i32 1
  %18 = load %struct.passthru_softc*, %struct.passthru_softc** %17, align 8
  store %struct.passthru_softc* %18, %struct.passthru_softc** %13, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.pci_devinst*, %struct.pci_devinst** %9, align 8
  %21 = call i32 @pci_msix_table_bar(%struct.pci_devinst* %20)
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %6
  %24 = load %struct.passthru_softc*, %struct.passthru_softc** %13, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i64 @msix_table_read(%struct.passthru_softc* %24, i64 %25, i32 %26)
  store i64 %27, i64* %15, align 8
  br label %63

28:                                               ; preds = %6
  %29 = load %struct.pci_devinst*, %struct.pci_devinst** %9, align 8
  %30 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PCIBAR_IO, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = call i32 @bzero(%struct.iodev_pio_req* %14, i32 32)
  %42 = load i32, i32* @IODEV_PIO_READ, align 4
  %43 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %14, i32 0, i32 3
  store i32 %42, i32* %43, align 8
  %44 = load %struct.passthru_softc*, %struct.passthru_softc** %13, align 8
  %45 = getelementptr inbounds %struct.passthru_softc, %struct.passthru_softc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %11, align 8
  %53 = add nsw i64 %51, %52
  %54 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %14, i32 0, i32 2
  store i64 %53, i64* %54, align 8
  %55 = load i32, i32* %12, align 4
  %56 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %14, i32 0, i32 0
  store i32 %55, i32* %56, align 8
  %57 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %14, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* @iofd, align 4
  %59 = load i32, i32* @IODEV_PIO, align 4
  %60 = call i32 @ioctl(i32 %58, i32 %59, %struct.iodev_pio_req* %14)
  %61 = getelementptr inbounds %struct.iodev_pio_req, %struct.iodev_pio_req* %14, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %15, align 8
  br label %63

63:                                               ; preds = %28, %23
  %64 = load i64, i64* %15, align 8
  ret i64 %64
}

declare dso_local i32 @pci_msix_table_bar(%struct.pci_devinst*) #1

declare dso_local i64 @msix_table_read(%struct.passthru_softc*, i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bzero(%struct.iodev_pio_req*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.iodev_pio_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
