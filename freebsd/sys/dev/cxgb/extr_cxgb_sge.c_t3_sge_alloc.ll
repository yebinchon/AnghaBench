; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_t3_sge_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_t3_sge_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_UNRESTRICTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Cannot allocate parent DMA tag\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot allocate RX DMA tag\0A\00", align 1
@MJUM16BYTES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Cannot allocate RX jumbo DMA tag\0A\00", align 1
@TX_MAX_SIZE = common dso_local global i32 0, align 4
@TX_MAX_SEGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Cannot allocate TX DMA tag\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_sge_alloc(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @bus_get_dma_tag(i32 %6)
  %8 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %9 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %10 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %11 = load i32, i32* @BUS_SPACE_UNRESTRICTED, align 4
  %12 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = call i64 @bus_dma_tag_create(i32 %7, i32 1, i32 0, i32 %8, i32 %9, i32* null, i32* null, i32 %10, i32 %11, i32 %12, i32 0, i32* null, i32* null, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  store i32 %22, i32* %2, align 4
  br label %84

23:                                               ; preds = %1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MCLBYTES, align 4
  %28 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %29 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %30 = load i32, i32* @MCLBYTES, align 4
  %31 = load i32, i32* @MCLBYTES, align 4
  %32 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 4
  %35 = call i64 @bus_dma_tag_create(i32 %26, i32 %27, i32 0, i32 %28, i32 %29, i32* null, i32* null, i32 %30, i32 1, i32 %31, i32 %32, i32* null, i32* null, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %23
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @ENOMEM, align 4
  store i32 %42, i32* %2, align 4
  br label %84

43:                                               ; preds = %23
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MJUM16BYTES, align 4
  %48 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %49 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %50 = load i32, i32* @MJUM16BYTES, align 4
  %51 = load i32, i32* @MJUM16BYTES, align 4
  %52 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  %55 = call i64 @bus_dma_tag_create(i32 %46, i32 %47, i32 0, i32 %48, i32 %49, i32* null, i32* null, i32 %50, i32 1, i32 %51, i32 %52, i32* null, i32* null, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %43
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* @ENOMEM, align 4
  store i32 %62, i32* %2, align 4
  br label %84

63:                                               ; preds = %43
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %68 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %69 = load i32, i32* @TX_MAX_SIZE, align 4
  %70 = load i32, i32* @TX_MAX_SEGS, align 4
  %71 = load i32, i32* @TX_MAX_SIZE, align 4
  %72 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = call i64 @bus_dma_tag_create(i32 %66, i32 1, i32 0, i32 %67, i32 %68, i32* null, i32* null, i32 %69, i32 %70, i32 %71, i32 %72, i32* null, i32* null, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %63
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @device_printf(i32 %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* @ENOMEM, align 4
  store i32 %82, i32* %2, align 4
  br label %84

83:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %77, %57, %37, %17
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
