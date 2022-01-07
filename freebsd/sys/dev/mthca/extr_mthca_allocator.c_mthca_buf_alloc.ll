; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_allocator.c_mthca_buf_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_allocator.c_mthca_buf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%union.mthca_buf = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.mthca_pd = type { i32 }
%struct.mthca_mr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@mapping = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MTHCA_MPT_FLAG_LOCAL_READ = common dso_local global i32 0, align 4
@MTHCA_MPT_FLAG_LOCAL_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_buf_alloc(%struct.mthca_dev* %0, i32 %1, i32 %2, %union.mthca_buf* %3, i32* %4, %struct.mthca_pd* %5, i32 %6, %struct.mthca_mr* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.mthca_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.mthca_buf*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.mthca_pd*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.mthca_mr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store %union.mthca_buf* %3, %union.mthca_buf** %13, align 8
  store i32* %4, i32** %14, align 8
  store %struct.mthca_pd* %5, %struct.mthca_pd** %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct.mthca_mr* %7, %struct.mthca_mr** %17, align 8
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %18, align 4
  store i32* null, i32** %21, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %109

29:                                               ; preds = %8
  %30 = load i32*, i32** %14, align 8
  store i32 1, i32* %30, align 4
  store i32 1, i32* %19, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @get_order(i32 %31)
  %33 = load i32, i32* @PAGE_SHIFT, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %20, align 4
  %35 = load %struct.mthca_dev*, %struct.mthca_dev** %10, align 8
  %36 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @dma_alloc_coherent(i32* %38, i32 %39, i32* %22, i32 %40)
  %42 = bitcast i8* %41 to i32*
  %43 = load %union.mthca_buf*, %union.mthca_buf** %13, align 8
  %44 = bitcast %union.mthca_buf* %43 to %struct.TYPE_4__*
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32* %42, i32** %45, align 8
  %46 = load %union.mthca_buf*, %union.mthca_buf** %13, align 8
  %47 = bitcast %union.mthca_buf* %46 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %29
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %9, align 4
  br label %257

54:                                               ; preds = %29
  %55 = load %union.mthca_buf*, %union.mthca_buf** %13, align 8
  %56 = bitcast %union.mthca_buf* %55 to %struct.TYPE_4__*
  %57 = load i32, i32* @mapping, align 4
  %58 = load i32, i32* %22, align 4
  %59 = call i32 @dma_unmap_addr_set(%struct.TYPE_4__* %56, i32 %57, i32 %58)
  %60 = load %union.mthca_buf*, %union.mthca_buf** %13, align 8
  %61 = bitcast %union.mthca_buf* %60 to %struct.TYPE_4__*
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @memset(i32* %63, i32 0, i32 %64)
  br label %66

66:                                               ; preds = %73, %54
  %67 = load i32, i32* %22, align 4
  %68 = load i32, i32* %20, align 4
  %69 = shl i32 1, %68
  %70 = sub nsw i32 %69, 1
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load i32, i32* %20, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %20, align 4
  %76 = load i32, i32* %19, align 4
  %77 = mul nsw i32 %76, 2
  store i32 %77, i32* %19, align 4
  br label %66

78:                                               ; preds = %66
  %79 = load i32, i32* %19, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 4
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call i8* @kmalloc(i32 %82, i32 %83)
  %85 = bitcast i8* %84 to i32*
  store i32* %85, i32** %21, align 8
  %86 = load i32*, i32** %21, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %78
  br label %246

89:                                               ; preds = %78
  store i32 0, i32* %23, align 4
  br label %90

90:                                               ; preds = %105, %89
  %91 = load i32, i32* %23, align 4
  %92 = load i32, i32* %19, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %90
  %95 = load i32, i32* %22, align 4
  %96 = load i32, i32* %23, align 4
  %97 = load i32, i32* %20, align 4
  %98 = shl i32 1, %97
  %99 = mul nsw i32 %96, %98
  %100 = add nsw i32 %95, %99
  %101 = load i32*, i32** %21, align 8
  %102 = load i32, i32* %23, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %100, i32* %104, align 4
  br label %105

105:                                              ; preds = %94
  %106 = load i32, i32* %23, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %23, align 4
  br label %90

108:                                              ; preds = %90
  br label %220

109:                                              ; preds = %8
  %110 = load i32*, i32** %14, align 8
  store i32 0, i32* %110, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @PAGE_SIZE, align 4
  %113 = add nsw i32 %111, %112
  %114 = sub nsw i32 %113, 1
  %115 = load i32, i32* @PAGE_SIZE, align 4
  %116 = sdiv i32 %114, %115
  store i32 %116, i32* %19, align 4
  %117 = load i32, i32* @PAGE_SHIFT, align 4
  store i32 %117, i32* %20, align 4
  %118 = load i32, i32* %19, align 4
  %119 = sext i32 %118 to i64
  %120 = mul i64 %119, 4
  %121 = trunc i64 %120 to i32
  %122 = load i32, i32* @GFP_KERNEL, align 4
  %123 = call i8* @kmalloc(i32 %121, i32 %122)
  %124 = bitcast i8* %123 to i32*
  store i32* %124, i32** %21, align 8
  %125 = load i32*, i32** %21, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %109
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %9, align 4
  br label %257

130:                                              ; preds = %109
  %131 = load i32, i32* %19, align 4
  %132 = sext i32 %131 to i64
  %133 = mul i64 %132, 8
  %134 = trunc i64 %133 to i32
  %135 = load i32, i32* @GFP_KERNEL, align 4
  %136 = call i8* @kmalloc(i32 %134, i32 %135)
  %137 = bitcast i8* %136 to %struct.TYPE_4__*
  %138 = load %union.mthca_buf*, %union.mthca_buf** %13, align 8
  %139 = bitcast %union.mthca_buf* %138 to %struct.TYPE_4__**
  store %struct.TYPE_4__* %137, %struct.TYPE_4__** %139, align 8
  %140 = load %union.mthca_buf*, %union.mthca_buf** %13, align 8
  %141 = bitcast %union.mthca_buf* %140 to %struct.TYPE_4__**
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = icmp ne %struct.TYPE_4__* %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %130
  br label %253

145:                                              ; preds = %130
  store i32 0, i32* %23, align 4
  br label %146

146:                                              ; preds = %158, %145
  %147 = load i32, i32* %23, align 4
  %148 = load i32, i32* %19, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %161

150:                                              ; preds = %146
  %151 = load %union.mthca_buf*, %union.mthca_buf** %13, align 8
  %152 = bitcast %union.mthca_buf* %151 to %struct.TYPE_4__**
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = load i32, i32* %23, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  store i32* null, i32** %157, align 8
  br label %158

158:                                              ; preds = %150
  %159 = load i32, i32* %23, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %23, align 4
  br label %146

161:                                              ; preds = %146
  store i32 0, i32* %23, align 4
  br label %162

162:                                              ; preds = %216, %161
  %163 = load i32, i32* %23, align 4
  %164 = load i32, i32* %19, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %219

166:                                              ; preds = %162
  %167 = load %struct.mthca_dev*, %struct.mthca_dev** %10, align 8
  %168 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %167, i32 0, i32 0
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load i32, i32* @PAGE_SIZE, align 4
  %172 = load i32, i32* @GFP_KERNEL, align 4
  %173 = call i8* @dma_alloc_coherent(i32* %170, i32 %171, i32* %22, i32 %172)
  %174 = bitcast i8* %173 to i32*
  %175 = load %union.mthca_buf*, %union.mthca_buf** %13, align 8
  %176 = bitcast %union.mthca_buf* %175 to %struct.TYPE_4__**
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = load i32, i32* %23, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  store i32* %174, i32** %181, align 8
  %182 = load %union.mthca_buf*, %union.mthca_buf** %13, align 8
  %183 = bitcast %union.mthca_buf* %182 to %struct.TYPE_4__**
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = load i32, i32* %23, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %192, label %191

191:                                              ; preds = %166
  br label %246

192:                                              ; preds = %166
  %193 = load i32, i32* %22, align 4
  %194 = load i32*, i32** %21, align 8
  %195 = load i32, i32* %23, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  store i32 %193, i32* %197, align 4
  %198 = load %union.mthca_buf*, %union.mthca_buf** %13, align 8
  %199 = bitcast %union.mthca_buf* %198 to %struct.TYPE_4__**
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = load i32, i32* %23, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i64 %202
  %204 = load i32, i32* @mapping, align 4
  %205 = load i32, i32* %22, align 4
  %206 = call i32 @dma_unmap_addr_set(%struct.TYPE_4__* %203, i32 %204, i32 %205)
  %207 = load %union.mthca_buf*, %union.mthca_buf** %13, align 8
  %208 = bitcast %union.mthca_buf* %207 to %struct.TYPE_4__**
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = load i32, i32* %23, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = call i32 @clear_page(i32* %214)
  br label %216

216:                                              ; preds = %192
  %217 = load i32, i32* %23, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %23, align 4
  br label %162

219:                                              ; preds = %162
  br label %220

220:                                              ; preds = %219, %108
  %221 = load %struct.mthca_dev*, %struct.mthca_dev** %10, align 8
  %222 = load %struct.mthca_pd*, %struct.mthca_pd** %15, align 8
  %223 = getelementptr inbounds %struct.mthca_pd, %struct.mthca_pd* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load i32*, i32** %21, align 8
  %226 = load i32, i32* %20, align 4
  %227 = load i32, i32* %19, align 4
  %228 = load i32, i32* %11, align 4
  %229 = load i32, i32* @MTHCA_MPT_FLAG_LOCAL_READ, align 4
  %230 = load i32, i32* %16, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %220
  %233 = load i32, i32* @MTHCA_MPT_FLAG_LOCAL_WRITE, align 4
  br label %235

234:                                              ; preds = %220
  br label %235

235:                                              ; preds = %234, %232
  %236 = phi i32 [ %233, %232 ], [ 0, %234 ]
  %237 = or i32 %229, %236
  %238 = load %struct.mthca_mr*, %struct.mthca_mr** %17, align 8
  %239 = call i32 @mthca_mr_alloc_phys(%struct.mthca_dev* %221, i32 %224, i32* %225, i32 %226, i32 %227, i32 0, i32 %228, i32 %237, %struct.mthca_mr* %238)
  store i32 %239, i32* %18, align 4
  %240 = load i32, i32* %18, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %235
  br label %246

243:                                              ; preds = %235
  %244 = load i32*, i32** %21, align 8
  %245 = call i32 @kfree(i32* %244)
  store i32 0, i32* %9, align 4
  br label %257

246:                                              ; preds = %242, %191, %88
  %247 = load %struct.mthca_dev*, %struct.mthca_dev** %10, align 8
  %248 = load i32, i32* %11, align 4
  %249 = load %union.mthca_buf*, %union.mthca_buf** %13, align 8
  %250 = load i32*, i32** %14, align 8
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @mthca_buf_free(%struct.mthca_dev* %247, i32 %248, %union.mthca_buf* %249, i32 %251, i32* null)
  br label %253

253:                                              ; preds = %246, %144
  %254 = load i32*, i32** %21, align 8
  %255 = call i32 @kfree(i32* %254)
  %256 = load i32, i32* %18, align 4
  store i32 %256, i32* %9, align 4
  br label %257

257:                                              ; preds = %253, %243, %127, %51
  %258 = load i32, i32* %9, align 4
  ret i32 %258
}

declare dso_local i32 @get_order(i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @clear_page(i32*) #1

declare dso_local i32 @mthca_mr_alloc_phys(%struct.mthca_dev*, i32, i32*, i32, i32, i32, i32, i32, %struct.mthca_mr*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @mthca_buf_free(%struct.mthca_dev*, i32, %union.mthca_buf*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
