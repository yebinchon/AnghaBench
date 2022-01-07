; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_wrap_old.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_wrap_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_context = type { %struct.TYPE_8__*, %struct.TYPE_8__*, i32, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.mbuf = type { i32, i32, %struct.mbuf* }

@.str = private unnamed_addr constant [3 x i8] c"\02\01\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.krb5_context*, i32, %struct.mbuf**, i32*, i32*, i32*)* @krb5_wrap_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @krb5_wrap_old(%struct.krb5_context* %0, i32 %1, %struct.mbuf** %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.krb5_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mbuf**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca %struct.mbuf*, align 8
  %15 = alloca %struct.mbuf*, align 8
  %16 = alloca %struct.mbuf*, align 8
  %17 = alloca %struct.mbuf*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca [8 x i32], align 16
  %26 = alloca i32, align 4
  store %struct.krb5_context* %0, %struct.krb5_context** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.mbuf** %2, %struct.mbuf*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %27 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  %28 = load %struct.mbuf*, %struct.mbuf** %27, align 8
  store %struct.mbuf* %28, %struct.mbuf** %13, align 8
  %29 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %30 = call i64 @m_length(%struct.mbuf* %29, %struct.mbuf** %14)
  store i64 %30, i64* %18, align 8
  %31 = load %struct.krb5_context*, %struct.krb5_context** %7, align 8
  %32 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %19, align 8
  %38 = load i64, i64* %19, align 8
  %39 = load i64, i64* %18, align 8
  %40 = load i64, i64* %19, align 8
  %41 = urem i64 %39, %40
  %42 = sub i64 %38, %41
  store i64 %42, i64* %20, align 8
  %43 = load i64, i64* %18, align 8
  %44 = add i64 %43, 8
  %45 = load i64, i64* %20, align 8
  %46 = add i64 %44, %45
  store i64 %46, i64* %21, align 8
  %47 = load %struct.krb5_context*, %struct.krb5_context** %7, align 8
  %48 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = call i64 @token_length(%struct.TYPE_8__* %49)
  store i64 %50, i64* %19, align 8
  %51 = load i64, i64* %19, align 8
  %52 = load i64, i64* %21, align 8
  %53 = load i64, i64* %19, align 8
  %54 = add i64 %52, %53
  %55 = call i32* @krb5_make_token(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %51, i64 %54, %struct.mbuf** %15)
  store i32* %55, i32** %22, align 8
  %56 = load i32*, i32** %22, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  store i32* %57, i32** %22, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %22, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %22, align 8
  store i32 %60, i32* %61, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %22, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %22, align 8
  store i32 %65, i32* %66, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %6
  %71 = load i32*, i32** %12, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %22, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %22, align 8
  store i32 %73, i32* %74, align 4
  %76 = load i32*, i32** %12, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %22, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %22, align 8
  store i32 %78, i32* %79, align 4
  br label %86

81:                                               ; preds = %6
  %82 = load i32*, i32** %22, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %22, align 8
  store i32 255, i32* %82, align 4
  %84 = load i32*, i32** %22, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %22, align 8
  store i32 255, i32* %84, align 4
  br label %86

86:                                               ; preds = %81, %70
  %87 = load i32*, i32** %22, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %22, align 8
  store i32 255, i32* %87, align 4
  %89 = load i32*, i32** %22, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %22, align 8
  store i32 255, i32* %89, align 4
  %91 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %92 = call i32 @M_LEADINGSPACE(%struct.mbuf* %91)
  %93 = icmp sge i32 %92, 8
  br i1 %93, label %94, label %103

94:                                               ; preds = %86
  %95 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %96 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %97, 8
  store i32 %98, i32* %96, align 8
  %99 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %100 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 8
  store i32 %102, i32* %100, align 4
  br label %114

103:                                              ; preds = %86
  %104 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %105 = load i32, i32* @M_WAITOK, align 4
  %106 = load i32, i32* @MT_DATA, align 4
  %107 = call i32 @MGET(%struct.mbuf* %104, i32 %105, i32 %106)
  %108 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %109 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %108, i32 0, i32 1
  store i32 8, i32* %109, align 4
  %110 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %111 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %112 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %111, i32 0, i32 2
  store %struct.mbuf* %110, %struct.mbuf** %112, align 8
  %113 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  store %struct.mbuf* %113, %struct.mbuf** %13, align 8
  br label %114

114:                                              ; preds = %103, %94
  %115 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %116 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @arc4rand(i32 %117, i32 8, i32 0)
  %119 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %120 = call i64 @M_TRAILINGSPACE(%struct.mbuf* %119)
  %121 = load i64, i64* %20, align 8
  %122 = icmp uge i64 %120, %121
  br i1 %122, label %123, label %141

123:                                              ; preds = %114
  %124 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %125 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %128 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %126, %129
  %131 = load i64, i64* %20, align 8
  %132 = load i64, i64* %20, align 8
  %133 = call i32 @memset(i32 %130, i64 %131, i64 %132)
  %134 = load i64, i64* %20, align 8
  %135 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %136 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = add i64 %138, %134
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %136, align 4
  br label %160

141:                                              ; preds = %114
  %142 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %143 = load i32, i32* @M_WAITOK, align 4
  %144 = load i32, i32* @MT_DATA, align 4
  %145 = call i32 @MGET(%struct.mbuf* %142, i32 %143, i32 %144)
  %146 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %147 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i64, i64* %20, align 8
  %150 = load i64, i64* %20, align 8
  %151 = call i32 @memset(i32 %148, i64 %149, i64 %150)
  %152 = load i64, i64* %20, align 8
  %153 = trunc i64 %152 to i32
  %154 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %155 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  %156 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %157 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %158 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %157, i32 0, i32 2
  store %struct.mbuf* %156, %struct.mbuf** %158, align 8
  %159 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  store %struct.mbuf* %159, %struct.mbuf** %14, align 8
  br label %160

160:                                              ; preds = %141, %123
  %161 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %162 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %163 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %162, i32 0, i32 2
  store %struct.mbuf* %161, %struct.mbuf** %163, align 8
  %164 = load %struct.krb5_context*, %struct.krb5_context** %7, align 8
  %165 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %164, i32 0, i32 3
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %24, align 8
  %171 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %172 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  store i64 %174, i64* %19, align 8
  %175 = load i32*, i32** %22, align 8
  %176 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %177 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = inttoptr i64 %179 to i32*
  %181 = ptrtoint i32* %175 to i64
  %182 = ptrtoint i32* %180 to i64
  %183 = sub i64 %181, %182
  %184 = sdiv exact i64 %183, 4
  %185 = trunc i64 %184 to i32
  %186 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %187 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  %188 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %189 = load i32, i32* @M_WAITOK, align 4
  %190 = load i32, i32* @MT_DATA, align 4
  %191 = call i32 @MGET(%struct.mbuf* %188, i32 %189, i32 %190)
  %192 = load i64, i64* %24, align 8
  %193 = trunc i64 %192 to i32
  %194 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %195 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 4
  %196 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %197 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %198 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %197, i32 0, i32 2
  store %struct.mbuf* %196, %struct.mbuf** %198, align 8
  %199 = load %struct.krb5_context*, %struct.krb5_context** %7, align 8
  %200 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %199, i32 0, i32 3
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %200, align 8
  %202 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %203 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %204 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = sub nsw i32 %205, 8
  %207 = load i64, i64* %21, align 8
  %208 = add i64 %207, 8
  %209 = load i64, i64* %24, align 8
  %210 = call i32 @krb5_checksum(%struct.TYPE_9__* %201, i32 13, %struct.mbuf* %202, i32 %206, i64 %208, i64 %209)
  %211 = load i64, i64* %19, align 8
  %212 = trunc i64 %211 to i32
  %213 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %214 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 4
  %215 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %216 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %215, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %216, align 8
  %217 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %218 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32*, i32** %22, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 8
  %222 = load i64, i64* %24, align 8
  %223 = call i32 @bcopy(i32 %219, i32* %221, i64 %222)
  %224 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %225 = call i32 @m_free(%struct.mbuf* %224)
  %226 = load %struct.krb5_context*, %struct.krb5_context** %7, align 8
  %227 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %226, i32 0, i32 2
  %228 = call i32 @atomic_fetchadd_32(i32* %227, i32 1)
  store i32 %228, i32* %26, align 4
  %229 = load i32*, i32** %11, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 0
  %231 = load i32, i32* %230, align 4
  %232 = icmp eq i32 %231, 17
  br i1 %232, label %233, label %250

233:                                              ; preds = %160
  %234 = load i32, i32* %26, align 4
  %235 = ashr i32 %234, 24
  %236 = load i32*, i32** %22, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  store i32 %235, i32* %237, align 4
  %238 = load i32, i32* %26, align 4
  %239 = ashr i32 %238, 16
  %240 = load i32*, i32** %22, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 1
  store i32 %239, i32* %241, align 4
  %242 = load i32, i32* %26, align 4
  %243 = ashr i32 %242, 8
  %244 = load i32*, i32** %22, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 2
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* %26, align 4
  %247 = ashr i32 %246, 0
  %248 = load i32*, i32** %22, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 3
  store i32 %247, i32* %249, align 4
  br label %267

250:                                              ; preds = %160
  %251 = load i32, i32* %26, align 4
  %252 = ashr i32 %251, 0
  %253 = load i32*, i32** %22, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  store i32 %252, i32* %254, align 4
  %255 = load i32, i32* %26, align 4
  %256 = ashr i32 %255, 8
  %257 = load i32*, i32** %22, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 1
  store i32 %256, i32* %258, align 4
  %259 = load i32, i32* %26, align 4
  %260 = ashr i32 %259, 16
  %261 = load i32*, i32** %22, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 2
  store i32 %260, i32* %262, align 4
  %263 = load i32, i32* %26, align 4
  %264 = ashr i32 %263, 24
  %265 = load i32*, i32** %22, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 3
  store i32 %264, i32* %266, align 4
  br label %267

267:                                              ; preds = %250, %233
  %268 = load %struct.krb5_context*, %struct.krb5_context** %7, align 8
  %269 = call i64 @is_initiator(%struct.krb5_context* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %267
  store i32 0, i32* %23, align 4
  br label %273

272:                                              ; preds = %267
  store i32 255, i32* %23, align 4
  br label %273

273:                                              ; preds = %272, %271
  %274 = load i32, i32* %23, align 4
  %275 = load i32*, i32** %22, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 4
  store i32 %274, i32* %276, align 4
  %277 = load i32, i32* %23, align 4
  %278 = load i32*, i32** %22, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 5
  store i32 %277, i32* %279, align 4
  %280 = load i32, i32* %23, align 4
  %281 = load i32*, i32** %22, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 6
  store i32 %280, i32* %282, align 4
  %283 = load i32, i32* %23, align 4
  %284 = load i32*, i32** %22, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 7
  store i32 %283, i32* %285, align 4
  %286 = load %struct.krb5_context*, %struct.krb5_context** %7, align 8
  %287 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %286, i32 0, i32 1
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %287, align 8
  %289 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %290 = load i32*, i32** %22, align 8
  %291 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %292 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = sext i32 %293 to i64
  %295 = inttoptr i64 %294 to i32*
  %296 = ptrtoint i32* %290 to i64
  %297 = ptrtoint i32* %295 to i64
  %298 = sub i64 %296, %297
  %299 = sdiv exact i64 %298, 4
  %300 = trunc i64 %299 to i32
  %301 = load i32*, i32** %22, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 8
  %303 = call i32 @krb5_encrypt(%struct.TYPE_8__* %288, %struct.mbuf* %289, i32 %300, i64 8, i32* %302, i32 8)
  %304 = load i32, i32* %8, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %339

306:                                              ; preds = %273
  %307 = load i32*, i32** %12, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 0
  %309 = load i32, i32* %308, align 4
  %310 = icmp eq i32 %309, 16
  br i1 %310, label %311, label %331

311:                                              ; preds = %306
  %312 = load i32, i32* %26, align 4
  %313 = ashr i32 %312, 24
  %314 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 0
  store i32 %313, i32* %314, align 16
  %315 = load i32, i32* %26, align 4
  %316 = ashr i32 %315, 16
  %317 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 1
  store i32 %316, i32* %317, align 4
  %318 = load i32, i32* %26, align 4
  %319 = ashr i32 %318, 8
  %320 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 2
  store i32 %319, i32* %320, align 8
  %321 = load i32, i32* %26, align 4
  %322 = ashr i32 %321, 0
  %323 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 3
  store i32 %322, i32* %323, align 4
  %324 = load %struct.krb5_context*, %struct.krb5_context** %7, align 8
  %325 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %324, i32 0, i32 0
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** %325, align 8
  %327 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %328 = load i64, i64* %21, align 8
  %329 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 0
  %330 = call i32 @krb5_encrypt(%struct.TYPE_8__* %326, %struct.mbuf* %327, i32 0, i64 %328, i32* %329, i32 4)
  br label %338

331:                                              ; preds = %306
  %332 = load %struct.krb5_context*, %struct.krb5_context** %7, align 8
  %333 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %332, i32 0, i32 0
  %334 = load %struct.TYPE_8__*, %struct.TYPE_8__** %333, align 8
  %335 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %336 = load i64, i64* %21, align 8
  %337 = call i32 @krb5_encrypt(%struct.TYPE_8__* %334, %struct.mbuf* %335, i32 0, i64 %336, i32* null, i32 0)
  br label %338

338:                                              ; preds = %331, %311
  br label %339

339:                                              ; preds = %338, %273
  %340 = load i32*, i32** %10, align 8
  %341 = icmp ne i32* %340, null
  br i1 %341, label %342, label %345

342:                                              ; preds = %339
  %343 = load i32, i32* %8, align 4
  %344 = load i32*, i32** %10, align 8
  store i32 %343, i32* %344, align 4
  br label %345

345:                                              ; preds = %342, %339
  %346 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %347 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  store %struct.mbuf* %346, %struct.mbuf** %347, align 8
  %348 = load i32, i32* @GSS_S_COMPLETE, align 4
  ret i32 %348
}

declare dso_local i64 @m_length(%struct.mbuf*, %struct.mbuf**) #1

declare dso_local i64 @token_length(%struct.TYPE_8__*) #1

declare dso_local i32* @krb5_make_token(i8*, i64, i64, %struct.mbuf**) #1

declare dso_local i32 @M_LEADINGSPACE(%struct.mbuf*) #1

declare dso_local i32 @MGET(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @arc4rand(i32, i32, i32) #1

declare dso_local i64 @M_TRAILINGSPACE(%struct.mbuf*) #1

declare dso_local i32 @memset(i32, i64, i64) #1

declare dso_local i32 @krb5_checksum(%struct.TYPE_9__*, i32, %struct.mbuf*, i32, i64, i64) #1

declare dso_local i32 @bcopy(i32, i32*, i64) #1

declare dso_local i32 @m_free(%struct.mbuf*) #1

declare dso_local i32 @atomic_fetchadd_32(i32*, i32) #1

declare dso_local i64 @is_initiator(%struct.krb5_context*) #1

declare dso_local i32 @krb5_encrypt(%struct.TYPE_8__*, %struct.mbuf*, i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
