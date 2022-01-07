; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ichwd/extr_ichwd.c_ichwd_lpc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ichwd/extr_ichwd.c_ichwd_lpc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ichwd_softc = type { i32, i32, i32, i32*, i64, i32*, i32*, i32, i32* }
%struct.ichwd_device = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@ICH_PMBASE = common dso_local global i32 0, align 4
@ICH_PMBASE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ICH PMBASE register is empty\0A\00", align 1
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SMI_BASE = common dso_local global i64 0, align 8
@SMI_LEN = common dso_local global i64 0, align 8
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"unable to reserve SMI registers\0A\00", align 1
@TCO_BASE = common dso_local global i64 0, align 8
@TCO_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"unable to reserve TCO registers\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"unable to reserve GCS registers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ichwd_lpc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ichwd_lpc_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ichwd_softc*, align 8
  %5 = alloca %struct.ichwd_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.ichwd_softc* @device_get_softc(i32* %8)
  store %struct.ichwd_softc* %9, %struct.ichwd_softc** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @device_get_parent(i32* %10)
  %12 = call i32* @ichwd_find_ich_lpc_bridge(i32 %11, %struct.ichwd_device** %5)
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %2, align 4
  br label %138

17:                                               ; preds = %1
  %18 = load i32*, i32** %6, align 8
  %19 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %20 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %19, i32 0, i32 8
  store i32* %18, i32** %20, align 8
  %21 = load %struct.ichwd_device*, %struct.ichwd_device** %5, align 8
  %22 = getelementptr inbounds %struct.ichwd_device, %struct.ichwd_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %25 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ichwd_device*, %struct.ichwd_device** %5, align 8
  %27 = getelementptr inbounds %struct.ichwd_device, %struct.ichwd_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %30 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @ICH_PMBASE, align 4
  %33 = call i32 @pci_read_config(i32* %31, i32 %32, i32 2)
  %34 = load i32, i32* @ICH_PMBASE_MASK, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %17
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @device_printf(i32* %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %2, align 4
  br label %138

42:                                               ; preds = %17
  %43 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %44 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* @SYS_RES_IOPORT, align 4
  %47 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %48 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = load i64, i64* @SMI_BASE, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = load i64, i64* @SMI_BASE, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i64, i64* @SMI_LEN, align 8
  %58 = add nsw i64 %56, %57
  %59 = sub nsw i64 %58, 1
  %60 = load i64, i64* @SMI_LEN, align 8
  %61 = load i32, i32* @RF_ACTIVE, align 4
  %62 = load i32, i32* @RF_SHAREABLE, align 4
  %63 = or i32 %61, %62
  %64 = call i8* @bus_alloc_resource(i32* %45, i32 %46, i32* %48, i64 %52, i64 %59, i64 %60, i32 %63)
  %65 = bitcast i8* %64 to i32*
  %66 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %67 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %66, i32 0, i32 6
  store i32* %65, i32** %67, align 8
  %68 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %69 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %68, i32 0, i32 6
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %42
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @device_printf(i32* %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* @ENXIO, align 4
  store i32 %75, i32* %2, align 4
  br label %138

76:                                               ; preds = %42
  %77 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %78 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %77, i32 0, i32 2
  store i32 1, i32* %78, align 8
  %79 = load i32*, i32** %3, align 8
  %80 = load i32, i32* @SYS_RES_IOPORT, align 4
  %81 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %82 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %81, i32 0, i32 2
  %83 = load i32, i32* %7, align 4
  %84 = zext i32 %83 to i64
  %85 = load i64, i64* @TCO_BASE, align 8
  %86 = add nsw i64 %84, %85
  %87 = load i32, i32* %7, align 4
  %88 = zext i32 %87 to i64
  %89 = load i64, i64* @TCO_BASE, align 8
  %90 = add nsw i64 %88, %89
  %91 = load i64, i64* @TCO_LEN, align 8
  %92 = add nsw i64 %90, %91
  %93 = sub nsw i64 %92, 1
  %94 = load i64, i64* @TCO_LEN, align 8
  %95 = load i32, i32* @RF_ACTIVE, align 4
  %96 = load i32, i32* @RF_SHAREABLE, align 4
  %97 = or i32 %95, %96
  %98 = call i8* @bus_alloc_resource(i32* %79, i32 %80, i32* %82, i64 %86, i64 %93, i64 %94, i32 %97)
  %99 = bitcast i8* %98 to i32*
  %100 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %101 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %100, i32 0, i32 5
  store i32* %99, i32** %101, align 8
  %102 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %103 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %102, i32 0, i32 5
  %104 = load i32*, i32** %103, align 8
  %105 = icmp eq i32* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %76
  %107 = load i32*, i32** %3, align 8
  %108 = call i32 @device_printf(i32* %107, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i32, i32* @ENXIO, align 4
  store i32 %109, i32* %2, align 4
  br label %138

110:                                              ; preds = %76
  %111 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %112 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %111, i32 0, i32 4
  store i64 0, i64* %112, align 8
  %113 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %114 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp sge i32 %115, 2
  br i1 %116, label %117, label %137

117:                                              ; preds = %110
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* @SYS_RES_MEMORY, align 4
  %120 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %121 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %120, i32 0, i32 4
  %122 = load i32, i32* @RF_ACTIVE, align 4
  %123 = load i32, i32* @RF_SHAREABLE, align 4
  %124 = or i32 %122, %123
  %125 = call i32* @bus_alloc_resource_any(i32* %118, i32 %119, i64* %121, i32 %124)
  %126 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %127 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %126, i32 0, i32 3
  store i32* %125, i32** %127, align 8
  %128 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %129 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %117
  %133 = load i32*, i32** %3, align 8
  %134 = call i32 @device_printf(i32* %133, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %135 = load i32, i32* @ENXIO, align 4
  store i32 %135, i32* %2, align 4
  br label %138

136:                                              ; preds = %117
  br label %137

137:                                              ; preds = %136, %110
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %137, %132, %106, %72, %38, %15
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.ichwd_softc* @device_get_softc(i32*) #1

declare dso_local i32* @ichwd_find_ich_lpc_bridge(i32, %struct.ichwd_device**) #1

declare dso_local i32 @device_get_parent(i32*) #1

declare dso_local i32 @pci_read_config(i32*, i32, i32) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i8* @bus_alloc_resource(i32*, i32, i32*, i64, i64, i64, i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
