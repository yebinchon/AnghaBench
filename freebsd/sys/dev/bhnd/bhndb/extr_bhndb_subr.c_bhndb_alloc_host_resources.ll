; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_alloc_host_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_alloc_host_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_host_resources = type { i64, i32, %struct.bhndb_host_resources*, %struct.bhndb_host_resources*, %struct.bhndb_host_resources*, i32, %struct.bhndb_hwcfg* }
%struct.bhndb_hwcfg = type { %struct.bhndb_host_resources*, %struct.bhnd_dma_translation* }
%struct.bhnd_dma_translation = type { i32, i32, i32 }

@M_BHND = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"invalid DMA translation; base address %#jx overlaps address mask %#jx\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"invalid DMA translation; addrext mask %#jx overlaps address mask %#jx\00", align 1
@M_ZERO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"could not allocate bridge resources via %s: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhndb_alloc_host_resources(%struct.bhndb_host_resources** %0, i32 %1, i32 %2, %struct.bhndb_hwcfg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bhndb_host_resources**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bhndb_hwcfg*, align 8
  %10 = alloca %struct.bhndb_host_resources*, align 8
  %11 = alloca %struct.bhnd_dma_translation*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.bhndb_host_resources** %0, %struct.bhndb_host_resources*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.bhndb_hwcfg* %3, %struct.bhndb_hwcfg** %9, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @bus_get_dma_tag(i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* @M_BHND, align 4
  %23 = load i32, i32* @M_WAITOK, align 4
  %24 = call i8* @malloc(i32 56, i32 %22, i32 %23)
  %25 = bitcast i8* %24 to %struct.bhndb_host_resources*
  store %struct.bhndb_host_resources* %25, %struct.bhndb_host_resources** %10, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %10, align 8
  %28 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load %struct.bhndb_hwcfg*, %struct.bhndb_hwcfg** %9, align 8
  %30 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %10, align 8
  %31 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %30, i32 0, i32 6
  store %struct.bhndb_hwcfg* %29, %struct.bhndb_hwcfg** %31, align 8
  %32 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %10, align 8
  %33 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %32, i32 0, i32 4
  store %struct.bhndb_host_resources* null, %struct.bhndb_host_resources** %33, align 8
  %34 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %10, align 8
  %35 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %34, i32 0, i32 3
  store %struct.bhndb_host_resources* null, %struct.bhndb_host_resources** %35, align 8
  %36 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %10, align 8
  %37 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %36, i32 0, i32 2
  store %struct.bhndb_host_resources* null, %struct.bhndb_host_resources** %37, align 8
  %38 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %10, align 8
  %39 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %16, align 8
  br label %40

40:                                               ; preds = %52, %4
  %41 = load %struct.bhndb_hwcfg*, %struct.bhndb_hwcfg** %9, align 8
  %42 = getelementptr inbounds %struct.bhndb_hwcfg, %struct.bhndb_hwcfg* %41, i32 0, i32 0
  %43 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %42, align 8
  %44 = load i64, i64* %16, align 8
  %45 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %43, i64 %44
  %46 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load i64, i64* %13, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %13, align 8
  br label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %16, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %16, align 8
  br label %40

55:                                               ; preds = %40
  store i64 0, i64* %14, align 8
  %56 = load %struct.bhndb_hwcfg*, %struct.bhndb_hwcfg** %9, align 8
  %57 = getelementptr inbounds %struct.bhndb_hwcfg, %struct.bhndb_hwcfg* %56, i32 0, i32 1
  %58 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %57, align 8
  store %struct.bhnd_dma_translation* %58, %struct.bhnd_dma_translation** %11, align 8
  br label %59

59:                                               ; preds = %110, %55
  %60 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %11, align 8
  %61 = icmp ne %struct.bhnd_dma_translation* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %11, align 8
  %64 = call i32 @BHND_DMA_IS_TRANSLATION_TABLE_END(%struct.bhnd_dma_translation* %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br label %67

67:                                               ; preds = %62, %59
  %68 = phi i1 [ false, %59 ], [ %66, %62 ]
  br i1 %68, label %69, label %113

69:                                               ; preds = %67
  %70 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %11, align 8
  %71 = getelementptr inbounds %struct.bhnd_dma_translation, %struct.bhnd_dma_translation* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %11, align 8
  %74 = getelementptr inbounds %struct.bhnd_dma_translation, %struct.bhnd_dma_translation* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %72, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %69
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %11, align 8
  %81 = getelementptr inbounds %struct.bhnd_dma_translation, %struct.bhnd_dma_translation* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %11, align 8
  %84 = getelementptr inbounds %struct.bhnd_dma_translation, %struct.bhnd_dma_translation* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @device_printf(i32 %79, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %85)
  %87 = load i32, i32* @EINVAL, align 4
  store i32 %87, i32* %15, align 4
  br label %222

88:                                               ; preds = %69
  %89 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %11, align 8
  %90 = getelementptr inbounds %struct.bhnd_dma_translation, %struct.bhnd_dma_translation* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %11, align 8
  %93 = getelementptr inbounds %struct.bhnd_dma_translation, %struct.bhnd_dma_translation* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %91, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %88
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %11, align 8
  %100 = getelementptr inbounds %struct.bhnd_dma_translation, %struct.bhnd_dma_translation* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %11, align 8
  %103 = getelementptr inbounds %struct.bhnd_dma_translation, %struct.bhnd_dma_translation* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @device_printf(i32 %98, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %104)
  %106 = load i32, i32* @EINVAL, align 4
  store i32 %106, i32* %15, align 4
  br label %222

107:                                              ; preds = %88
  %108 = load i64, i64* %14, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %14, align 8
  br label %110

110:                                              ; preds = %107
  %111 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %11, align 8
  %112 = getelementptr inbounds %struct.bhnd_dma_translation, %struct.bhnd_dma_translation* %111, i32 1
  store %struct.bhnd_dma_translation* %112, %struct.bhnd_dma_translation** %11, align 8
  br label %59

113:                                              ; preds = %67
  %114 = load i64, i64* %14, align 8
  %115 = mul i64 56, %114
  %116 = trunc i64 %115 to i32
  %117 = load i32, i32* @M_BHND, align 4
  %118 = load i32, i32* @M_WAITOK, align 4
  %119 = load i32, i32* @M_ZERO, align 4
  %120 = or i32 %118, %119
  %121 = call i8* @malloc(i32 %116, i32 %117, i32 %120)
  %122 = bitcast i8* %121 to %struct.bhndb_host_resources*
  %123 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %10, align 8
  %124 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %123, i32 0, i32 2
  store %struct.bhndb_host_resources* %122, %struct.bhndb_host_resources** %124, align 8
  store i64 0, i64* %17, align 8
  br label %125

125:                                              ; preds = %151, %113
  %126 = load i64, i64* %17, align 8
  %127 = load i64, i64* %14, align 8
  %128 = icmp ult i64 %126, %127
  br i1 %128, label %129, label %154

129:                                              ; preds = %125
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load %struct.bhndb_hwcfg*, %struct.bhndb_hwcfg** %9, align 8
  %133 = getelementptr inbounds %struct.bhndb_hwcfg, %struct.bhndb_hwcfg* %132, i32 0, i32 1
  %134 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %133, align 8
  %135 = load i64, i64* %17, align 8
  %136 = getelementptr inbounds %struct.bhnd_dma_translation, %struct.bhnd_dma_translation* %134, i64 %135
  %137 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %10, align 8
  %138 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %137, i32 0, i32 2
  %139 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %138, align 8
  %140 = load i64, i64* %17, align 8
  %141 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %139, i64 %140
  %142 = call i32 @bhndb_dma_tag_create(i32 %130, i32 %131, %struct.bhnd_dma_translation* %136, %struct.bhndb_host_resources* %141)
  store i32 %142, i32* %15, align 4
  %143 = load i32, i32* %15, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %129
  br label %222

146:                                              ; preds = %129
  %147 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %10, align 8
  %148 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %148, align 8
  br label %151

151:                                              ; preds = %146
  %152 = load i64, i64* %17, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %17, align 8
  br label %125

154:                                              ; preds = %125
  %155 = load i64, i64* %13, align 8
  %156 = add i64 %155, 1
  %157 = mul i64 56, %156
  %158 = trunc i64 %157 to i32
  %159 = load i32, i32* @M_BHND, align 4
  %160 = load i32, i32* @M_WAITOK, align 4
  %161 = call i8* @malloc(i32 %158, i32 %159, i32 %160)
  %162 = bitcast i8* %161 to %struct.bhndb_host_resources*
  %163 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %10, align 8
  %164 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %163, i32 0, i32 4
  store %struct.bhndb_host_resources* %162, %struct.bhndb_host_resources** %164, align 8
  store i64 0, i64* %18, align 8
  br label %165

165:                                              ; preds = %182, %154
  %166 = load i64, i64* %18, align 8
  %167 = load i64, i64* %13, align 8
  %168 = icmp ult i64 %166, %167
  br i1 %168, label %169, label %185

169:                                              ; preds = %165
  %170 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %10, align 8
  %171 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %170, i32 0, i32 4
  %172 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %171, align 8
  %173 = load i64, i64* %18, align 8
  %174 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %172, i64 %173
  %175 = load %struct.bhndb_hwcfg*, %struct.bhndb_hwcfg** %9, align 8
  %176 = getelementptr inbounds %struct.bhndb_hwcfg, %struct.bhndb_hwcfg* %175, i32 0, i32 0
  %177 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %176, align 8
  %178 = load i64, i64* %18, align 8
  %179 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %177, i64 %178
  %180 = bitcast %struct.bhndb_host_resources* %174 to i8*
  %181 = bitcast %struct.bhndb_host_resources* %179 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %180, i8* align 8 %181, i64 56, i1 false)
  br label %182

182:                                              ; preds = %169
  %183 = load i64, i64* %18, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %18, align 8
  br label %165

185:                                              ; preds = %165
  %186 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %10, align 8
  %187 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %186, i32 0, i32 4
  %188 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %187, align 8
  %189 = load i64, i64* %13, align 8
  %190 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %188, i64 %189
  %191 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %190, i32 0, i32 1
  store i32 -1, i32* %191, align 8
  %192 = load i64, i64* %13, align 8
  %193 = mul i64 56, %192
  %194 = trunc i64 %193 to i32
  %195 = load i32, i32* @M_BHND, align 4
  %196 = load i32, i32* @M_WAITOK, align 4
  %197 = call i8* @malloc(i32 %194, i32 %195, i32 %196)
  %198 = bitcast i8* %197 to %struct.bhndb_host_resources*
  %199 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %10, align 8
  %200 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %199, i32 0, i32 3
  store %struct.bhndb_host_resources* %198, %struct.bhndb_host_resources** %200, align 8
  %201 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %10, align 8
  %202 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %10, align 8
  %205 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %204, i32 0, i32 4
  %206 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %205, align 8
  %207 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %10, align 8
  %208 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %207, i32 0, i32 3
  %209 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %208, align 8
  %210 = call i32 @bus_alloc_resources(i32 %203, %struct.bhndb_host_resources* %206, %struct.bhndb_host_resources* %209)
  store i32 %210, i32* %15, align 4
  %211 = load i32, i32* %15, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %185
  %214 = load i32, i32* %7, align 4
  %215 = load i32, i32* %8, align 4
  %216 = call i32 @device_get_nameunit(i32 %215)
  %217 = load i32, i32* %15, align 4
  %218 = call i32 @device_printf(i32 %214, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %216, i32 %217)
  br label %222

219:                                              ; preds = %185
  %220 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %10, align 8
  %221 = load %struct.bhndb_host_resources**, %struct.bhndb_host_resources*** %6, align 8
  store %struct.bhndb_host_resources* %220, %struct.bhndb_host_resources** %221, align 8
  store i32 0, i32* %5, align 4
  br label %277

222:                                              ; preds = %213, %145, %97, %78
  %223 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %10, align 8
  %224 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %223, i32 0, i32 4
  %225 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %224, align 8
  %226 = icmp ne %struct.bhndb_host_resources* %225, null
  br i1 %226, label %227, label %233

227:                                              ; preds = %222
  %228 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %10, align 8
  %229 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %228, i32 0, i32 4
  %230 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %229, align 8
  %231 = load i32, i32* @M_BHND, align 4
  %232 = call i32 @free(%struct.bhndb_host_resources* %230, i32 %231)
  br label %233

233:                                              ; preds = %227, %222
  %234 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %10, align 8
  %235 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %234, i32 0, i32 3
  %236 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %235, align 8
  %237 = icmp ne %struct.bhndb_host_resources* %236, null
  br i1 %237, label %238, label %244

238:                                              ; preds = %233
  %239 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %10, align 8
  %240 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %239, i32 0, i32 3
  %241 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %240, align 8
  %242 = load i32, i32* @M_BHND, align 4
  %243 = call i32 @free(%struct.bhndb_host_resources* %241, i32 %242)
  br label %244

244:                                              ; preds = %238, %233
  store i64 0, i64* %19, align 8
  br label %245

245:                                              ; preds = %258, %244
  %246 = load i64, i64* %19, align 8
  %247 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %10, align 8
  %248 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = icmp ult i64 %246, %249
  br i1 %250, label %251, label %261

251:                                              ; preds = %245
  %252 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %10, align 8
  %253 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %252, i32 0, i32 2
  %254 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %253, align 8
  %255 = load i64, i64* %19, align 8
  %256 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %254, i64 %255
  %257 = call i32 @bus_dma_tag_destroy(%struct.bhndb_host_resources* byval(%struct.bhndb_host_resources) align 8 %256)
  br label %258

258:                                              ; preds = %251
  %259 = load i64, i64* %19, align 8
  %260 = add i64 %259, 1
  store i64 %260, i64* %19, align 8
  br label %245

261:                                              ; preds = %245
  %262 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %10, align 8
  %263 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %262, i32 0, i32 2
  %264 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %263, align 8
  %265 = icmp ne %struct.bhndb_host_resources* %264, null
  br i1 %265, label %266, label %272

266:                                              ; preds = %261
  %267 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %10, align 8
  %268 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %267, i32 0, i32 2
  %269 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %268, align 8
  %270 = load i32, i32* @M_BHND, align 4
  %271 = call i32 @free(%struct.bhndb_host_resources* %269, i32 %270)
  br label %272

272:                                              ; preds = %266, %261
  %273 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %10, align 8
  %274 = load i32, i32* @M_BHND, align 4
  %275 = call i32 @free(%struct.bhndb_host_resources* %273, i32 %274)
  %276 = load i32, i32* %15, align 4
  store i32 %276, i32* %5, align 4
  br label %277

277:                                              ; preds = %272, %219
  %278 = load i32, i32* %5, align 4
  ret i32 %278
}

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @BHND_DMA_IS_TRANSLATION_TABLE_END(%struct.bhnd_dma_translation*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @bhndb_dma_tag_create(i32, i32, %struct.bhnd_dma_translation*, %struct.bhndb_host_resources*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bus_alloc_resources(i32, %struct.bhndb_host_resources*, %struct.bhndb_host_resources*) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @free(%struct.bhndb_host_resources*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(%struct.bhndb_host_resources* byval(%struct.bhndb_host_resources) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
