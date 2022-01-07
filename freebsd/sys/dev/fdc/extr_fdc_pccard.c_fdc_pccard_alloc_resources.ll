; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc_pccard.c_fdc_pccard_alloc_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc_pccard.c_fdc_pccard_alloc_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdc_data = type { i32*, i32*, i32, i32*, i32, i32*, %struct.resource** }
%struct.resource = type { i32 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cannot alloc I/O port range\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@FDC_MAXREG = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"cannot reserve interrupt line\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fdc_data*)* @fdc_pccard_alloc_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdc_pccard_alloc_resources(i32 %0, %struct.fdc_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fdc_data*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.fdc_data* %1, %struct.fdc_data** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SYS_RES_IOPORT, align 4
  %11 = load i32, i32* @RF_ACTIVE, align 4
  %12 = call i8* @bus_alloc_resource_any(i32 %9, i32 %10, i32* %7, i32 %11)
  %13 = bitcast i8* %12 to %struct.resource*
  store %struct.resource* %13, %struct.resource** %6, align 8
  %14 = load %struct.resource*, %struct.resource** %6, align 8
  %15 = icmp eq %struct.resource* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %3, align 4
  br label %85

20:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %55, %20
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @FDC_MAXREG, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %58

25:                                               ; preds = %21
  %26 = load %struct.resource*, %struct.resource** %6, align 8
  %27 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %28 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %27, i32 0, i32 6
  %29 = load %struct.resource**, %struct.resource*** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.resource*, %struct.resource** %29, i64 %31
  store %struct.resource* %26, %struct.resource** %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %35 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %33, i32* %39, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %42 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %40, i32* %46, align 4
  %47 = load %struct.resource*, %struct.resource** %6, align 8
  %48 = call i32 @rman_get_bushandle(%struct.resource* %47)
  %49 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %50 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %49, i32 0, i32 5
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %48, i32* %54, align 4
  br label %55

55:                                               ; preds = %25
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %21

58:                                               ; preds = %21
  %59 = load %struct.resource*, %struct.resource** %6, align 8
  %60 = call i32 @rman_get_bustag(%struct.resource* %59)
  %61 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %62 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %64 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %63, i32 0, i32 2
  store i32 0, i32* %64, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @SYS_RES_IRQ, align 4
  %67 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %68 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %67, i32 0, i32 2
  %69 = load i32, i32* @RF_ACTIVE, align 4
  %70 = load i32, i32* @RF_SHAREABLE, align 4
  %71 = or i32 %69, %70
  %72 = call i8* @bus_alloc_resource_any(i32 %65, i32 %66, i32* %68, i32 %71)
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %75 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %74, i32 0, i32 3
  store i32* %73, i32** %75, align 8
  %76 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %77 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %58
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @device_printf(i32 %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* @ENXIO, align 4
  store i32 %83, i32* %3, align 4
  br label %85

84:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %80, %16
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bushandle(%struct.resource*) #1

declare dso_local i32 @rman_get_bustag(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
