; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_setup_glists.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_setup_glists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }
%struct.lio = type { i32, i32, i32*, i64*, i32**, i32* }
%struct.lio_gather = type { i32, i64, %struct.lio_sg_entry* }
%struct.lio_sg_entry = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@LIO_MAX_SG = common dso_local global i32 0, align 4
@LIO_SG_ENTRY_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"glist_lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*, %struct.lio*, i32)* @lio_setup_glists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_setup_glists(%struct.octeon_device* %0, %struct.lio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca %struct.lio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lio_gather*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %5, align 8
  store %struct.lio* %1, %struct.lio** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @M_DEVBUF, align 4
  %16 = load i32, i32* @M_NOWAIT, align 4
  %17 = load i32, i32* @M_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = call i8* @malloc(i32 %14, i32 %15, i32 %18)
  %20 = bitcast i8* %19 to i32*
  %21 = load %struct.lio*, %struct.lio** %6, align 8
  %22 = getelementptr inbounds %struct.lio, %struct.lio* %21, i32 0, i32 5
  store i32* %20, i32** %22, align 8
  %23 = load %struct.lio*, %struct.lio** %6, align 8
  %24 = getelementptr inbounds %struct.lio, %struct.lio* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %234

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @M_DEVBUF, align 4
  %34 = load i32, i32* @M_NOWAIT, align 4
  %35 = load i32, i32* @M_ZERO, align 4
  %36 = or i32 %34, %35
  %37 = call i8* @malloc(i32 %32, i32 %33, i32 %36)
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.lio*, %struct.lio** %6, align 8
  %40 = getelementptr inbounds %struct.lio, %struct.lio* %39, i32 0, i32 2
  store i32* %38, i32** %40, align 8
  %41 = load %struct.lio*, %struct.lio** %6, align 8
  %42 = getelementptr inbounds %struct.lio, %struct.lio* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %28
  %46 = load %struct.lio*, %struct.lio** %6, align 8
  %47 = getelementptr inbounds %struct.lio, %struct.lio* %46, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  %49 = bitcast i32* %48 to i8*
  %50 = load i32, i32* @M_DEVBUF, align 4
  %51 = call i32 @free(i8* %49, i32 %50)
  %52 = load %struct.lio*, %struct.lio** %6, align 8
  %53 = getelementptr inbounds %struct.lio, %struct.lio* %52, i32 0, i32 5
  store i32* null, i32** %53, align 8
  store i32 1, i32* %4, align 4
  br label %234

54:                                               ; preds = %28
  %55 = load i32, i32* @LIO_MAX_SG, align 4
  %56 = call i32 @ROUNDUP4(i32 %55)
  %57 = ashr i32 %56, 2
  %58 = load i32, i32* @LIO_SG_ENTRY_SIZE, align 4
  %59 = mul nsw i32 %57, %58
  %60 = call i32 @ROUNDUP8(i32 %59)
  %61 = load %struct.lio*, %struct.lio** %6, align 8
  %62 = getelementptr inbounds %struct.lio, %struct.lio* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 8
  %66 = trunc i64 %65 to i32
  %67 = load i32, i32* @M_DEVBUF, align 4
  %68 = load i32, i32* @M_NOWAIT, align 4
  %69 = load i32, i32* @M_ZERO, align 4
  %70 = or i32 %68, %69
  %71 = call i8* @malloc(i32 %66, i32 %67, i32 %70)
  %72 = bitcast i8* %71 to i32**
  %73 = load %struct.lio*, %struct.lio** %6, align 8
  %74 = getelementptr inbounds %struct.lio, %struct.lio* %73, i32 0, i32 4
  store i32** %72, i32*** %74, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = trunc i64 %77 to i32
  %79 = load i32, i32* @M_DEVBUF, align 4
  %80 = load i32, i32* @M_NOWAIT, align 4
  %81 = load i32, i32* @M_ZERO, align 4
  %82 = or i32 %80, %81
  %83 = call i8* @malloc(i32 %78, i32 %79, i32 %82)
  %84 = bitcast i8* %83 to i64*
  %85 = load %struct.lio*, %struct.lio** %6, align 8
  %86 = getelementptr inbounds %struct.lio, %struct.lio* %85, i32 0, i32 3
  store i64* %84, i64** %86, align 8
  %87 = load %struct.lio*, %struct.lio** %6, align 8
  %88 = getelementptr inbounds %struct.lio, %struct.lio* %87, i32 0, i32 4
  %89 = load i32**, i32*** %88, align 8
  %90 = icmp eq i32** %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %54
  %92 = load %struct.lio*, %struct.lio** %6, align 8
  %93 = getelementptr inbounds %struct.lio, %struct.lio* %92, i32 0, i32 3
  %94 = load i64*, i64** %93, align 8
  %95 = icmp eq i64* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %91, %54
  %97 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %98 = load %struct.lio*, %struct.lio** %6, align 8
  %99 = call i32 @lio_delete_glists(%struct.octeon_device* %97, %struct.lio* %98)
  store i32 1, i32* %4, align 4
  br label %234

100:                                              ; preds = %91
  store i32 0, i32* %9, align 4
  br label %101

101:                                              ; preds = %230, %100
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %233

105:                                              ; preds = %101
  %106 = load %struct.lio*, %struct.lio** %6, align 8
  %107 = getelementptr inbounds %struct.lio, %struct.lio* %106, i32 0, i32 5
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* @MTX_DEF, align 4
  %113 = call i32 @mtx_init(i32* %111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null, i32 %112)
  %114 = load %struct.lio*, %struct.lio** %6, align 8
  %115 = getelementptr inbounds %struct.lio, %struct.lio* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = call i32 @STAILQ_INIT(i32* %119)
  %121 = load %struct.lio*, %struct.lio** %6, align 8
  %122 = getelementptr inbounds %struct.lio, %struct.lio* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.lio*, %struct.lio** %6, align 8
  %125 = getelementptr inbounds %struct.lio, %struct.lio* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %123, %126
  %128 = load %struct.lio*, %struct.lio** %6, align 8
  %129 = getelementptr inbounds %struct.lio, %struct.lio* %128, i32 0, i32 3
  %130 = load i64*, i64** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = bitcast i64* %133 to i32*
  %135 = call i32* @lio_dma_alloc(i32 %127, i32* %134)
  %136 = load %struct.lio*, %struct.lio** %6, align 8
  %137 = getelementptr inbounds %struct.lio, %struct.lio* %136, i32 0, i32 4
  %138 = load i32**, i32*** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  store i32* %135, i32** %141, align 8
  %142 = load %struct.lio*, %struct.lio** %6, align 8
  %143 = getelementptr inbounds %struct.lio, %struct.lio* %142, i32 0, i32 4
  %144 = load i32**, i32*** %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32*, i32** %144, i64 %146
  %148 = load i32*, i32** %147, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %154

150:                                              ; preds = %105
  %151 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %152 = load %struct.lio*, %struct.lio** %6, align 8
  %153 = call i32 @lio_delete_glists(%struct.octeon_device* %151, %struct.lio* %152)
  store i32 1, i32* %4, align 4
  br label %234

154:                                              ; preds = %105
  store i32 0, i32* %10, align 4
  br label %155

155:                                              ; preds = %216, %154
  %156 = load i32, i32* %10, align 4
  %157 = load %struct.lio*, %struct.lio** %6, align 8
  %158 = getelementptr inbounds %struct.lio, %struct.lio* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %156, %159
  br i1 %160, label %161, label %219

161:                                              ; preds = %155
  %162 = load i32, i32* @M_DEVBUF, align 4
  %163 = load i32, i32* @M_NOWAIT, align 4
  %164 = load i32, i32* @M_ZERO, align 4
  %165 = or i32 %163, %164
  %166 = call i8* @malloc(i32 24, i32 %162, i32 %165)
  %167 = bitcast i8* %166 to %struct.lio_gather*
  store %struct.lio_gather* %167, %struct.lio_gather** %8, align 8
  %168 = load %struct.lio_gather*, %struct.lio_gather** %8, align 8
  %169 = icmp eq %struct.lio_gather* %168, null
  br i1 %169, label %170, label %171

170:                                              ; preds = %161
  br label %219

171:                                              ; preds = %161
  %172 = load %struct.lio*, %struct.lio** %6, align 8
  %173 = getelementptr inbounds %struct.lio, %struct.lio* %172, i32 0, i32 4
  %174 = load i32**, i32*** %173, align 8
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32*, i32** %174, i64 %176
  %178 = load i32*, i32** %177, align 8
  %179 = ptrtoint i32* %178 to i64
  %180 = load i32, i32* %10, align 4
  %181 = load %struct.lio*, %struct.lio** %6, align 8
  %182 = getelementptr inbounds %struct.lio, %struct.lio* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = mul nsw i32 %180, %183
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %179, %185
  %187 = inttoptr i64 %186 to %struct.lio_sg_entry*
  %188 = load %struct.lio_gather*, %struct.lio_gather** %8, align 8
  %189 = getelementptr inbounds %struct.lio_gather, %struct.lio_gather* %188, i32 0, i32 2
  store %struct.lio_sg_entry* %187, %struct.lio_sg_entry** %189, align 8
  %190 = load %struct.lio*, %struct.lio** %6, align 8
  %191 = getelementptr inbounds %struct.lio, %struct.lio* %190, i32 0, i32 3
  %192 = load i64*, i64** %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %192, i64 %194
  %196 = load i64, i64* %195, align 8
  %197 = load i32, i32* %10, align 4
  %198 = load %struct.lio*, %struct.lio** %6, align 8
  %199 = getelementptr inbounds %struct.lio, %struct.lio* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = mul nsw i32 %197, %200
  %202 = sext i32 %201 to i64
  %203 = add nsw i64 %196, %202
  %204 = load %struct.lio_gather*, %struct.lio_gather** %8, align 8
  %205 = getelementptr inbounds %struct.lio_gather, %struct.lio_gather* %204, i32 0, i32 1
  store i64 %203, i64* %205, align 8
  %206 = load %struct.lio*, %struct.lio** %6, align 8
  %207 = getelementptr inbounds %struct.lio, %struct.lio* %206, i32 0, i32 2
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load %struct.lio_gather*, %struct.lio_gather** %8, align 8
  %213 = getelementptr inbounds %struct.lio_gather, %struct.lio_gather* %212, i32 0, i32 0
  %214 = load i32, i32* @entries, align 4
  %215 = call i32 @STAILQ_INSERT_TAIL(i32* %211, i32* %213, i32 %214)
  br label %216

216:                                              ; preds = %171
  %217 = load i32, i32* %10, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %10, align 4
  br label %155

219:                                              ; preds = %170, %155
  %220 = load i32, i32* %10, align 4
  %221 = load %struct.lio*, %struct.lio** %6, align 8
  %222 = getelementptr inbounds %struct.lio, %struct.lio* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %220, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %219
  %226 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %227 = load %struct.lio*, %struct.lio** %6, align 8
  %228 = call i32 @lio_delete_glists(%struct.octeon_device* %226, %struct.lio* %227)
  store i32 1, i32* %4, align 4
  br label %234

229:                                              ; preds = %219
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %9, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %9, align 4
  br label %101

233:                                              ; preds = %101
  store i32 0, i32* %4, align 4
  br label %234

234:                                              ; preds = %233, %225, %150, %96, %45, %27
  %235 = load i32, i32* %4, align 4
  ret i32 %235
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @ROUNDUP8(i32) #1

declare dso_local i32 @ROUNDUP4(i32) #1

declare dso_local i32 @lio_delete_glists(%struct.octeon_device*, %struct.lio*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32* @lio_dma_alloc(i32, i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
