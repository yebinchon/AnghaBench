; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_busdma.c_proto_busdma_mem_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_busdma.c_proto_busdma_mem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_busdma = type { i32, i32 }
%struct.proto_tag = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.proto_ioc_busdma = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i32 }
%struct.proto_callback_bundle = type { %struct.proto_ioc_busdma*, %struct.proto_md*, %struct.proto_busdma* }
%struct.proto_md = type { i32, i64, i32, i32, %struct.proto_tag* }

@M_PROTO_BUSDMA = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@proto_busdma_mem_alloc_callback = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@peers = common dso_local global i32 0, align 4
@mds = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proto_busdma*, %struct.proto_tag*, %struct.proto_ioc_busdma*)* @proto_busdma_mem_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proto_busdma_mem_alloc(%struct.proto_busdma* %0, %struct.proto_tag* %1, %struct.proto_ioc_busdma* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proto_busdma*, align 8
  %6 = alloca %struct.proto_tag*, align 8
  %7 = alloca %struct.proto_ioc_busdma*, align 8
  %8 = alloca %struct.proto_callback_bundle, align 8
  %9 = alloca %struct.proto_md*, align 8
  %10 = alloca i32, align 4
  store %struct.proto_busdma* %0, %struct.proto_busdma** %5, align 8
  store %struct.proto_tag* %1, %struct.proto_tag** %6, align 8
  store %struct.proto_ioc_busdma* %2, %struct.proto_ioc_busdma** %7, align 8
  %11 = load i32, i32* @M_PROTO_BUSDMA, align 4
  %12 = load i32, i32* @M_WAITOK, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.proto_md* @malloc(i32 32, i32 %11, i32 %14)
  store %struct.proto_md* %15, %struct.proto_md** %9, align 8
  %16 = load %struct.proto_tag*, %struct.proto_tag** %6, align 8
  %17 = load %struct.proto_md*, %struct.proto_md** %9, align 8
  %18 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %17, i32 0, i32 4
  store %struct.proto_tag* %16, %struct.proto_tag** %18, align 8
  %19 = load %struct.proto_busdma*, %struct.proto_busdma** %5, align 8
  %20 = getelementptr inbounds %struct.proto_busdma, %struct.proto_busdma* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.proto_tag*, %struct.proto_tag** %6, align 8
  %23 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.proto_tag*, %struct.proto_tag** %6, align 8
  %26 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.proto_tag*, %struct.proto_tag** %6, align 8
  %29 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %32 = load %struct.proto_tag*, %struct.proto_tag** %6, align 8
  %33 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.proto_tag*, %struct.proto_tag** %6, align 8
  %36 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.proto_tag*, %struct.proto_tag** %6, align 8
  %39 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.proto_md*, %struct.proto_md** %9, align 8
  %42 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %41, i32 0, i32 2
  %43 = call i32 @bus_dma_tag_create(i32 %21, i32 %24, i32 %27, i32 %30, i32 %31, i32* null, i32* null, i32 %34, i32 %37, i32 %40, i32 0, i32* null, i32* null, i32* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %3
  %47 = load %struct.proto_md*, %struct.proto_md** %9, align 8
  %48 = load i32, i32* @M_PROTO_BUSDMA, align 4
  %49 = call i32 @free(%struct.proto_md* %47, i32 %48)
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %4, align 4
  br label %161

51:                                               ; preds = %3
  %52 = load %struct.proto_md*, %struct.proto_md** %9, align 8
  %53 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.proto_md*, %struct.proto_md** %9, align 8
  %56 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %55, i32 0, i32 1
  %57 = load %struct.proto_md*, %struct.proto_md** %9, align 8
  %58 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %57, i32 0, i32 3
  %59 = call i32 @bus_dmamem_alloc(i32 %54, i64* %56, i32 0, i32* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %51
  %63 = load %struct.proto_md*, %struct.proto_md** %9, align 8
  %64 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @bus_dma_tag_destroy(i32 %65)
  %67 = load %struct.proto_md*, %struct.proto_md** %9, align 8
  %68 = load i32, i32* @M_PROTO_BUSDMA, align 4
  %69 = call i32 @free(%struct.proto_md* %67, i32 %68)
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %4, align 4
  br label %161

71:                                               ; preds = %51
  %72 = load %struct.proto_md*, %struct.proto_md** %9, align 8
  %73 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @pmap_kextract(i64 %74)
  %76 = load %struct.proto_md*, %struct.proto_md** %9, align 8
  %77 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.proto_busdma*, %struct.proto_busdma** %5, align 8
  %79 = getelementptr inbounds %struct.proto_callback_bundle, %struct.proto_callback_bundle* %8, i32 0, i32 2
  store %struct.proto_busdma* %78, %struct.proto_busdma** %79, align 8
  %80 = load %struct.proto_md*, %struct.proto_md** %9, align 8
  %81 = getelementptr inbounds %struct.proto_callback_bundle, %struct.proto_callback_bundle* %8, i32 0, i32 1
  store %struct.proto_md* %80, %struct.proto_md** %81, align 8
  %82 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %83 = getelementptr inbounds %struct.proto_callback_bundle, %struct.proto_callback_bundle* %8, i32 0, i32 0
  store %struct.proto_ioc_busdma* %82, %struct.proto_ioc_busdma** %83, align 8
  %84 = load %struct.proto_md*, %struct.proto_md** %9, align 8
  %85 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.proto_md*, %struct.proto_md** %9, align 8
  %88 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.proto_md*, %struct.proto_md** %9, align 8
  %91 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.proto_tag*, %struct.proto_tag** %6, align 8
  %94 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @proto_busdma_mem_alloc_callback, align 4
  %97 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %98 = call i32 @bus_dmamap_load(i32 %86, i32 %89, i64 %92, i32 %95, i32 %96, %struct.proto_callback_bundle* %8, i32 %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %120

101:                                              ; preds = %71
  %102 = load %struct.proto_md*, %struct.proto_md** %9, align 8
  %103 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.proto_md*, %struct.proto_md** %9, align 8
  %106 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.proto_md*, %struct.proto_md** %9, align 8
  %109 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @bus_dmamem_free(i32 %104, i64 %107, i32 %110)
  %112 = load %struct.proto_md*, %struct.proto_md** %9, align 8
  %113 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @bus_dma_tag_destroy(i32 %114)
  %116 = load %struct.proto_md*, %struct.proto_md** %9, align 8
  %117 = load i32, i32* @M_PROTO_BUSDMA, align 4
  %118 = call i32 @free(%struct.proto_md* %116, i32 %117)
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %4, align 4
  br label %161

120:                                              ; preds = %71
  %121 = load %struct.proto_tag*, %struct.proto_tag** %6, align 8
  %122 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %121, i32 0, i32 1
  %123 = load %struct.proto_md*, %struct.proto_md** %9, align 8
  %124 = load i32, i32* @peers, align 4
  %125 = call i32 @LIST_INSERT_HEAD(i32* %122, %struct.proto_md* %123, i32 %124)
  %126 = load %struct.proto_busdma*, %struct.proto_busdma** %5, align 8
  %127 = getelementptr inbounds %struct.proto_busdma, %struct.proto_busdma* %126, i32 0, i32 0
  %128 = load %struct.proto_md*, %struct.proto_md** %9, align 8
  %129 = load i32, i32* @mds, align 4
  %130 = call i32 @LIST_INSERT_HEAD(i32* %127, %struct.proto_md* %128, i32 %129)
  %131 = load %struct.proto_md*, %struct.proto_md** %9, align 8
  %132 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %135 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  store i64 %133, i64* %137, align 8
  %138 = load %struct.proto_tag*, %struct.proto_tag** %6, align 8
  %139 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %142 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 3
  store i32 %140, i32* %144, align 8
  %145 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %146 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  store i32 1, i32* %148, align 8
  %149 = load %struct.proto_md*, %struct.proto_md** %9, align 8
  %150 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %153 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 2
  store i32 %151, i32* %155, align 4
  %156 = load %struct.proto_md*, %struct.proto_md** %9, align 8
  %157 = bitcast %struct.proto_md* %156 to i8*
  %158 = ptrtoint i8* %157 to i64
  %159 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %160 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %120, %101, %62, %46
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local %struct.proto_md* @malloc(i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @free(%struct.proto_md*, i32) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i64*, i32, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @pmap_kextract(i64) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i64, i32, i32, %struct.proto_callback_bundle*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i64, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.proto_md*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
