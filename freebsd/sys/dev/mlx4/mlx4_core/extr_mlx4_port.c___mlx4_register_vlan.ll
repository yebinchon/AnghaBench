; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_port.c___mlx4_register_vlan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_port.c___mlx4_register_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vlan_table = type { i64, i64, i32*, i32*, i32, i8** }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mlx4_vlan_table }

@.str = private unnamed_addr constant [47 x i8] c"Registering VLAN: %d for port %d %s duplicate\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"without\00", align 1
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@MLX4_VLAN_REGULAR = common dso_local global i32 0, align 4
@MLX4_MAX_VLAN_NUM = common dso_local global i32 0, align 4
@MLX4_VLAN_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"vlan %u is already registered.\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"register vlan: expected duplicate vlan %u on port %d index %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Fail to allocate duplicate VLAN table entry\0A\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"High Availability for virtual functions may not work as expected\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_VLAN_VALID = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"Failed adding vlan: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Failed adding duplicate vlan: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mlx4_register_vlan(%struct.mlx4_dev* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mlx4_vlan_table*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.mlx4_vlan_table*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %23 = call %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store %struct.mlx4_vlan_table* %28, %struct.mlx4_vlan_table** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  %29 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %30 = call i32 @mlx4_is_mf_bonded(%struct.mlx4_dev* %29)
  store i32 %30, i32* %14, align 4
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %31, 1
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 2, i32 1
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %15, align 8
  %36 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %37 = call %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i64, i64* %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store %struct.mlx4_vlan_table* %42, %struct.mlx4_vlan_table** %16, align 8
  %43 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %44 = call i32 @mlx4_need_mf_bond(%struct.mlx4_dev* %43)
  store i32 %44, i32* %17, align 4
  store i32 1, i32* %18, align 4
  %45 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i64, i64* %6, align 8
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %52 = call i32 (%struct.mlx4_dev*, i8*, i32, ...) @mlx4_dbg(%struct.mlx4_dev* %45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %46, i64 %47, i8* %51)
  %53 = load i32, i32* %17, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %4
  %56 = load i64, i64* %6, align 8
  %57 = icmp eq i64 %56, 1
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %60 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %59, i32 0, i32 4
  %61 = call i32 @mutex_lock(i32* %60)
  %62 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %16, align 8
  %63 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %62, i32 0, i32 4
  %64 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %65 = call i32 @mutex_lock_nested(i32* %63, i32 %64)
  br label %74

66:                                               ; preds = %55
  %67 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %16, align 8
  %68 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %67, i32 0, i32 4
  %69 = call i32 @mutex_lock(i32* %68)
  %70 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %71 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %70, i32 0, i32 4
  %72 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %73 = call i32 @mutex_lock_nested(i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %66, %58
  br label %79

75:                                               ; preds = %4
  %76 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %77 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %76, i32 0, i32 4
  %78 = call i32 @mutex_lock(i32* %77)
  br label %79

79:                                               ; preds = %75, %74
  %80 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %81 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %84 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %82, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i32, i32* @ENOSPC, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %11, align 4
  br label %454

90:                                               ; preds = %79
  %91 = load i32, i32* %17, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %190

93:                                               ; preds = %90
  store i32 -1, i32* %19, align 4
  store i32 -1, i32* %20, align 4
  %94 = load i32, i32* @MLX4_VLAN_REGULAR, align 4
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %130, %93
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @MLX4_MAX_VLAN_NUM, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %133

99:                                               ; preds = %95
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @MLX4_VLAN_MASK, align 4
  %102 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %103 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %102, i32 0, i32 5
  %104 = load i8**, i8*** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @be32_to_cpu(i8* %108)
  %110 = and i32 %101, %109
  %111 = icmp eq i32 %100, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %99
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %19, align 4
  br label %114

114:                                              ; preds = %112, %99
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @MLX4_VLAN_MASK, align 4
  %117 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %16, align 8
  %118 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %117, i32 0, i32 5
  %119 = load i8**, i8*** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @be32_to_cpu(i8* %123)
  %125 = and i32 %116, %124
  %126 = icmp eq i32 %115, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %114
  %128 = load i32, i32* %10, align 4
  store i32 %128, i32* %20, align 4
  br label %129

129:                                              ; preds = %127, %114
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  br label %95

133:                                              ; preds = %95
  %134 = load i32, i32* %19, align 4
  %135 = load i32, i32* %20, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %133
  %138 = load i32, i32* %19, align 4
  %139 = icmp sge i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i32, i32* %20, align 4
  %142 = icmp sge i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i32 0, i32* %18, align 4
  br label %144

144:                                              ; preds = %143, %140, %137, %133
  %145 = load i32, i32* %19, align 4
  %146 = icmp sge i32 %145, 0
  br i1 %146, label %147, label %160

147:                                              ; preds = %144
  %148 = load i32, i32* %20, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %147
  %151 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %16, align 8
  %152 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %19, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %150
  store i32 0, i32* %18, align 4
  br label %160

160:                                              ; preds = %159, %150, %147, %144
  %161 = load i32, i32* %20, align 4
  %162 = icmp sge i32 %161, 0
  br i1 %162, label %163, label %189

163:                                              ; preds = %160
  %164 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %165 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %20, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %163
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @MLX4_VLAN_MASK, align 4
  %175 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %16, align 8
  %176 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %175, i32 0, i32 5
  %177 = load i8**, i8*** %176, align 8
  %178 = load i32, i32* %20, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %177, i64 %179
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @be32_to_cpu(i8* %181)
  %183 = and i32 %174, %182
  %184 = icmp eq i32 %173, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %172, %163
  %186 = load i32, i32* %20, align 4
  store i32 %186, i32* %13, align 4
  br label %188

187:                                              ; preds = %172
  store i32 0, i32* %18, align 4
  br label %188

188:                                              ; preds = %187, %185
  br label %189

189:                                              ; preds = %188, %160
  br label %190

190:                                              ; preds = %189, %90
  %191 = load i32, i32* @MLX4_VLAN_REGULAR, align 4
  store i32 %191, i32* %10, align 4
  br label %192

192:                                              ; preds = %311, %190
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* @MLX4_MAX_VLAN_NUM, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %314

196:                                              ; preds = %192
  %197 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %198 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %197, i32 0, i32 2
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %232, label %205

205:                                              ; preds = %196
  %206 = load i32, i32* %12, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %205
  %209 = load i32, i32* %10, align 4
  store i32 %209, i32* %12, align 4
  br label %210

210:                                              ; preds = %208, %205
  %211 = load i32, i32* %13, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %231

213:                                              ; preds = %210
  %214 = load i32, i32* %17, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %231

216:                                              ; preds = %213
  %217 = load i32, i32* %18, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %231

219:                                              ; preds = %216
  %220 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %16, align 8
  %221 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %220, i32 0, i32 2
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %10, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %219
  %229 = load i32, i32* %10, align 4
  store i32 %229, i32* %13, align 4
  br label %230

230:                                              ; preds = %228, %219
  br label %231

231:                                              ; preds = %230, %216, %213, %210
  br label %232

232:                                              ; preds = %231, %196
  %233 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %234 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %233, i32 0, i32 2
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %10, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %250, label %241

241:                                              ; preds = %232
  %242 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %243 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %242, i32 0, i32 3
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %10, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %310

250:                                              ; preds = %241, %232
  %251 = load i32, i32* %7, align 4
  %252 = load i32, i32* @MLX4_VLAN_MASK, align 4
  %253 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %254 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %253, i32 0, i32 5
  %255 = load i8**, i8*** %254, align 8
  %256 = load i32, i32* %10, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8*, i8** %255, i64 %257
  %259 = load i8*, i8** %258, align 8
  %260 = call i32 @be32_to_cpu(i8* %259)
  %261 = and i32 %252, %260
  %262 = icmp eq i32 %251, %261
  br i1 %262, label %263, label %310

263:                                              ; preds = %250
  %264 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %265 = load i32, i32* %7, align 4
  %266 = call i32 (%struct.mlx4_dev*, i8*, i32, ...) @mlx4_dbg(%struct.mlx4_dev* %264, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %265)
  %267 = load i32, i32* %10, align 4
  %268 = load i32*, i32** %8, align 8
  store i32 %267, i32* %268, align 4
  %269 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %270 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %269, i32 0, i32 2
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %10, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %274, align 4
  %277 = load i32, i32* %14, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %309

279:                                              ; preds = %263
  %280 = load i32, i32* @MLX4_VLAN_MASK, align 4
  %281 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %16, align 8
  %282 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %281, i32 0, i32 5
  %283 = load i8**, i8*** %282, align 8
  %284 = load i32, i32* %10, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8*, i8** %283, i64 %285
  %287 = load i8*, i8** %286, align 8
  %288 = call i32 @be32_to_cpu(i8* %287)
  %289 = and i32 %280, %288
  store i32 %289, i32* %21, align 4
  %290 = load i32, i32* %21, align 4
  %291 = load i32, i32* %7, align 4
  %292 = icmp ne i32 %290, %291
  br i1 %292, label %302, label %293

293:                                              ; preds = %279
  %294 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %16, align 8
  %295 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %294, i32 0, i32 3
  %296 = load i32*, i32** %295, align 8
  %297 = load i32, i32* %10, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %308, label %302

302:                                              ; preds = %293, %279
  %303 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %304 = load i32, i32* %7, align 4
  %305 = load i64, i64* %15, align 8
  %306 = load i32, i32* %10, align 4
  %307 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %303, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 %304, i64 %305, i32 %306)
  br label %308

308:                                              ; preds = %302, %293
  br label %309

309:                                              ; preds = %308, %263
  br label %454

310:                                              ; preds = %250, %241
  br label %311

311:                                              ; preds = %310
  %312 = load i32, i32* %10, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %10, align 4
  br label %192

314:                                              ; preds = %192
  %315 = load i32, i32* %17, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %329

317:                                              ; preds = %314
  %318 = load i32, i32* %13, align 4
  %319 = icmp slt i32 %318, 0
  br i1 %319, label %320, label %329

320:                                              ; preds = %317
  %321 = load i32, i32* %14, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %328

323:                                              ; preds = %320
  %324 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %325 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %324, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %326 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %327 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %326, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %328

328:                                              ; preds = %323, %320
  store i32 0, i32* %18, align 4
  br label %329

329:                                              ; preds = %328, %317, %314
  %330 = load i32, i32* %17, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %337

332:                                              ; preds = %329
  %333 = load i32, i32* %18, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %337

335:                                              ; preds = %332
  %336 = load i32, i32* %13, align 4
  store i32 %336, i32* %12, align 4
  br label %337

337:                                              ; preds = %335, %332, %329
  %338 = load i32, i32* %12, align 4
  %339 = icmp slt i32 %338, 0
  br i1 %339, label %340, label %343

340:                                              ; preds = %337
  %341 = load i32, i32* @ENOMEM, align 4
  %342 = sub nsw i32 0, %341
  store i32 %342, i32* %11, align 4
  br label %454

343:                                              ; preds = %337
  %344 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %345 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %344, i32 0, i32 2
  %346 = load i32*, i32** %345, align 8
  %347 = load i32, i32* %12, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %346, i64 %348
  store i32 1, i32* %349, align 4
  %350 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %351 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %350, i32 0, i32 3
  %352 = load i32*, i32** %351, align 8
  %353 = load i32, i32* %12, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  store i32 0, i32* %355, align 4
  %356 = load i32, i32* %7, align 4
  %357 = load i32, i32* @MLX4_VLAN_VALID, align 4
  %358 = or i32 %356, %357
  %359 = call i8* @cpu_to_be32(i32 %358)
  %360 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %361 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %360, i32 0, i32 5
  %362 = load i8**, i8*** %361, align 8
  %363 = load i32, i32* %12, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i8*, i8** %362, i64 %364
  store i8* %359, i8** %365, align 8
  %366 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %367 = load i64, i64* %6, align 8
  %368 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %369 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %368, i32 0, i32 5
  %370 = load i8**, i8*** %369, align 8
  %371 = call i32 @mlx4_set_port_vlan_table(%struct.mlx4_dev* %366, i64 %367, i8** %370)
  store i32 %371, i32* %11, align 4
  %372 = load i32, i32* %11, align 4
  %373 = call i64 @unlikely(i32 %372)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %391

375:                                              ; preds = %343
  %376 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %377 = load i32, i32* %7, align 4
  %378 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %376, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %377)
  %379 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %380 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %379, i32 0, i32 2
  %381 = load i32*, i32** %380, align 8
  %382 = load i32, i32* %12, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  store i32 0, i32* %384, align 4
  %385 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %386 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %385, i32 0, i32 5
  %387 = load i8**, i8*** %386, align 8
  %388 = load i32, i32* %12, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i8*, i8** %387, i64 %389
  store i8* null, i8** %390, align 8
  br label %454

391:                                              ; preds = %343
  %392 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %393 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = add nsw i64 %394, 1
  store i64 %395, i64* %393, align 8
  %396 = load i32, i32* %14, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %451

398:                                              ; preds = %391
  %399 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %16, align 8
  %400 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %399, i32 0, i32 2
  %401 = load i32*, i32** %400, align 8
  %402 = load i32, i32* %12, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %401, i64 %403
  store i32 0, i32* %404, align 4
  %405 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %16, align 8
  %406 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %405, i32 0, i32 3
  %407 = load i32*, i32** %406, align 8
  %408 = load i32, i32* %12, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %407, i64 %409
  store i32 1, i32* %410, align 4
  %411 = load i32, i32* %7, align 4
  %412 = load i32, i32* @MLX4_VLAN_VALID, align 4
  %413 = or i32 %411, %412
  %414 = call i8* @cpu_to_be32(i32 %413)
  %415 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %16, align 8
  %416 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %415, i32 0, i32 5
  %417 = load i8**, i8*** %416, align 8
  %418 = load i32, i32* %12, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i8*, i8** %417, i64 %419
  store i8* %414, i8** %420, align 8
  %421 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %422 = load i64, i64* %15, align 8
  %423 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %16, align 8
  %424 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %423, i32 0, i32 5
  %425 = load i8**, i8*** %424, align 8
  %426 = call i32 @mlx4_set_port_vlan_table(%struct.mlx4_dev* %421, i64 %422, i8** %425)
  store i32 %426, i32* %11, align 4
  %427 = load i32, i32* %11, align 4
  %428 = call i64 @unlikely(i32 %427)
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %446

430:                                              ; preds = %398
  %431 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %432 = load i32, i32* %7, align 4
  %433 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %431, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %432)
  %434 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %16, align 8
  %435 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %434, i32 0, i32 3
  %436 = load i32*, i32** %435, align 8
  %437 = load i32, i32* %12, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %436, i64 %438
  store i32 0, i32* %439, align 4
  %440 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %16, align 8
  %441 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %440, i32 0, i32 5
  %442 = load i8**, i8*** %441, align 8
  %443 = load i32, i32* %12, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i8*, i8** %442, i64 %444
  store i8* null, i8** %445, align 8
  br label %454

446:                                              ; preds = %398
  %447 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %16, align 8
  %448 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %447, i32 0, i32 0
  %449 = load i64, i64* %448, align 8
  %450 = add nsw i64 %449, 1
  store i64 %450, i64* %448, align 8
  br label %451

451:                                              ; preds = %446, %391
  %452 = load i32, i32* %12, align 4
  %453 = load i32*, i32** %8, align 8
  store i32 %452, i32* %453, align 4
  br label %454

454:                                              ; preds = %451, %430, %375, %340, %309, %87
  %455 = load i32, i32* %17, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %475

457:                                              ; preds = %454
  %458 = load i64, i64* %6, align 8
  %459 = icmp eq i64 %458, 2
  br i1 %459, label %460, label %467

460:                                              ; preds = %457
  %461 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %462 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %461, i32 0, i32 4
  %463 = call i32 @mutex_unlock(i32* %462)
  %464 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %16, align 8
  %465 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %464, i32 0, i32 4
  %466 = call i32 @mutex_unlock(i32* %465)
  br label %474

467:                                              ; preds = %457
  %468 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %16, align 8
  %469 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %468, i32 0, i32 4
  %470 = call i32 @mutex_unlock(i32* %469)
  %471 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %472 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %471, i32 0, i32 4
  %473 = call i32 @mutex_unlock(i32* %472)
  br label %474

474:                                              ; preds = %467, %460
  br label %479

475:                                              ; preds = %454
  %476 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %477 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %476, i32 0, i32 4
  %478 = call i32 @mutex_unlock(i32* %477)
  br label %479

479:                                              ; preds = %475, %474
  %480 = load i32, i32* %11, align 4
  ret i32 %480
}

declare dso_local %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_is_mf_bonded(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_need_mf_bond(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, i32, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i8*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @mlx4_set_port_vlan_table(%struct.mlx4_dev*, i64, i8**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
