; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/test/extr_ntb_tool.c_tool_setup_mw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/test/extr_ntb_tool.c_tool_setup_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tool_ctx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tool_mw* }
%struct.tool_mw = type { i64, i64, i64, i64, i64, i8*, i32, i32, i32 }
%struct.ntb_tool_load_cb_args = type { i64, i64 }

@.str = private unnamed_addr constant [35 x i8] c"mw_size %zi req_size %zi buff %zi\0A\00", align 1
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Unable to create MW tag of size %zu/%zu\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Unable to allocate MW buffer of size %zu/%zu\0A\00", align 1
@ntb_tool_load_cb = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Unable to load MW buffer of size %zu/%zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tool_ctx*, i32, i32, i64)* @tool_setup_mw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tool_setup_mw(%struct.tool_ctx* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tool_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.tool_mw*, align 8
  %11 = alloca %struct.ntb_tool_load_cb_args, align 8
  %12 = alloca i32, align 4
  store %struct.tool_ctx* %0, %struct.tool_ctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load %struct.tool_ctx*, %struct.tool_ctx** %6, align 8
  %14 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.tool_mw*, %struct.tool_mw** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %20, i64 %22
  store %struct.tool_mw* %23, %struct.tool_mw** %10, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %4
  %27 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %28 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %31 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @roundup(i64 %29, i32 %32)
  %34 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %35 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %34, i32 0, i32 5
  store i8* %33, i8** %35, align 8
  br label %44

36:                                               ; preds = %4
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %39 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @roundup(i64 %37, i32 %40)
  %42 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %43 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %36, %26
  %45 = load %struct.tool_ctx*, %struct.tool_ctx** %6, align 8
  %46 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %49 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %53 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %52, i32 0, i32 5
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (i32, i8*, i64, i64, ...) @device_printf(i32 %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %50, i64 %51, i8* %54)
  %56 = load %struct.tool_ctx*, %struct.tool_ctx** %6, align 8
  %57 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @bus_get_dma_tag(i32 %58)
  %60 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %61 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %64 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %67 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %68 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %67, i32 0, i32 5
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %71 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %70, i32 0, i32 5
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %74 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %73, i32 0, i32 2
  %75 = call i64 @bus_dma_tag_create(i32 %59, i32 %62, i32 0, i32 %65, i32 %66, i32* null, i32* null, i8* %69, i32 1, i8* %72, i32 0, i32* null, i32* null, i64* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %44
  %78 = load %struct.tool_ctx*, %struct.tool_ctx** %6, align 8
  %79 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %82 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %85 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %84, i32 0, i32 5
  %86 = load i8*, i8** %85, align 8
  %87 = ptrtoint i8* %86 to i64
  %88 = call i32 (i32, i8*, i64, i64, ...) @device_printf(i32 %80, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %83, i64 %87)
  %89 = load i32, i32* @ENOMEM, align 4
  store i32 %89, i32* %12, align 4
  br label %195

90:                                               ; preds = %44
  %91 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %92 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %95 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %94, i32 0, i32 4
  %96 = bitcast i64* %95 to i8**
  %97 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %98 = load i32, i32* @BUS_DMA_ZERO, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %101 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %100, i32 0, i32 1
  %102 = call i64 @bus_dmamem_alloc(i64 %93, i8** %96, i32 %99, i64* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %90
  %105 = load %struct.tool_ctx*, %struct.tool_ctx** %6, align 8
  %106 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %109 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %112 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %111, i32 0, i32 5
  %113 = load i8*, i8** %112, align 8
  %114 = ptrtoint i8* %113 to i64
  %115 = call i32 (i32, i8*, i64, i64, ...) @device_printf(i32 %107, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %110, i64 %114)
  %116 = load i32, i32* @ENOMEM, align 4
  store i32 %116, i32* %12, align 4
  br label %190

117:                                              ; preds = %90
  %118 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %119 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %122 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %125 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %128 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %127, i32 0, i32 5
  %129 = load i8*, i8** %128, align 8
  %130 = load i32, i32* @ntb_tool_load_cb, align 4
  %131 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %132 = call i64 @bus_dmamap_load(i64 %120, i64 %123, i64 %126, i8* %129, i32 %130, %struct.ntb_tool_load_cb_args* %11, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %117
  %135 = getelementptr inbounds %struct.ntb_tool_load_cb_args, %struct.ntb_tool_load_cb_args* %11, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %134, %117
  %139 = load %struct.tool_ctx*, %struct.tool_ctx** %6, align 8
  %140 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %143 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %146 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %145, i32 0, i32 5
  %147 = load i8*, i8** %146, align 8
  %148 = ptrtoint i8* %147 to i64
  %149 = call i32 (i32, i8*, i64, i64, ...) @device_printf(i32 %141, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %144, i64 %148)
  %150 = load i32, i32* @ENOMEM, align 4
  store i32 %150, i32* %12, align 4
  br label %179

151:                                              ; preds = %134
  %152 = getelementptr inbounds %struct.ntb_tool_load_cb_args, %struct.ntb_tool_load_cb_args* %11, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %155 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %154, i32 0, i32 3
  store i64 %153, i64* %155, align 8
  %156 = load %struct.tool_ctx*, %struct.tool_ctx** %6, align 8
  %157 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %161 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %164 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %163, i32 0, i32 5
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @ntb_mw_set_trans(i32 %158, i32 %159, i64 %162, i8* %165)
  store i32 %166, i32* %12, align 4
  %167 = load i32, i32* %12, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %151
  br label %171

170:                                              ; preds = %151
  store i32 0, i32* %5, align 4
  br label %207

171:                                              ; preds = %169
  %172 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %173 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %176 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @bus_dmamap_unload(i64 %174, i64 %177)
  br label %179

179:                                              ; preds = %171, %138
  %180 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %181 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %184 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %187 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @bus_dmamem_free(i64 %182, i64 %185, i64 %188)
  br label %190

190:                                              ; preds = %179, %104
  %191 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %192 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @bus_dma_tag_destroy(i64 %193)
  br label %195

195:                                              ; preds = %190, %77
  %196 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %197 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %196, i32 0, i32 5
  store i8* null, i8** %197, align 8
  %198 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %199 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %198, i32 0, i32 4
  store i64 0, i64* %199, align 8
  %200 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %201 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %200, i32 0, i32 3
  store i64 0, i64* %201, align 8
  %202 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %203 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %202, i32 0, i32 2
  store i64 0, i64* %203, align 8
  %204 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %205 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %204, i32 0, i32 1
  store i64 0, i64* %205, align 8
  %206 = load i32, i32* %12, align 4
  store i32 %206, i32* %5, align 4
  br label %207

207:                                              ; preds = %195, %170
  %208 = load i32, i32* %5, align 4
  ret i32 %208
}

declare dso_local i8* @roundup(i64, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64, i64, ...) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i8*, i32, i8*, i32, i32*, i32*, i64*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i64 @bus_dmamem_alloc(i64, i8**, i32, i64*) #1

declare dso_local i64 @bus_dmamap_load(i64, i64, i64, i8*, i32, %struct.ntb_tool_load_cb_args*, i32) #1

declare dso_local i32 @ntb_mw_set_trans(i32, i32, i64, i8*) #1

declare dso_local i32 @bus_dmamap_unload(i64, i64) #1

declare dso_local i32 @bus_dmamem_free(i64, i64, i64) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
