; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_patch.c_do_patch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_patch.c_do_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.mbuf = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%union.ng_patch_op_val = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.mbuf*, i32)* @do_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_patch(%struct.TYPE_13__* %0, %struct.mbuf* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.ng_patch_op_val, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %787, %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %790

19:                                               ; preds = %11
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %20, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %32, %42
  %44 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %45 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %43, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %19
  br label %787

50:                                               ; preds = %19
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 132
  br i1 %61, label %62, label %77

62:                                               ; preds = %50
  %63 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = ptrtoint %union.ng_patch_op_val* %10 to i32
  %76 = call i32 @m_copydata(%struct.mbuf* %63, i32 %64, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %62, %50
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %772 [
    i32 1, label %88
    i32 2, label %253
    i32 4, label %426
    i32 8, label %599
  ]

88:                                               ; preds = %77
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  switch i64 %98, label %252 [
    i64 132, label %99
    i64 138, label %112
    i64 129, label %127
    i64 135, label %142
    i64 136, label %157
    i64 134, label %172
    i64 137, label %177
    i64 133, label %192
    i64 128, label %207
    i64 131, label %222
    i64 130, label %237
  ]

99:                                               ; preds = %88
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = bitcast %union.ng_patch_op_val* %10 to i32*
  store i32 %110, i32* %111, align 4
  br label %252

112:                                              ; preds = %88
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = bitcast %union.ng_patch_op_val* %10 to i32*
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, %123
  store i32 %126, i32* %124, align 4
  br label %252

127:                                              ; preds = %88
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = bitcast %union.ng_patch_op_val* %10 to i32*
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %140, %138
  store i32 %141, i32* %139, align 4
  br label %252

142:                                              ; preds = %88
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = bitcast %union.ng_patch_op_val* %10 to i32*
  %155 = load i32, i32* %154, align 4
  %156 = mul nsw i32 %155, %153
  store i32 %156, i32* %154, align 4
  br label %252

157:                                              ; preds = %88
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = bitcast %union.ng_patch_op_val* %10 to i32*
  %170 = load i32, i32* %169, align 4
  %171 = sdiv i32 %170, %168
  store i32 %171, i32* %169, align 4
  br label %252

172:                                              ; preds = %88
  %173 = bitcast %union.ng_patch_op_val* %10 to i32*
  %174 = load i32, i32* %173, align 4
  %175 = sub nsw i32 0, %174
  %176 = bitcast %union.ng_patch_op_val* %10 to i32*
  store i32 %175, i32* %176, align 4
  br label %252

177:                                              ; preds = %88
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %181, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = bitcast %union.ng_patch_op_val* %10 to i32*
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, %188
  store i32 %191, i32* %189, align 4
  br label %252

192:                                              ; preds = %88
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %196, align 8
  %198 = load i32, i32* %7, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = bitcast %union.ng_patch_op_val* %10 to i32*
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %203
  store i32 %206, i32* %204, align 4
  br label %252

207:                                              ; preds = %88
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %211, align 8
  %213 = load i32, i32* %7, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = bitcast %union.ng_patch_op_val* %10 to i32*
  %220 = load i32, i32* %219, align 4
  %221 = xor i32 %220, %218
  store i32 %221, i32* %219, align 4
  br label %252

222:                                              ; preds = %88
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %226, align 8
  %228 = load i32, i32* %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = bitcast %union.ng_patch_op_val* %10 to i32*
  %235 = load i32, i32* %234, align 4
  %236 = shl i32 %235, %233
  store i32 %236, i32* %234, align 4
  br label %252

237:                                              ; preds = %88
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %241, align 8
  %243 = load i32, i32* %7, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 3
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = bitcast %union.ng_patch_op_val* %10 to i32*
  %250 = load i32, i32* %249, align 4
  %251 = ashr i32 %250, %248
  store i32 %251, i32* %249, align 4
  br label %252

252:                                              ; preds = %88, %237, %222, %207, %192, %177, %172, %157, %142, %127, %112, %99
  br label %772

253:                                              ; preds = %77
  %254 = bitcast %union.ng_patch_op_val* %10 to i32*
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @ntohs(i32 %255)
  %257 = bitcast %union.ng_patch_op_val* %10 to i32*
  store i32 %256, i32* %257, align 4
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 1
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %261, align 8
  %263 = load i32, i32* %7, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  switch i64 %267, label %421 [
    i64 132, label %268
    i64 138, label %281
    i64 129, label %296
    i64 135, label %311
    i64 136, label %326
    i64 134, label %341
    i64 137, label %346
    i64 133, label %361
    i64 128, label %376
    i64 131, label %391
    i64 130, label %406
  ]

268:                                              ; preds = %253
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_11__*, %struct.TYPE_11__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 1
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %272, align 8
  %274 = load i32, i32* %7, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 3
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = bitcast %union.ng_patch_op_val* %10 to i32*
  store i32 %279, i32* %280, align 4
  br label %421

281:                                              ; preds = %253
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 1
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 1
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %285, align 8
  %287 = load i32, i32* %7, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = bitcast %union.ng_patch_op_val* %10 to i32*
  %294 = load i32, i32* %293, align 4
  %295 = add nsw i32 %294, %292
  store i32 %295, i32* %293, align 4
  br label %421

296:                                              ; preds = %253
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 1
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 1
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %300, align 8
  %302 = load i32, i32* %7, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 3
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = bitcast %union.ng_patch_op_val* %10 to i32*
  %309 = load i32, i32* %308, align 4
  %310 = sub nsw i32 %309, %307
  store i32 %310, i32* %308, align 4
  br label %421

311:                                              ; preds = %253
  %312 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %312, i32 0, i32 1
  %314 = load %struct.TYPE_11__*, %struct.TYPE_11__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 1
  %316 = load %struct.TYPE_10__*, %struct.TYPE_10__** %315, align 8
  %317 = load i32, i32* %7, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 3
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = bitcast %union.ng_patch_op_val* %10 to i32*
  %324 = load i32, i32* %323, align 4
  %325 = mul nsw i32 %324, %322
  store i32 %325, i32* %323, align 4
  br label %421

326:                                              ; preds = %253
  %327 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %327, i32 0, i32 1
  %329 = load %struct.TYPE_11__*, %struct.TYPE_11__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %329, i32 0, i32 1
  %331 = load %struct.TYPE_10__*, %struct.TYPE_10__** %330, align 8
  %332 = load i32, i32* %7, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 3
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = bitcast %union.ng_patch_op_val* %10 to i32*
  %339 = load i32, i32* %338, align 4
  %340 = sdiv i32 %339, %337
  store i32 %340, i32* %338, align 4
  br label %421

341:                                              ; preds = %253
  %342 = bitcast %union.ng_patch_op_val* %10 to i32*
  %343 = load i32, i32* %342, align 4
  %344 = sub nsw i32 0, %343
  %345 = bitcast %union.ng_patch_op_val* %10 to i32*
  store i32 %344, i32* %345, align 4
  br label %421

346:                                              ; preds = %253
  %347 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %347, i32 0, i32 1
  %349 = load %struct.TYPE_11__*, %struct.TYPE_11__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %349, i32 0, i32 1
  %351 = load %struct.TYPE_10__*, %struct.TYPE_10__** %350, align 8
  %352 = load i32, i32* %7, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %351, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %354, i32 0, i32 3
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = bitcast %union.ng_patch_op_val* %10 to i32*
  %359 = load i32, i32* %358, align 4
  %360 = and i32 %359, %357
  store i32 %360, i32* %358, align 4
  br label %421

361:                                              ; preds = %253
  %362 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %362, i32 0, i32 1
  %364 = load %struct.TYPE_11__*, %struct.TYPE_11__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %364, i32 0, i32 1
  %366 = load %struct.TYPE_10__*, %struct.TYPE_10__** %365, align 8
  %367 = load i32, i32* %7, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %366, i64 %368
  %370 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %369, i32 0, i32 3
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = bitcast %union.ng_patch_op_val* %10 to i32*
  %374 = load i32, i32* %373, align 4
  %375 = or i32 %374, %372
  store i32 %375, i32* %373, align 4
  br label %421

376:                                              ; preds = %253
  %377 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %377, i32 0, i32 1
  %379 = load %struct.TYPE_11__*, %struct.TYPE_11__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %379, i32 0, i32 1
  %381 = load %struct.TYPE_10__*, %struct.TYPE_10__** %380, align 8
  %382 = load i32, i32* %7, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i64 %383
  %385 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %384, i32 0, i32 3
  %386 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = bitcast %union.ng_patch_op_val* %10 to i32*
  %389 = load i32, i32* %388, align 4
  %390 = xor i32 %389, %387
  store i32 %390, i32* %388, align 4
  br label %421

391:                                              ; preds = %253
  %392 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %392, i32 0, i32 1
  %394 = load %struct.TYPE_11__*, %struct.TYPE_11__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %394, i32 0, i32 1
  %396 = load %struct.TYPE_10__*, %struct.TYPE_10__** %395, align 8
  %397 = load i32, i32* %7, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %396, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %399, i32 0, i32 3
  %401 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = bitcast %union.ng_patch_op_val* %10 to i32*
  %404 = load i32, i32* %403, align 4
  %405 = shl i32 %404, %402
  store i32 %405, i32* %403, align 4
  br label %421

406:                                              ; preds = %253
  %407 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %408 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %407, i32 0, i32 1
  %409 = load %struct.TYPE_11__*, %struct.TYPE_11__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %409, i32 0, i32 1
  %411 = load %struct.TYPE_10__*, %struct.TYPE_10__** %410, align 8
  %412 = load i32, i32* %7, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %411, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %414, i32 0, i32 3
  %416 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = bitcast %union.ng_patch_op_val* %10 to i32*
  %419 = load i32, i32* %418, align 4
  %420 = ashr i32 %419, %417
  store i32 %420, i32* %418, align 4
  br label %421

421:                                              ; preds = %253, %406, %391, %376, %361, %346, %341, %326, %311, %296, %281, %268
  %422 = bitcast %union.ng_patch_op_val* %10 to i32*
  %423 = load i32, i32* %422, align 4
  %424 = call i32 @htons(i32 %423)
  %425 = bitcast %union.ng_patch_op_val* %10 to i32*
  store i32 %424, i32* %425, align 4
  br label %772

426:                                              ; preds = %77
  %427 = bitcast %union.ng_patch_op_val* %10 to i32*
  %428 = load i32, i32* %427, align 4
  %429 = call i32 @ntohl(i32 %428)
  %430 = bitcast %union.ng_patch_op_val* %10 to i32*
  store i32 %429, i32* %430, align 4
  %431 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %432 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %431, i32 0, i32 1
  %433 = load %struct.TYPE_11__*, %struct.TYPE_11__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %433, i32 0, i32 1
  %435 = load %struct.TYPE_10__*, %struct.TYPE_10__** %434, align 8
  %436 = load i32, i32* %7, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %435, i64 %437
  %439 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %438, i32 0, i32 2
  %440 = load i64, i64* %439, align 8
  switch i64 %440, label %594 [
    i64 132, label %441
    i64 138, label %454
    i64 129, label %469
    i64 135, label %484
    i64 136, label %499
    i64 134, label %514
    i64 137, label %519
    i64 133, label %534
    i64 128, label %549
    i64 131, label %564
    i64 130, label %579
  ]

441:                                              ; preds = %426
  %442 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %443 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %442, i32 0, i32 1
  %444 = load %struct.TYPE_11__*, %struct.TYPE_11__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %444, i32 0, i32 1
  %446 = load %struct.TYPE_10__*, %struct.TYPE_10__** %445, align 8
  %447 = load i32, i32* %7, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %446, i64 %448
  %450 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %449, i32 0, i32 3
  %451 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %450, i32 0, i32 2
  %452 = load i32, i32* %451, align 8
  %453 = bitcast %union.ng_patch_op_val* %10 to i32*
  store i32 %452, i32* %453, align 4
  br label %594

454:                                              ; preds = %426
  %455 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %456 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %455, i32 0, i32 1
  %457 = load %struct.TYPE_11__*, %struct.TYPE_11__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %457, i32 0, i32 1
  %459 = load %struct.TYPE_10__*, %struct.TYPE_10__** %458, align 8
  %460 = load i32, i32* %7, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %459, i64 %461
  %463 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %462, i32 0, i32 3
  %464 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %463, i32 0, i32 2
  %465 = load i32, i32* %464, align 8
  %466 = bitcast %union.ng_patch_op_val* %10 to i32*
  %467 = load i32, i32* %466, align 4
  %468 = add nsw i32 %467, %465
  store i32 %468, i32* %466, align 4
  br label %594

469:                                              ; preds = %426
  %470 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %471 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %470, i32 0, i32 1
  %472 = load %struct.TYPE_11__*, %struct.TYPE_11__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %472, i32 0, i32 1
  %474 = load %struct.TYPE_10__*, %struct.TYPE_10__** %473, align 8
  %475 = load i32, i32* %7, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %474, i64 %476
  %478 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %477, i32 0, i32 3
  %479 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %478, i32 0, i32 2
  %480 = load i32, i32* %479, align 8
  %481 = bitcast %union.ng_patch_op_val* %10 to i32*
  %482 = load i32, i32* %481, align 4
  %483 = sub nsw i32 %482, %480
  store i32 %483, i32* %481, align 4
  br label %594

484:                                              ; preds = %426
  %485 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %486 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %485, i32 0, i32 1
  %487 = load %struct.TYPE_11__*, %struct.TYPE_11__** %486, align 8
  %488 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %487, i32 0, i32 1
  %489 = load %struct.TYPE_10__*, %struct.TYPE_10__** %488, align 8
  %490 = load i32, i32* %7, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %489, i64 %491
  %493 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %492, i32 0, i32 3
  %494 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %493, i32 0, i32 2
  %495 = load i32, i32* %494, align 8
  %496 = bitcast %union.ng_patch_op_val* %10 to i32*
  %497 = load i32, i32* %496, align 4
  %498 = mul nsw i32 %497, %495
  store i32 %498, i32* %496, align 4
  br label %594

499:                                              ; preds = %426
  %500 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %501 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %500, i32 0, i32 1
  %502 = load %struct.TYPE_11__*, %struct.TYPE_11__** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %502, i32 0, i32 1
  %504 = load %struct.TYPE_10__*, %struct.TYPE_10__** %503, align 8
  %505 = load i32, i32* %7, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %504, i64 %506
  %508 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %507, i32 0, i32 3
  %509 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %508, i32 0, i32 2
  %510 = load i32, i32* %509, align 8
  %511 = bitcast %union.ng_patch_op_val* %10 to i32*
  %512 = load i32, i32* %511, align 4
  %513 = sdiv i32 %512, %510
  store i32 %513, i32* %511, align 4
  br label %594

514:                                              ; preds = %426
  %515 = bitcast %union.ng_patch_op_val* %10 to i32*
  %516 = load i32, i32* %515, align 4
  %517 = sub nsw i32 0, %516
  %518 = bitcast %union.ng_patch_op_val* %10 to i32*
  store i32 %517, i32* %518, align 4
  br label %594

519:                                              ; preds = %426
  %520 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %521 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %520, i32 0, i32 1
  %522 = load %struct.TYPE_11__*, %struct.TYPE_11__** %521, align 8
  %523 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %522, i32 0, i32 1
  %524 = load %struct.TYPE_10__*, %struct.TYPE_10__** %523, align 8
  %525 = load i32, i32* %7, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %524, i64 %526
  %528 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %527, i32 0, i32 3
  %529 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %528, i32 0, i32 2
  %530 = load i32, i32* %529, align 8
  %531 = bitcast %union.ng_patch_op_val* %10 to i32*
  %532 = load i32, i32* %531, align 4
  %533 = and i32 %532, %530
  store i32 %533, i32* %531, align 4
  br label %594

534:                                              ; preds = %426
  %535 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %536 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %535, i32 0, i32 1
  %537 = load %struct.TYPE_11__*, %struct.TYPE_11__** %536, align 8
  %538 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %537, i32 0, i32 1
  %539 = load %struct.TYPE_10__*, %struct.TYPE_10__** %538, align 8
  %540 = load i32, i32* %7, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %539, i64 %541
  %543 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %542, i32 0, i32 3
  %544 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %543, i32 0, i32 2
  %545 = load i32, i32* %544, align 8
  %546 = bitcast %union.ng_patch_op_val* %10 to i32*
  %547 = load i32, i32* %546, align 4
  %548 = or i32 %547, %545
  store i32 %548, i32* %546, align 4
  br label %594

549:                                              ; preds = %426
  %550 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %551 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %550, i32 0, i32 1
  %552 = load %struct.TYPE_11__*, %struct.TYPE_11__** %551, align 8
  %553 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %552, i32 0, i32 1
  %554 = load %struct.TYPE_10__*, %struct.TYPE_10__** %553, align 8
  %555 = load i32, i32* %7, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %554, i64 %556
  %558 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %557, i32 0, i32 3
  %559 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %558, i32 0, i32 2
  %560 = load i32, i32* %559, align 8
  %561 = bitcast %union.ng_patch_op_val* %10 to i32*
  %562 = load i32, i32* %561, align 4
  %563 = xor i32 %562, %560
  store i32 %563, i32* %561, align 4
  br label %594

564:                                              ; preds = %426
  %565 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %566 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %565, i32 0, i32 1
  %567 = load %struct.TYPE_11__*, %struct.TYPE_11__** %566, align 8
  %568 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %567, i32 0, i32 1
  %569 = load %struct.TYPE_10__*, %struct.TYPE_10__** %568, align 8
  %570 = load i32, i32* %7, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %569, i64 %571
  %573 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %572, i32 0, i32 3
  %574 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %573, i32 0, i32 2
  %575 = load i32, i32* %574, align 8
  %576 = bitcast %union.ng_patch_op_val* %10 to i32*
  %577 = load i32, i32* %576, align 4
  %578 = shl i32 %577, %575
  store i32 %578, i32* %576, align 4
  br label %594

579:                                              ; preds = %426
  %580 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %581 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %580, i32 0, i32 1
  %582 = load %struct.TYPE_11__*, %struct.TYPE_11__** %581, align 8
  %583 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %582, i32 0, i32 1
  %584 = load %struct.TYPE_10__*, %struct.TYPE_10__** %583, align 8
  %585 = load i32, i32* %7, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %584, i64 %586
  %588 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %587, i32 0, i32 3
  %589 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %588, i32 0, i32 2
  %590 = load i32, i32* %589, align 8
  %591 = bitcast %union.ng_patch_op_val* %10 to i32*
  %592 = load i32, i32* %591, align 4
  %593 = ashr i32 %592, %590
  store i32 %593, i32* %591, align 4
  br label %594

594:                                              ; preds = %426, %579, %564, %549, %534, %519, %514, %499, %484, %469, %454, %441
  %595 = bitcast %union.ng_patch_op_val* %10 to i32*
  %596 = load i32, i32* %595, align 4
  %597 = call i32 @htonl(i32 %596)
  %598 = bitcast %union.ng_patch_op_val* %10 to i32*
  store i32 %597, i32* %598, align 4
  br label %772

599:                                              ; preds = %77
  %600 = bitcast %union.ng_patch_op_val* %10 to i32*
  %601 = load i32, i32* %600, align 4
  %602 = call i32 @be64toh(i32 %601)
  %603 = bitcast %union.ng_patch_op_val* %10 to i32*
  store i32 %602, i32* %603, align 4
  %604 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %605 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %604, i32 0, i32 1
  %606 = load %struct.TYPE_11__*, %struct.TYPE_11__** %605, align 8
  %607 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %606, i32 0, i32 1
  %608 = load %struct.TYPE_10__*, %struct.TYPE_10__** %607, align 8
  %609 = load i32, i32* %7, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %608, i64 %610
  %612 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %611, i32 0, i32 2
  %613 = load i64, i64* %612, align 8
  switch i64 %613, label %767 [
    i64 132, label %614
    i64 138, label %627
    i64 129, label %642
    i64 135, label %657
    i64 136, label %672
    i64 134, label %687
    i64 137, label %692
    i64 133, label %707
    i64 128, label %722
    i64 131, label %737
    i64 130, label %752
  ]

614:                                              ; preds = %599
  %615 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %616 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %615, i32 0, i32 1
  %617 = load %struct.TYPE_11__*, %struct.TYPE_11__** %616, align 8
  %618 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %617, i32 0, i32 1
  %619 = load %struct.TYPE_10__*, %struct.TYPE_10__** %618, align 8
  %620 = load i32, i32* %7, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %619, i64 %621
  %623 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %622, i32 0, i32 3
  %624 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %623, i32 0, i32 3
  %625 = load i32, i32* %624, align 4
  %626 = bitcast %union.ng_patch_op_val* %10 to i32*
  store i32 %625, i32* %626, align 4
  br label %767

627:                                              ; preds = %599
  %628 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %629 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %628, i32 0, i32 1
  %630 = load %struct.TYPE_11__*, %struct.TYPE_11__** %629, align 8
  %631 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %630, i32 0, i32 1
  %632 = load %struct.TYPE_10__*, %struct.TYPE_10__** %631, align 8
  %633 = load i32, i32* %7, align 4
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %632, i64 %634
  %636 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %635, i32 0, i32 3
  %637 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %636, i32 0, i32 3
  %638 = load i32, i32* %637, align 4
  %639 = bitcast %union.ng_patch_op_val* %10 to i32*
  %640 = load i32, i32* %639, align 4
  %641 = add nsw i32 %640, %638
  store i32 %641, i32* %639, align 4
  br label %767

642:                                              ; preds = %599
  %643 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %644 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %643, i32 0, i32 1
  %645 = load %struct.TYPE_11__*, %struct.TYPE_11__** %644, align 8
  %646 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %645, i32 0, i32 1
  %647 = load %struct.TYPE_10__*, %struct.TYPE_10__** %646, align 8
  %648 = load i32, i32* %7, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %647, i64 %649
  %651 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %650, i32 0, i32 3
  %652 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %651, i32 0, i32 3
  %653 = load i32, i32* %652, align 4
  %654 = bitcast %union.ng_patch_op_val* %10 to i32*
  %655 = load i32, i32* %654, align 4
  %656 = sub nsw i32 %655, %653
  store i32 %656, i32* %654, align 4
  br label %767

657:                                              ; preds = %599
  %658 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %659 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %658, i32 0, i32 1
  %660 = load %struct.TYPE_11__*, %struct.TYPE_11__** %659, align 8
  %661 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %660, i32 0, i32 1
  %662 = load %struct.TYPE_10__*, %struct.TYPE_10__** %661, align 8
  %663 = load i32, i32* %7, align 4
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %662, i64 %664
  %666 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %665, i32 0, i32 3
  %667 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %666, i32 0, i32 3
  %668 = load i32, i32* %667, align 4
  %669 = bitcast %union.ng_patch_op_val* %10 to i32*
  %670 = load i32, i32* %669, align 4
  %671 = mul nsw i32 %670, %668
  store i32 %671, i32* %669, align 4
  br label %767

672:                                              ; preds = %599
  %673 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %674 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %673, i32 0, i32 1
  %675 = load %struct.TYPE_11__*, %struct.TYPE_11__** %674, align 8
  %676 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %675, i32 0, i32 1
  %677 = load %struct.TYPE_10__*, %struct.TYPE_10__** %676, align 8
  %678 = load i32, i32* %7, align 4
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %677, i64 %679
  %681 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %680, i32 0, i32 3
  %682 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %681, i32 0, i32 3
  %683 = load i32, i32* %682, align 4
  %684 = bitcast %union.ng_patch_op_val* %10 to i32*
  %685 = load i32, i32* %684, align 4
  %686 = sdiv i32 %685, %683
  store i32 %686, i32* %684, align 4
  br label %767

687:                                              ; preds = %599
  %688 = bitcast %union.ng_patch_op_val* %10 to i32*
  %689 = load i32, i32* %688, align 4
  %690 = sub nsw i32 0, %689
  %691 = bitcast %union.ng_patch_op_val* %10 to i32*
  store i32 %690, i32* %691, align 4
  br label %767

692:                                              ; preds = %599
  %693 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %694 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %693, i32 0, i32 1
  %695 = load %struct.TYPE_11__*, %struct.TYPE_11__** %694, align 8
  %696 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %695, i32 0, i32 1
  %697 = load %struct.TYPE_10__*, %struct.TYPE_10__** %696, align 8
  %698 = load i32, i32* %7, align 4
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %697, i64 %699
  %701 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %700, i32 0, i32 3
  %702 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %701, i32 0, i32 3
  %703 = load i32, i32* %702, align 4
  %704 = bitcast %union.ng_patch_op_val* %10 to i32*
  %705 = load i32, i32* %704, align 4
  %706 = and i32 %705, %703
  store i32 %706, i32* %704, align 4
  br label %767

707:                                              ; preds = %599
  %708 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %709 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %708, i32 0, i32 1
  %710 = load %struct.TYPE_11__*, %struct.TYPE_11__** %709, align 8
  %711 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %710, i32 0, i32 1
  %712 = load %struct.TYPE_10__*, %struct.TYPE_10__** %711, align 8
  %713 = load i32, i32* %7, align 4
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %712, i64 %714
  %716 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %715, i32 0, i32 3
  %717 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %716, i32 0, i32 3
  %718 = load i32, i32* %717, align 4
  %719 = bitcast %union.ng_patch_op_val* %10 to i32*
  %720 = load i32, i32* %719, align 4
  %721 = or i32 %720, %718
  store i32 %721, i32* %719, align 4
  br label %767

722:                                              ; preds = %599
  %723 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %724 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %723, i32 0, i32 1
  %725 = load %struct.TYPE_11__*, %struct.TYPE_11__** %724, align 8
  %726 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %725, i32 0, i32 1
  %727 = load %struct.TYPE_10__*, %struct.TYPE_10__** %726, align 8
  %728 = load i32, i32* %7, align 4
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %727, i64 %729
  %731 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %730, i32 0, i32 3
  %732 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %731, i32 0, i32 3
  %733 = load i32, i32* %732, align 4
  %734 = bitcast %union.ng_patch_op_val* %10 to i32*
  %735 = load i32, i32* %734, align 4
  %736 = xor i32 %735, %733
  store i32 %736, i32* %734, align 4
  br label %767

737:                                              ; preds = %599
  %738 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %739 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %738, i32 0, i32 1
  %740 = load %struct.TYPE_11__*, %struct.TYPE_11__** %739, align 8
  %741 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %740, i32 0, i32 1
  %742 = load %struct.TYPE_10__*, %struct.TYPE_10__** %741, align 8
  %743 = load i32, i32* %7, align 4
  %744 = sext i32 %743 to i64
  %745 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %742, i64 %744
  %746 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %745, i32 0, i32 3
  %747 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %746, i32 0, i32 3
  %748 = load i32, i32* %747, align 4
  %749 = bitcast %union.ng_patch_op_val* %10 to i32*
  %750 = load i32, i32* %749, align 4
  %751 = shl i32 %750, %748
  store i32 %751, i32* %749, align 4
  br label %767

752:                                              ; preds = %599
  %753 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %754 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %753, i32 0, i32 1
  %755 = load %struct.TYPE_11__*, %struct.TYPE_11__** %754, align 8
  %756 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %755, i32 0, i32 1
  %757 = load %struct.TYPE_10__*, %struct.TYPE_10__** %756, align 8
  %758 = load i32, i32* %7, align 4
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %757, i64 %759
  %761 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %760, i32 0, i32 3
  %762 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %761, i32 0, i32 3
  %763 = load i32, i32* %762, align 4
  %764 = bitcast %union.ng_patch_op_val* %10 to i32*
  %765 = load i32, i32* %764, align 4
  %766 = ashr i32 %765, %763
  store i32 %766, i32* %764, align 4
  br label %767

767:                                              ; preds = %599, %752, %737, %722, %707, %692, %687, %672, %657, %642, %627, %614
  %768 = bitcast %union.ng_patch_op_val* %10 to i32*
  %769 = load i32, i32* %768, align 4
  %770 = call i32 @htobe64(i32 %769)
  %771 = bitcast %union.ng_patch_op_val* %10 to i32*
  store i32 %770, i32* %771, align 4
  br label %772

772:                                              ; preds = %77, %767, %594, %421, %252
  %773 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %774 = load i32, i32* %8, align 4
  %775 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %776 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %775, i32 0, i32 1
  %777 = load %struct.TYPE_11__*, %struct.TYPE_11__** %776, align 8
  %778 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %777, i32 0, i32 1
  %779 = load %struct.TYPE_10__*, %struct.TYPE_10__** %778, align 8
  %780 = load i32, i32* %7, align 4
  %781 = sext i32 %780 to i64
  %782 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %779, i64 %781
  %783 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %782, i32 0, i32 1
  %784 = load i32, i32* %783, align 4
  %785 = ptrtoint %union.ng_patch_op_val* %10 to i32
  %786 = call i32 @m_copyback(%struct.mbuf* %773, i32 %774, i32 %784, i32 %785)
  store i32 1, i32* %9, align 4
  br label %787

787:                                              ; preds = %772, %49
  %788 = load i32, i32* %7, align 4
  %789 = add nsw i32 %788, 1
  store i32 %789, i32* %7, align 4
  br label %11

790:                                              ; preds = %11
  %791 = load i32, i32* %9, align 4
  %792 = icmp ne i32 %791, 0
  br i1 %792, label %793, label %799

793:                                              ; preds = %790
  %794 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %795 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %794, i32 0, i32 0
  %796 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %795, i32 0, i32 0
  %797 = load i32, i32* %796, align 8
  %798 = add nsw i32 %797, 1
  store i32 %798, i32* %796, align 8
  br label %799

799:                                              ; preds = %793, %790
  ret void
}

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @be64toh(i32) #1

declare dso_local i32 @htobe64(i32) #1

declare dso_local i32 @m_copyback(%struct.mbuf*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
