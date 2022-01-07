; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_port.c___mlx4_register_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_port.c___mlx4_register_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_port_info = type { %struct.mlx4_mac_table }
%struct.mlx4_mac_table = type { i32*, i32*, i64, i64, i32, i8** }
%struct.TYPE_2__ = type { %struct.mlx4_port_info* }

@.str = private unnamed_addr constant [50 x i8] c"Registering MAC: 0x%llx for port %d %s duplicate\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"without\00", align 1
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@MLX4_MAX_MAC_NUM = common dso_local global i32 0, align 4
@MLX4_MAC_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"register mac: expect duplicate mac 0x%llx on port %d index %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Fail to allocate duplicate MAC table entry\0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"High Availability for virtual functions may not work as expected\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Free MAC index is %d\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@MLX4_MAC_VALID = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"Failed adding MAC: 0x%llx\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Failed adding duplicate mac: 0x%llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mlx4_register_mac(%struct.mlx4_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_port_info*, align 8
  %8 = alloca %struct.mlx4_mac_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.mlx4_mac_table*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %22 = call %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %24, i64 %25
  store %struct.mlx4_port_info* %26, %struct.mlx4_port_info** %7, align 8
  %27 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %28 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %27, i32 0, i32 0
  store %struct.mlx4_mac_table* %28, %struct.mlx4_mac_table** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %29 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %30 = call i32 @mlx4_is_mf_bonded(%struct.mlx4_dev* %29)
  store i32 %30, i32* %13, align 4
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %31, 1
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 2, i32 1
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %14, align 8
  %36 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %37 = call %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %38, align 8
  %40 = load i64, i64* %14, align 8
  %41 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %39, i64 %40
  %42 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %41, i32 0, i32 0
  store %struct.mlx4_mac_table* %42, %struct.mlx4_mac_table** %15, align 8
  %43 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %44 = call i32 @mlx4_need_mf_bond(%struct.mlx4_dev* %43)
  store i32 %44, i32* %16, align 4
  store i32 1, i32* %17, align 4
  %45 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = trunc i64 %47 to i32
  %49 = load i64, i64* %5, align 8
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %54 = call i32 (%struct.mlx4_dev*, i8*, i32, ...) @mlx4_dbg(%struct.mlx4_dev* %45, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %48, i64 %49, i8* %53)
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %3
  %58 = load i64, i64* %5, align 8
  %59 = icmp eq i64 %58, 1
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %62 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %61, i32 0, i32 4
  %63 = call i32 @mutex_lock(i32* %62)
  %64 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %15, align 8
  %65 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %64, i32 0, i32 4
  %66 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %67 = call i32 @mutex_lock_nested(i32* %65, i32 %66)
  br label %76

68:                                               ; preds = %57
  %69 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %15, align 8
  %70 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %69, i32 0, i32 4
  %71 = call i32 @mutex_lock(i32* %70)
  %72 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %73 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %72, i32 0, i32 4
  %74 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %75 = call i32 @mutex_lock_nested(i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %68, %60
  br label %81

77:                                               ; preds = %3
  %78 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %79 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %78, i32 0, i32 4
  %80 = call i32 @mutex_lock(i32* %79)
  br label %81

81:                                               ; preds = %77, %76
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %186

84:                                               ; preds = %81
  store i32 -1, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %124, %84
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @MLX4_MAX_MAC_NUM, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %127

89:                                               ; preds = %85
  %90 = load i32, i32* @MLX4_MAC_MASK, align 4
  %91 = load i32, i32* %6, align 4
  %92 = and i32 %90, %91
  %93 = load i32, i32* @MLX4_MAC_MASK, align 4
  %94 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %95 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %94, i32 0, i32 5
  %96 = load i8**, i8*** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @be64_to_cpu(i8* %100)
  %102 = and i32 %93, %101
  %103 = icmp eq i32 %92, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %89
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %18, align 4
  br label %106

106:                                              ; preds = %104, %89
  %107 = load i32, i32* @MLX4_MAC_MASK, align 4
  %108 = load i32, i32* %6, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* @MLX4_MAC_MASK, align 4
  %111 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %15, align 8
  %112 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %111, i32 0, i32 5
  %113 = load i8**, i8*** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @be64_to_cpu(i8* %117)
  %119 = and i32 %110, %118
  %120 = icmp eq i32 %109, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %106
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %19, align 4
  br label %123

123:                                              ; preds = %121, %106
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %85

127:                                              ; preds = %85
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* %19, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %127
  %132 = load i32, i32* %18, align 4
  %133 = icmp sge i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load i32, i32* %19, align 4
  %136 = icmp sge i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i32 0, i32* %17, align 4
  br label %138

138:                                              ; preds = %137, %134, %131, %127
  %139 = load i32, i32* %18, align 4
  %140 = icmp sge i32 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %138
  %142 = load i32, i32* %19, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %141
  %145 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %15, align 8
  %146 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %18, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %144
  store i32 0, i32* %17, align 4
  br label %154

154:                                              ; preds = %153, %144, %141, %138
  %155 = load i32, i32* %19, align 4
  %156 = icmp sge i32 %155, 0
  br i1 %156, label %157, label %185

157:                                              ; preds = %154
  %158 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %159 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %19, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %181

166:                                              ; preds = %157
  %167 = load i32, i32* @MLX4_MAC_MASK, align 4
  %168 = load i32, i32* %6, align 4
  %169 = and i32 %167, %168
  %170 = load i32, i32* @MLX4_MAC_MASK, align 4
  %171 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %172 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %171, i32 0, i32 5
  %173 = load i8**, i8*** %172, align 8
  %174 = load i32, i32* %19, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %173, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @be64_to_cpu(i8* %177)
  %179 = and i32 %170, %178
  %180 = icmp eq i32 %169, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %166, %157
  %182 = load i32, i32* %19, align 4
  store i32 %182, i32* %12, align 4
  br label %184

183:                                              ; preds = %166
  store i32 0, i32* %17, align 4
  br label %184

184:                                              ; preds = %183, %181
  br label %185

185:                                              ; preds = %184, %154
  br label %186

186:                                              ; preds = %185, %81
  store i32 0, i32* %9, align 4
  br label %187

187:                                              ; preds = %287, %186
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* @MLX4_MAX_MAC_NUM, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %290

191:                                              ; preds = %187
  %192 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %193 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %227, label %200

200:                                              ; preds = %191
  %201 = load i32, i32* %11, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %200
  %204 = load i32, i32* %9, align 4
  store i32 %204, i32* %11, align 4
  br label %205

205:                                              ; preds = %203, %200
  %206 = load i32, i32* %12, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %226

208:                                              ; preds = %205
  %209 = load i32, i32* %16, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %226

211:                                              ; preds = %208
  %212 = load i32, i32* %17, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %226

214:                                              ; preds = %211
  %215 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %15, align 8
  %216 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %9, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %225, label %223

223:                                              ; preds = %214
  %224 = load i32, i32* %9, align 4
  store i32 %224, i32* %12, align 4
  br label %225

225:                                              ; preds = %223, %214
  br label %226

226:                                              ; preds = %225, %211, %208, %205
  br label %287

227:                                              ; preds = %191
  %228 = load i32, i32* @MLX4_MAC_MASK, align 4
  %229 = load i32, i32* %6, align 4
  %230 = and i32 %228, %229
  %231 = load i32, i32* @MLX4_MAC_MASK, align 4
  %232 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %233 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %232, i32 0, i32 5
  %234 = load i8**, i8*** %233, align 8
  %235 = load i32, i32* %9, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8*, i8** %234, i64 %236
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @be64_to_cpu(i8* %238)
  %240 = and i32 %231, %239
  %241 = icmp eq i32 %230, %240
  br i1 %241, label %242, label %286

242:                                              ; preds = %227
  %243 = load i32, i32* %9, align 4
  store i32 %243, i32* %10, align 4
  %244 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %245 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %9, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %249, align 4
  %252 = load i32, i32* %13, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %285

254:                                              ; preds = %242
  %255 = load i32, i32* @MLX4_MAC_MASK, align 4
  %256 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %15, align 8
  %257 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %256, i32 0, i32 5
  %258 = load i8**, i8*** %257, align 8
  %259 = load i32, i32* %9, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8*, i8** %258, i64 %260
  %262 = load i8*, i8** %261, align 8
  %263 = call i32 @be64_to_cpu(i8* %262)
  %264 = and i32 %255, %263
  store i32 %264, i32* %20, align 4
  %265 = load i32, i32* %20, align 4
  %266 = load i32, i32* %6, align 4
  %267 = icmp ne i32 %265, %266
  br i1 %267, label %277, label %268

268:                                              ; preds = %254
  %269 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %15, align 8
  %270 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %269, i32 0, i32 1
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %9, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %284, label %277

277:                                              ; preds = %268, %254
  %278 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %279 = load i32, i32* %6, align 4
  %280 = sext i32 %279 to i64
  %281 = load i64, i64* %14, align 8
  %282 = load i32, i32* %9, align 4
  %283 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %278, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i64 %280, i64 %281, i32 %282)
  br label %284

284:                                              ; preds = %277, %268
  br label %285

285:                                              ; preds = %284, %242
  br label %433

286:                                              ; preds = %227
  br label %287

287:                                              ; preds = %286, %226
  %288 = load i32, i32* %9, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %9, align 4
  br label %187

290:                                              ; preds = %187
  %291 = load i32, i32* %16, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %305

293:                                              ; preds = %290
  %294 = load i32, i32* %12, align 4
  %295 = icmp slt i32 %294, 0
  br i1 %295, label %296, label %305

296:                                              ; preds = %293
  %297 = load i32, i32* %13, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %304

299:                                              ; preds = %296
  %300 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %301 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %300, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %302 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %303 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %302, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %304

304:                                              ; preds = %299, %296
  store i32 0, i32* %17, align 4
  br label %305

305:                                              ; preds = %304, %293, %290
  %306 = load i32, i32* %16, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %313

308:                                              ; preds = %305
  %309 = load i32, i32* %17, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %308
  %312 = load i32, i32* %12, align 4
  store i32 %312, i32* %11, align 4
  br label %313

313:                                              ; preds = %311, %308, %305
  %314 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %315 = load i32, i32* %11, align 4
  %316 = call i32 (%struct.mlx4_dev*, i8*, i32, ...) @mlx4_dbg(%struct.mlx4_dev* %314, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %315)
  %317 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %318 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %317, i32 0, i32 2
  %319 = load i64, i64* %318, align 8
  %320 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %321 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %320, i32 0, i32 3
  %322 = load i64, i64* %321, align 8
  %323 = icmp eq i64 %319, %322
  br i1 %323, label %324, label %327

324:                                              ; preds = %313
  %325 = load i32, i32* @ENOSPC, align 4
  %326 = sub nsw i32 0, %325
  store i32 %326, i32* %10, align 4
  br label %433

327:                                              ; preds = %313
  %328 = load i32, i32* %6, align 4
  %329 = load i32, i32* @MLX4_MAC_VALID, align 4
  %330 = or i32 %328, %329
  %331 = call i8* @cpu_to_be64(i32 %330)
  %332 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %333 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %332, i32 0, i32 5
  %334 = load i8**, i8*** %333, align 8
  %335 = load i32, i32* %11, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i8*, i8** %334, i64 %336
  store i8* %331, i8** %337, align 8
  %338 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %339 = load i64, i64* %5, align 8
  %340 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %341 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %340, i32 0, i32 5
  %342 = load i8**, i8*** %341, align 8
  %343 = call i32 @mlx4_set_port_mac_table(%struct.mlx4_dev* %338, i64 %339, i8** %342)
  store i32 %343, i32* %10, align 4
  %344 = load i32, i32* %10, align 4
  %345 = call i64 @unlikely(i32 %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %358

347:                                              ; preds = %327
  %348 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %349 = load i32, i32* %6, align 4
  %350 = sext i32 %349 to i64
  %351 = call i32 @mlx4_err(%struct.mlx4_dev* %348, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i64 %350)
  %352 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %353 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %352, i32 0, i32 5
  %354 = load i8**, i8*** %353, align 8
  %355 = load i32, i32* %11, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8*, i8** %354, i64 %356
  store i8* null, i8** %357, align 8
  br label %433

358:                                              ; preds = %327
  %359 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %360 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %359, i32 0, i32 0
  %361 = load i32*, i32** %360, align 8
  %362 = load i32, i32* %11, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  store i32 1, i32* %364, align 4
  %365 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %366 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %365, i32 0, i32 1
  %367 = load i32*, i32** %366, align 8
  %368 = load i32, i32* %11, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %367, i64 %369
  store i32 0, i32* %370, align 4
  %371 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %372 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %371, i32 0, i32 2
  %373 = load i64, i64* %372, align 8
  %374 = add nsw i64 %373, 1
  store i64 %374, i64* %372, align 8
  %375 = load i32, i32* %13, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %431

377:                                              ; preds = %358
  %378 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %15, align 8
  %379 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %378, i32 0, i32 0
  %380 = load i32*, i32** %379, align 8
  %381 = load i32, i32* %11, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i32, i32* %380, i64 %382
  store i32 0, i32* %383, align 4
  %384 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %15, align 8
  %385 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %384, i32 0, i32 1
  %386 = load i32*, i32** %385, align 8
  %387 = load i32, i32* %11, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %386, i64 %388
  store i32 1, i32* %389, align 4
  %390 = load i32, i32* %6, align 4
  %391 = load i32, i32* @MLX4_MAC_VALID, align 4
  %392 = or i32 %390, %391
  %393 = call i8* @cpu_to_be64(i32 %392)
  %394 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %15, align 8
  %395 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %394, i32 0, i32 5
  %396 = load i8**, i8*** %395, align 8
  %397 = load i32, i32* %11, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i8*, i8** %396, i64 %398
  store i8* %393, i8** %399, align 8
  %400 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %401 = load i64, i64* %14, align 8
  %402 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %15, align 8
  %403 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %402, i32 0, i32 5
  %404 = load i8**, i8*** %403, align 8
  %405 = call i32 @mlx4_set_port_mac_table(%struct.mlx4_dev* %400, i64 %401, i8** %404)
  store i32 %405, i32* %10, align 4
  %406 = load i32, i32* %10, align 4
  %407 = call i64 @unlikely(i32 %406)
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %426

409:                                              ; preds = %377
  %410 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %411 = load i32, i32* %6, align 4
  %412 = sext i32 %411 to i64
  %413 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %410, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i64 %412)
  %414 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %15, align 8
  %415 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %414, i32 0, i32 1
  %416 = load i32*, i32** %415, align 8
  %417 = load i32, i32* %11, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %416, i64 %418
  store i32 0, i32* %419, align 4
  %420 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %15, align 8
  %421 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %420, i32 0, i32 5
  %422 = load i8**, i8*** %421, align 8
  %423 = load i32, i32* %11, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i8*, i8** %422, i64 %424
  store i8* null, i8** %425, align 8
  br label %433

426:                                              ; preds = %377
  %427 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %15, align 8
  %428 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %427, i32 0, i32 2
  %429 = load i64, i64* %428, align 8
  %430 = add nsw i64 %429, 1
  store i64 %430, i64* %428, align 8
  br label %431

431:                                              ; preds = %426, %358
  %432 = load i32, i32* %11, align 4
  store i32 %432, i32* %10, align 4
  br label %433

433:                                              ; preds = %431, %409, %347, %324, %285
  %434 = load i32, i32* %16, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %454

436:                                              ; preds = %433
  %437 = load i64, i64* %5, align 8
  %438 = icmp eq i64 %437, 2
  br i1 %438, label %439, label %446

439:                                              ; preds = %436
  %440 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %441 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %440, i32 0, i32 4
  %442 = call i32 @mutex_unlock(i32* %441)
  %443 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %15, align 8
  %444 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %443, i32 0, i32 4
  %445 = call i32 @mutex_unlock(i32* %444)
  br label %453

446:                                              ; preds = %436
  %447 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %15, align 8
  %448 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %447, i32 0, i32 4
  %449 = call i32 @mutex_unlock(i32* %448)
  %450 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %451 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %450, i32 0, i32 4
  %452 = call i32 @mutex_unlock(i32* %451)
  br label %453

453:                                              ; preds = %446, %439
  br label %458

454:                                              ; preds = %433
  %455 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %456 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %455, i32 0, i32 4
  %457 = call i32 @mutex_unlock(i32* %456)
  br label %458

458:                                              ; preds = %454, %453
  %459 = load i32, i32* %10, align 4
  ret i32 %459
}

declare dso_local %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_is_mf_bonded(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_need_mf_bond(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, i32, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @be64_to_cpu(i8*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @mlx4_set_port_mac_table(%struct.mlx4_dev*, i64, i8**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
