; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wi_softc = type { i64, i32, i32, i32, i32, i32, i32*, i32*, i8*, i8*, i32*, i32 }

@WI_BUS_PCI_NATIVE = common dso_local global i64 0, align 8
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"No I/O space?!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"No Mem space on prism2.5?\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@WI_BUS_PCCARD = common dso_local global i64 0, align 8
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"No irq?!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wi_alloc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.wi_softc*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.wi_softc* @device_get_softc(i32 %7)
  store %struct.wi_softc* %8, %struct.wi_softc** %6, align 8
  %9 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %10 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @WI_BUS_PCI_NATIVE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %55

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %17 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @SYS_RES_IOPORT, align 4
  %20 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %21 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %20, i32 0, i32 1
  %22 = call i32 @rman_make_alignment_flags(i32 64)
  %23 = load i32, i32* @RF_ACTIVE, align 4
  %24 = or i32 %22, %23
  %25 = call i32* @bus_alloc_resource_anywhere(i32 %18, i32 %19, i32* %21, i32 64, i32 %24)
  %26 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %27 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %26, i32 0, i32 10
  store i32* %25, i32** %27, align 8
  %28 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %29 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %28, i32 0, i32 10
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %14
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %3, align 4
  br label %130

36:                                               ; preds = %14
  %37 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %38 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %37, i32 0, i32 10
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @rman_get_start(i32* %39)
  %41 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %42 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %41, i32 0, i32 11
  store i32 %40, i32* %42, align 8
  %43 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %44 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %43, i32 0, i32 10
  %45 = load i32*, i32** %44, align 8
  %46 = call i8* @rman_get_bustag(i32* %45)
  %47 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %48 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %47, i32 0, i32 9
  store i8* %46, i8** %48, align 8
  %49 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %50 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %49, i32 0, i32 10
  %51 = load i32*, i32** %50, align 8
  %52 = call i8* @rman_get_bushandle(i32* %51)
  %53 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %54 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %53, i32 0, i32 8
  store i8* %52, i8** %54, align 8
  br label %89

55:                                               ; preds = %2
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %58 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @SYS_RES_MEMORY, align 4
  %61 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %62 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %61, i32 0, i32 2
  %63 = load i32, i32* @RF_ACTIVE, align 4
  %64 = call i8* @bus_alloc_resource_any(i32 %59, i32 %60, i32* %62, i32 %63)
  %65 = bitcast i8* %64 to i32*
  %66 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %67 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %66, i32 0, i32 7
  store i32* %65, i32** %67, align 8
  %68 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %69 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %68, i32 0, i32 7
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %55
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @device_printf(i32 %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* @ENXIO, align 4
  store i32 %75, i32* %3, align 4
  br label %130

76:                                               ; preds = %55
  %77 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %78 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %77, i32 0, i32 7
  %79 = load i32*, i32** %78, align 8
  %80 = call i8* @rman_get_bustag(i32* %79)
  %81 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %82 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %81, i32 0, i32 9
  store i8* %80, i8** %82, align 8
  %83 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %84 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %83, i32 0, i32 7
  %85 = load i32*, i32** %84, align 8
  %86 = call i8* @rman_get_bushandle(i32* %85)
  %87 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %88 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %87, i32 0, i32 8
  store i8* %86, i8** %88, align 8
  br label %89

89:                                               ; preds = %76, %36
  %90 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %91 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %90, i32 0, i32 3
  store i32 0, i32* %91, align 8
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @SYS_RES_IRQ, align 4
  %94 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %95 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %94, i32 0, i32 3
  %96 = load i32, i32* @RF_ACTIVE, align 4
  %97 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %98 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @WI_BUS_PCCARD, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %89
  br label %105

103:                                              ; preds = %89
  %104 = load i32, i32* @RF_SHAREABLE, align 4
  br label %105

105:                                              ; preds = %103, %102
  %106 = phi i32 [ 0, %102 ], [ %104, %103 ]
  %107 = or i32 %96, %106
  %108 = call i8* @bus_alloc_resource_any(i32 %92, i32 %93, i32* %95, i32 %107)
  %109 = bitcast i8* %108 to i32*
  %110 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %111 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %110, i32 0, i32 6
  store i32* %109, i32** %111, align 8
  %112 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %113 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %112, i32 0, i32 6
  %114 = load i32*, i32** %113, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %105
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @wi_free(i32 %117)
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @device_printf(i32 %119, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %121 = load i32, i32* @ENXIO, align 4
  store i32 %121, i32* %3, align 4
  br label %130

122:                                              ; preds = %105
  %123 = load i32, i32* %4, align 4
  %124 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %125 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @device_get_unit(i32 %126)
  %128 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  %129 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 4
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %122, %116, %72, %32
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.wi_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_anywhere(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @rman_make_alignment_flags(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_start(i32*) #1

declare dso_local i8* @rman_get_bustag(i32*) #1

declare dso_local i8* @rman_get_bushandle(i32*) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @wi_free(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
