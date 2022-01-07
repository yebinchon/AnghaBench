; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptmv/extr_gui_lib.c_get_disk_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptmv/extr_gui_lib.c_get_disk_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, %struct.TYPE_20__*, i64 }
%struct.TYPE_20__ = type { i64, i32*, i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__, i32, i32, i64, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }

@PDT_HARDDISK = common dso_local global i32 0, align 4
@DEVICE_FLAG_DISABLED = common dso_local global i32 0, align 4
@DEVICE_FLAG_BOOTDISK = common dso_local global i32 0, align 4
@DEVICE_FLAG_BOOTMARK = common dso_local global i32 0, align 4
@DEVICE_FLAG_SATA = common dso_local global i32 0, align 4
@VD_SPARE = common dso_local global i64 0, align 8
@DEVICE_FLAG_IS_SPARE = common dso_local global i32 0, align 4
@IDEN_MODEL_OFFSET = common dso_local global i32 0, align 4
@IDEN_SUPPORTED_COMMANDS2 = common dso_local global i64 0, align 8
@MV_EDMA_MODE_QUEUED = common dso_local global i64 0, align 8
@IDEN_SATA_CAPABILITIES = common dso_local global i64 0, align 8
@MV_EDMA_MODE_NATIVE_QUEUING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_19__*)* @get_disk_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_disk_info(%struct.TYPE_17__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %7, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %18 = icmp eq %struct.TYPE_20__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %290

20:                                               ; preds = %2
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 15
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  store %struct.TYPE_21__* %25, %struct.TYPE_21__** %6, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %27 = icmp eq %struct.TYPE_21__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %290

29:                                               ; preds = %20
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  store %struct.TYPE_23__* %32, %struct.TYPE_23__** %8, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 14
  store i64 %40, i64* %42, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %29
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  br label %119

57:                                               ; preds = %29
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = bitcast i32* %64 to %struct.TYPE_18__*
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 3
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %73

70:                                               ; preds = %57
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 1
  store i32 15, i32* %72, align 8
  br label %118

73:                                               ; preds = %57
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = bitcast i32* %80 to %struct.TYPE_18__*
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = bitcast i32* %82 to i8*
  store i8* %83, i8** %10, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = bitcast i8* %84 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 21332
  br i1 %87, label %88, label %109

88:                                               ; preds = %73
  %89 = load i8*, i8** %10, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 8
  %91 = bitcast i8* %90 to i32*
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 16723
  br i1 %93, label %106, label %94

94:                                               ; preds = %88
  %95 = load i8*, i8** %10, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 65
  br i1 %99, label %100, label %109

100:                                              ; preds = %94
  %101 = load i8*, i8** %10, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 11
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 83
  br i1 %105, label %106, label %109

106:                                              ; preds = %100, %88
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  store i32 15, i32* %108, align 8
  br label %117

109:                                              ; preds = %100, %94, %73
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  br label %117

117:                                              ; preds = %109, %106
  br label %118

118:                                              ; preds = %117, %70
  br label %119

119:                                              ; preds = %118, %49
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 13
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* @PDT_HARDDISK, align 4
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 12
  store i32 %127, i32* %129, align 4
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 2
  store i32 0, i32* %131, align 4
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %119
  %139 = load i32, i32* @DEVICE_FLAG_DISABLED, align 4
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %138, %119
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load i32, i32* @DEVICE_FLAG_BOOTDISK, align 4
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %149, %144
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load i32, i32* @DEVICE_FLAG_BOOTMARK, align 4
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %160, %155
  %167 = load i32, i32* @DEVICE_FLAG_SATA, align 4
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 4
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @VD_SPARE, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %166
  %178 = load i32, i32* @DEVICE_FLAG_IS_SPARE, align 4
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %177, %166
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 11
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = call i32 @memcpy(%struct.TYPE_14__* %185, i32* %188, i32 4)
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 11
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  %193 = bitcast i32* %192 to i8*
  store i8* %193, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %194

194:                                              ; preds = %213, %183
  %195 = load i32, i32* %11, align 4
  %196 = icmp slt i32 %195, 20
  br i1 %196, label %197, label %216

197:                                              ; preds = %194
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* @IDEN_MODEL_OFFSET, align 4
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %201, %202
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %200, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @shortswap(i32 %206)
  %208 = load i8*, i8** %10, align 8
  %209 = bitcast i8* %208 to i32*
  %210 = load i32, i32* %11, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32 %207, i32* %212, align 4
  br label %213

213:                                              ; preds = %197
  %214 = load i32, i32* %11, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %11, align 4
  br label %194

216:                                              ; preds = %194
  %217 = load i8*, i8** %10, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 39
  store i8 0, i8* %218, align 1
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %220, align 8
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i64 %224
  store %struct.TYPE_22__* %225, %struct.TYPE_22__** %9, align 8
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 10
  store i32 %228, i32* %230, align 4
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 9
  store i32 %233, i32* %235, align 8
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 8
  store i32 %238, i32* %240, align 4
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %244, i32 0, i32 7
  store i32 %243, i32* %245, align 8
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = load i64, i64* @IDEN_SUPPORTED_COMMANDS2, align 8
  %250 = getelementptr inbounds i32, i32* %248, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = and i32 %251, 2
  %253 = icmp ne i32 %252, 0
  %254 = zext i1 %253 to i32
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 3
  store i32 %254, i32* %256, align 8
  %257 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @MV_EDMA_MODE_QUEUED, align 8
  %261 = icmp eq i64 %259, %260
  %262 = zext i1 %261 to i32
  %263 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 4
  store i32 %262, i32* %264, align 4
  %265 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %266 = call i64 @MV_SATA_GEN_2(%struct.TYPE_21__* %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %277

268:                                              ; preds = %216
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 1
  %271 = load i32*, i32** %270, align 8
  %272 = load i64, i64* @IDEN_SATA_CAPABILITIES, align 8
  %273 = getelementptr inbounds i32, i32* %271, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = and i32 %274, 256
  %276 = icmp ne i32 %275, 0
  br label %277

277:                                              ; preds = %268, %216
  %278 = phi i1 [ false, %216 ], [ %276, %268 ]
  %279 = zext i1 %278 to i32
  %280 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %280, i32 0, i32 5
  store i32 %279, i32* %281, align 8
  %282 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @MV_EDMA_MODE_NATIVE_QUEUING, align 8
  %286 = icmp eq i64 %284, %285
  %287 = zext i1 %286 to i32
  %288 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %288, i32 0, i32 6
  store i32 %287, i32* %289, align 4
  store i32 0, i32* %3, align 4
  br label %290

290:                                              ; preds = %277, %28, %19
  %291 = load i32, i32* %3, align 4
  ret i32 %291
}

declare dso_local i32 @memcpy(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @shortswap(i32) #1

declare dso_local i64 @MV_SATA_GEN_2(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
