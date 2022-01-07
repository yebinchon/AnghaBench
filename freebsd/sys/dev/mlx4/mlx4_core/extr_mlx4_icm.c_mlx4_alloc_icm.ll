; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_icm.c_mlx4_alloc_icm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_icm.c_mlx4_alloc_icm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_icm = type { i32, i64 }
%struct.mlx4_dev = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_icm_chunk = type { i64, i64, i32*, i32 }

@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@MLX4_ICM_ALLOC_SIZE = common dso_local global i32 0, align 4
@MLX4_ICM_CHUNK_LEN = common dso_local global i64 0, align 8
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx4_icm* @mlx4_alloc_icm(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx4_icm*, align 8
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_icm*, align 8
  %11 = alloca %struct.mlx4_icm_chunk*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.mlx4_icm_chunk* null, %struct.mlx4_icm_chunk** %11, align 8
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @__GFP_HIGHMEM, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %16, %4
  %22 = phi i1 [ false, %4 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @__GFP_HIGHMEM, align 4
  %27 = load i32, i32* @__GFP_NOWARN, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %25, %29
  %31 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %32 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @kmalloc_node(i32 16, i32 %30, i32 %33)
  %35 = bitcast i8* %34 to %struct.mlx4_icm*
  store %struct.mlx4_icm* %35, %struct.mlx4_icm** %10, align 8
  %36 = load %struct.mlx4_icm*, %struct.mlx4_icm** %10, align 8
  %37 = icmp ne %struct.mlx4_icm* %36, null
  br i1 %37, label %51, label %38

38:                                               ; preds = %21
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @__GFP_HIGHMEM, align 4
  %41 = load i32, i32* @__GFP_NOWARN, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = and i32 %39, %43
  %45 = call i8* @kmalloc(i32 16, i32 %44)
  %46 = bitcast i8* %45 to %struct.mlx4_icm*
  store %struct.mlx4_icm* %46, %struct.mlx4_icm** %10, align 8
  %47 = load %struct.mlx4_icm*, %struct.mlx4_icm** %10, align 8
  %48 = icmp ne %struct.mlx4_icm* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %38
  store %struct.mlx4_icm* null, %struct.mlx4_icm** %5, align 8
  br label %249

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50, %21
  %52 = load %struct.mlx4_icm*, %struct.mlx4_icm** %10, align 8
  %53 = getelementptr inbounds %struct.mlx4_icm, %struct.mlx4_icm* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.mlx4_icm*, %struct.mlx4_icm** %10, align 8
  %55 = getelementptr inbounds %struct.mlx4_icm, %struct.mlx4_icm* %54, i32 0, i32 0
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = load i32, i32* @MLX4_ICM_ALLOC_SIZE, align 4
  %58 = call i32 @get_order(i32 %57)
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %208, %158, %51
  %60 = load i32, i32* %7, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %213

62:                                               ; preds = %59
  %63 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %64 = icmp ne %struct.mlx4_icm_chunk* %63, null
  br i1 %64, label %107, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @__GFP_HIGHMEM, align 4
  %68 = load i32, i32* @__GFP_NOWARN, align 4
  %69 = or i32 %67, %68
  %70 = xor i32 %69, -1
  %71 = and i32 %66, %70
  %72 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %73 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i8* @kmalloc_node(i32 32, i32 %71, i32 %74)
  %76 = bitcast i8* %75 to %struct.mlx4_icm_chunk*
  store %struct.mlx4_icm_chunk* %76, %struct.mlx4_icm_chunk** %11, align 8
  %77 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %78 = icmp ne %struct.mlx4_icm_chunk* %77, null
  br i1 %78, label %92, label %79

79:                                               ; preds = %65
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @__GFP_HIGHMEM, align 4
  %82 = load i32, i32* @__GFP_NOWARN, align 4
  %83 = or i32 %81, %82
  %84 = xor i32 %83, -1
  %85 = and i32 %80, %84
  %86 = call i8* @kmalloc(i32 32, i32 %85)
  %87 = bitcast i8* %86 to %struct.mlx4_icm_chunk*
  store %struct.mlx4_icm_chunk* %87, %struct.mlx4_icm_chunk** %11, align 8
  %88 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %89 = icmp ne %struct.mlx4_icm_chunk* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %79
  br label %244

91:                                               ; preds = %79
  br label %92

92:                                               ; preds = %91, %65
  %93 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %94 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @MLX4_ICM_CHUNK_LEN, align 8
  %97 = call i32 @sg_init_table(i32* %95, i64 %96)
  %98 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %99 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  %100 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %101 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %100, i32 0, i32 1
  store i64 0, i64* %101, align 8
  %102 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %103 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %102, i32 0, i32 3
  %104 = load %struct.mlx4_icm*, %struct.mlx4_icm** %10, align 8
  %105 = getelementptr inbounds %struct.mlx4_icm, %struct.mlx4_icm* %104, i32 0, i32 0
  %106 = call i32 @list_add_tail(i32* %103, i32* %105)
  br label %107

107:                                              ; preds = %92, %62
  br label %108

108:                                              ; preds = %113, %107
  %109 = load i32, i32* %12, align 4
  %110 = shl i32 1, %109
  %111 = load i32, i32* %7, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %12, align 4
  br label %108

116:                                              ; preds = %108
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %136

119:                                              ; preds = %116
  %120 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %121 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %120, i32 0, i32 0
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %127 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %130 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @mlx4_alloc_icm_coherent(i32* %125, i32* %132, i32 %133, i32 %134)
  store i32 %135, i32* %13, align 4
  br label %150

136:                                              ; preds = %116
  %137 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %138 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %141 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %147 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @mlx4_alloc_icm_pages(i32* %143, i32 %144, i32 %145, i32 %148)
  store i32 %149, i32* %13, align 4
  br label %150

150:                                              ; preds = %136, %119
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %150
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %12, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  br label %244

158:                                              ; preds = %153
  br label %59

159:                                              ; preds = %150
  %160 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %161 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %161, align 8
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %159
  %167 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %168 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* %168, align 8
  br label %201

171:                                              ; preds = %159
  %172 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %173 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @MLX4_ICM_CHUNK_LEN, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %200

177:                                              ; preds = %171
  %178 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %179 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %178, i32 0, i32 0
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %184 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %187 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %190 = call i8* @pci_map_sg(%struct.TYPE_4__* %182, i32* %185, i64 %188, i32 %189)
  %191 = ptrtoint i8* %190 to i64
  %192 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %193 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %192, i32 0, i32 1
  store i64 %191, i64* %193, align 8
  %194 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %195 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp sle i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %177
  br label %244

199:                                              ; preds = %177
  br label %200

200:                                              ; preds = %199, %171
  br label %201

201:                                              ; preds = %200, %166
  %202 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %203 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @MLX4_ICM_CHUNK_LEN, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %201
  store %struct.mlx4_icm_chunk* null, %struct.mlx4_icm_chunk** %11, align 8
  br label %208

208:                                              ; preds = %207, %201
  %209 = load i32, i32* %12, align 4
  %210 = shl i32 1, %209
  %211 = load i32, i32* %7, align 4
  %212 = sub nsw i32 %211, %210
  store i32 %212, i32* %7, align 4
  br label %59

213:                                              ; preds = %59
  %214 = load i32, i32* %9, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %242, label %216

216:                                              ; preds = %213
  %217 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %218 = icmp ne %struct.mlx4_icm_chunk* %217, null
  br i1 %218, label %219, label %242

219:                                              ; preds = %216
  %220 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %221 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %220, i32 0, i32 0
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %223, align 8
  %225 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %226 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %229 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %232 = call i8* @pci_map_sg(%struct.TYPE_4__* %224, i32* %227, i64 %230, i32 %231)
  %233 = ptrtoint i8* %232 to i64
  %234 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %235 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %234, i32 0, i32 1
  store i64 %233, i64* %235, align 8
  %236 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %237 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = icmp sle i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %219
  br label %244

241:                                              ; preds = %219
  br label %242

242:                                              ; preds = %241, %216, %213
  %243 = load %struct.mlx4_icm*, %struct.mlx4_icm** %10, align 8
  store %struct.mlx4_icm* %243, %struct.mlx4_icm** %5, align 8
  br label %249

244:                                              ; preds = %240, %198, %157, %90
  %245 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %246 = load %struct.mlx4_icm*, %struct.mlx4_icm** %10, align 8
  %247 = load i32, i32* %9, align 4
  %248 = call i32 @mlx4_free_icm(%struct.mlx4_dev* %245, %struct.mlx4_icm* %246, i32 %247)
  store %struct.mlx4_icm* null, %struct.mlx4_icm** %5, align 8
  br label %249

249:                                              ; preds = %244, %242, %49
  %250 = load %struct.mlx4_icm*, %struct.mlx4_icm** %5, align 8
  ret %struct.mlx4_icm* %250
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @kmalloc_node(i32, i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @sg_init_table(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mlx4_alloc_icm_coherent(i32*, i32*, i32, i32) #1

declare dso_local i32 @mlx4_alloc_icm_pages(i32*, i32, i32, i32) #1

declare dso_local i8* @pci_map_sg(%struct.TYPE_4__*, i32*, i64, i32) #1

declare dso_local i32 @mlx4_free_icm(%struct.mlx4_dev*, %struct.mlx4_icm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
