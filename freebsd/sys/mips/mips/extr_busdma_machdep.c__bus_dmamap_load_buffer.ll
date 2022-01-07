; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_busdma_machdep.c__bus_dmamap_load_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_busdma_machdep.c__bus_dmamap_load_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmap = type { i32 }
%struct.TYPE_17__ = type { i32, i64, i32, i32, i32, i32, i32* }
%struct.TYPE_16__ = type { i64, i32, %struct.sync_list*, i32 }
%struct.sync_list = type { i64, i64, i64 }

@BUS_DMA_LOAD_MBUF = common dso_local global i32 0, align 4
@DMAMAP_CACHE_ALIGNED = common dso_local global i32 0, align 4
@BUS_DMA_COULD_BOUNCE = common dso_local global i32 0, align 4
@KTR_BUSDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"lowaddr= %d boundary= %d, alignment= %d\00", align 1
@kernel_pmap = common dso_local global %struct.pmap* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"pmap is not kernel pmap\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bus_dmamap_load_buffer(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, i8* %2, i64 %3, %struct.pmap* %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.pmap*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.sync_list*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store %struct.pmap* %4, %struct.pmap** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = ptrtoint i8* %23 to i64
  store i64 %24, i64* %21, align 8
  store i32 0, i32* %22, align 4
  %25 = load i32*, i32** %16, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 6
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %16, align 8
  br label %31

31:                                               ; preds = %27, %8
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* @BUS_DMA_LOAD_MBUF, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* @DMAMAP_CACHE_ALIGNED, align 4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %36, %31
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @BUS_DMA_COULD_BOUNCE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %42
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %52 = load %struct.pmap*, %struct.pmap** %14, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load i64, i64* %13, align 8
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @_bus_dmamap_count_pages(%struct.TYPE_17__* %50, %struct.TYPE_16__* %51, %struct.pmap* %52, i8* %53, i64 %54, i32 %55)
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %49
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @_bus_dmamap_reserve_pages(%struct.TYPE_17__* %62, %struct.TYPE_16__* %63, i32 %64)
  store i32 %65, i32* %22, align 4
  %66 = load i32, i32* %22, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %22, align 4
  store i32 %69, i32* %9, align 4
  br label %223

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %49
  br label %72

72:                                               ; preds = %71, %42
  %73 = load i32, i32* @KTR_BUSDMA, align 4
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @CTR3(i32 %73, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %205, %72
  %85 = load i64, i64* %13, align 8
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %212

87:                                               ; preds = %84
  %88 = load %struct.pmap*, %struct.pmap** @kernel_pmap, align 8
  %89 = load %struct.pmap*, %struct.pmap** %14, align 8
  %90 = icmp eq %struct.pmap* %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @KASSERT(i32 %91, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i64, i64* %21, align 8
  %94 = call i64 @pmap_kextract(i64 %93)
  store i64 %94, i64* %19, align 8
  %95 = load i64, i64* @PAGE_SIZE, align 8
  %96 = load i64, i64* %19, align 8
  %97 = trunc i64 %96 to i32
  %98 = load i32, i32* @PAGE_MASK, align 4
  %99 = and i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = sub nsw i64 %95, %100
  store i64 %101, i64* %18, align 8
  %102 = load i64, i64* %18, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %102, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %87
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %18, align 8
  br label %111

111:                                              ; preds = %107, %87
  %112 = load i64, i64* %13, align 8
  %113 = load i64, i64* %18, align 8
  %114 = icmp slt i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i64, i64* %13, align 8
  store i64 %116, i64* %18, align 8
  br label %117

117:                                              ; preds = %115, %111
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @BUS_DMA_COULD_BOUNCE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %141

124:                                              ; preds = %117
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %124
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %131 = load i64, i64* %19, align 8
  %132 = call i64 @run_filter(%struct.TYPE_17__* %130, i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %129
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %137 = load i64, i64* %21, align 8
  %138 = load i64, i64* %19, align 8
  %139 = load i64, i64* %18, align 8
  %140 = call i64 @add_bounce_page(%struct.TYPE_17__* %135, %struct.TYPE_16__* %136, i64 %137, i64 %138, i64 %139)
  store i64 %140, i64* %19, align 8
  br label %194

141:                                              ; preds = %129, %124, %117
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 2
  %144 = load %struct.sync_list*, %struct.sync_list** %143, align 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = sub nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %144, i64 %149
  store %struct.sync_list* %150, %struct.sync_list** %20, align 8
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %165, label %155

155:                                              ; preds = %141
  %156 = load i64, i64* %21, align 8
  %157 = load %struct.sync_list*, %struct.sync_list** %20, align 8
  %158 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.sync_list*, %struct.sync_list** %20, align 8
  %161 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %159, %162
  %164 = icmp ne i64 %156, %163
  br i1 %164, label %165, label %187

165:                                              ; preds = %155, %141
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 8
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = icmp sgt i32 %169, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %165
  br label %213

175:                                              ; preds = %165
  %176 = load %struct.sync_list*, %struct.sync_list** %20, align 8
  %177 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %176, i32 1
  store %struct.sync_list* %177, %struct.sync_list** %20, align 8
  %178 = load i64, i64* %21, align 8
  %179 = load %struct.sync_list*, %struct.sync_list** %20, align 8
  %180 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %179, i32 0, i32 0
  store i64 %178, i64* %180, align 8
  %181 = load i64, i64* %18, align 8
  %182 = load %struct.sync_list*, %struct.sync_list** %20, align 8
  %183 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %182, i32 0, i32 1
  store i64 %181, i64* %183, align 8
  %184 = load i64, i64* %19, align 8
  %185 = load %struct.sync_list*, %struct.sync_list** %20, align 8
  %186 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %185, i32 0, i32 2
  store i64 %184, i64* %186, align 8
  br label %193

187:                                              ; preds = %155
  %188 = load i64, i64* %18, align 8
  %189 = load %struct.sync_list*, %struct.sync_list** %20, align 8
  %190 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = add nsw i64 %191, %188
  store i64 %192, i64* %190, align 8
  br label %193

193:                                              ; preds = %187, %175
  br label %194

194:                                              ; preds = %193, %134
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %197 = load i64, i64* %19, align 8
  %198 = load i64, i64* %18, align 8
  %199 = load i32*, i32** %16, align 8
  %200 = load i32*, i32** %17, align 8
  %201 = call i64 @_bus_dmamap_addseg(%struct.TYPE_17__* %195, %struct.TYPE_16__* %196, i64 %197, i64 %198, i32* %199, i32* %200)
  store i64 %201, i64* %18, align 8
  %202 = load i64, i64* %18, align 8
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %194
  br label %212

205:                                              ; preds = %194
  %206 = load i64, i64* %18, align 8
  %207 = load i64, i64* %21, align 8
  %208 = add nsw i64 %207, %206
  store i64 %208, i64* %21, align 8
  %209 = load i64, i64* %18, align 8
  %210 = load i64, i64* %13, align 8
  %211 = sub nsw i64 %210, %209
  store i64 %211, i64* %13, align 8
  br label %84

212:                                              ; preds = %204, %84
  br label %213

213:                                              ; preds = %212, %174
  %214 = load i64, i64* %13, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %213
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %219 = call i32 @bus_dmamap_unload(%struct.TYPE_17__* %217, %struct.TYPE_16__* %218)
  %220 = load i32, i32* @EFBIG, align 4
  store i32 %220, i32* %22, align 4
  br label %221

221:                                              ; preds = %216, %213
  %222 = load i32, i32* %22, align 4
  store i32 %222, i32* %9, align 4
  br label %223

223:                                              ; preds = %221, %68
  %224 = load i32, i32* %9, align 4
  ret i32 %224
}

declare dso_local i32 @_bus_dmamap_count_pages(%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.pmap*, i8*, i64, i32) #1

declare dso_local i32 @_bus_dmamap_reserve_pages(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @CTR3(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @pmap_kextract(i64) #1

declare dso_local i64 @run_filter(%struct.TYPE_17__*, i64) #1

declare dso_local i64 @add_bounce_page(%struct.TYPE_17__*, %struct.TYPE_16__*, i64, i64, i64) #1

declare dso_local i64 @_bus_dmamap_addseg(%struct.TYPE_17__*, %struct.TYPE_16__*, i64, i64, i32*, i32*) #1

declare dso_local i32 @bus_dmamap_unload(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
