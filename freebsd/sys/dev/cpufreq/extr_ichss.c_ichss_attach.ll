; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_ichss.c_ichss_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_ichss.c_ichss_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ichss_softc = type { i32, i32, %struct.TYPE_2__*, i32*, i32*, i8* }
%struct.TYPE_2__ = type { i32, i8*, i8*, i8*, i8* }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to alloc BM arb register\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to alloc control register\0A\00", align 1
@ich_device = common dso_local global i32 0, align 4
@ICHSS_PMCFG_OFFSET = common dso_local global i32 0, align 4
@ICHSS_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"enabling SpeedStep support\0A\00", align 1
@CPUFREQ_VAL_UNKNOWN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ichss_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ichss_attach(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ichss_softc*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call %struct.ichss_softc* @device_get_softc(i8* %6)
  store %struct.ichss_softc* %7, %struct.ichss_softc** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load %struct.ichss_softc*, %struct.ichss_softc** %4, align 8
  %10 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %9, i32 0, i32 5
  store i8* %8, i8** %10, align 8
  %11 = load %struct.ichss_softc*, %struct.ichss_softc** %4, align 8
  %12 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @SYS_RES_IOPORT, align 4
  %15 = load %struct.ichss_softc*, %struct.ichss_softc** %4, align 8
  %16 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %15, i32 0, i32 0
  %17 = load i32, i32* @RF_ACTIVE, align 4
  %18 = call i8* @bus_alloc_resource_any(i8* %13, i32 %14, i32* %16, i32 %17)
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.ichss_softc*, %struct.ichss_softc** %4, align 8
  %21 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %20, i32 0, i32 3
  store i32* %19, i32** %21, align 8
  %22 = load %struct.ichss_softc*, %struct.ichss_softc** %4, align 8
  %23 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @device_printf(i8* %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %2, align 4
  br label %118

30:                                               ; preds = %1
  %31 = load %struct.ichss_softc*, %struct.ichss_softc** %4, align 8
  %32 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load i8*, i8** %3, align 8
  %34 = load i32, i32* @SYS_RES_IOPORT, align 4
  %35 = load %struct.ichss_softc*, %struct.ichss_softc** %4, align 8
  %36 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %35, i32 0, i32 1
  %37 = load i32, i32* @RF_ACTIVE, align 4
  %38 = call i8* @bus_alloc_resource_any(i8* %33, i32 %34, i32* %36, i32 %37)
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.ichss_softc*, %struct.ichss_softc** %4, align 8
  %41 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %40, i32 0, i32 4
  store i32* %39, i32** %41, align 8
  %42 = load %struct.ichss_softc*, %struct.ichss_softc** %4, align 8
  %43 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %30
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @device_printf(i8* %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i8*, i8** %3, align 8
  %50 = load i32, i32* @SYS_RES_IOPORT, align 4
  %51 = load %struct.ichss_softc*, %struct.ichss_softc** %4, align 8
  %52 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ichss_softc*, %struct.ichss_softc** %4, align 8
  %55 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @bus_release_resource(i8* %49, i32 %50, i32 %53, i32* %56)
  %58 = load i32, i32* @ENXIO, align 4
  store i32 %58, i32* %2, align 4
  br label %118

59:                                               ; preds = %30
  %60 = load i32, i32* @ich_device, align 4
  %61 = load i32, i32* @ICHSS_PMCFG_OFFSET, align 4
  %62 = call i32 @pci_read_config(i32 %60, i32 %61, i32 4)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @ICHSS_ENABLE, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %59
  %68 = load i8*, i8** %3, align 8
  %69 = call i32 @device_printf(i8* %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @ich_device, align 4
  %71 = load i32, i32* @ICHSS_PMCFG_OFFSET, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @ICHSS_ENABLE, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @pci_write_config(i32 %70, i32 %71, i32 %74, i32 4)
  br label %76

76:                                               ; preds = %67, %59
  %77 = load i8*, i8** @CPUFREQ_VAL_UNKNOWN, align 8
  %78 = load %struct.ichss_softc*, %struct.ichss_softc** %4, align 8
  %79 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 4
  store i8* %77, i8** %82, align 8
  %83 = load i8*, i8** @CPUFREQ_VAL_UNKNOWN, align 8
  %84 = load %struct.ichss_softc*, %struct.ichss_softc** %4, align 8
  %85 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  store i8* %83, i8** %88, align 8
  %89 = load i8*, i8** @CPUFREQ_VAL_UNKNOWN, align 8
  %90 = load %struct.ichss_softc*, %struct.ichss_softc** %4, align 8
  %91 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  store i8* %89, i8** %94, align 8
  %95 = load %struct.ichss_softc*, %struct.ichss_softc** %4, align 8
  %96 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  store i32 1000, i32* %99, align 8
  %100 = load i8*, i8** %3, align 8
  %101 = load %struct.ichss_softc*, %struct.ichss_softc** %4, align 8
  %102 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  store i8* %100, i8** %105, align 8
  %106 = load %struct.ichss_softc*, %struct.ichss_softc** %4, align 8
  %107 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %106, i32 0, i32 2
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 1
  %110 = load %struct.ichss_softc*, %struct.ichss_softc** %4, align 8
  %111 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %110, i32 0, i32 2
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 0
  %114 = bitcast %struct.TYPE_2__* %109 to i8*
  %115 = bitcast %struct.TYPE_2__* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %114, i8* align 8 %115, i64 40, i1 false)
  %116 = load i8*, i8** %3, align 8
  %117 = call i32 @cpufreq_register(i8* %116)
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %76, %46, %26
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local %struct.ichss_softc* @device_get_softc(i8*) #1

declare dso_local i8* @bus_alloc_resource_any(i8*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i8*, i8*) #1

declare dso_local i32 @bus_release_resource(i8*, i32, i32, i32*) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpufreq_register(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
