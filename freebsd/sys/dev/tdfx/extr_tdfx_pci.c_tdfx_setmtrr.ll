; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tdfx/extr_tdfx_pci.c_tdfx_setmtrr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tdfx/extr_tdfx_pci.c_tdfx_setmtrr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tdfx_softc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@PCI_DEVICE_3DFX_VOODOO1 = common dso_local global i64 0, align 8
@PCI_DEVICE_3DFX_VOODOO2 = common dso_local global i64 0, align 8
@PCI_DEVICE_3DFX_VOODOO3 = common dso_local global i64 0, align 8
@PCI_DEVICE_3DFX_BANSHEE = common dso_local global i64 0, align 8
@MDF_WRITECOMBINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"tdfx\00", align 1
@MEMRANGE_SET_UPDATE = common dso_local global i32 0, align 4
@MDF_UNCACHEABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tdfx_setmtrr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tdfx_setmtrr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tdfx_softc*, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.tdfx_softc* @device_get_softc(i32 %7)
  store %struct.tdfx_softc* %8, %struct.tdfx_softc** %6, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @pci_get_devid(i32 %9)
  %11 = load i64, i64* @PCI_DEVICE_3DFX_VOODOO1, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @pci_get_devid(i32 %14)
  %16 = load i64, i64* @PCI_DEVICE_3DFX_VOODOO2, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %13, %1
  %19 = load %struct.tdfx_softc*, %struct.tdfx_softc** %6, align 8
  %20 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 4194304, i32* %21, align 4
  %22 = load %struct.tdfx_softc*, %struct.tdfx_softc** %6, align 8
  %23 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, -131072
  %26 = load %struct.tdfx_softc*, %struct.tdfx_softc** %6, align 8
  %27 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  br label %52

29:                                               ; preds = %13
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @pci_get_devid(i32 %30)
  %32 = load i64, i64* @PCI_DEVICE_3DFX_VOODOO3, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @pci_get_devid(i32 %35)
  %37 = load i64, i64* @PCI_DEVICE_3DFX_BANSHEE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %34, %29
  %40 = load %struct.tdfx_softc*, %struct.tdfx_softc** %6, align 8
  %41 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 16777216, i32* %42, align 4
  %43 = load %struct.tdfx_softc*, %struct.tdfx_softc** %6, align 8
  %44 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, -131072
  %47 = load %struct.tdfx_softc*, %struct.tdfx_softc** %6, align 8
  %48 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  br label %51

50:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %88

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %18
  %53 = load i32, i32* @MDF_WRITECOMBINE, align 4
  %54 = load %struct.tdfx_softc*, %struct.tdfx_softc** %6, align 8
  %55 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 4
  %57 = load %struct.tdfx_softc*, %struct.tdfx_softc** %6, align 8
  %58 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = call i32 @bcopy(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %59, i32 4)
  %61 = load i32, i32* @MEMRANGE_SET_UPDATE, align 4
  store i32 %61, i32* %5, align 4
  %62 = load %struct.tdfx_softc*, %struct.tdfx_softc** %6, align 8
  %63 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %62, i32 0, i32 2
  %64 = call i32 @mem_range_attr_set(%struct.TYPE_2__* %63, i32* %5)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  br label %87

68:                                               ; preds = %52
  %69 = load i32, i32* %3, align 4
  %70 = call i64 @pci_get_devid(i32 %69)
  %71 = load i64, i64* @PCI_DEVICE_3DFX_VOODOO2, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %3, align 4
  %75 = call i64 @pci_get_devid(i32 %74)
  %76 = load i64, i64* @PCI_DEVICE_3DFX_VOODOO1, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %73, %68
  %79 = load i32, i32* @MDF_UNCACHEABLE, align 4
  %80 = load %struct.tdfx_softc*, %struct.tdfx_softc** %6, align 8
  %81 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 4
  %83 = load %struct.tdfx_softc*, %struct.tdfx_softc** %6, align 8
  %84 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 4096, i32* %85, align 4
  br label %86

86:                                               ; preds = %78, %73
  br label %87

87:                                               ; preds = %86, %67
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %50
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.tdfx_softc* @device_get_softc(i32) #1

declare dso_local i64 @pci_get_devid(i32) #1

declare dso_local i32 @bcopy(i8*, i32*, i32) #1

declare dso_local i32 @mem_range_attr_set(%struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
