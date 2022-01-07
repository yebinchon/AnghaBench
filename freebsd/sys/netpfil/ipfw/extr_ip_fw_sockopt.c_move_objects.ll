; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_move_objects.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_move_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32, %struct.ip_fw** }
%struct.ip_fw = type { i64, i32, i32* }
%struct.TYPE_4__ = type { i64 }
%struct.opcode_obj_rewrite = type { i32 (%struct.ip_fw_chain.0*, i32, i32, i32)* }
%struct.ip_fw_chain.0 = type opaque

@COUNT_ONE = common dso_local global i32 0, align 4
@TEST_ONE = common dso_local global i32 0, align 4
@MOVE_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.TYPE_4__*)* @move_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @move_objects(%struct.ip_fw_chain* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_fw_chain*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.opcode_obj_rewrite*, align 8
  %7 = alloca %struct.ip_fw*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %14 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %15 = call i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain* %14)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %91, %2
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %19 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %94

23:                                               ; preds = %16
  %24 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %25 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %24, i32 0, i32 1
  %26 = load %struct.ip_fw**, %struct.ip_fw*** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ip_fw*, %struct.ip_fw** %26, i64 %28
  %30 = load %struct.ip_fw*, %struct.ip_fw** %29, align 8
  store %struct.ip_fw* %30, %struct.ip_fw** %7, align 8
  %31 = load %struct.ip_fw*, %struct.ip_fw** %7, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = call i64 @ipfw_match_range(%struct.ip_fw* %31, %struct.TYPE_4__* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %91

36:                                               ; preds = %23
  %37 = load %struct.ip_fw*, %struct.ip_fw** %7, align 8
  %38 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %91

45:                                               ; preds = %36
  %46 = load %struct.ip_fw*, %struct.ip_fw** %7, align 8
  %47 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %11, align 4
  store i32 0, i32* %9, align 4
  %49 = load %struct.ip_fw*, %struct.ip_fw** %7, align 8
  %50 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %8, align 8
  br label %52

52:                                               ; preds = %82, %45
  %53 = load i32, i32* %11, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %90

55:                                               ; preds = %52
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @F_LEN(i32* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = call %struct.opcode_obj_rewrite* @find_op_rw(i32* %58, i32* %13, i32* null)
  store %struct.opcode_obj_rewrite* %59, %struct.opcode_obj_rewrite** %6, align 8
  %60 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %6, align 8
  %61 = icmp eq %struct.opcode_obj_rewrite* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %55
  %63 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %6, align 8
  %64 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %63, i32 0, i32 0
  %65 = load i32 (%struct.ip_fw_chain.0*, i32, i32, i32)*, i32 (%struct.ip_fw_chain.0*, i32, i32, i32)** %64, align 8
  %66 = icmp eq i32 (%struct.ip_fw_chain.0*, i32, i32, i32)* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %62, %55
  br label %82

68:                                               ; preds = %62
  %69 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %6, align 8
  %70 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %69, i32 0, i32 0
  %71 = load i32 (%struct.ip_fw_chain.0*, i32, i32, i32)*, i32 (%struct.ip_fw_chain.0*, i32, i32, i32)** %70, align 8
  %72 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %73 = bitcast %struct.ip_fw_chain* %72 to %struct.ip_fw_chain.0*
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @COUNT_ONE, align 4
  %76 = call i32 %71(%struct.ip_fw_chain.0* %73, i32 %74, i32 1, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %82

79:                                               ; preds = %68
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %79, %78, %67
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %11, align 4
  %85 = sub nsw i32 %84, %83
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %8, align 8
  br label %52

90:                                               ; preds = %52
  br label %91

91:                                               ; preds = %90, %44, %35
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %16

94:                                               ; preds = %16
  %95 = load i32, i32* %12, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 0, i32* %3, align 4
  br label %278

98:                                               ; preds = %94
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %99

99:                                               ; preds = %183, %98
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %102 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %103, 1
  %105 = icmp slt i32 %100, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load i32, i32* %12, align 4
  %108 = icmp eq i32 %107, 0
  br label %109

109:                                              ; preds = %106, %99
  %110 = phi i1 [ false, %99 ], [ %108, %106 ]
  br i1 %110, label %111, label %186

111:                                              ; preds = %109
  %112 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %113 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %112, i32 0, i32 1
  %114 = load %struct.ip_fw**, %struct.ip_fw*** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.ip_fw*, %struct.ip_fw** %114, i64 %116
  %118 = load %struct.ip_fw*, %struct.ip_fw** %117, align 8
  store %struct.ip_fw* %118, %struct.ip_fw** %7, align 8
  %119 = load %struct.ip_fw*, %struct.ip_fw** %7, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %121 = call i64 @ipfw_match_range(%struct.ip_fw* %119, %struct.TYPE_4__* %120)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %111
  br label %183

124:                                              ; preds = %111
  %125 = load %struct.ip_fw*, %struct.ip_fw** %7, align 8
  %126 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %127, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  br label %183

133:                                              ; preds = %124
  %134 = load %struct.ip_fw*, %struct.ip_fw** %7, align 8
  %135 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %11, align 4
  store i32 0, i32* %9, align 4
  %137 = load %struct.ip_fw*, %struct.ip_fw** %7, align 8
  %138 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  store i32* %139, i32** %8, align 8
  br label %140

140:                                              ; preds = %174, %133
  %141 = load i32, i32* %11, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i32, i32* %12, align 4
  %145 = icmp eq i32 %144, 0
  br label %146

146:                                              ; preds = %143, %140
  %147 = phi i1 [ false, %140 ], [ %145, %143 ]
  br i1 %147, label %148, label %182

148:                                              ; preds = %146
  %149 = load i32*, i32** %8, align 8
  %150 = call i32 @F_LEN(i32* %149)
  store i32 %150, i32* %9, align 4
  %151 = load i32*, i32** %8, align 8
  %152 = call %struct.opcode_obj_rewrite* @find_op_rw(i32* %151, i32* %13, i32* null)
  store %struct.opcode_obj_rewrite* %152, %struct.opcode_obj_rewrite** %6, align 8
  %153 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %6, align 8
  %154 = icmp eq %struct.opcode_obj_rewrite* %153, null
  br i1 %154, label %160, label %155

155:                                              ; preds = %148
  %156 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %6, align 8
  %157 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %156, i32 0, i32 0
  %158 = load i32 (%struct.ip_fw_chain.0*, i32, i32, i32)*, i32 (%struct.ip_fw_chain.0*, i32, i32, i32)** %157, align 8
  %159 = icmp eq i32 (%struct.ip_fw_chain.0*, i32, i32, i32)* %158, null
  br i1 %159, label %160, label %161

160:                                              ; preds = %155, %148
  br label %174

161:                                              ; preds = %155
  %162 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %6, align 8
  %163 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %162, i32 0, i32 0
  %164 = load i32 (%struct.ip_fw_chain.0*, i32, i32, i32)*, i32 (%struct.ip_fw_chain.0*, i32, i32, i32)** %163, align 8
  %165 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %166 = bitcast %struct.ip_fw_chain* %165 to %struct.ip_fw_chain.0*
  %167 = load i32, i32* %13, align 4
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = trunc i64 %170 to i32
  %172 = load i32, i32* @TEST_ONE, align 4
  %173 = call i32 %164(%struct.ip_fw_chain.0* %166, i32 %167, i32 %171, i32 %172)
  store i32 %173, i32* %12, align 4
  br label %174

174:                                              ; preds = %161, %160
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %11, align 4
  %177 = sub nsw i32 %176, %175
  store i32 %177, i32* %11, align 4
  %178 = load i32, i32* %9, align 4
  %179 = load i32*, i32** %8, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  store i32* %181, i32** %8, align 8
  br label %140

182:                                              ; preds = %146
  br label %183

183:                                              ; preds = %182, %132, %123
  %184 = load i32, i32* %10, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %10, align 4
  br label %99

186:                                              ; preds = %109
  store i32 0, i32* %10, align 4
  br label %187

187:                                              ; preds = %273, %186
  %188 = load i32, i32* %10, align 4
  %189 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %190 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = sub nsw i32 %191, 1
  %193 = icmp slt i32 %188, %192
  br i1 %193, label %194, label %276

194:                                              ; preds = %187
  %195 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %196 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %195, i32 0, i32 1
  %197 = load %struct.ip_fw**, %struct.ip_fw*** %196, align 8
  %198 = load i32, i32* %10, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.ip_fw*, %struct.ip_fw** %197, i64 %199
  %201 = load %struct.ip_fw*, %struct.ip_fw** %200, align 8
  store %struct.ip_fw* %201, %struct.ip_fw** %7, align 8
  %202 = load %struct.ip_fw*, %struct.ip_fw** %7, align 8
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %204 = call i64 @ipfw_match_range(%struct.ip_fw* %202, %struct.TYPE_4__* %203)
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %194
  br label %273

207:                                              ; preds = %194
  %208 = load %struct.ip_fw*, %struct.ip_fw** %7, align 8
  %209 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp eq i64 %210, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %207
  br label %273

216:                                              ; preds = %207
  %217 = load %struct.ip_fw*, %struct.ip_fw** %7, align 8
  %218 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  store i32 %219, i32* %11, align 4
  store i32 0, i32* %9, align 4
  %220 = load %struct.ip_fw*, %struct.ip_fw** %7, align 8
  %221 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %220, i32 0, i32 2
  %222 = load i32*, i32** %221, align 8
  store i32* %222, i32** %8, align 8
  br label %223

223:                                              ; preds = %264, %216
  %224 = load i32, i32* %11, align 4
  %225 = icmp sgt i32 %224, 0
  br i1 %225, label %226, label %272

226:                                              ; preds = %223
  %227 = load i32*, i32** %8, align 8
  %228 = call i32 @F_LEN(i32* %227)
  store i32 %228, i32* %9, align 4
  %229 = load i32*, i32** %8, align 8
  %230 = call %struct.opcode_obj_rewrite* @find_op_rw(i32* %229, i32* %13, i32* null)
  store %struct.opcode_obj_rewrite* %230, %struct.opcode_obj_rewrite** %6, align 8
  %231 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %6, align 8
  %232 = icmp eq %struct.opcode_obj_rewrite* %231, null
  br i1 %232, label %238, label %233

233:                                              ; preds = %226
  %234 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %6, align 8
  %235 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %234, i32 0, i32 0
  %236 = load i32 (%struct.ip_fw_chain.0*, i32, i32, i32)*, i32 (%struct.ip_fw_chain.0*, i32, i32, i32)** %235, align 8
  %237 = icmp eq i32 (%struct.ip_fw_chain.0*, i32, i32, i32)* %236, null
  br i1 %237, label %238, label %239

238:                                              ; preds = %233, %226
  br label %264

239:                                              ; preds = %233
  %240 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %6, align 8
  %241 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %240, i32 0, i32 0
  %242 = load i32 (%struct.ip_fw_chain.0*, i32, i32, i32)*, i32 (%struct.ip_fw_chain.0*, i32, i32, i32)** %241, align 8
  %243 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %244 = bitcast %struct.ip_fw_chain* %243 to %struct.ip_fw_chain.0*
  %245 = load i32, i32* %13, align 4
  %246 = load i32, i32* @COUNT_ONE, align 4
  %247 = call i32 %242(%struct.ip_fw_chain.0* %244, i32 %245, i32 0, i32 %246)
  %248 = load i32, i32* %12, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %239
  br label %264

251:                                              ; preds = %239
  %252 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %6, align 8
  %253 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %252, i32 0, i32 0
  %254 = load i32 (%struct.ip_fw_chain.0*, i32, i32, i32)*, i32 (%struct.ip_fw_chain.0*, i32, i32, i32)** %253, align 8
  %255 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %256 = bitcast %struct.ip_fw_chain* %255 to %struct.ip_fw_chain.0*
  %257 = load i32, i32* %13, align 4
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = trunc i64 %260 to i32
  %262 = load i32, i32* @MOVE_ONE, align 4
  %263 = call i32 %254(%struct.ip_fw_chain.0* %256, i32 %257, i32 %261, i32 %262)
  br label %264

264:                                              ; preds = %251, %250, %238
  %265 = load i32, i32* %9, align 4
  %266 = load i32, i32* %11, align 4
  %267 = sub nsw i32 %266, %265
  store i32 %267, i32* %11, align 4
  %268 = load i32, i32* %9, align 4
  %269 = load i32*, i32** %8, align 8
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds i32, i32* %269, i64 %270
  store i32* %271, i32** %8, align 8
  br label %223

272:                                              ; preds = %223
  br label %273

273:                                              ; preds = %272, %215, %206
  %274 = load i32, i32* %10, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %10, align 4
  br label %187

276:                                              ; preds = %187
  %277 = load i32, i32* %12, align 4
  store i32 %277, i32* %3, align 4
  br label %278

278:                                              ; preds = %276, %97
  %279 = load i32, i32* %3, align 4
  ret i32 %279
}

declare dso_local i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain*) #1

declare dso_local i64 @ipfw_match_range(%struct.ip_fw*, %struct.TYPE_4__*) #1

declare dso_local i32 @F_LEN(i32*) #1

declare dso_local %struct.opcode_obj_rewrite* @find_op_rw(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
