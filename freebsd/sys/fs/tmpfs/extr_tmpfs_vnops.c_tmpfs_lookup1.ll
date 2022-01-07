; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_lookup1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_lookup1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.componentname = type { i32, i32, i8*, i64, i32, i32, i32 }
%struct.tmpfs_dirent = type { %struct.tmpfs_node* }
%struct.tmpfs_node = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tmpfs_node* }
%struct.tmpfs_mount = type { i32 }

@NULLVP = common dso_local global %struct.vnode* null, align 8
@VEXEC = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@ISDOTDOT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@tmpfs_vn_get_ino_alloc = common dso_local global i32 0, align 4
@ISWHITEOUT = common dso_local global i32 0, align 4
@ISLASTCN = common dso_local global i32 0, align 4
@CREATE = common dso_local global i64 0, align 8
@RENAME = common dso_local global i64 0, align 8
@DELETE = common dso_local global i64 0, align 8
@DOWHITEOUT = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@SAVENAME = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@VLNK = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@S_ISTXT = common dso_local global i32 0, align 4
@VADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@MAKEENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.vnode**, %struct.componentname*)* @tmpfs_lookup1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmpfs_lookup1(%struct.vnode* %0, %struct.vnode** %1, %struct.componentname* %2) #0 {
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vnode**, align 8
  %6 = alloca %struct.componentname*, align 8
  %7 = alloca %struct.tmpfs_dirent*, align 8
  %8 = alloca %struct.tmpfs_node*, align 8
  %9 = alloca %struct.tmpfs_node*, align 8
  %10 = alloca %struct.tmpfs_mount*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tmpfs_node*, align 8
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store %struct.vnode** %1, %struct.vnode*** %5, align 8
  store %struct.componentname* %2, %struct.componentname** %6, align 8
  %13 = load %struct.vnode*, %struct.vnode** %4, align 8
  %14 = call %struct.tmpfs_node* @VP_TO_TMPFS_DIR(%struct.vnode* %13)
  store %struct.tmpfs_node* %14, %struct.tmpfs_node** %8, align 8
  %15 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %16 = load %struct.vnode**, %struct.vnode*** %5, align 8
  store %struct.vnode* %15, %struct.vnode** %16, align 8
  %17 = load %struct.vnode*, %struct.vnode** %4, align 8
  %18 = load i32, i32* @VEXEC, align 4
  %19 = load %struct.componentname*, %struct.componentname** %6, align 8
  %20 = getelementptr inbounds %struct.componentname, %struct.componentname* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.componentname*, %struct.componentname** %6, align 8
  %23 = getelementptr inbounds %struct.componentname, %struct.componentname* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @VOP_ACCESS(%struct.vnode* %17, i32 %18, i32 %21, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %348

29:                                               ; preds = %3
  %30 = load %struct.tmpfs_node*, %struct.tmpfs_node** %8, align 8
  %31 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @VDIR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.tmpfs_node*, %struct.tmpfs_node** %8, align 8
  %37 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.tmpfs_node*, %struct.tmpfs_node** %38, align 8
  %40 = load %struct.tmpfs_node*, %struct.tmpfs_node** %8, align 8
  %41 = icmp eq %struct.tmpfs_node* %39, %40
  br label %42

42:                                               ; preds = %35, %29
  %43 = phi i1 [ false, %29 ], [ %41, %35 ]
  %44 = zext i1 %43 to i32
  %45 = load %struct.componentname*, %struct.componentname** %6, align 8
  %46 = getelementptr inbounds %struct.componentname, %struct.componentname* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ISDOTDOT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @IMPLIES(i32 %44, i32 %52)
  %54 = call i32 @MPASS(i32 %53)
  %55 = load %struct.tmpfs_node*, %struct.tmpfs_node** %8, align 8
  %56 = call i32 @TMPFS_ASSERT_LOCKED(%struct.tmpfs_node* %55)
  %57 = load %struct.tmpfs_node*, %struct.tmpfs_node** %8, align 8
  %58 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load %struct.tmpfs_node*, %struct.tmpfs_node** %59, align 8
  %61 = icmp eq %struct.tmpfs_node* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %42
  %63 = load i32, i32* @ENOENT, align 4
  store i32 %63, i32* %11, align 4
  br label %348

64:                                               ; preds = %42
  %65 = load %struct.componentname*, %struct.componentname** %6, align 8
  %66 = getelementptr inbounds %struct.componentname, %struct.componentname* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @ISDOTDOT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %97

71:                                               ; preds = %64
  %72 = load %struct.vnode*, %struct.vnode** %4, align 8
  %73 = getelementptr inbounds %struct.vnode, %struct.vnode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.tmpfs_mount* @VFS_TO_TMPFS(i32 %74)
  store %struct.tmpfs_mount* %75, %struct.tmpfs_mount** %10, align 8
  %76 = load %struct.tmpfs_node*, %struct.tmpfs_node** %8, align 8
  %77 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load %struct.tmpfs_node*, %struct.tmpfs_node** %78, align 8
  store %struct.tmpfs_node* %79, %struct.tmpfs_node** %9, align 8
  %80 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %81 = call i32 @tmpfs_ref_node(%struct.tmpfs_node* %80)
  %82 = load %struct.vnode*, %struct.vnode** %4, align 8
  %83 = load i32, i32* @tmpfs_vn_get_ino_alloc, align 4
  %84 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %85 = load %struct.componentname*, %struct.componentname** %6, align 8
  %86 = getelementptr inbounds %struct.componentname, %struct.componentname* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %89 = call i32 @vn_vget_ino_gen(%struct.vnode* %82, i32 %83, %struct.tmpfs_node* %84, i32 %87, %struct.vnode** %88)
  store i32 %89, i32* %11, align 4
  %90 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %10, align 8
  %91 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %92 = call i32 @tmpfs_free_node(%struct.tmpfs_mount* %90, %struct.tmpfs_node* %91)
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %71
  br label %348

96:                                               ; preds = %71
  br label %330

97:                                               ; preds = %64
  %98 = load %struct.componentname*, %struct.componentname** %6, align 8
  %99 = getelementptr inbounds %struct.componentname, %struct.componentname* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %115

102:                                              ; preds = %97
  %103 = load %struct.componentname*, %struct.componentname** %6, align 8
  %104 = getelementptr inbounds %struct.componentname, %struct.componentname* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 46
  br i1 %109, label %110, label %115

110:                                              ; preds = %102
  %111 = load %struct.vnode*, %struct.vnode** %4, align 8
  %112 = call i32 @VREF(%struct.vnode* %111)
  %113 = load %struct.vnode*, %struct.vnode** %4, align 8
  %114 = load %struct.vnode**, %struct.vnode*** %5, align 8
  store %struct.vnode* %113, %struct.vnode** %114, align 8
  store i32 0, i32* %11, align 4
  br label %329

115:                                              ; preds = %102, %97
  %116 = load %struct.tmpfs_node*, %struct.tmpfs_node** %8, align 8
  %117 = load %struct.componentname*, %struct.componentname** %6, align 8
  %118 = call %struct.tmpfs_dirent* @tmpfs_dir_lookup(%struct.tmpfs_node* %116, i32* null, %struct.componentname* %117)
  store %struct.tmpfs_dirent* %118, %struct.tmpfs_dirent** %7, align 8
  %119 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %7, align 8
  %120 = icmp ne %struct.tmpfs_dirent* %119, null
  br i1 %120, label %121, label %132

121:                                              ; preds = %115
  %122 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %7, align 8
  %123 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %122, i32 0, i32 0
  %124 = load %struct.tmpfs_node*, %struct.tmpfs_node** %123, align 8
  %125 = icmp eq %struct.tmpfs_node* %124, null
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load i32, i32* @ISWHITEOUT, align 4
  %128 = load %struct.componentname*, %struct.componentname** %6, align 8
  %129 = getelementptr inbounds %struct.componentname, %struct.componentname* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %126, %121, %115
  %133 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %7, align 8
  %134 = icmp eq %struct.tmpfs_dirent* %133, null
  br i1 %134, label %140, label %135

135:                                              ; preds = %132
  %136 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %7, align 8
  %137 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %136, i32 0, i32 0
  %138 = load %struct.tmpfs_node*, %struct.tmpfs_node** %137, align 8
  %139 = icmp eq %struct.tmpfs_node* %138, null
  br i1 %139, label %140, label %202

140:                                              ; preds = %135, %132
  %141 = load %struct.componentname*, %struct.componentname** %6, align 8
  %142 = getelementptr inbounds %struct.componentname, %struct.componentname* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @ISLASTCN, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %199

147:                                              ; preds = %140
  %148 = load %struct.componentname*, %struct.componentname** %6, align 8
  %149 = getelementptr inbounds %struct.componentname, %struct.componentname* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @CREATE, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %179, label %153

153:                                              ; preds = %147
  %154 = load %struct.componentname*, %struct.componentname** %6, align 8
  %155 = getelementptr inbounds %struct.componentname, %struct.componentname* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @RENAME, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %179, label %159

159:                                              ; preds = %153
  %160 = load %struct.componentname*, %struct.componentname** %6, align 8
  %161 = getelementptr inbounds %struct.componentname, %struct.componentname* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @DELETE, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %199

165:                                              ; preds = %159
  %166 = load %struct.componentname*, %struct.componentname** %6, align 8
  %167 = getelementptr inbounds %struct.componentname, %struct.componentname* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @DOWHITEOUT, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %199

172:                                              ; preds = %165
  %173 = load %struct.componentname*, %struct.componentname** %6, align 8
  %174 = getelementptr inbounds %struct.componentname, %struct.componentname* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @ISWHITEOUT, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %199

179:                                              ; preds = %172, %153, %147
  %180 = load %struct.vnode*, %struct.vnode** %4, align 8
  %181 = load i32, i32* @VWRITE, align 4
  %182 = load %struct.componentname*, %struct.componentname** %6, align 8
  %183 = getelementptr inbounds %struct.componentname, %struct.componentname* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.componentname*, %struct.componentname** %6, align 8
  %186 = getelementptr inbounds %struct.componentname, %struct.componentname* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @VOP_ACCESS(%struct.vnode* %180, i32 %181, i32 %184, i32 %187)
  store i32 %188, i32* %11, align 4
  %189 = load i32, i32* %11, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %179
  br label %348

192:                                              ; preds = %179
  %193 = load i32, i32* @SAVENAME, align 4
  %194 = load %struct.componentname*, %struct.componentname** %6, align 8
  %195 = getelementptr inbounds %struct.componentname, %struct.componentname* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 8
  %198 = load i32, i32* @EJUSTRETURN, align 4
  store i32 %198, i32* %11, align 4
  br label %201

199:                                              ; preds = %172, %165, %159, %140
  %200 = load i32, i32* @ENOENT, align 4
  store i32 %200, i32* %11, align 4
  br label %201

201:                                              ; preds = %199, %192
  br label %328

202:                                              ; preds = %135
  %203 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %7, align 8
  %204 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %203, i32 0, i32 0
  %205 = load %struct.tmpfs_node*, %struct.tmpfs_node** %204, align 8
  store %struct.tmpfs_node* %205, %struct.tmpfs_node** %12, align 8
  %206 = load %struct.tmpfs_node*, %struct.tmpfs_node** %12, align 8
  %207 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @VDIR, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %226

211:                                              ; preds = %202
  %212 = load %struct.tmpfs_node*, %struct.tmpfs_node** %12, align 8
  %213 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @VLNK, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %226

217:                                              ; preds = %211
  %218 = load %struct.componentname*, %struct.componentname** %6, align 8
  %219 = getelementptr inbounds %struct.componentname, %struct.componentname* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @ISLASTCN, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %217
  %225 = load i32, i32* @ENOTDIR, align 4
  store i32 %225, i32* %11, align 4
  br label %348

226:                                              ; preds = %217, %211, %202
  %227 = load %struct.componentname*, %struct.componentname** %6, align 8
  %228 = getelementptr inbounds %struct.componentname, %struct.componentname* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @ISLASTCN, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %313

233:                                              ; preds = %226
  %234 = load %struct.componentname*, %struct.componentname** %6, align 8
  %235 = getelementptr inbounds %struct.componentname, %struct.componentname* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @DELETE, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %245, label %239

239:                                              ; preds = %233
  %240 = load %struct.componentname*, %struct.componentname** %6, align 8
  %241 = getelementptr inbounds %struct.componentname, %struct.componentname* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @RENAME, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %313

245:                                              ; preds = %239, %233
  %246 = load %struct.vnode*, %struct.vnode** %4, align 8
  %247 = load i32, i32* @VWRITE, align 4
  %248 = load %struct.componentname*, %struct.componentname** %6, align 8
  %249 = getelementptr inbounds %struct.componentname, %struct.componentname* %248, i32 0, i32 6
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.componentname*, %struct.componentname** %6, align 8
  %252 = getelementptr inbounds %struct.componentname, %struct.componentname* %251, i32 0, i32 5
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @VOP_ACCESS(%struct.vnode* %246, i32 %247, i32 %250, i32 %253)
  store i32 %254, i32* %11, align 4
  %255 = load i32, i32* %11, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %245
  br label %348

258:                                              ; preds = %245
  %259 = load %struct.vnode*, %struct.vnode** %4, align 8
  %260 = getelementptr inbounds %struct.vnode, %struct.vnode* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.tmpfs_node*, %struct.tmpfs_node** %12, align 8
  %263 = load %struct.componentname*, %struct.componentname** %6, align 8
  %264 = getelementptr inbounds %struct.componentname, %struct.componentname* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %267 = call i32 @tmpfs_alloc_vp(i32 %261, %struct.tmpfs_node* %262, i32 %265, %struct.vnode** %266)
  store i32 %267, i32* %11, align 4
  %268 = load i32, i32* %11, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %258
  br label %348

271:                                              ; preds = %258
  %272 = load %struct.tmpfs_node*, %struct.tmpfs_node** %8, align 8
  %273 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @S_ISTXT, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %307

278:                                              ; preds = %271
  %279 = load %struct.vnode*, %struct.vnode** %4, align 8
  %280 = load i32, i32* @VADMIN, align 4
  %281 = load %struct.componentname*, %struct.componentname** %6, align 8
  %282 = getelementptr inbounds %struct.componentname, %struct.componentname* %281, i32 0, i32 6
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.componentname*, %struct.componentname** %6, align 8
  %285 = getelementptr inbounds %struct.componentname, %struct.componentname* %284, i32 0, i32 5
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @VOP_ACCESS(%struct.vnode* %279, i32 %280, i32 %283, i32 %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %307

289:                                              ; preds = %278
  %290 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %291 = load %struct.vnode*, %struct.vnode** %290, align 8
  %292 = load i32, i32* @VADMIN, align 4
  %293 = load %struct.componentname*, %struct.componentname** %6, align 8
  %294 = getelementptr inbounds %struct.componentname, %struct.componentname* %293, i32 0, i32 6
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.componentname*, %struct.componentname** %6, align 8
  %297 = getelementptr inbounds %struct.componentname, %struct.componentname* %296, i32 0, i32 5
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @VOP_ACCESS(%struct.vnode* %291, i32 %292, i32 %295, i32 %298)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %307

301:                                              ; preds = %289
  %302 = load i32, i32* @EPERM, align 4
  store i32 %302, i32* %11, align 4
  %303 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %304 = load %struct.vnode*, %struct.vnode** %303, align 8
  %305 = call i32 @vput(%struct.vnode* %304)
  %306 = load %struct.vnode**, %struct.vnode*** %5, align 8
  store %struct.vnode* null, %struct.vnode** %306, align 8
  br label %348

307:                                              ; preds = %289, %278, %271
  %308 = load i32, i32* @SAVENAME, align 4
  %309 = load %struct.componentname*, %struct.componentname** %6, align 8
  %310 = getelementptr inbounds %struct.componentname, %struct.componentname* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = or i32 %311, %308
  store i32 %312, i32* %310, align 8
  br label %327

313:                                              ; preds = %239, %226
  %314 = load %struct.vnode*, %struct.vnode** %4, align 8
  %315 = getelementptr inbounds %struct.vnode, %struct.vnode* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.tmpfs_node*, %struct.tmpfs_node** %12, align 8
  %318 = load %struct.componentname*, %struct.componentname** %6, align 8
  %319 = getelementptr inbounds %struct.componentname, %struct.componentname* %318, i32 0, i32 4
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %322 = call i32 @tmpfs_alloc_vp(i32 %316, %struct.tmpfs_node* %317, i32 %320, %struct.vnode** %321)
  store i32 %322, i32* %11, align 4
  %323 = load i32, i32* %11, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %313
  br label %348

326:                                              ; preds = %313
  br label %327

327:                                              ; preds = %326, %307
  br label %328

328:                                              ; preds = %327, %201
  br label %329

329:                                              ; preds = %328, %110
  br label %330

330:                                              ; preds = %329, %96
  %331 = load %struct.componentname*, %struct.componentname** %6, align 8
  %332 = getelementptr inbounds %struct.componentname, %struct.componentname* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* @MAKEENTRY, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %347

337:                                              ; preds = %330
  %338 = load %struct.vnode*, %struct.vnode** %4, align 8
  %339 = call i64 @tmpfs_use_nc(%struct.vnode* %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %347

341:                                              ; preds = %337
  %342 = load %struct.vnode*, %struct.vnode** %4, align 8
  %343 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %344 = load %struct.vnode*, %struct.vnode** %343, align 8
  %345 = load %struct.componentname*, %struct.componentname** %6, align 8
  %346 = call i32 @cache_enter(%struct.vnode* %342, %struct.vnode* %344, %struct.componentname* %345)
  br label %347

347:                                              ; preds = %341, %337, %330
  br label %348

348:                                              ; preds = %347, %325, %301, %270, %257, %224, %191, %95, %62, %28
  %349 = load i32, i32* %11, align 4
  %350 = icmp eq i32 %349, 0
  %351 = zext i1 %350 to i32
  %352 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %353 = load %struct.vnode*, %struct.vnode** %352, align 8
  %354 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %355 = icmp ne %struct.vnode* %353, %354
  br i1 %355, label %356, label %361

356:                                              ; preds = %348
  %357 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %358 = load %struct.vnode*, %struct.vnode** %357, align 8
  %359 = call i64 @VOP_ISLOCKED(%struct.vnode* %358)
  %360 = icmp ne i64 %359, 0
  br label %361

361:                                              ; preds = %356, %348
  %362 = phi i1 [ false, %348 ], [ %360, %356 ]
  %363 = zext i1 %362 to i32
  %364 = call i32 @IFF(i32 %351, i32 %363)
  %365 = call i32 @MPASS(i32 %364)
  %366 = load i32, i32* %11, align 4
  ret i32 %366
}

declare dso_local %struct.tmpfs_node* @VP_TO_TMPFS_DIR(%struct.vnode*) #1

declare dso_local i32 @VOP_ACCESS(%struct.vnode*, i32, i32, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @IMPLIES(i32, i32) #1

declare dso_local i32 @TMPFS_ASSERT_LOCKED(%struct.tmpfs_node*) #1

declare dso_local %struct.tmpfs_mount* @VFS_TO_TMPFS(i32) #1

declare dso_local i32 @tmpfs_ref_node(%struct.tmpfs_node*) #1

declare dso_local i32 @vn_vget_ino_gen(%struct.vnode*, i32, %struct.tmpfs_node*, i32, %struct.vnode**) #1

declare dso_local i32 @tmpfs_free_node(%struct.tmpfs_mount*, %struct.tmpfs_node*) #1

declare dso_local i32 @VREF(%struct.vnode*) #1

declare dso_local %struct.tmpfs_dirent* @tmpfs_dir_lookup(%struct.tmpfs_node*, i32*, %struct.componentname*) #1

declare dso_local i32 @tmpfs_alloc_vp(i32, %struct.tmpfs_node*, i32, %struct.vnode**) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i64 @tmpfs_use_nc(%struct.vnode*) #1

declare dso_local i32 @cache_enter(%struct.vnode*, %struct.vnode*, %struct.componentname*) #1

declare dso_local i32 @IFF(i32, i32) #1

declare dso_local i64 @VOP_ISLOCKED(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
