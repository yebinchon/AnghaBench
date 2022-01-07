; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_populate_board_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_populate_board_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_board_info = type { i64, i32, i32 }
%struct.bhndb_pci_softc = type { i32 }

@PCI_VENDOR_APPLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.bhnd_board_info*)* @bhndb_pci_populate_board_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_pci_populate_board_info(i32 %0, i32 %1, %struct.bhnd_board_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bhnd_board_info*, align 8
  %7 = alloca %struct.bhndb_pci_softc*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.bhnd_board_info* %2, %struct.bhnd_board_info** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.bhndb_pci_softc* @device_get_softc(i32 %8)
  store %struct.bhndb_pci_softc* %9, %struct.bhndb_pci_softc** %7, align 8
  %10 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %7, align 8
  %11 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @pci_get_subvendor(i32 %12)
  %14 = load i64, i64* @PCI_VENDOR_APPLE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.bhnd_board_info*, %struct.bhnd_board_info** %6, align 8
  %18 = getelementptr inbounds %struct.bhnd_board_info, %struct.bhnd_board_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %23 [
    i32 131, label %20
    i32 130, label %20
    i32 129, label %20
    i32 128, label %20
  ]

20:                                               ; preds = %16, %16, %16, %16
  %21 = load %struct.bhnd_board_info*, %struct.bhnd_board_info** %6, align 8
  %22 = getelementptr inbounds %struct.bhnd_board_info, %struct.bhnd_board_info* %21, i32 0, i32 2
  store i32 0, i32* %22, align 4
  br label %24

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %20
  br label %25

25:                                               ; preds = %24, %3
  %26 = load %struct.bhnd_board_info*, %struct.bhnd_board_info** %6, align 8
  %27 = getelementptr inbounds %struct.bhnd_board_info, %struct.bhnd_board_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %7, align 8
  %32 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @pci_get_subvendor(i32 %33)
  %35 = load %struct.bhnd_board_info*, %struct.bhnd_board_info** %6, align 8
  %36 = getelementptr inbounds %struct.bhnd_board_info, %struct.bhnd_board_info* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %30, %25
  %38 = load %struct.bhnd_board_info*, %struct.bhnd_board_info** %6, align 8
  %39 = getelementptr inbounds %struct.bhnd_board_info, %struct.bhnd_board_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %7, align 8
  %44 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pci_get_subdevice(i32 %45)
  %47 = load %struct.bhnd_board_info*, %struct.bhnd_board_info** %6, align 8
  %48 = getelementptr inbounds %struct.bhnd_board_info, %struct.bhnd_board_info* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %42, %37
  %50 = load %struct.bhnd_board_info*, %struct.bhnd_board_info** %6, align 8
  %51 = getelementptr inbounds %struct.bhnd_board_info, %struct.bhnd_board_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %7, align 8
  %56 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pci_get_device(i32 %57)
  %59 = load %struct.bhnd_board_info*, %struct.bhnd_board_info** %6, align 8
  %60 = getelementptr inbounds %struct.bhnd_board_info, %struct.bhnd_board_info* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %54, %49
  ret i32 0
}

declare dso_local %struct.bhndb_pci_softc* @device_get_softc(i32) #1

declare dso_local i64 @pci_get_subvendor(i32) #1

declare dso_local i32 @pci_get_subdevice(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
