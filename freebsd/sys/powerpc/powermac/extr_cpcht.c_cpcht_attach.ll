; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cpcht.c_cpcht_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cpcht.c_cpcht_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.cpcht_softc = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@OFW_PCI_QUIRK_RANGES_ON_CHILDREN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"cpcht irq\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@IRQ_INTERNAL = common dso_local global i32 0, align 4
@cpcht_irqmap = common dso_local global %struct.TYPE_5__* null, align 8
@CPCHT_IOPORT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cpcht_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcht_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpcht_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @ofw_bus_get_node(i32 %9)
  store i64 %10, i64* %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.cpcht_softc* @device_get_softc(i32 %11)
  store %struct.cpcht_softc* %12, %struct.cpcht_softc** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %15 = call i32 @OF_getencprop(i64 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %14, i32 12)
  %16 = icmp slt i32 %15, 12
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %80

19:                                               ; preds = %1
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @OF_getproplen(i64 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* @OFW_PCI_QUIRK_RANGES_ON_CHILDREN, align 4
  %25 = load %struct.cpcht_softc*, %struct.cpcht_softc** %4, align 8
  %26 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  br label %28

28:                                               ; preds = %23, %19
  %29 = load %struct.cpcht_softc*, %struct.cpcht_softc** %4, align 8
  %30 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @pmap_mapdev(i32 %32, i32 %34)
  %36 = load %struct.cpcht_softc*, %struct.cpcht_softc** %4, align 8
  %37 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %36, i32 0, i32 3
  store i64 %35, i64* %37, align 8
  %38 = load %struct.cpcht_softc*, %struct.cpcht_softc** %4, align 8
  %39 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = call i32 @bzero(%struct.TYPE_5__* %40, i32 8)
  %42 = load %struct.cpcht_softc*, %struct.cpcht_softc** %4, align 8
  %43 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %42, i32 0, i32 1
  %44 = load i32, i32* @MTX_DEF, align 4
  %45 = call i32 @mtx_init(i32* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %44)
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %58, %28
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 8
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load i32, i32* @IRQ_INTERNAL, align 4
  %51 = load %struct.cpcht_softc*, %struct.cpcht_softc** %4, align 8
  %52 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 %50, i32* %57, align 4
  br label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %46

61:                                               ; preds = %46
  %62 = load i64, i64* %5, align 8
  %63 = call i64 @OF_child(i64 %62)
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %71, %61
  %65 = load i64, i64* %6, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i32, i32* %3, align 4
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @cpcht_configure_htbridge(i32 %68, i64 %69)
  br label %71

71:                                               ; preds = %67
  %72 = load i64, i64* %6, align 8
  %73 = call i64 @OF_peer(i64 %72)
  store i64 %73, i64* %6, align 8
  br label %64

74:                                               ; preds = %64
  %75 = load %struct.cpcht_softc*, %struct.cpcht_softc** %4, align 8
  %76 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  store %struct.TYPE_5__* %77, %struct.TYPE_5__** @cpcht_irqmap, align 8
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @ofw_pci_attach(i32 %78)
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %74, %17
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local %struct.cpcht_softc* @device_get_softc(i32) #1

declare dso_local i32 @OF_getencprop(i64, i8*, i32*, i32) #1

declare dso_local i64 @OF_getproplen(i64, i8*) #1

declare dso_local i64 @pmap_mapdev(i32, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32 @cpcht_configure_htbridge(i32, i64) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @ofw_pci_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
