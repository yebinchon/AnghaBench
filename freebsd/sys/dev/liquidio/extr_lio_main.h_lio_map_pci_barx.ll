; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.h_lio_map_pci_barx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.h_lio_map_pci_barx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32* }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unable to allocate bus resource: memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"BAR%d Tag 0x%llx Handle 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*, i32)* @lio_map_pci_barx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_map_pci_barx(%struct.octeon_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = mul nsw i32 %7, 2
  %9 = call i32 @PCIR_BAR(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %11 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SYS_RES_MEMORY, align 4
  %14 = load i32, i32* @RF_ACTIVE, align 4
  %15 = call i32* @bus_alloc_resource_any(i32 %12, i32 %13, i32* %6, i32 %14)
  %16 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %17 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i32* %15, i32** %22, align 8
  %23 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %24 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %34 = call i32 @lio_dev_err(%struct.octeon_device* %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %3, align 4
  br label %90

36:                                               ; preds = %2
  %37 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %38 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @rman_get_bustag(i32* %44)
  %46 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %47 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 %45, i32* %52, align 4
  %53 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %54 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @rman_get_bushandle(i32* %60)
  %62 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %63 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 %61, i32* %68, align 8
  %69 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %72 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @LIO_CAST64(i32 %78)
  %80 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %81 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @LIO_CAST64(i32 %87)
  %89 = call i32 @lio_dev_dbg(%struct.octeon_device* %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %79, i32 %88)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %36, %32
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @lio_dev_dbg(%struct.octeon_device*, i8*, i32, i32, i32) #1

declare dso_local i32 @LIO_CAST64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
