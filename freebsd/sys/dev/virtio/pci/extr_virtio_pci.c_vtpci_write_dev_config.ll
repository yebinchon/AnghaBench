; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_write_dev_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_write_dev_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtpci_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i8*, i32)* @vtpci_write_dev_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtpci_write_dev_config(i32 %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vtpci_softc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.vtpci_softc* @device_get_softc(i32 %13)
  store %struct.vtpci_softc* %14, %struct.vtpci_softc** %9, align 8
  %15 = load %struct.vtpci_softc*, %struct.vtpci_softc** %9, align 8
  %16 = call i64 @VIRTIO_PCI_CONFIG(%struct.vtpci_softc* %15)
  %17 = load i64, i64* %6, align 8
  %18 = add nsw i64 %16, %17
  store i64 %18, i64* %10, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %11, align 8
  br label %21

21:                                               ; preds = %50, %4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %62

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = icmp sge i32 %25, 4
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  store i32 4, i32* %12, align 4
  %28 = load %struct.vtpci_softc*, %struct.vtpci_softc** %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @vtpci_write_config_4(%struct.vtpci_softc* %28, i64 %29, i32 %31)
  br label %49

33:                                               ; preds = %24
  %34 = load i32, i32* %8, align 4
  %35 = icmp sge i32 %34, 2
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  store i32 2, i32* %12, align 4
  %37 = load %struct.vtpci_softc*, %struct.vtpci_softc** %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @vtpci_write_config_2(%struct.vtpci_softc* %37, i64 %38, i32 %40)
  br label %48

42:                                               ; preds = %33
  store i32 1, i32* %12, align 4
  %43 = load %struct.vtpci_softc*, %struct.vtpci_softc** %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @vtpci_write_config_1(%struct.vtpci_softc* %43, i64 %44, i32 %46)
  br label %48

48:                                               ; preds = %42, %36
  br label %49

49:                                               ; preds = %48, %27
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %12, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %11, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %10, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %10, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %21

62:                                               ; preds = %21
  ret void
}

declare dso_local %struct.vtpci_softc* @device_get_softc(i32) #1

declare dso_local i64 @VIRTIO_PCI_CONFIG(%struct.vtpci_softc*) #1

declare dso_local i32 @vtpci_write_config_4(%struct.vtpci_softc*, i64, i32) #1

declare dso_local i32 @vtpci_write_config_2(%struct.vtpci_softc*, i64, i32) #1

declare dso_local i32 @vtpci_write_config_1(%struct.vtpci_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
