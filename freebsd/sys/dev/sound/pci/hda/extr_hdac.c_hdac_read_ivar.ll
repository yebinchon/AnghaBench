; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@HDAC_F_DMA_NOCACHE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @hdac_read_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdac_read_ivar(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.hdac_softc*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.hdac_softc* @device_get_softc(i32 %12)
  store %struct.hdac_softc* %13, %struct.hdac_softc** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @device_get_ivars(i32 %14)
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %11, align 8
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %84 [
    i32 136, label %18
    i32 128, label %21
    i32 135, label %30
    i32 133, label %39
    i32 132, label %48
    i32 129, label %57
    i32 130, label %61
    i32 134, label %65
    i32 131, label %75
  ]

18:                                               ; preds = %4
  %19 = load i64, i64* %11, align 8
  %20 = load i64*, i64** %9, align 8
  store i64 %19, i64* %20, align 8
  br label %86

21:                                               ; preds = %4
  %22 = load %struct.hdac_softc*, %struct.hdac_softc** %10, align 8
  %23 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %9, align 8
  store i64 %28, i64* %29, align 8
  br label %86

30:                                               ; preds = %4
  %31 = load %struct.hdac_softc*, %struct.hdac_softc** %10, align 8
  %32 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %9, align 8
  store i64 %37, i64* %38, align 8
  br label %86

39:                                               ; preds = %4
  %40 = load %struct.hdac_softc*, %struct.hdac_softc** %10, align 8
  %41 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i64, i64* %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %9, align 8
  store i64 %46, i64* %47, align 8
  br label %86

48:                                               ; preds = %4
  %49 = load %struct.hdac_softc*, %struct.hdac_softc** %10, align 8
  %50 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %9, align 8
  store i64 %55, i64* %56, align 8
  br label %86

57:                                               ; preds = %4
  %58 = load i32, i32* %6, align 4
  %59 = call i64 @pci_get_subvendor(i32 %58)
  %60 = load i64*, i64** %9, align 8
  store i64 %59, i64* %60, align 8
  br label %86

61:                                               ; preds = %4
  %62 = load i32, i32* %6, align 4
  %63 = call i64 @pci_get_subdevice(i32 %62)
  %64 = load i64*, i64** %9, align 8
  store i64 %63, i64* %64, align 8
  br label %86

65:                                               ; preds = %4
  %66 = load %struct.hdac_softc*, %struct.hdac_softc** %10, align 8
  %67 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @HDAC_F_DMA_NOCACHE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = sext i32 %72 to i64
  %74 = load i64*, i64** %9, align 8
  store i64 %73, i64* %74, align 8
  br label %86

75:                                               ; preds = %4
  %76 = load %struct.hdac_softc*, %struct.hdac_softc** %10, align 8
  %77 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 1, %78
  %80 = shl i32 1, %79
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = load i64*, i64** %9, align 8
  store i64 %82, i64* %83, align 8
  br label %86

84:                                               ; preds = %4
  %85 = load i32, i32* @ENOENT, align 4
  store i32 %85, i32* %5, align 4
  br label %87

86:                                               ; preds = %75, %65, %61, %57, %48, %39, %30, %21, %18
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %84
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.hdac_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_ivars(i32) #1

declare dso_local i64 @pci_get_subvendor(i32) #1

declare dso_local i64 @pci_get_subdevice(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
