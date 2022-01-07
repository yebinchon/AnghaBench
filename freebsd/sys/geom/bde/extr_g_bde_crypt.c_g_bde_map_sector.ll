; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_crypt.c_g_bde_map_sector.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_crypt.c_g_bde_map_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_bde_work = type { i64, i64, i64, i64, i64, %struct.g_bde_softc* }
%struct.g_bde_softc = type { %struct.g_bde_key }
%struct.g_bde_key = type { i64, i64, i64, i64, i64, i64, i32*, i64 }

@G_BDE_SKEYLEN = common dso_local global i64 0, align 8
@DFLTPHYS = common dso_local global i64 0, align 8
@G_BDE_MAXKEYS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"wp->so (%jd) + wp->length (%jd) > EOM (%jd), offset = %jd\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"wp->kso (%jd) + kp->sectorsize > EOM (%jd), offset = %jd\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"wp->so (%jd) < BOM (%jd), offset = %jd\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"wp->kso (%jd) <BOM (%jd), offset = %jd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_bde_map_sector(%struct.g_bde_work* %0) #0 {
  %2 = alloca %struct.g_bde_work*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.g_bde_softc*, align 8
  %9 = alloca %struct.g_bde_key*, align 8
  store %struct.g_bde_work* %0, %struct.g_bde_work** %2, align 8
  %10 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %11 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %10, i32 0, i32 5
  %12 = load %struct.g_bde_softc*, %struct.g_bde_softc** %11, align 8
  store %struct.g_bde_softc* %12, %struct.g_bde_softc** %8, align 8
  %13 = load %struct.g_bde_softc*, %struct.g_bde_softc** %8, align 8
  %14 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %13, i32 0, i32 0
  store %struct.g_bde_key* %14, %struct.g_bde_key** %9, align 8
  %15 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %16 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %19 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = udiv i64 %17, %20
  store i64 %21, i64* %3, align 8
  %22 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %23 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %26 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = urem i64 %24, %27
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %31 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = udiv i64 %29, %32
  %34 = load i64, i64* @G_BDE_SKEYLEN, align 8
  %35 = mul i64 %33, %34
  %36 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %37 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %39 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %4, align 8
  %42 = sub i64 %40, %41
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @DFLTPHYS, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %1
  %47 = load i64, i64* @DFLTPHYS, align 8
  store i64 %47, i64* %6, align 8
  br label %48

48:                                               ; preds = %46, %1
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %51 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %57 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %48
  %59 = load i64, i64* %3, align 8
  %60 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %61 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = mul i64 %59, %62
  %64 = load i64, i64* %4, align 8
  %65 = add i64 %63, %64
  %66 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %67 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %66, i32 0, i32 3
  store i64 %65, i64* %67, align 8
  %68 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %69 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %68, i32 0, i32 7
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %72 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %76 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %79 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = urem i64 %80, %77
  store i64 %81, i64* %79, align 8
  %82 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %83 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %86 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %84, %87
  %89 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %90 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ugt i64 %88, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %58
  %94 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %95 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %98 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = sub i64 %96, %99
  %101 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %102 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %93, %58
  %104 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %105 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %108 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %109, %106
  store i64 %110, i64* %108, align 8
  %111 = load i64, i64* %3, align 8
  %112 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %113 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = mul i64 %111, %114
  %116 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %117 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %115, %118
  %120 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %121 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %120, i32 0, i32 4
  store i64 %119, i64* %121, align 8
  %122 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %123 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %122, i32 0, i32 7
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %126 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %127, %124
  store i64 %128, i64* %126, align 8
  %129 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %130 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %133 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = urem i64 %134, %131
  store i64 %135, i64* %133, align 8
  %136 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %137 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %140 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = add i64 %141, %138
  store i64 %142, i64* %140, align 8
  store i64 0, i64* %5, align 8
  br label %143

143:                                              ; preds = %205, %103
  %144 = load i64, i64* %5, align 8
  %145 = load i64, i64* @G_BDE_MAXKEYS, align 8
  %146 = icmp ult i64 %144, %145
  br i1 %146, label %147, label %208

147:                                              ; preds = %143
  %148 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %149 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %148, i32 0, i32 6
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* %5, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %155 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = call i64 @rounddown2(i32 %153, i64 %156)
  store i64 %157, i64* %7, align 8
  %158 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %159 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* %7, align 8
  %162 = icmp uge i64 %160, %161
  br i1 %162, label %163, label %171

163:                                              ; preds = %147
  %164 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %165 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %168 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = add i64 %169, %166
  store i64 %170, i64* %168, align 8
  br label %171

171:                                              ; preds = %163, %147
  %172 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %173 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* %7, align 8
  %176 = icmp uge i64 %174, %175
  br i1 %176, label %177, label %185

177:                                              ; preds = %171
  %178 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %179 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %182 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = add i64 %183, %180
  store i64 %184, i64* %182, align 8
  br label %204

185:                                              ; preds = %171
  %186 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %187 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %190 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = add i64 %188, %191
  %193 = load i64, i64* %7, align 8
  %194 = icmp ugt i64 %192, %193
  br i1 %194, label %195, label %203

195:                                              ; preds = %185
  %196 = load i64, i64* %7, align 8
  %197 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %198 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = sub i64 %196, %199
  %201 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %202 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %201, i32 0, i32 2
  store i64 %200, i64* %202, align 8
  br label %203

203:                                              ; preds = %195, %185
  br label %204

204:                                              ; preds = %203, %177
  br label %205

205:                                              ; preds = %204
  %206 = load i64, i64* %5, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %5, align 8
  br label %143

208:                                              ; preds = %143
  %209 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %210 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %213 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = add i64 %211, %214
  %216 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %217 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %216, i32 0, i32 5
  %218 = load i64, i64* %217, align 8
  %219 = icmp ule i64 %215, %218
  %220 = zext i1 %219 to i32
  %221 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %222 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = trunc i64 %223 to i32
  %225 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %226 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = trunc i64 %227 to i32
  %229 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %230 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %229, i32 0, i32 5
  %231 = load i64, i64* %230, align 8
  %232 = trunc i64 %231 to i32
  %233 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %234 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = trunc i64 %235 to i32
  %237 = sext i32 %236 to i64
  %238 = inttoptr i64 %237 to i8*
  %239 = call i32 @KASSERT(i32 %220, i8* %238)
  %240 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %241 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %240, i32 0, i32 4
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %244 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = add i64 %242, %245
  %247 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %248 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %247, i32 0, i32 5
  %249 = load i64, i64* %248, align 8
  %250 = icmp ule i64 %246, %249
  %251 = zext i1 %250 to i32
  %252 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %253 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %252, i32 0, i32 4
  %254 = load i64, i64* %253, align 8
  %255 = trunc i64 %254 to i32
  %256 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %257 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %256, i32 0, i32 5
  %258 = load i64, i64* %257, align 8
  %259 = trunc i64 %258 to i32
  %260 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %261 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = trunc i64 %262 to i32
  %264 = sext i32 %263 to i64
  %265 = inttoptr i64 %264 to i8*
  %266 = call i32 @KASSERT(i32 %251, i8* %265)
  %267 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %268 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %267, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %271 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %270, i32 0, i32 4
  %272 = load i64, i64* %271, align 8
  %273 = icmp uge i64 %269, %272
  %274 = zext i1 %273 to i32
  %275 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %276 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %275, i32 0, i32 3
  %277 = load i64, i64* %276, align 8
  %278 = trunc i64 %277 to i32
  %279 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %280 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %279, i32 0, i32 4
  %281 = load i64, i64* %280, align 8
  %282 = trunc i64 %281 to i32
  %283 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %284 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = trunc i64 %285 to i32
  %287 = sext i32 %286 to i64
  %288 = inttoptr i64 %287 to i8*
  %289 = call i32 @KASSERT(i32 %274, i8* %288)
  %290 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %291 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %290, i32 0, i32 4
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %294 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %293, i32 0, i32 4
  %295 = load i64, i64* %294, align 8
  %296 = icmp uge i64 %292, %295
  %297 = zext i1 %296 to i32
  %298 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %299 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %298, i32 0, i32 4
  %300 = load i64, i64* %299, align 8
  %301 = trunc i64 %300 to i32
  %302 = load %struct.g_bde_key*, %struct.g_bde_key** %9, align 8
  %303 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %302, i32 0, i32 4
  %304 = load i64, i64* %303, align 8
  %305 = trunc i64 %304 to i32
  %306 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %307 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = trunc i64 %308 to i32
  %310 = sext i32 %309 to i64
  %311 = inttoptr i64 %310 to i8*
  %312 = call i32 @KASSERT(i32 %297, i8* %311)
  ret void
}

declare dso_local i64 @rounddown2(i32, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
