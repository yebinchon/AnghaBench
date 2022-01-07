; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_ahc_pci.c_ahc_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_ahc_pci.c_ahc_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_pci_identity = type { i32 }
%struct.ahc_softc = type { i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AHC_39BIT_ADDRESSING = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@AHC_NSEG = common dso_local global i32 0, align 4
@AHC_MAXTRANSFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"ahc_pci_attach: Could not allocate DMA tag - error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ahc_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahc_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahc_pci_identity*, align 8
  %5 = alloca %struct.ahc_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.ahc_pci_identity* @ahc_find_pci_device(i32 %8)
  store %struct.ahc_pci_identity* %9, %struct.ahc_pci_identity** %4, align 8
  %10 = load %struct.ahc_pci_identity*, %struct.ahc_pci_identity** %4, align 8
  %11 = icmp eq %struct.ahc_pci_identity* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %2, align 4
  br label %90

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_get_nameunit(i32 %15)
  %17 = call i64 @strlen(i32 %16)
  %18 = add nsw i64 %17, 1
  %19 = load i32, i32* @M_DEVBUF, align 4
  %20 = load i32, i32* @M_NOWAIT, align 4
  %21 = call i8* @malloc(i64 %18, i32 %19, i32 %20)
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* %2, align 4
  br label %90

26:                                               ; preds = %14
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @device_get_nameunit(i32 %28)
  %30 = call i32 @strcpy(i8* %27, i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = call %struct.ahc_softc* @ahc_alloc(i32 %31, i8* %32)
  store %struct.ahc_softc* %33, %struct.ahc_softc** %5, align 8
  %34 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %35 = icmp eq %struct.ahc_softc* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* @ENOMEM, align 4
  store i32 %37, i32* %2, align 4
  br label %90

38:                                               ; preds = %26
  %39 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @device_get_unit(i32 %40)
  %42 = call i32 @ahc_set_unit(%struct.ahc_softc* %39, i32 %41)
  %43 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @bus_get_dma_tag(i32 %44)
  %46 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %47 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @AHC_39BIT_ADDRESSING, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  br label %56

53:                                               ; preds = %38
  %54 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %55 = sext i32 %54 to i64
  br label %56

56:                                               ; preds = %53, %52
  %57 = phi i64 [ 549755813887, %52 ], [ %55, %53 ]
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %60 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %61 = load i32, i32* @AHC_NSEG, align 4
  %62 = load i32, i32* @AHC_MAXTRANSFER_SIZE, align 4
  %63 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %64 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %63, i32 0, i32 2
  %65 = call i32 @aic_dma_tag_create(%struct.ahc_softc* %43, i32 %45, i32 1, i32 0, i32 %58, i32 %59, i32* null, i32* null, i32 %60, i32 %61, i32 %62, i32 0, i32* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %56
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %72 = call i32 @ahc_free(%struct.ahc_softc* %71)
  %73 = load i32, i32* @ENOMEM, align 4
  store i32 %73, i32* %2, align 4
  br label %90

74:                                               ; preds = %56
  %75 = load i32, i32* %3, align 4
  %76 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %77 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %79 = load %struct.ahc_pci_identity*, %struct.ahc_pci_identity** %4, align 8
  %80 = call i32 @ahc_pci_config(%struct.ahc_softc* %78, %struct.ahc_pci_identity* %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %85 = call i32 @ahc_free(%struct.ahc_softc* %84)
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %2, align 4
  br label %90

87:                                               ; preds = %74
  %88 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %89 = call i32 @ahc_attach(%struct.ahc_softc* %88)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %87, %83, %68, %36, %24, %12
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.ahc_pci_identity* @ahc_find_pci_device(i32) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local %struct.ahc_softc* @ahc_alloc(i32, i8*) #1

declare dso_local i32 @ahc_set_unit(%struct.ahc_softc*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @aic_dma_tag_create(%struct.ahc_softc*, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @ahc_free(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_pci_config(%struct.ahc_softc*, %struct.ahc_pci_identity*) #1

declare dso_local i32 @ahc_attach(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
