; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_rxd_frag_to_sd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_rxd_frag_to_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.TYPE_15__ = type { i32*, %struct.TYPE_13__*, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i64, i32, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { %struct.mbuf**, i32**, i32* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32*, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { i32, i32, i32 }

@IFC_PREFETCH = common dso_local global i32 0, align 4
@CACHE_PTR_INCREMENT = common dso_local global i32 0, align 4
@CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@PFIL_MEMPTR = common dso_local global i32 0, align 4
@PFIL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.TYPE_15__*, %struct.TYPE_19__*, i32, %struct.TYPE_17__*, i32*, %struct.TYPE_18__*)* @rxd_frag_to_sd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @rxd_frag_to_sd(%struct.TYPE_15__* %0, %struct.TYPE_19__* %1, i32 %2, %struct.TYPE_17__* %3, i32* %4, %struct.TYPE_18__* %5) #0 {
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.mbuf*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_18__* %5, %struct.TYPE_18__** %12, align 8
  store i32* null, i32** %13, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %17, align 4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %18, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %30 = load i32, i32* %17, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i64 %31
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %14, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 2
  store %struct.TYPE_16__* %33, %struct.TYPE_16__** %35, align 8
  %36 = load i32, i32* %18, align 4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load %struct.mbuf**, %struct.mbuf*** %41, align 8
  %43 = load i32, i32* %18, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %42, i64 %44
  %46 = load %struct.mbuf*, %struct.mbuf** %45, align 8
  store %struct.mbuf* %46, %struct.mbuf** %16, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %18, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  store i32* %53, i32** %55, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @IFC_PREFETCH, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %6
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %70 = load i32, i32* %18, align 4
  %71 = call i32 @prefetch_pkts(%struct.TYPE_16__* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %6
  %73 = load i32, i32* %18, align 4
  %74 = load i32, i32* @CACHE_PTR_INCREMENT, align 4
  %75 = add nsw i32 %73, %74
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, 1
  %80 = and i32 %75, %79
  store i32 %80, i32* %20, align 4
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = load i32**, i32*** %83, align 8
  %85 = load i32, i32* %20, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = call i32 @prefetch(i32** %87)
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load i32**, i32*** %91, align 8
  %93 = load i32, i32* %18, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %92, i64 %94
  %96 = load i32*, i32** %95, align 8
  store i32* %96, i32** %13, align 8
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %99 = add nsw i32 %97, %98
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %102, 1
  %104 = and i32 %99, %103
  store i32 %104, i32* %20, align 4
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %18, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @MPASS(i32 %110)
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load i32*, i32** %13, align 8
  %116 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %117 = call i32 @bus_dmamap_sync(i32 %114, i32* %115, i32 %116)
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %179

122:                                              ; preds = %72
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = call i64 @PFIL_HOOKED_IN(i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %179

128:                                              ; preds = %122
  %129 = load i32*, i32** %11, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %179

131:                                              ; preds = %128
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %15, align 4
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %15, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %15, align 4
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %143, %146
  store i32 %147, i32* %19, align 4
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %15, align 4
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %19, align 4
  %156 = load i32, i32* @PFIL_MEMPTR, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @PFIL_IN, align 4
  %159 = or i32 %157, %158
  %160 = call i32 @pfil_run_hooks(i32* %150, i32 %151, i32 %154, i32 %159, i32* null)
  %161 = load i32*, i32** %11, align 8
  store i32 %160, i32* %161, align 4
  %162 = load i32*, i32** %11, align 8
  %163 = load i32, i32* %162, align 4
  switch i32 %163, label %176 [
    i32 130, label %164
    i32 131, label %164
    i32 128, label %165
    i32 129, label %168
  ]

164:                                              ; preds = %131, %131
  store %struct.mbuf* null, %struct.mbuf** %16, align 8
  store i32 0, i32* %9, align 4
  br label %178

165:                                              ; preds = %131
  %166 = load i32, i32* %15, align 4
  %167 = call %struct.mbuf* @pfil_mem2mbuf(i32 %166)
  store %struct.mbuf* %167, %struct.mbuf** %16, align 8
  store i32 0, i32* %9, align 4
  br label %178

168:                                              ; preds = %131
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = load %struct.mbuf**, %struct.mbuf*** %171, align 8
  %173 = load i32, i32* %18, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %172, i64 %174
  store %struct.mbuf* null, %struct.mbuf** %175, align 8
  br label %178

176:                                              ; preds = %131
  %177 = call i32 @MPASS(i32 0)
  br label %178

178:                                              ; preds = %176, %168, %165, %164
  br label %188

179:                                              ; preds = %128, %122, %72
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 5
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = load %struct.mbuf**, %struct.mbuf*** %182, align 8
  %184 = load i32, i32* %18, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %183, i64 %185
  store %struct.mbuf* null, %struct.mbuf** %186, align 8
  %187 = load i32*, i32** %11, align 8
  store i32 129, i32* %187, align 4
  br label %188

188:                                              ; preds = %179, %178
  %189 = load i32, i32* %9, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %188
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = load i32*, i32** %13, align 8
  %196 = call i32 @bus_dmamap_unload(i32 %194, i32* %195)
  br label %197

197:                                              ; preds = %191, %188
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, 1
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = sub nsw i32 %204, 1
  %206 = and i32 %201, %205
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = icmp eq i32 %211, 0
  %213 = zext i1 %212 to i32
  %214 = call i64 @__predict_false(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %197
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 3
  store i64 0, i64* %218, align 8
  br label %219

219:                                              ; preds = %216, %197
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* %18, align 4
  %224 = call i32 @bit_clear(i32 %222, i32 %223)
  %225 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  ret %struct.mbuf* %225
}

declare dso_local i32 @prefetch_pkts(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @prefetch(i32**) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32*, i32) #1

declare dso_local i64 @PFIL_HOOKED_IN(i32*) #1

declare dso_local i32 @pfil_run_hooks(i32*, i32, i32, i32, i32*) #1

declare dso_local %struct.mbuf* @pfil_mem2mbuf(i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @bit_clear(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
