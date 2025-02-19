; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_ata_kauai.c_ata_kauai_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_ata_kauai.c_ata_kauai_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }
%struct.ata_kauai_softc = type { i32 }

@kauai_pci_devlist = common dso_local global %struct.TYPE_2__* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"shasta-ata\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"K2-UATA\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_kauai_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_kauai_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_kauai_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* null, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @pci_get_devid(i32 %10)
  store i64 %11, i64* %5, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %39, %1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kauai_pci_devlist, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %42

20:                                               ; preds = %12
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kauai_pci_devlist, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %21, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  store i32 1, i32* %9, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kauai_pci_devlist, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @device_set_desc(i32 %30, i32* %36)
  br label %38

38:                                               ; preds = %29, %20
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %12

42:                                               ; preds = %12
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @ENXIO, align 4
  store i32 %46, i32* %2, align 4
  br label %84

47:                                               ; preds = %42
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @ofw_bus_get_node(i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call %struct.ata_kauai_softc* @device_get_softc(i32 %50)
  store %struct.ata_kauai_softc* %51, %struct.ata_kauai_softc** %4, align 8
  %52 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %4, align 8
  %53 = call i32 @bzero(%struct.ata_kauai_softc* %52, i32 4)
  %54 = load i32, i32* %3, align 4
  %55 = call i8* @ofw_bus_get_compat(i32 %54)
  store i8* %55, i8** %7, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %47
  %59 = load i8*, i8** %7, align 8
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %4, align 8
  %64 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %58, %47
  %66 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %4, align 8
  %67 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %65
  %71 = load i8*, i8** %7, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load i8*, i8** %7, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73, %70
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @SYS_RES_IRQ, align 4
  %80 = call i32 @bus_set_resource(i32 %78, i32 %79, i32 0, i32 39, i32 1)
  br label %81

81:                                               ; preds = %77, %73, %65
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @ata_probe(i32 %82)
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %81, %45
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i64 @pci_get_devid(i32) #1

declare dso_local i32 @device_set_desc(i32, i32*) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local %struct.ata_kauai_softc* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.ata_kauai_softc*, i32) #1

declare dso_local i8* @ofw_bus_get_compat(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @bus_set_resource(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ata_probe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
