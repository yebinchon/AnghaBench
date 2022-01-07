; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32, %struct.mount* }
%struct.mount = type { i32 }
%struct.vop_lock1_args = type { i32, %struct.vnode* }
%struct.unionfs_mount = type { %struct.vnode* }
%struct.unionfs_node = type { %struct.vnode*, %struct.vnode* }

@LK_RELEASE = common dso_local global i32 0, align 4
@LK_TYPE_MASK = common dso_local global i32 0, align 4
@LK_INTERLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unknown lock type: 0x%x\00", align 1
@VI_OWEINACT = common dso_local global i32 0, align 4
@LK_NOWAIT = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_CANRECURSE = common dso_local global i32 0, align 4
@NULLVP = common dso_local global %struct.vnode* null, align 8
@LK_UPGRADE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MTX_DUPOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_lock1_args*)* @unionfs_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_lock(%struct.vop_lock1_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_lock1_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mount*, align 8
  %10 = alloca %struct.unionfs_mount*, align 8
  %11 = alloca %struct.unionfs_node*, align 8
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca %struct.vnode*, align 8
  %14 = alloca %struct.vnode*, align 8
  store %struct.vop_lock1_args* %0, %struct.vop_lock1_args** %3, align 8
  %15 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %3, align 8
  %16 = getelementptr inbounds %struct.vop_lock1_args, %struct.vop_lock1_args* %15, i32 0, i32 1
  %17 = load %struct.vnode*, %struct.vnode** %16, align 8
  %18 = call i32 @KASSERT_UNIONFS_VNODE(%struct.vnode* %17)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %19 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %3, align 8
  %20 = getelementptr inbounds %struct.vop_lock1_args, %struct.vop_lock1_args* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %5, align 4
  %22 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %3, align 8
  %23 = getelementptr inbounds %struct.vop_lock1_args, %struct.vop_lock1_args* %22, i32 0, i32 1
  %24 = load %struct.vnode*, %struct.vnode** %23, align 8
  store %struct.vnode* %24, %struct.vnode** %12, align 8
  %25 = load i32, i32* @LK_RELEASE, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @LK_TYPE_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @LK_TYPE_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30, %1
  %36 = load %struct.vnode*, %struct.vnode** %12, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @LK_RELEASE, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @VOP_UNLOCK(%struct.vnode* %36, i32 %39)
  store i32 %40, i32* %2, align 4
  br label %310

41:                                               ; preds = %30
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @LK_INTERLOCK, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.vnode*, %struct.vnode** %12, align 8
  %48 = call i32 @VI_LOCK(%struct.vnode* %47)
  br label %49

49:                                               ; preds = %46, %41
  %50 = load %struct.vnode*, %struct.vnode** %12, align 8
  %51 = getelementptr inbounds %struct.vnode, %struct.vnode* %50, i32 0, i32 1
  %52 = load %struct.mount*, %struct.mount** %51, align 8
  store %struct.mount* %52, %struct.mount** %9, align 8
  %53 = load %struct.mount*, %struct.mount** %9, align 8
  %54 = icmp eq %struct.mount* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %302

56:                                               ; preds = %49
  %57 = load %struct.mount*, %struct.mount** %9, align 8
  %58 = call %struct.unionfs_mount* @MOUNTTOUNIONFSMOUNT(%struct.mount* %57)
  store %struct.unionfs_mount* %58, %struct.unionfs_mount** %10, align 8
  %59 = load %struct.vnode*, %struct.vnode** %12, align 8
  %60 = call %struct.unionfs_node* @VTOUNIONFS(%struct.vnode* %59)
  store %struct.unionfs_node* %60, %struct.unionfs_node** %11, align 8
  %61 = load %struct.unionfs_mount*, %struct.unionfs_mount** %10, align 8
  %62 = icmp eq %struct.unionfs_mount* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = load %struct.unionfs_node*, %struct.unionfs_node** %11, align 8
  %65 = icmp eq %struct.unionfs_node* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %63, %56
  br label %302

67:                                               ; preds = %63
  %68 = load %struct.unionfs_node*, %struct.unionfs_node** %11, align 8
  %69 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %68, i32 0, i32 1
  %70 = load %struct.vnode*, %struct.vnode** %69, align 8
  store %struct.vnode* %70, %struct.vnode** %14, align 8
  %71 = load %struct.unionfs_node*, %struct.unionfs_node** %11, align 8
  %72 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %71, i32 0, i32 0
  %73 = load %struct.vnode*, %struct.vnode** %72, align 8
  store %struct.vnode* %73, %struct.vnode** %13, align 8
  %74 = load %struct.vnode*, %struct.vnode** %12, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @unionfs_get_llt_revlock(%struct.vnode* %74, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %67
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @LK_TYPE_MASK, align 4
  %81 = and i32 %79, %80
  %82 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %78, %67
  %84 = load %struct.vnode*, %struct.vnode** %12, align 8
  %85 = getelementptr inbounds %struct.vnode, %struct.vnode* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @VI_OWEINACT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load i32, i32* @LK_NOWAIT, align 4
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %90, %83
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @LK_TYPE_MASK, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* @LK_EXCLUSIVE, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %94
  %101 = load %struct.vnode*, %struct.vnode** %12, align 8
  %102 = load %struct.unionfs_mount*, %struct.unionfs_mount** %10, align 8
  %103 = getelementptr inbounds %struct.unionfs_mount, %struct.unionfs_mount* %102, i32 0, i32 0
  %104 = load %struct.vnode*, %struct.vnode** %103, align 8
  %105 = icmp eq %struct.vnode* %101, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load i32, i32* @LK_CANRECURSE, align 4
  %108 = load i32, i32* %5, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %106, %100, %94
  %111 = load %struct.vnode*, %struct.vnode** %14, align 8
  %112 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %113 = icmp ne %struct.vnode* %111, %112
  br i1 %113, label %114, label %190

114:                                              ; preds = %110
  %115 = load %struct.vnode*, %struct.vnode** %13, align 8
  %116 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %117 = icmp ne %struct.vnode* %115, %116
  br i1 %117, label %118, label %143

118:                                              ; preds = %114
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @LK_UPGRADE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %143

123:                                              ; preds = %118
  %124 = load %struct.vnode*, %struct.vnode** %13, align 8
  %125 = call i32 @vholdnz(%struct.vnode* %124)
  store i32 1, i32* %8, align 4
  %126 = load %struct.vnode*, %struct.vnode** %13, align 8
  %127 = load i32, i32* @LK_RELEASE, align 4
  %128 = call i32 @VOP_UNLOCK(%struct.vnode* %126, i32 %127)
  %129 = load %struct.vnode*, %struct.vnode** %12, align 8
  %130 = call %struct.unionfs_node* @VTOUNIONFS(%struct.vnode* %129)
  store %struct.unionfs_node* %130, %struct.unionfs_node** %11, align 8
  %131 = load %struct.unionfs_node*, %struct.unionfs_node** %11, align 8
  %132 = icmp eq %struct.unionfs_node* %131, null
  br i1 %132, label %133, label %142

133:                                              ; preds = %123
  %134 = load %struct.vnode*, %struct.vnode** %12, align 8
  %135 = call i32 @VI_UNLOCK(%struct.vnode* %134)
  %136 = load %struct.vnode*, %struct.vnode** %14, align 8
  %137 = load i32, i32* @LK_RELEASE, align 4
  %138 = call i32 @VOP_UNLOCK(%struct.vnode* %136, i32 %137)
  %139 = load %struct.vnode*, %struct.vnode** %13, align 8
  %140 = call i32 @vdrop(%struct.vnode* %139)
  %141 = load i32, i32* @EBUSY, align 4
  store i32 %141, i32* %2, align 4
  br label %310

142:                                              ; preds = %123
  br label %143

143:                                              ; preds = %142, %118, %114
  %144 = load %struct.vnode*, %struct.vnode** %14, align 8
  %145 = load i32, i32* @MTX_DUPOK, align 4
  %146 = call i32 @VI_LOCK_FLAGS(%struct.vnode* %144, i32 %145)
  %147 = load i32, i32* @LK_INTERLOCK, align 4
  %148 = load i32, i32* %5, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %5, align 4
  %150 = load %struct.vnode*, %struct.vnode** %14, align 8
  %151 = call i32 @vholdl(%struct.vnode* %150)
  %152 = load %struct.vnode*, %struct.vnode** %12, align 8
  %153 = call i32 @VI_UNLOCK(%struct.vnode* %152)
  %154 = load i32, i32* @LK_INTERLOCK, align 4
  %155 = xor i32 %154, -1
  %156 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %3, align 8
  %157 = getelementptr inbounds %struct.vop_lock1_args, %struct.vop_lock1_args* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = and i32 %158, %155
  store i32 %159, i32* %157, align 8
  %160 = load %struct.vnode*, %struct.vnode** %14, align 8
  %161 = load i32, i32* %5, align 4
  %162 = call i32 @VOP_LOCK(%struct.vnode* %160, i32 %161)
  store i32 %162, i32* %4, align 4
  %163 = load %struct.vnode*, %struct.vnode** %12, align 8
  %164 = call i32 @VI_LOCK(%struct.vnode* %163)
  %165 = load %struct.vnode*, %struct.vnode** %12, align 8
  %166 = call %struct.unionfs_node* @VTOUNIONFS(%struct.vnode* %165)
  store %struct.unionfs_node* %166, %struct.unionfs_node** %11, align 8
  %167 = load %struct.unionfs_node*, %struct.unionfs_node** %11, align 8
  %168 = icmp eq %struct.unionfs_node* %167, null
  br i1 %168, label %169, label %189

169:                                              ; preds = %143
  %170 = load %struct.vnode*, %struct.vnode** %12, align 8
  %171 = call i32 @VI_UNLOCK(%struct.vnode* %170)
  %172 = load i32, i32* %4, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %169
  %175 = load %struct.vnode*, %struct.vnode** %14, align 8
  %176 = load i32, i32* @LK_RELEASE, align 4
  %177 = call i32 @VOP_UNLOCK(%struct.vnode* %175, i32 %176)
  br label %178

178:                                              ; preds = %174, %169
  %179 = load %struct.vnode*, %struct.vnode** %14, align 8
  %180 = call i32 @vdrop(%struct.vnode* %179)
  %181 = load i32, i32* %8, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load %struct.vnode*, %struct.vnode** %13, align 8
  %185 = call i32 @vdrop(%struct.vnode* %184)
  br label %186

186:                                              ; preds = %183, %178
  %187 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %3, align 8
  %188 = call i32 @vop_stdlock(%struct.vop_lock1_args* %187)
  store i32 %188, i32* %2, align 4
  br label %310

189:                                              ; preds = %143
  br label %190

190:                                              ; preds = %189, %110
  %191 = load i32, i32* %4, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %281

193:                                              ; preds = %190
  %194 = load %struct.vnode*, %struct.vnode** %13, align 8
  %195 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %196 = icmp ne %struct.vnode* %194, %195
  br i1 %196, label %197, label %281

197:                                              ; preds = %193
  %198 = load i32, i32* %8, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %213

200:                                              ; preds = %197
  %201 = load i32, i32* %5, align 4
  %202 = load i32, i32* @LK_UPGRADE, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %200
  %206 = load i32, i32* @LK_TYPE_MASK, align 4
  %207 = xor i32 %206, -1
  %208 = load i32, i32* %5, align 4
  %209 = and i32 %208, %207
  store i32 %209, i32* %5, align 4
  %210 = load i32, i32* @LK_EXCLUSIVE, align 4
  %211 = load i32, i32* %5, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %5, align 4
  br label %213

213:                                              ; preds = %205, %200, %197
  %214 = load %struct.vnode*, %struct.vnode** %13, align 8
  %215 = load i32, i32* @MTX_DUPOK, align 4
  %216 = call i32 @VI_LOCK_FLAGS(%struct.vnode* %214, i32 %215)
  %217 = load i32, i32* @LK_INTERLOCK, align 4
  %218 = load i32, i32* %5, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %5, align 4
  %220 = load i32, i32* %8, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %213
  %223 = load %struct.vnode*, %struct.vnode** %13, align 8
  %224 = call i32 @vholdl(%struct.vnode* %223)
  store i32 1, i32* %8, align 4
  br label %225

225:                                              ; preds = %222, %213
  %226 = load %struct.vnode*, %struct.vnode** %12, align 8
  %227 = call i32 @VI_UNLOCK(%struct.vnode* %226)
  %228 = load i32, i32* @LK_INTERLOCK, align 4
  %229 = xor i32 %228, -1
  %230 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %3, align 8
  %231 = getelementptr inbounds %struct.vop_lock1_args, %struct.vop_lock1_args* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = and i32 %232, %229
  store i32 %233, i32* %231, align 8
  %234 = load %struct.vnode*, %struct.vnode** %13, align 8
  %235 = load i32, i32* %5, align 4
  %236 = call i32 @VOP_LOCK(%struct.vnode* %234, i32 %235)
  store i32 %236, i32* %4, align 4
  %237 = load %struct.vnode*, %struct.vnode** %12, align 8
  %238 = call i32 @VI_LOCK(%struct.vnode* %237)
  %239 = load %struct.vnode*, %struct.vnode** %12, align 8
  %240 = call %struct.unionfs_node* @VTOUNIONFS(%struct.vnode* %239)
  store %struct.unionfs_node* %240, %struct.unionfs_node** %11, align 8
  %241 = load %struct.unionfs_node*, %struct.unionfs_node** %11, align 8
  %242 = icmp eq %struct.unionfs_node* %241, null
  br i1 %242, label %243, label %267

243:                                              ; preds = %225
  %244 = load %struct.vnode*, %struct.vnode** %12, align 8
  %245 = call i32 @VI_UNLOCK(%struct.vnode* %244)
  %246 = load i32, i32* %4, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %243
  %249 = load %struct.vnode*, %struct.vnode** %13, align 8
  %250 = load i32, i32* @LK_RELEASE, align 4
  %251 = call i32 @VOP_UNLOCK(%struct.vnode* %249, i32 %250)
  br label %252

252:                                              ; preds = %248, %243
  %253 = load %struct.vnode*, %struct.vnode** %13, align 8
  %254 = call i32 @vdrop(%struct.vnode* %253)
  %255 = load %struct.vnode*, %struct.vnode** %14, align 8
  %256 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %257 = icmp ne %struct.vnode* %255, %256
  br i1 %257, label %258, label %264

258:                                              ; preds = %252
  %259 = load %struct.vnode*, %struct.vnode** %14, align 8
  %260 = load i32, i32* @LK_RELEASE, align 4
  %261 = call i32 @VOP_UNLOCK(%struct.vnode* %259, i32 %260)
  %262 = load %struct.vnode*, %struct.vnode** %14, align 8
  %263 = call i32 @vdrop(%struct.vnode* %262)
  br label %264

264:                                              ; preds = %258, %252
  %265 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %3, align 8
  %266 = call i32 @vop_stdlock(%struct.vop_lock1_args* %265)
  store i32 %266, i32* %2, align 4
  br label %310

267:                                              ; preds = %225
  %268 = load i32, i32* %4, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %280

270:                                              ; preds = %267
  %271 = load %struct.vnode*, %struct.vnode** %14, align 8
  %272 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %273 = icmp ne %struct.vnode* %271, %272
  br i1 %273, label %274, label %280

274:                                              ; preds = %270
  %275 = load %struct.vnode*, %struct.vnode** %12, align 8
  %276 = call i32 @VI_UNLOCK(%struct.vnode* %275)
  %277 = load %struct.vnode*, %struct.vnode** %14, align 8
  %278 = load i32, i32* %6, align 4
  %279 = call i32 @unionfs_revlock(%struct.vnode* %277, i32 %278)
  store i32 0, i32* %7, align 4
  br label %280

280:                                              ; preds = %274, %270, %267
  br label %281

281:                                              ; preds = %280, %193, %190
  %282 = load i32, i32* %7, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %281
  %285 = load %struct.vnode*, %struct.vnode** %12, align 8
  %286 = call i32 @VI_UNLOCK(%struct.vnode* %285)
  br label %287

287:                                              ; preds = %284, %281
  %288 = load %struct.vnode*, %struct.vnode** %14, align 8
  %289 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %290 = icmp ne %struct.vnode* %288, %289
  br i1 %290, label %291, label %294

291:                                              ; preds = %287
  %292 = load %struct.vnode*, %struct.vnode** %14, align 8
  %293 = call i32 @vdrop(%struct.vnode* %292)
  br label %294

294:                                              ; preds = %291, %287
  %295 = load i32, i32* %8, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %294
  %298 = load %struct.vnode*, %struct.vnode** %13, align 8
  %299 = call i32 @vdrop(%struct.vnode* %298)
  br label %300

300:                                              ; preds = %297, %294
  %301 = load i32, i32* %4, align 4
  store i32 %301, i32* %2, align 4
  br label %310

302:                                              ; preds = %66, %55
  %303 = load i32, i32* @LK_INTERLOCK, align 4
  %304 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %3, align 8
  %305 = getelementptr inbounds %struct.vop_lock1_args, %struct.vop_lock1_args* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = or i32 %306, %303
  store i32 %307, i32* %305, align 8
  %308 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %3, align 8
  %309 = call i32 @vop_stdlock(%struct.vop_lock1_args* %308)
  store i32 %309, i32* %2, align 4
  br label %310

310:                                              ; preds = %302, %300, %264, %186, %133, %35
  %311 = load i32, i32* %2, align 4
  ret i32 %311
}

declare dso_local i32 @KASSERT_UNIONFS_VNODE(%struct.vnode*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local %struct.unionfs_mount* @MOUNTTOUNIONFSMOUNT(%struct.mount*) #1

declare dso_local %struct.unionfs_node* @VTOUNIONFS(%struct.vnode*) #1

declare dso_local i32 @unionfs_get_llt_revlock(%struct.vnode*, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @vholdnz(%struct.vnode*) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

declare dso_local i32 @vdrop(%struct.vnode*) #1

declare dso_local i32 @VI_LOCK_FLAGS(%struct.vnode*, i32) #1

declare dso_local i32 @vholdl(%struct.vnode*) #1

declare dso_local i32 @VOP_LOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vop_stdlock(%struct.vop_lock1_args*) #1

declare dso_local i32 @unionfs_revlock(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
