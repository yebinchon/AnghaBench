; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_busdma_bounce.c_bounce_bus_dmamap_load_ma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_busdma_bounce.c_bounce_bus_dmamap_load_ma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_19__, i32* }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.vm_page = type { i32 }

@BUS_DMA_KEEP_PG_OFFSET = common dso_local global i32 0, align 4
@nobounce_dmamap = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@BUS_DMA_COULD_BOUNCE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Segment size is not aligned\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Segment length overruns original buffer\00", align 1
@PAGE_MASK = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.vm_page**, i32, i32, i32, i32*, i32*)* @bounce_bus_dmamap_load_ma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bounce_bus_dmamap_load_ma(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, %struct.vm_page** %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.vm_page**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %10, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %11, align 8
  store %struct.vm_page** %2, %struct.vm_page*** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BUS_DMA_KEEP_PG_OFFSET, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %34 = load %struct.vm_page**, %struct.vm_page*** %12, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32*, i32** %16, align 8
  %39 = load i32*, i32** %17, align 8
  %40 = call i32 @bus_dmamap_load_ma_triv(%struct.TYPE_18__* %32, %struct.TYPE_17__* %33, %struct.vm_page** %34, i32 %35, i32 %36, i32 %37, i32* %38, i32* %39)
  store i32 %40, i32* %20, align 4
  %41 = load i32, i32* %20, align 4
  store i32 %41, i32* %9, align 4
  br label %212

42:                                               ; preds = %8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %44 = icmp eq %struct.TYPE_17__* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store %struct.TYPE_17__* @nobounce_dmamap, %struct.TYPE_17__** %11, align 8
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32*, i32** %16, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %16, align 8
  br label %53

53:                                               ; preds = %49, %46
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @BUS_DMA_COULD_BOUNCE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %83

60:                                               ; preds = %53
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %63 = load %struct.vm_page**, %struct.vm_page*** %12, align 8
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @_bus_dmamap_count_ma(%struct.TYPE_18__* %61, %struct.TYPE_17__* %62, %struct.vm_page** %63, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %60
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @_bus_dmamap_reserve_pages(%struct.TYPE_18__* %73, %struct.TYPE_17__* %74, i32 %75)
  store i32 %76, i32* %20, align 4
  %77 = load i32, i32* %20, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %20, align 4
  store i32 %80, i32* %9, align 4
  br label %212

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %60
  br label %83

83:                                               ; preds = %82, %53
  store i32 0, i32* %21, align 4
  br label %84

84:                                               ; preds = %198, %83
  %85 = load i32, i32* %13, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %204

87:                                               ; preds = %84
  %88 = load %struct.vm_page**, %struct.vm_page*** %12, align 8
  %89 = load i32, i32* %21, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.vm_page*, %struct.vm_page** %88, i64 %90
  %92 = load %struct.vm_page*, %struct.vm_page** %91, align 8
  %93 = call i64 @VM_PAGE_TO_PHYS(%struct.vm_page* %92)
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %93, %95
  store i64 %96, i64* %18, align 8
  %97 = load i32, i32* %13, align 4
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @MIN(i32 %97, i32 %101)
  store i32 %102, i32* %23, align 4
  %103 = load i32, i32* @PAGE_SIZE, align 4
  %104 = load i32, i32* %14, align 4
  %105 = sub nsw i32 %103, %104
  store i32 %105, i32* %22, align 4
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @BUS_DMA_COULD_BOUNCE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %164

112:                                              ; preds = %87
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %164

117:                                              ; preds = %112
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = load i64, i64* %18, align 8
  %121 = call i64 @bus_dma_run_filter(%struct.TYPE_19__* %119, i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %164

123:                                              ; preds = %117
  %124 = load i32, i32* %22, align 4
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @roundup2(i32 %124, i32 %128)
  store i32 %129, i32* %22, align 4
  %130 = load i32, i32* %22, align 4
  %131 = load i32, i32* %23, align 4
  %132 = call i32 @MIN(i32 %130, i32 %131)
  store i32 %132, i32* %22, align 4
  %133 = load i32, i32* %22, align 4
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = sub nsw i32 %137, 1
  %139 = and i32 %133, %138
  %140 = icmp eq i32 %139, 0
  %141 = zext i1 %140 to i32
  %142 = call i32 @KASSERT(i32 %141, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %22, align 4
  %145 = add nsw i32 %143, %144
  %146 = load i32, i32* @PAGE_SIZE, align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %123
  %149 = load %struct.vm_page**, %struct.vm_page*** %12, align 8
  %150 = load i32, i32* %21, align 4
  %151 = add nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.vm_page*, %struct.vm_page** %149, i64 %152
  %154 = load %struct.vm_page*, %struct.vm_page** %153, align 8
  %155 = call i64 @VM_PAGE_TO_PHYS(%struct.vm_page* %154)
  store i64 %155, i64* %19, align 8
  br label %157

156:                                              ; preds = %123
  store i64 0, i64* %19, align 8
  br label %157

157:                                              ; preds = %156, %148
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %160 = load i64, i64* %18, align 8
  %161 = load i64, i64* %19, align 8
  %162 = load i32, i32* %22, align 4
  %163 = call i64 @add_bounce_page(%struct.TYPE_18__* %158, %struct.TYPE_17__* %159, i32 0, i64 %160, i64 %161, i32 %162)
  store i64 %163, i64* %18, align 8
  br label %168

164:                                              ; preds = %117, %112, %87
  %165 = load i32, i32* %22, align 4
  %166 = load i32, i32* %23, align 4
  %167 = call i32 @MIN(i32 %165, i32 %166)
  store i32 %167, i32* %22, align 4
  br label %168

168:                                              ; preds = %164, %157
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %171 = load i64, i64* %18, align 8
  %172 = load i32, i32* %22, align 4
  %173 = load i32*, i32** %16, align 8
  %174 = load i32*, i32** %17, align 8
  %175 = call i32 @_bus_dmamap_addseg(%struct.TYPE_18__* %169, %struct.TYPE_17__* %170, i64 %171, i32 %172, i32* %173, i32* %174)
  store i32 %175, i32* %22, align 4
  %176 = load i32, i32* %22, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %168
  br label %204

179:                                              ; preds = %168
  %180 = load i32, i32* %13, align 4
  %181 = load i32, i32* %22, align 4
  %182 = icmp sge i32 %180, %181
  %183 = zext i1 %182 to i32
  %184 = call i32 @KASSERT(i32 %183, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %185 = load i32, i32* %22, align 4
  %186 = load i32, i32* %13, align 4
  %187 = sub nsw i32 %186, %185
  store i32 %187, i32* %13, align 4
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* %22, align 4
  %190 = add nsw i32 %188, %189
  %191 = load i32, i32* @PAGE_MASK, align 4
  %192 = xor i32 %191, -1
  %193 = and i32 %190, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %179
  %196 = load i32, i32* %21, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %21, align 4
  br label %198

198:                                              ; preds = %195, %179
  %199 = load i32, i32* %14, align 4
  %200 = load i32, i32* %22, align 4
  %201 = add nsw i32 %199, %200
  %202 = load i32, i32* @PAGE_MASK, align 4
  %203 = and i32 %201, %202
  store i32 %203, i32* %14, align 4
  br label %84

204:                                              ; preds = %178, %84
  %205 = load i32, i32* %13, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %204
  %208 = load i32, i32* @EFBIG, align 4
  br label %210

209:                                              ; preds = %204
  br label %210

210:                                              ; preds = %209, %207
  %211 = phi i32 [ %208, %207 ], [ 0, %209 ]
  store i32 %211, i32* %9, align 4
  br label %212

212:                                              ; preds = %210, %79, %31
  %213 = load i32, i32* %9, align 4
  ret i32 %213
}

declare dso_local i32 @bus_dmamap_load_ma_triv(%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.vm_page**, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @_bus_dmamap_count_ma(%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.vm_page**, i32, i32, i32) #1

declare dso_local i32 @_bus_dmamap_reserve_pages(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local i64 @VM_PAGE_TO_PHYS(%struct.vm_page*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @bus_dma_run_filter(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @add_bounce_page(%struct.TYPE_18__*, %struct.TYPE_17__*, i32, i64, i64, i32) #1

declare dso_local i32 @_bus_dmamap_addseg(%struct.TYPE_18__*, %struct.TYPE_17__*, i64, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
