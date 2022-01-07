; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_read_dev_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_read_dev_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtpci_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i8*, i32)* @vtpci_read_dev_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtpci_read_dev_config(i32 %0, i64 %1, i8* %2, i32 %3) #0 {
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

21:                                               ; preds = %47, %4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %59

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = icmp sge i32 %25, 4
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  store i32 4, i32* %12, align 4
  %28 = load %struct.vtpci_softc*, %struct.vtpci_softc** %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @vtpci_read_config_4(%struct.vtpci_softc* %28, i64 %29)
  %31 = load i32*, i32** %11, align 8
  store i32 %30, i32* %31, align 4
  br label %46

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  %34 = icmp sge i32 %33, 2
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  store i32 2, i32* %12, align 4
  %36 = load %struct.vtpci_softc*, %struct.vtpci_softc** %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @vtpci_read_config_2(%struct.vtpci_softc* %36, i64 %37)
  %39 = load i32*, i32** %11, align 8
  store i32 %38, i32* %39, align 4
  br label %45

40:                                               ; preds = %32
  store i32 1, i32* %12, align 4
  %41 = load %struct.vtpci_softc*, %struct.vtpci_softc** %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @vtpci_read_config_1(%struct.vtpci_softc* %41, i64 %42)
  %44 = load i32*, i32** %11, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %35
  br label %46

46:                                               ; preds = %45, %27
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %12, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %11, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %10, align 8
  %55 = add nsw i64 %54, %53
  store i64 %55, i64* %10, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %8, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %8, align 4
  br label %21

59:                                               ; preds = %21
  ret void
}

declare dso_local %struct.vtpci_softc* @device_get_softc(i32) #1

declare dso_local i64 @VIRTIO_PCI_CONFIG(%struct.vtpci_softc*) #1

declare dso_local i32 @vtpci_read_config_4(%struct.vtpci_softc*, i64) #1

declare dso_local i32 @vtpci_read_config_2(%struct.vtpci_softc*, i64) #1

declare dso_local i32 @vtpci_read_config_1(%struct.vtpci_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
