; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/uzip/extr_g_uzip.c_g_uzip_parse_toc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/uzip/extr_g_uzip.c_g_uzip_parse_toc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_uzip_softc = type { i32, %struct.g_uzip_blk*, %struct.TYPE_2__*, i32 }
%struct.g_uzip_blk = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.g_provider = type { i32 }
%struct.g_geom = type { i32 }

@GUZ_DBG_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s: cluster #%u offset=%ju max_offset=%ju\0A\00", align 1
@BLEN_UNDEF = common dso_local global i64 0, align 8
@GUZ_DBG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"%s: cannot match backref'ed offset at cluster #%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"%s: cluster #%u extends past media boundary (%ju > %ju)\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"%s: max_offset is incorrect: %ju\00", align 1
@GUZ_DBG_TOC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"%s: cluster #%u, original %u bytes, in %u bytes\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" (->#%u)\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"%s: cluster #%u length (%ju) exceeds max_blen (%ju)\0A\00", align 1
@GUZ_DBG_INFO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [59 x i8] c"%s: cluster #%u extra padding is detected, trimmed to %ju\0A\00", align 1
@.str.9 = private unnamed_addr constant [67 x i8] c"%s: cluster #%u: invalid offset %ju, min_offset=%ju mediasize=%jd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_uzip_softc*, %struct.g_provider*, %struct.g_geom*)* @g_uzip_parse_toc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_uzip_parse_toc(%struct.g_uzip_softc* %0, %struct.g_provider* %1, %struct.g_geom* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_uzip_softc*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca %struct.g_geom*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.g_uzip_blk*, align 8
  store %struct.g_uzip_softc* %0, %struct.g_uzip_softc** %5, align 8
  store %struct.g_provider* %1, %struct.g_provider** %6, align 8
  store %struct.g_geom* %2, %struct.g_geom** %7, align 8
  %14 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %15 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = add i64 4, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %12, align 4
  %22 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %23 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %22, i32 0, i32 1
  %24 = load %struct.g_uzip_blk*, %struct.g_uzip_blk** %23, align 8
  %25 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %24, i64 0
  %26 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %11, align 4
  %29 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %30 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %29, i32 0, i32 1
  %31 = load %struct.g_uzip_blk*, %struct.g_uzip_blk** %30, align 8
  %32 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %31, i64 0
  store %struct.g_uzip_blk* %32, %struct.g_uzip_blk** %13, align 8
  store i64 0, i64* %8, align 8
  br label %33

33:                                               ; preds = %283, %3
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %36 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %34, %38
  br i1 %39, label %40, label %286

40:                                               ; preds = %33
  %41 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %42 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %41, i32 0, i32 1
  %43 = load %struct.g_uzip_blk*, %struct.g_uzip_blk** %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %43, i64 %44
  %46 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %62, label %50

50:                                               ; preds = %40
  %51 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %52 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %51, i32 0, i32 1
  %53 = load %struct.g_uzip_blk*, %struct.g_uzip_blk** %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %53, i64 %54
  %56 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %59 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %50, %40
  br label %376

63:                                               ; preds = %50
  %64 = load i32, i32* @GUZ_DBG_IO, align 4
  %65 = load i64, i64* %8, align 8
  %66 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %67 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %8, align 8
  %70 = trunc i64 %69 to i32
  %71 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %72 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %71, i32 0, i32 1
  %73 = load %struct.g_uzip_blk*, %struct.g_uzip_blk** %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %73, i64 %74
  %76 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = call i32 @DPRINTF_BLK(i32 %64, i64 %65, i8* %80)
  %82 = load i64, i64* @BLEN_UNDEF, align 8
  store i64 %82, i64* %10, align 8
  %83 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %84 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %83, i32 0, i32 1
  %85 = load %struct.g_uzip_blk*, %struct.g_uzip_blk** %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %85, i64 %86
  %88 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %150

92:                                               ; preds = %63
  store i64 0, i64* %9, align 8
  br label %93

93:                                               ; preds = %132, %92
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* %8, align 8
  %96 = icmp ule i64 %94, %95
  br i1 %96, label %97, label %135

97:                                               ; preds = %93
  %98 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %99 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %98, i32 0, i32 1
  %100 = load %struct.g_uzip_blk*, %struct.g_uzip_blk** %99, align 8
  %101 = load i64, i64* %9, align 8
  %102 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %100, i64 %101
  %103 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %106 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %105, i32 0, i32 1
  %107 = load %struct.g_uzip_blk*, %struct.g_uzip_blk** %106, align 8
  %108 = load i64, i64* %8, align 8
  %109 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %107, i64 %108
  %110 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %104, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %97
  %114 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %115 = load i64, i64* %9, align 8
  %116 = call i32 @BLK_IS_NIL(%struct.g_uzip_softc* %114, i64 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %113
  br label %135

119:                                              ; preds = %113, %97
  %120 = load i64, i64* %9, align 8
  %121 = load i64, i64* %8, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %132

124:                                              ; preds = %119
  %125 = load i32, i32* @GUZ_DBG_ERR, align 4
  %126 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %127 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i64, i64* %8, align 8
  %130 = inttoptr i64 %129 to i8*
  %131 = call i32 @DPRINTF(i32 %125, i8* %130)
  store i32 -1, i32* %4, align 4
  br label %397

132:                                              ; preds = %123
  %133 = load i64, i64* %9, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %9, align 8
  br label %93

135:                                              ; preds = %118, %93
  %136 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %137 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %136, i32 0, i32 1
  %138 = load %struct.g_uzip_blk*, %struct.g_uzip_blk** %137, align 8
  %139 = load i64, i64* %9, align 8
  %140 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %138, i64 %139
  %141 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %144 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %143, i32 0, i32 1
  %145 = load %struct.g_uzip_blk*, %struct.g_uzip_blk** %144, align 8
  %146 = load i64, i64* %8, align 8
  %147 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %145, i64 %146
  %148 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %147, i32 0, i32 1
  store i32 %142, i32* %148, align 4
  %149 = load i64, i64* %9, align 8
  store i64 %149, i64* %10, align 8
  br label %248

150:                                              ; preds = %63
  %151 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %152 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %151, i32 0, i32 1
  %153 = load %struct.g_uzip_blk*, %struct.g_uzip_blk** %152, align 8
  %154 = load i64, i64* %8, align 8
  %155 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %153, i64 %154
  store %struct.g_uzip_blk* %155, %struct.g_uzip_blk** %13, align 8
  %156 = load i64, i64* %8, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %9, align 8
  br label %158

158:                                              ; preds = %178, %150
  %159 = load i64, i64* %9, align 8
  %160 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %161 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = icmp ult i64 %159, %164
  br i1 %165, label %166, label %181

166:                                              ; preds = %158
  %167 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %168 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %167, i32 0, i32 1
  %169 = load %struct.g_uzip_blk*, %struct.g_uzip_blk** %168, align 8
  %170 = load i64, i64* %9, align 8
  %171 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %169, i64 %170
  %172 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %11, align 4
  %175 = icmp sgt i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %166
  br label %181

177:                                              ; preds = %166
  br label %178

178:                                              ; preds = %177
  %179 = load i64, i64* %9, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %9, align 8
  br label %158

181:                                              ; preds = %176, %158
  %182 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %183 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %182, i32 0, i32 1
  %184 = load %struct.g_uzip_blk*, %struct.g_uzip_blk** %183, align 8
  %185 = load i64, i64* %9, align 8
  %186 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %184, i64 %185
  %187 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %190 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %189, i32 0, i32 1
  %191 = load %struct.g_uzip_blk*, %struct.g_uzip_blk** %190, align 8
  %192 = load i64, i64* %8, align 8
  %193 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %191, i64 %192
  %194 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = sub nsw i32 %188, %195
  %197 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %198 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %197, i32 0, i32 1
  %199 = load %struct.g_uzip_blk*, %struct.g_uzip_blk** %198, align 8
  %200 = load i64, i64* %8, align 8
  %201 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %199, i64 %200
  %202 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %201, i32 0, i32 1
  store i32 %196, i32* %202, align 4
  %203 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %204 = load i64, i64* %8, align 8
  %205 = call i32 @BLK_ENDS(%struct.g_uzip_softc* %203, i64 %204)
  %206 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %207 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = icmp sgt i32 %205, %208
  br i1 %209, label %210, label %226

210:                                              ; preds = %181
  %211 = load i32, i32* @GUZ_DBG_ERR, align 4
  %212 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %213 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i64, i64* %8, align 8
  %216 = trunc i64 %215 to i32
  %217 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %218 = load i64, i64* %8, align 8
  %219 = call i32 @BLK_ENDS(%struct.g_uzip_softc* %217, i64 %218)
  %220 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %221 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  %224 = inttoptr i64 %223 to i8*
  %225 = call i32 @DPRINTF(i32 %211, i8* %224)
  store i32 -1, i32* %4, align 4
  br label %397

226:                                              ; preds = %181
  %227 = load i32, i32* %11, align 4
  %228 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %229 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %228, i32 0, i32 1
  %230 = load %struct.g_uzip_blk*, %struct.g_uzip_blk** %229, align 8
  %231 = load i64, i64* %8, align 8
  %232 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %230, i64 %231
  %233 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = icmp sle i32 %227, %234
  %236 = zext i1 %235 to i32
  %237 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %238 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %11, align 4
  %241 = sext i32 %240 to i64
  %242 = inttoptr i64 %241 to i8*
  %243 = call i32 @KASSERT(i32 %236, i8* %242)
  %244 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %245 = load i64, i64* %8, align 8
  %246 = call i32 @BLK_ENDS(%struct.g_uzip_softc* %244, i64 %245)
  %247 = sub nsw i32 %246, 1
  store i32 %247, i32* %11, align 4
  br label %248

248:                                              ; preds = %226, %135
  %249 = load i32, i32* @GUZ_DBG_TOC, align 4
  %250 = load i64, i64* %8, align 8
  %251 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %252 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load i64, i64* %8, align 8
  %255 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %256 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %259 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %258, i32 0, i32 1
  %260 = load %struct.g_uzip_blk*, %struct.g_uzip_blk** %259, align 8
  %261 = load i64, i64* %8, align 8
  %262 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %260, i64 %261
  %263 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = sext i32 %264 to i64
  %266 = inttoptr i64 %265 to i8*
  %267 = call i32 @DPRINTF_BLK(i32 %249, i64 %250, i8* %266)
  %268 = load i64, i64* %10, align 8
  %269 = load i64, i64* @BLEN_UNDEF, align 8
  %270 = icmp ne i64 %268, %269
  br i1 %270, label %271, label %279

271:                                              ; preds = %248
  %272 = load i32, i32* @GUZ_DBG_TOC, align 4
  %273 = load i64, i64* %8, align 8
  %274 = load i64, i64* %10, align 8
  %275 = trunc i64 %274 to i32
  %276 = sext i32 %275 to i64
  %277 = inttoptr i64 %276 to i8*
  %278 = call i32 @DPRINTF_BLK(i32 %272, i64 %273, i8* %277)
  br label %279

279:                                              ; preds = %271, %248
  %280 = load i32, i32* @GUZ_DBG_TOC, align 4
  %281 = load i64, i64* %8, align 8
  %282 = call i32 @DPRINTF_BLK(i32 %280, i64 %281, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %283

283:                                              ; preds = %279
  %284 = load i64, i64* %8, align 8
  %285 = add i64 %284, 1
  store i64 %285, i64* %8, align 8
  br label %33

286:                                              ; preds = %33
  %287 = load %struct.g_uzip_blk*, %struct.g_uzip_blk** %13, align 8
  %288 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %287, i32 0, i32 2
  store i32 1, i32* %288, align 4
  store i64 0, i64* %8, align 8
  br label %289

289:                                              ; preds = %372, %286
  %290 = load i64, i64* %8, align 8
  %291 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %292 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = sext i32 %293 to i64
  %295 = icmp ult i64 %290, %294
  br i1 %295, label %296, label %375

296:                                              ; preds = %289
  %297 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %298 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %297, i32 0, i32 1
  %299 = load %struct.g_uzip_blk*, %struct.g_uzip_blk** %298, align 8
  %300 = load i64, i64* %8, align 8
  %301 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %299, i64 %300
  %302 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %305 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %304, i32 0, i32 2
  %306 = load %struct.TYPE_2__*, %struct.TYPE_2__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = icmp sgt i32 %303, %308
  br i1 %309, label %310, label %371

310:                                              ; preds = %296
  %311 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %312 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %311, i32 0, i32 1
  %313 = load %struct.g_uzip_blk*, %struct.g_uzip_blk** %312, align 8
  %314 = load i64, i64* %8, align 8
  %315 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %313, i64 %314
  %316 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %340

319:                                              ; preds = %310
  %320 = load i32, i32* @GUZ_DBG_ERR, align 4
  %321 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %322 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = load i64, i64* %8, align 8
  %325 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %326 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %325, i32 0, i32 1
  %327 = load %struct.g_uzip_blk*, %struct.g_uzip_blk** %326, align 8
  %328 = load i64, i64* %8, align 8
  %329 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %327, i64 %328
  %330 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %333 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %332, i32 0, i32 2
  %334 = load %struct.TYPE_2__*, %struct.TYPE_2__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = sext i32 %336 to i64
  %338 = inttoptr i64 %337 to i8*
  %339 = call i32 @DPRINTF(i32 %320, i8* %338)
  store i32 -1, i32* %4, align 4
  br label %397

340:                                              ; preds = %310
  %341 = load i32, i32* @GUZ_DBG_INFO, align 4
  %342 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %343 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = load i64, i64* %8, align 8
  %346 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %347 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %346, i32 0, i32 2
  %348 = load %struct.TYPE_2__*, %struct.TYPE_2__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = sext i32 %350 to i64
  %352 = inttoptr i64 %351 to i8*
  %353 = call i32 @DPRINTF(i32 %341, i8* %352)
  %354 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %355 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %354, i32 0, i32 2
  %356 = load %struct.TYPE_2__*, %struct.TYPE_2__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %360 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %359, i32 0, i32 1
  %361 = load %struct.g_uzip_blk*, %struct.g_uzip_blk** %360, align 8
  %362 = load i64, i64* %8, align 8
  %363 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %361, i64 %362
  %364 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %363, i32 0, i32 1
  store i32 %358, i32* %364, align 4
  %365 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %366 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %365, i32 0, i32 1
  %367 = load %struct.g_uzip_blk*, %struct.g_uzip_blk** %366, align 8
  %368 = load i64, i64* %8, align 8
  %369 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %367, i64 %368
  %370 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %369, i32 0, i32 3
  store i32 1, i32* %370, align 4
  br label %371

371:                                              ; preds = %340, %296
  br label %372

372:                                              ; preds = %371
  %373 = load i64, i64* %8, align 8
  %374 = add i64 %373, 1
  store i64 %374, i64* %8, align 8
  br label %289

375:                                              ; preds = %289
  store i32 0, i32* %4, align 4
  br label %397

376:                                              ; preds = %62
  %377 = load i32, i32* @GUZ_DBG_ERR, align 4
  %378 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %379 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = load i64, i64* %8, align 8
  %382 = trunc i64 %381 to i32
  %383 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %5, align 8
  %384 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %383, i32 0, i32 1
  %385 = load %struct.g_uzip_blk*, %struct.g_uzip_blk** %384, align 8
  %386 = load i64, i64* %8, align 8
  %387 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %385, i64 %386
  %388 = getelementptr inbounds %struct.g_uzip_blk, %struct.g_uzip_blk* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* %12, align 4
  %391 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %392 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 4
  %394 = sext i32 %393 to i64
  %395 = inttoptr i64 %394 to i8*
  %396 = call i32 @DPRINTF(i32 %377, i8* %395)
  store i32 -1, i32* %4, align 4
  br label %397

397:                                              ; preds = %376, %375, %319, %210, %124
  %398 = load i32, i32* %4, align 4
  ret i32 %398
}

declare dso_local i32 @DPRINTF_BLK(i32, i64, i8*) #1

declare dso_local i32 @BLK_IS_NIL(%struct.g_uzip_softc*, i64) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @BLK_ENDS(%struct.g_uzip_softc*, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
