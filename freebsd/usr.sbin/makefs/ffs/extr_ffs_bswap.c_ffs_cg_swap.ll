; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/ffs/extr_ffs_bswap.c_ffs_cg_swap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/ffs/extr_ffs_bswap.c_ffs_cg_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.fs = type { i64, i32, i32, i32 }

@MAXFRAG = common dso_local global i32 0, align 4
@FS_UFS2_MAGIC = common dso_local global i64 0, align 8
@CG_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ffs_cg_swap(%struct.cg* %0, %struct.cg* %1, %struct.fs* %2) #0 {
  %4 = alloca %struct.cg*, align 8
  %5 = alloca %struct.cg*, align 8
  %6 = alloca %struct.fs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cg* %0, %struct.cg** %4, align 8
  store %struct.cg* %1, %struct.cg** %5, align 8
  store %struct.fs* %2, %struct.fs** %6, align 8
  %15 = load %struct.cg*, %struct.cg** %4, align 8
  %16 = getelementptr inbounds %struct.cg, %struct.cg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @bswap32(i32 %17)
  %19 = ptrtoint i8* %18 to i32
  %20 = load %struct.cg*, %struct.cg** %5, align 8
  %21 = getelementptr inbounds %struct.cg, %struct.cg* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.cg*, %struct.cg** %4, align 8
  %23 = getelementptr inbounds %struct.cg, %struct.cg* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @bswap32(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  %27 = load %struct.cg*, %struct.cg** %5, align 8
  %28 = getelementptr inbounds %struct.cg, %struct.cg* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.cg*, %struct.cg** %4, align 8
  %30 = getelementptr inbounds %struct.cg, %struct.cg* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @bswap32(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.cg*, %struct.cg** %5, align 8
  %35 = getelementptr inbounds %struct.cg, %struct.cg* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.cg*, %struct.cg** %4, align 8
  %37 = getelementptr inbounds %struct.cg, %struct.cg* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @bswap32(i32 %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.cg*, %struct.cg** %5, align 8
  %42 = getelementptr inbounds %struct.cg, %struct.cg* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.cg*, %struct.cg** %4, align 8
  %44 = getelementptr inbounds %struct.cg, %struct.cg* %43, i32 0, i32 22
  %45 = load i8*, i8** %44, align 8
  %46 = call i8* @bswap16(i8* %45)
  %47 = load %struct.cg*, %struct.cg** %5, align 8
  %48 = getelementptr inbounds %struct.cg, %struct.cg* %47, i32 0, i32 22
  store i8* %46, i8** %48, align 8
  %49 = load %struct.cg*, %struct.cg** %4, align 8
  %50 = getelementptr inbounds %struct.cg, %struct.cg* %49, i32 0, i32 21
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @bswap16(i8* %51)
  %53 = load %struct.cg*, %struct.cg** %5, align 8
  %54 = getelementptr inbounds %struct.cg, %struct.cg* %53, i32 0, i32 21
  store i8* %52, i8** %54, align 8
  %55 = load %struct.cg*, %struct.cg** %4, align 8
  %56 = getelementptr inbounds %struct.cg, %struct.cg* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i8* @bswap32(i32 %57)
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.cg*, %struct.cg** %5, align 8
  %61 = getelementptr inbounds %struct.cg, %struct.cg* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load %struct.cg*, %struct.cg** %4, align 8
  %63 = getelementptr inbounds %struct.cg, %struct.cg* %62, i32 0, i32 20
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @bswap32(i32 %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.cg*, %struct.cg** %5, align 8
  %69 = getelementptr inbounds %struct.cg, %struct.cg* %68, i32 0, i32 20
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  %71 = load %struct.cg*, %struct.cg** %4, align 8
  %72 = getelementptr inbounds %struct.cg, %struct.cg* %71, i32 0, i32 20
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @bswap32(i32 %74)
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.cg*, %struct.cg** %5, align 8
  %78 = getelementptr inbounds %struct.cg, %struct.cg* %77, i32 0, i32 20
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load %struct.cg*, %struct.cg** %4, align 8
  %81 = getelementptr inbounds %struct.cg, %struct.cg* %80, i32 0, i32 20
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @bswap32(i32 %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.cg*, %struct.cg** %5, align 8
  %87 = getelementptr inbounds %struct.cg, %struct.cg* %86, i32 0, i32 20
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  store i32 %85, i32* %88, align 4
  %89 = load %struct.cg*, %struct.cg** %4, align 8
  %90 = getelementptr inbounds %struct.cg, %struct.cg* %89, i32 0, i32 20
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @bswap32(i32 %92)
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.cg*, %struct.cg** %5, align 8
  %96 = getelementptr inbounds %struct.cg, %struct.cg* %95, i32 0, i32 20
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 3
  store i32 %94, i32* %97, align 4
  %98 = load %struct.cg*, %struct.cg** %4, align 8
  %99 = getelementptr inbounds %struct.cg, %struct.cg* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @bswap32(i32 %100)
  %102 = ptrtoint i8* %101 to i32
  %103 = load %struct.cg*, %struct.cg** %5, align 8
  %104 = getelementptr inbounds %struct.cg, %struct.cg* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 4
  %105 = load %struct.cg*, %struct.cg** %4, align 8
  %106 = getelementptr inbounds %struct.cg, %struct.cg* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = call i8* @bswap32(i32 %107)
  %109 = ptrtoint i8* %108 to i32
  %110 = load %struct.cg*, %struct.cg** %5, align 8
  %111 = getelementptr inbounds %struct.cg, %struct.cg* %110, i32 0, i32 6
  store i32 %109, i32* %111, align 8
  %112 = load %struct.cg*, %struct.cg** %4, align 8
  %113 = getelementptr inbounds %struct.cg, %struct.cg* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @bswap32(i32 %114)
  %116 = ptrtoint i8* %115 to i32
  %117 = load %struct.cg*, %struct.cg** %5, align 8
  %118 = getelementptr inbounds %struct.cg, %struct.cg* %117, i32 0, i32 7
  store i32 %116, i32* %118, align 4
  store i32 0, i32* %7, align 4
  br label %119

119:                                              ; preds = %139, %3
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @MAXFRAG, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %142

123:                                              ; preds = %119
  %124 = load %struct.cg*, %struct.cg** %4, align 8
  %125 = getelementptr inbounds %struct.cg, %struct.cg* %124, i32 0, i32 8
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @bswap32(i32 %130)
  %132 = ptrtoint i8* %131 to i32
  %133 = load %struct.cg*, %struct.cg** %5, align 8
  %134 = getelementptr inbounds %struct.cg, %struct.cg* %133, i32 0, i32 8
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %132, i32* %138, align 4
  br label %139

139:                                              ; preds = %123
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %7, align 4
  br label %119

142:                                              ; preds = %119
  %143 = load %struct.cg*, %struct.cg** %4, align 8
  %144 = getelementptr inbounds %struct.cg, %struct.cg* %143, i32 0, i32 9
  %145 = load i32, i32* %144, align 8
  %146 = call i8* @bswap32(i32 %145)
  %147 = ptrtoint i8* %146 to i32
  %148 = load %struct.cg*, %struct.cg** %5, align 8
  %149 = getelementptr inbounds %struct.cg, %struct.cg* %148, i32 0, i32 9
  store i32 %147, i32* %149, align 8
  %150 = load %struct.cg*, %struct.cg** %4, align 8
  %151 = getelementptr inbounds %struct.cg, %struct.cg* %150, i32 0, i32 10
  %152 = load i32, i32* %151, align 4
  %153 = call i8* @bswap32(i32 %152)
  %154 = ptrtoint i8* %153 to i32
  %155 = load %struct.cg*, %struct.cg** %5, align 8
  %156 = getelementptr inbounds %struct.cg, %struct.cg* %155, i32 0, i32 10
  store i32 %154, i32* %156, align 4
  %157 = load %struct.cg*, %struct.cg** %4, align 8
  %158 = getelementptr inbounds %struct.cg, %struct.cg* %157, i32 0, i32 11
  %159 = load i32, i32* %158, align 8
  %160 = call i8* @bswap32(i32 %159)
  %161 = ptrtoint i8* %160 to i32
  %162 = load %struct.cg*, %struct.cg** %5, align 8
  %163 = getelementptr inbounds %struct.cg, %struct.cg* %162, i32 0, i32 11
  store i32 %161, i32* %163, align 8
  %164 = load %struct.cg*, %struct.cg** %4, align 8
  %165 = getelementptr inbounds %struct.cg, %struct.cg* %164, i32 0, i32 12
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @bswap32(i32 %166)
  %168 = ptrtoint i8* %167 to i32
  %169 = load %struct.cg*, %struct.cg** %5, align 8
  %170 = getelementptr inbounds %struct.cg, %struct.cg* %169, i32 0, i32 12
  store i32 %168, i32* %170, align 4
  %171 = load %struct.cg*, %struct.cg** %4, align 8
  %172 = getelementptr inbounds %struct.cg, %struct.cg* %171, i32 0, i32 13
  %173 = load i32, i32* %172, align 8
  %174 = call i8* @bswap32(i32 %173)
  %175 = ptrtoint i8* %174 to i32
  %176 = load %struct.cg*, %struct.cg** %5, align 8
  %177 = getelementptr inbounds %struct.cg, %struct.cg* %176, i32 0, i32 13
  store i32 %175, i32* %177, align 8
  %178 = load %struct.cg*, %struct.cg** %4, align 8
  %179 = getelementptr inbounds %struct.cg, %struct.cg* %178, i32 0, i32 14
  %180 = load i32, i32* %179, align 4
  %181 = call i8* @bswap32(i32 %180)
  %182 = ptrtoint i8* %181 to i32
  %183 = load %struct.cg*, %struct.cg** %5, align 8
  %184 = getelementptr inbounds %struct.cg, %struct.cg* %183, i32 0, i32 14
  store i32 %182, i32* %184, align 4
  %185 = load %struct.cg*, %struct.cg** %4, align 8
  %186 = getelementptr inbounds %struct.cg, %struct.cg* %185, i32 0, i32 15
  %187 = load i32, i32* %186, align 8
  %188 = call i8* @bswap32(i32 %187)
  %189 = ptrtoint i8* %188 to i32
  %190 = load %struct.cg*, %struct.cg** %5, align 8
  %191 = getelementptr inbounds %struct.cg, %struct.cg* %190, i32 0, i32 15
  store i32 %189, i32* %191, align 8
  %192 = load %struct.cg*, %struct.cg** %4, align 8
  %193 = getelementptr inbounds %struct.cg, %struct.cg* %192, i32 0, i32 16
  %194 = load i32, i32* %193, align 4
  %195 = call i8* @bswap32(i32 %194)
  %196 = ptrtoint i8* %195 to i32
  %197 = load %struct.cg*, %struct.cg** %5, align 8
  %198 = getelementptr inbounds %struct.cg, %struct.cg* %197, i32 0, i32 16
  store i32 %196, i32* %198, align 4
  %199 = load %struct.cg*, %struct.cg** %4, align 8
  %200 = getelementptr inbounds %struct.cg, %struct.cg* %199, i32 0, i32 17
  %201 = load i32, i32* %200, align 8
  %202 = call i8* @bswap32(i32 %201)
  %203 = ptrtoint i8* %202 to i32
  %204 = load %struct.cg*, %struct.cg** %5, align 8
  %205 = getelementptr inbounds %struct.cg, %struct.cg* %204, i32 0, i32 17
  store i32 %203, i32* %205, align 8
  %206 = load %struct.cg*, %struct.cg** %4, align 8
  %207 = getelementptr inbounds %struct.cg, %struct.cg* %206, i32 0, i32 18
  %208 = load i32, i32* %207, align 4
  %209 = call i8* @bswap32(i32 %208)
  %210 = ptrtoint i8* %209 to i32
  %211 = load %struct.cg*, %struct.cg** %5, align 8
  %212 = getelementptr inbounds %struct.cg, %struct.cg* %211, i32 0, i32 18
  store i32 %210, i32* %212, align 4
  %213 = load %struct.cg*, %struct.cg** %4, align 8
  %214 = getelementptr inbounds %struct.cg, %struct.cg* %213, i32 0, i32 19
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @bswap64(i32 %215)
  %217 = load %struct.cg*, %struct.cg** %5, align 8
  %218 = getelementptr inbounds %struct.cg, %struct.cg* %217, i32 0, i32 19
  store i32 %216, i32* %218, align 8
  %219 = load %struct.fs*, %struct.fs** %6, align 8
  %220 = getelementptr inbounds %struct.fs, %struct.fs* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @FS_UFS2_MAGIC, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %142
  br label %360

225:                                              ; preds = %142
  %226 = load %struct.cg*, %struct.cg** %5, align 8
  %227 = getelementptr inbounds %struct.cg, %struct.cg* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = load i64, i64* @CG_MAGIC, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %242

232:                                              ; preds = %225
  %233 = load %struct.cg*, %struct.cg** %5, align 8
  %234 = getelementptr inbounds %struct.cg, %struct.cg* %233, i32 0, i32 9
  %235 = load i32, i32* %234, align 8
  store i32 %235, i32* %12, align 4
  %236 = load %struct.cg*, %struct.cg** %5, align 8
  %237 = getelementptr inbounds %struct.cg, %struct.cg* %236, i32 0, i32 10
  %238 = load i32, i32* %237, align 4
  store i32 %238, i32* %13, align 4
  %239 = load %struct.cg*, %struct.cg** %5, align 8
  %240 = getelementptr inbounds %struct.cg, %struct.cg* %239, i32 0, i32 14
  %241 = load i32, i32* %240, align 4
  store i32 %241, i32* %14, align 4
  br label %258

242:                                              ; preds = %225
  %243 = load %struct.cg*, %struct.cg** %5, align 8
  %244 = getelementptr inbounds %struct.cg, %struct.cg* %243, i32 0, i32 9
  %245 = load i32, i32* %244, align 8
  %246 = call i8* @bswap32(i32 %245)
  %247 = ptrtoint i8* %246 to i32
  store i32 %247, i32* %12, align 4
  %248 = load %struct.cg*, %struct.cg** %5, align 8
  %249 = getelementptr inbounds %struct.cg, %struct.cg* %248, i32 0, i32 10
  %250 = load i32, i32* %249, align 4
  %251 = call i8* @bswap32(i32 %250)
  %252 = ptrtoint i8* %251 to i32
  store i32 %252, i32* %13, align 4
  %253 = load %struct.cg*, %struct.cg** %5, align 8
  %254 = getelementptr inbounds %struct.cg, %struct.cg* %253, i32 0, i32 14
  %255 = load i32, i32* %254, align 4
  %256 = call i8* @bswap32(i32 %255)
  %257 = ptrtoint i8* %256 to i32
  store i32 %257, i32* %14, align 4
  br label %258

258:                                              ; preds = %242, %232
  %259 = load %struct.cg*, %struct.cg** %5, align 8
  %260 = bitcast %struct.cg* %259 to i32*
  %261 = load i32, i32* %12, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  store i32* %263, i32** %8, align 8
  %264 = load %struct.cg*, %struct.cg** %4, align 8
  %265 = bitcast %struct.cg* %264 to i32*
  %266 = load i32, i32* %12, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  store i32* %268, i32** %9, align 8
  %269 = load %struct.cg*, %struct.cg** %5, align 8
  %270 = bitcast %struct.cg* %269 to i32*
  %271 = load i32, i32* %13, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = bitcast i32* %273 to i8**
  store i8** %274, i8*** %10, align 8
  %275 = load %struct.cg*, %struct.cg** %4, align 8
  %276 = bitcast %struct.cg* %275 to i32*
  %277 = load i32, i32* %13, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = bitcast i32* %279 to i8**
  store i8** %280, i8*** %11, align 8
  store i32 0, i32* %7, align 4
  br label %281

281:                                              ; preds = %299, %258
  %282 = load i32, i32* %7, align 4
  %283 = load %struct.fs*, %struct.fs** %6, align 8
  %284 = getelementptr inbounds %struct.fs, %struct.fs* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = icmp slt i32 %282, %285
  br i1 %286, label %287, label %302

287:                                              ; preds = %281
  %288 = load i32*, i32** %9, align 8
  %289 = load i32, i32* %7, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = call i8* @bswap32(i32 %292)
  %294 = ptrtoint i8* %293 to i32
  %295 = load i32*, i32** %8, align 8
  %296 = load i32, i32* %7, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  store i32 %294, i32* %298, align 4
  br label %299

299:                                              ; preds = %287
  %300 = load i32, i32* %7, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %7, align 4
  br label %281

302:                                              ; preds = %281
  store i32 0, i32* %7, align 4
  br label %303

303:                                              ; preds = %324, %302
  %304 = load i32, i32* %7, align 4
  %305 = load %struct.fs*, %struct.fs** %6, align 8
  %306 = getelementptr inbounds %struct.fs, %struct.fs* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.fs*, %struct.fs** %6, align 8
  %309 = getelementptr inbounds %struct.fs, %struct.fs* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = mul nsw i32 %307, %310
  %312 = icmp slt i32 %304, %311
  br i1 %312, label %313, label %327

313:                                              ; preds = %303
  %314 = load i8**, i8*** %11, align 8
  %315 = load i32, i32* %7, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8*, i8** %314, i64 %316
  %318 = load i8*, i8** %317, align 8
  %319 = call i8* @bswap16(i8* %318)
  %320 = load i8**, i8*** %10, align 8
  %321 = load i32, i32* %7, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i8*, i8** %320, i64 %322
  store i8* %319, i8** %323, align 8
  br label %324

324:                                              ; preds = %313
  %325 = load i32, i32* %7, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %7, align 4
  br label %303

327:                                              ; preds = %303
  %328 = load %struct.cg*, %struct.cg** %5, align 8
  %329 = bitcast %struct.cg* %328 to i32*
  %330 = load i32, i32* %14, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  store i32* %332, i32** %8, align 8
  %333 = load %struct.cg*, %struct.cg** %4, align 8
  %334 = bitcast %struct.cg* %333 to i32*
  %335 = load i32, i32* %14, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  store i32* %337, i32** %9, align 8
  store i32 1, i32* %7, align 4
  br label %338

338:                                              ; preds = %357, %327
  %339 = load i32, i32* %7, align 4
  %340 = load %struct.fs*, %struct.fs** %6, align 8
  %341 = getelementptr inbounds %struct.fs, %struct.fs* %340, i32 0, i32 3
  %342 = load i32, i32* %341, align 8
  %343 = add nsw i32 %342, 1
  %344 = icmp slt i32 %339, %343
  br i1 %344, label %345, label %360

345:                                              ; preds = %338
  %346 = load i32*, i32** %9, align 8
  %347 = load i32, i32* %7, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %346, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = call i8* @bswap32(i32 %350)
  %352 = ptrtoint i8* %351 to i32
  %353 = load i32*, i32** %8, align 8
  %354 = load i32, i32* %7, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %353, i64 %355
  store i32 %352, i32* %356, align 4
  br label %357

357:                                              ; preds = %345
  %358 = load i32, i32* %7, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %7, align 4
  br label %338

360:                                              ; preds = %224, %338
  ret void
}

declare dso_local i8* @bswap32(i32) #1

declare dso_local i8* @bswap16(i8*) #1

declare dso_local i32 @bswap64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
