; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_set_mw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_set_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_ctx = type { i32, %struct.ntb_transport_mw* }
%struct.ntb_transport_mw = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.ntb_load_cb_args = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to create MW tag of size %zu\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Unable to allocate MW buffer of size %zu\0A\00", align 1
@ntb_load_cb = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Unable to load MW buffer of size %zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_transport_ctx*, i32, i64)* @ntb_set_mw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_set_mw(%struct.ntb_transport_ctx* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ntb_transport_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ntb_transport_mw*, align 8
  %9 = alloca %struct.ntb_load_cb_args, align 8
  %10 = alloca i64, align 8
  store %struct.ntb_transport_ctx* %0, %struct.ntb_transport_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %11, i32 0, i32 1
  %13 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %13, i64 %15
  store %struct.ntb_transport_mw* %16, %struct.ntb_transport_mw** %8, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %149

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %24 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @roundup(i64 %22, i32 %25)
  store i64 %26, i64* %10, align 8
  %27 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %28 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %149

33:                                               ; preds = %21
  %34 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %35 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @ntb_free_mw(%struct.ntb_transport_ctx* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %45 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %47 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @bus_get_dma_tag(i32 %48)
  %50 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %51 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %54 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %57 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %58 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %61 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %64 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %63, i32 0, i32 2
  %65 = call i64 @bus_dma_tag_create(i32 %49, i32 %52, i32 0, i32 %55, i32 %56, i32* null, i32* null, i64 %59, i32 1, i64 %62, i32 0, i32* null, i32* null, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %42
  %68 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %69 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @ntb_printf(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %70)
  %72 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %73 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* @ENOMEM, align 4
  store i32 %74, i32* %4, align 4
  br label %149

75:                                               ; preds = %42
  %76 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %77 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %80 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %79, i32 0, i32 4
  %81 = bitcast i32* %80 to i8**
  %82 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %83 = load i32, i32* @BUS_DMA_ZERO, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %86 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %85, i32 0, i32 3
  %87 = call i64 @bus_dmamem_alloc(i32 %78, i8** %81, i32 %84, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %75
  %90 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %91 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @bus_dma_tag_destroy(i32 %92)
  %94 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %95 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @ntb_printf(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %96)
  %98 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %99 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  %100 = load i32, i32* @ENOMEM, align 4
  store i32 %100, i32* %4, align 4
  br label %149

101:                                              ; preds = %75
  %102 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %103 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %106 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %109 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %112 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* @ntb_load_cb, align 4
  %115 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %116 = call i64 @bus_dmamap_load(i32 %104, i32 %107, i32 %110, i64 %113, i32 %114, %struct.ntb_load_cb_args* %9, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %101
  %119 = getelementptr inbounds %struct.ntb_load_cb_args, %struct.ntb_load_cb_args* %9, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %144

122:                                              ; preds = %118, %101
  %123 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %124 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %127 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %130 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @bus_dmamem_free(i32 %125, i32 %128, i32 %131)
  %133 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %134 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @bus_dma_tag_destroy(i32 %135)
  %137 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %138 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @ntb_printf(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %139)
  %141 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %142 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %141, i32 0, i32 0
  store i64 0, i64* %142, align 8
  %143 = load i32, i32* @ENOMEM, align 4
  store i32 %143, i32* %4, align 4
  br label %149

144:                                              ; preds = %118
  %145 = getelementptr inbounds %struct.ntb_load_cb_args, %struct.ntb_load_cb_args* %9, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %148 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %144, %122, %89, %67, %32, %19
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i32 @ntb_free_mw(%struct.ntb_transport_ctx*, i32) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i64, i32, i64, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @ntb_printf(i32, i8*, i64) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i32, i64, i32, %struct.ntb_load_cb_args*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
