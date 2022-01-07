; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_ahc_isa.c_ahc_isa_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_ahc_isa.c_ahc_isa_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7770_identity = type { i32 }
%struct.resource = type { i32 }
%struct.ahc_softc = type { i32, i32 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@AHC_NSEG = common dso_local global i32 0, align 4
@AHC_MAXTRANSFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"ahc_isa_attach: Could not allocate DMA tag - error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ahc_isa_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahc_isa_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aic7770_identity*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.ahc_softc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SYS_RES_IOPORT, align 4
  %14 = load i32, i32* @RF_ACTIVE, align 4
  %15 = call %struct.resource* @bus_alloc_resource_any(i32 %12, i32 %13, i32* %10, i32 %14)
  store %struct.resource* %15, %struct.resource** %7, align 8
  %16 = load %struct.resource*, %struct.resource** %7, align 8
  %17 = icmp eq %struct.resource* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  store i32 %19, i32* %2, align 4
  br label %101

20:                                               ; preds = %1
  %21 = load %struct.resource*, %struct.resource** %7, align 8
  %22 = call i32 @rman_get_bustag(%struct.resource* %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.resource*, %struct.resource** %7, align 8
  %24 = call i32 @rman_get_bushandle(%struct.resource* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.aic7770_identity* @ahc_isa_find_device(i32 %25, i32 %26)
  store %struct.aic7770_identity* %27, %struct.aic7770_identity** %4, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @SYS_RES_IOPORT, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.resource*, %struct.resource** %7, align 8
  %32 = call i32 @bus_release_resource(i32 %28, i32 %29, i32 %30, %struct.resource* %31)
  %33 = load %struct.aic7770_identity*, %struct.aic7770_identity** %4, align 8
  %34 = icmp eq %struct.aic7770_identity* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %20
  %36 = load i32, i32* @ENODEV, align 4
  store i32 %36, i32* %2, align 4
  br label %101

37:                                               ; preds = %20
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @device_get_nameunit(i32 %38)
  %40 = call i64 @strlen(i32 %39)
  %41 = add nsw i64 %40, 1
  %42 = load i32, i32* @M_DEVBUF, align 4
  %43 = load i32, i32* @M_NOWAIT, align 4
  %44 = call i8* @malloc(i64 %41, i32 %42, i32 %43)
  store i8* %44, i8** %9, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* @ENOMEM, align 4
  store i32 %48, i32* %2, align 4
  br label %101

49:                                               ; preds = %37
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @device_get_nameunit(i32 %51)
  %53 = call i32 @strcpy(i8* %50, i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = call %struct.ahc_softc* @ahc_alloc(i32 %54, i8* %55)
  store %struct.ahc_softc* %56, %struct.ahc_softc** %8, align 8
  %57 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %58 = icmp eq %struct.ahc_softc* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* @ENOMEM, align 4
  store i32 %60, i32* %2, align 4
  br label %101

61:                                               ; preds = %49
  %62 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @device_get_unit(i32 %63)
  %65 = call i32 @ahc_set_unit(%struct.ahc_softc* %62, i32 %64)
  %66 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @bus_get_dma_tag(i32 %67)
  %69 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %70 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %71 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %72 = load i32, i32* @AHC_NSEG, align 4
  %73 = load i32, i32* @AHC_MAXTRANSFER_SIZE, align 4
  %74 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %75 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %74, i32 0, i32 1
  %76 = call i32 @aic_dma_tag_create(%struct.ahc_softc* %66, i32 %68, i32 1, i32 0, i32 %69, i32 %70, i32* null, i32* null, i32 %71, i32 %72, i32 %73, i32 0, i32* %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %61
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %83 = call i32 @ahc_free(%struct.ahc_softc* %82)
  %84 = load i32, i32* @ENOMEM, align 4
  store i32 %84, i32* %2, align 4
  br label %101

85:                                               ; preds = %61
  %86 = load i32, i32* %3, align 4
  %87 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %88 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %90 = load %struct.aic7770_identity*, %struct.aic7770_identity** %4, align 8
  %91 = call i32 @aic7770_config(%struct.ahc_softc* %89, %struct.aic7770_identity* %90, i32 0)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %85
  %95 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %96 = call i32 @ahc_free(%struct.ahc_softc* %95)
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %2, align 4
  br label %101

98:                                               ; preds = %85
  %99 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %100 = call i32 @ahc_attach(%struct.ahc_softc* %99)
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %98, %94, %79, %59, %47, %35, %18
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bustag(%struct.resource*) #1

declare dso_local i32 @rman_get_bushandle(%struct.resource*) #1

declare dso_local %struct.aic7770_identity* @ahc_isa_find_device(i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

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

declare dso_local i32 @aic7770_config(%struct.ahc_softc*, %struct.aic7770_identity*, i32) #1

declare dso_local i32 @ahc_attach(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
