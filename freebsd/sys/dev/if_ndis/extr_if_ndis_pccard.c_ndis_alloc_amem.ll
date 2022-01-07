; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis_pccard.c_ndis_alloc_amem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis_pccard.c_ndis_alloc_amem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndis_softc = type { i32, i32, i32*, i32, i32 }

@NDIS_AM_RID = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to allocate attribute memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"CARD_SET_MEMORY_OFFSET() returned 0x%x\0A\00", align 1
@PCCARD_A_MEM_ATTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"CARD_SET_RES_FLAGS() returned 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ndis_softc*)* @ndis_alloc_amem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndis_alloc_amem(%struct.ndis_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ndis_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ndis_softc* %0, %struct.ndis_softc** %3, align 8
  %6 = load i32, i32* @NDIS_AM_RID, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SYS_RES_MEMORY, align 4
  %11 = load i32, i32* @RF_ACTIVE, align 4
  %12 = call i32* @bus_alloc_resource_anywhere(i32 %9, i32 %10, i32* %5, i32 4096, i32 %11)
  %13 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %13, i32 0, i32 2
  store i32* %12, i32** %14, align 8
  %15 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32, i8*, ...) @device_printf(i32 %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %90

25:                                               ; preds = %1
  %26 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %30, i32 0, i32 3
  %32 = load i32, i32* @SYS_RES_MEMORY, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %35 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @rman_get_start(i32* %36)
  %38 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @rman_get_end(i32* %40)
  %42 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %43 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @rman_get_size(i32* %44)
  %46 = call i32 @resource_list_add(i32* %31, i32 %32, i32 %33, i32 %37, i32 %41, i32 %45)
  %47 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %48 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @device_get_parent(i32 %49)
  %51 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %52 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @CARD_SET_MEMORY_OFFSET(i32 %50, i32 %53, i32 %54, i32 0, i32* null)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %25
  %59 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %60 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 (i32, i8*, ...) @device_printf(i32 %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %90

65:                                               ; preds = %25
  %66 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %67 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @device_get_parent(i32 %68)
  %70 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %71 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @SYS_RES_MEMORY, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @PCCARD_A_MEM_ATTR, align 4
  %76 = call i32 @CARD_SET_RES_FLAGS(i32 %69, i32 %72, i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %65
  %80 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %81 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 (i32, i8*, ...) @device_printf(i32 %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %90

86:                                               ; preds = %65
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %89 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %86, %79, %58, %19
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32* @bus_alloc_resource_anywhere(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @resource_list_add(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rman_get_start(i32*) #1

declare dso_local i32 @rman_get_end(i32*) #1

declare dso_local i32 @rman_get_size(i32*) #1

declare dso_local i32 @CARD_SET_MEMORY_OFFSET(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @CARD_SET_RES_FLAGS(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
