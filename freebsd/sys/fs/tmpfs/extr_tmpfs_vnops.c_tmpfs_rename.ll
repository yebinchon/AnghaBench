; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_rename_args = type { %struct.componentname*, %struct.vnode*, %struct.vnode*, %struct.componentname*, %struct.vnode*, %struct.vnode* }
%struct.componentname = type { i32, i32, i8* }
%struct.vnode = type { %struct.mount* }
%struct.mount = type { i32 }
%struct.tmpfs_dirent = type { %struct.TYPE_4__, %struct.tmpfs_node* }
%struct.TYPE_4__ = type { i8* }
%struct.tmpfs_node = type { i32, i64, i64, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.tmpfs_node* }
%struct.tmpfs_mount = type { i32 }

@HASBUF = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"tmpfs_rename: fdvp not locked\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"tmpfs_rename: tdvp not locked\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"tmpfs_rename: tvp not locked\00", align 1
@ISDOTDOT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NOUNLINK = common dso_local global i32 0, align 4
@IMMUTABLE = common dso_local global i32 0, align 4
@APPEND = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@ENOTEMPTY = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@M_TMPFSNAME = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@DOWHITEOUT = common dso_local global i32 0, align 4
@ISWHITEOUT = common dso_local global i32 0, align 4
@MAXNAMLEN = common dso_local global i32 0, align 4
@TMPFS_NODE_CHANGED = common dso_local global i32 0, align 4
@TMPFS_NODE_MODIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_rename_args*)* @tmpfs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmpfs_rename(%struct.vop_rename_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_rename_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.componentname*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.componentname*, align 8
  %10 = alloca %struct.mount*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.tmpfs_dirent*, align 8
  %13 = alloca %struct.tmpfs_mount*, align 8
  %14 = alloca %struct.tmpfs_node*, align 8
  %15 = alloca %struct.tmpfs_node*, align 8
  %16 = alloca %struct.tmpfs_node*, align 8
  %17 = alloca %struct.tmpfs_node*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.tmpfs_node*, align 8
  %20 = alloca %struct.tmpfs_node*, align 8
  %21 = alloca %struct.tmpfs_dirent*, align 8
  store %struct.vop_rename_args* %0, %struct.vop_rename_args** %3, align 8
  %22 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %23 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %22, i32 0, i32 5
  %24 = load %struct.vnode*, %struct.vnode** %23, align 8
  store %struct.vnode* %24, %struct.vnode** %4, align 8
  %25 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %26 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %25, i32 0, i32 4
  %27 = load %struct.vnode*, %struct.vnode** %26, align 8
  store %struct.vnode* %27, %struct.vnode** %5, align 8
  %28 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %29 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %28, i32 0, i32 3
  %30 = load %struct.componentname*, %struct.componentname** %29, align 8
  store %struct.componentname* %30, %struct.componentname** %6, align 8
  %31 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %32 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %31, i32 0, i32 2
  %33 = load %struct.vnode*, %struct.vnode** %32, align 8
  store %struct.vnode* %33, %struct.vnode** %7, align 8
  %34 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %35 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %34, i32 0, i32 1
  %36 = load %struct.vnode*, %struct.vnode** %35, align 8
  store %struct.vnode* %36, %struct.vnode** %8, align 8
  %37 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %38 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %37, i32 0, i32 0
  %39 = load %struct.componentname*, %struct.componentname** %38, align 8
  store %struct.componentname* %39, %struct.componentname** %9, align 8
  store %struct.mount* null, %struct.mount** %10, align 8
  %40 = load %struct.vnode*, %struct.vnode** %7, align 8
  %41 = call i32 @VOP_ISLOCKED(%struct.vnode* %40)
  %42 = call i32 @MPASS(i32 %41)
  %43 = load %struct.vnode*, %struct.vnode** %8, align 8
  %44 = icmp ne %struct.vnode* %43, null
  %45 = zext i1 %44 to i32
  %46 = load %struct.vnode*, %struct.vnode** %8, align 8
  %47 = call i32 @VOP_ISLOCKED(%struct.vnode* %46)
  %48 = call i32 @IMPLIES(i32 %45, i32 %47)
  %49 = call i32 @MPASS(i32 %48)
  %50 = load %struct.componentname*, %struct.componentname** %6, align 8
  %51 = getelementptr inbounds %struct.componentname, %struct.componentname* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @HASBUF, align 4
  %54 = and i32 %52, %53
  %55 = call i32 @MPASS(i32 %54)
  %56 = load %struct.componentname*, %struct.componentname** %9, align 8
  %57 = getelementptr inbounds %struct.componentname, %struct.componentname* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @HASBUF, align 4
  %60 = and i32 %58, %59
  %61 = call i32 @MPASS(i32 %60)
  %62 = load %struct.vnode*, %struct.vnode** %5, align 8
  %63 = getelementptr inbounds %struct.vnode, %struct.vnode* %62, i32 0, i32 0
  %64 = load %struct.mount*, %struct.mount** %63, align 8
  %65 = load %struct.vnode*, %struct.vnode** %7, align 8
  %66 = getelementptr inbounds %struct.vnode, %struct.vnode* %65, i32 0, i32 0
  %67 = load %struct.mount*, %struct.mount** %66, align 8
  %68 = icmp ne %struct.mount* %64, %67
  br i1 %68, label %80, label %69

69:                                               ; preds = %1
  %70 = load %struct.vnode*, %struct.vnode** %8, align 8
  %71 = icmp ne %struct.vnode* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load %struct.vnode*, %struct.vnode** %5, align 8
  %74 = getelementptr inbounds %struct.vnode, %struct.vnode* %73, i32 0, i32 0
  %75 = load %struct.mount*, %struct.mount** %74, align 8
  %76 = load %struct.vnode*, %struct.vnode** %8, align 8
  %77 = getelementptr inbounds %struct.vnode, %struct.vnode* %76, i32 0, i32 0
  %78 = load %struct.mount*, %struct.mount** %77, align 8
  %79 = icmp ne %struct.mount* %75, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %72, %1
  %81 = load i32, i32* @EXDEV, align 4
  store i32 %81, i32* %18, align 4
  br label %574

82:                                               ; preds = %72, %69
  %83 = load %struct.vnode*, %struct.vnode** %5, align 8
  %84 = load %struct.vnode*, %struct.vnode** %8, align 8
  %85 = icmp eq %struct.vnode* %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 0, i32* %18, align 4
  br label %574

87:                                               ; preds = %82
  %88 = load %struct.vnode*, %struct.vnode** %4, align 8
  %89 = load %struct.vnode*, %struct.vnode** %7, align 8
  %90 = icmp ne %struct.vnode* %88, %89
  br i1 %90, label %91, label %140

91:                                               ; preds = %87
  %92 = load %struct.vnode*, %struct.vnode** %4, align 8
  %93 = load %struct.vnode*, %struct.vnode** %8, align 8
  %94 = icmp ne %struct.vnode* %92, %93
  br i1 %94, label %95, label %140

95:                                               ; preds = %91
  %96 = load %struct.vnode*, %struct.vnode** %4, align 8
  %97 = load i32, i32* @LK_EXCLUSIVE, align 4
  %98 = load i32, i32* @LK_NOWAIT, align 4
  %99 = or i32 %97, %98
  %100 = call i64 @vn_lock(%struct.vnode* %96, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %139

102:                                              ; preds = %95
  %103 = load %struct.vnode*, %struct.vnode** %7, align 8
  %104 = getelementptr inbounds %struct.vnode, %struct.vnode* %103, i32 0, i32 0
  %105 = load %struct.mount*, %struct.mount** %104, align 8
  store %struct.mount* %105, %struct.mount** %10, align 8
  %106 = load %struct.mount*, %struct.mount** %10, align 8
  %107 = call i32 @vfs_busy(%struct.mount* %106, i32 0)
  store i32 %107, i32* %18, align 4
  %108 = load i32, i32* %18, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  store %struct.mount* null, %struct.mount** %10, align 8
  br label %574

111:                                              ; preds = %102
  %112 = load %struct.vnode*, %struct.vnode** %4, align 8
  %113 = load %struct.vnode*, %struct.vnode** %7, align 8
  %114 = load %struct.componentname*, %struct.componentname** %6, align 8
  %115 = load %struct.componentname*, %struct.componentname** %9, align 8
  %116 = call i32 @tmpfs_rename_relock(%struct.vnode* %112, %struct.vnode** %5, %struct.vnode* %113, %struct.vnode** %8, %struct.componentname* %114, %struct.componentname* %115)
  store i32 %116, i32* %18, align 4
  %117 = load i32, i32* %18, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %111
  %120 = load %struct.mount*, %struct.mount** %10, align 8
  %121 = call i32 @vfs_unbusy(%struct.mount* %120)
  %122 = load i32, i32* %18, align 4
  store i32 %122, i32* %2, align 4
  br label %602

123:                                              ; preds = %111
  %124 = load %struct.vnode*, %struct.vnode** %4, align 8
  %125 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %124, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %126 = load %struct.vnode*, %struct.vnode** %7, align 8
  %127 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %126, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %128 = load %struct.vnode*, %struct.vnode** %8, align 8
  %129 = icmp ne %struct.vnode* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load %struct.vnode*, %struct.vnode** %8, align 8
  %132 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %131, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %123
  %134 = load %struct.vnode*, %struct.vnode** %5, align 8
  %135 = load %struct.vnode*, %struct.vnode** %8, align 8
  %136 = icmp eq %struct.vnode* %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  store i32 0, i32* %18, align 4
  br label %562

138:                                              ; preds = %133
  br label %139

139:                                              ; preds = %138, %95
  br label %140

140:                                              ; preds = %139, %91, %87
  %141 = load %struct.vnode*, %struct.vnode** %7, align 8
  %142 = getelementptr inbounds %struct.vnode, %struct.vnode* %141, i32 0, i32 0
  %143 = load %struct.mount*, %struct.mount** %142, align 8
  %144 = call %struct.tmpfs_mount* @VFS_TO_TMPFS(%struct.mount* %143)
  store %struct.tmpfs_mount* %144, %struct.tmpfs_mount** %13, align 8
  %145 = load %struct.vnode*, %struct.vnode** %7, align 8
  %146 = call %struct.tmpfs_node* @VP_TO_TMPFS_DIR(%struct.vnode* %145)
  store %struct.tmpfs_node* %146, %struct.tmpfs_node** %17, align 8
  %147 = load %struct.vnode*, %struct.vnode** %8, align 8
  %148 = icmp eq %struct.vnode* %147, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %140
  br label %153

150:                                              ; preds = %140
  %151 = load %struct.vnode*, %struct.vnode** %8, align 8
  %152 = call %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode* %151)
  br label %153

153:                                              ; preds = %150, %149
  %154 = phi %struct.tmpfs_node* [ null, %149 ], [ %152, %150 ]
  store %struct.tmpfs_node* %154, %struct.tmpfs_node** %16, align 8
  %155 = load %struct.vnode*, %struct.vnode** %4, align 8
  %156 = call %struct.tmpfs_node* @VP_TO_TMPFS_DIR(%struct.vnode* %155)
  store %struct.tmpfs_node* %156, %struct.tmpfs_node** %14, align 8
  %157 = load %struct.vnode*, %struct.vnode** %5, align 8
  %158 = call %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode* %157)
  store %struct.tmpfs_node* %158, %struct.tmpfs_node** %15, align 8
  %159 = load %struct.tmpfs_node*, %struct.tmpfs_node** %14, align 8
  %160 = load %struct.tmpfs_node*, %struct.tmpfs_node** %15, align 8
  %161 = load %struct.componentname*, %struct.componentname** %6, align 8
  %162 = call %struct.tmpfs_dirent* @tmpfs_dir_lookup(%struct.tmpfs_node* %159, %struct.tmpfs_node* %160, %struct.componentname* %161)
  store %struct.tmpfs_dirent* %162, %struct.tmpfs_dirent** %12, align 8
  %163 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %12, align 8
  %164 = icmp eq %struct.tmpfs_dirent* %163, null
  br i1 %164, label %165, label %190

165:                                              ; preds = %153
  %166 = load %struct.componentname*, %struct.componentname** %6, align 8
  %167 = getelementptr inbounds %struct.componentname, %struct.componentname* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @ISDOTDOT, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %185, label %172

172:                                              ; preds = %165
  %173 = load %struct.componentname*, %struct.componentname** %6, align 8
  %174 = getelementptr inbounds %struct.componentname, %struct.componentname* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %187

177:                                              ; preds = %172
  %178 = load %struct.componentname*, %struct.componentname** %6, align 8
  %179 = getelementptr inbounds %struct.componentname, %struct.componentname* %178, i32 0, i32 2
  %180 = load i8*, i8** %179, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 0
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %183, 46
  br i1 %184, label %185, label %187

185:                                              ; preds = %177, %165
  %186 = load i32, i32* @EINVAL, align 4
  store i32 %186, i32* %18, align 4
  br label %189

187:                                              ; preds = %177, %172
  %188 = load i32, i32* @ENOENT, align 4
  store i32 %188, i32* %18, align 4
  br label %189

189:                                              ; preds = %187, %185
  br label %562

190:                                              ; preds = %153
  %191 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %12, align 8
  %192 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %191, i32 0, i32 1
  %193 = load %struct.tmpfs_node*, %struct.tmpfs_node** %192, align 8
  %194 = load %struct.tmpfs_node*, %struct.tmpfs_node** %15, align 8
  %195 = icmp eq %struct.tmpfs_node* %193, %194
  %196 = zext i1 %195 to i32
  %197 = call i32 @MPASS(i32 %196)
  %198 = load %struct.vnode*, %struct.vnode** %8, align 8
  %199 = icmp ne %struct.vnode* %198, null
  br i1 %199, label %200, label %293

200:                                              ; preds = %190
  %201 = load %struct.tmpfs_node*, %struct.tmpfs_node** %16, align 8
  %202 = icmp ne %struct.tmpfs_node* %201, null
  %203 = zext i1 %202 to i32
  %204 = call i32 @MPASS(i32 %203)
  %205 = load %struct.tmpfs_node*, %struct.tmpfs_node** %16, align 8
  %206 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @NOUNLINK, align 4
  %209 = load i32, i32* @IMMUTABLE, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @APPEND, align 4
  %212 = or i32 %210, %211
  %213 = and i32 %207, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %224, label %215

215:                                              ; preds = %200
  %216 = load %struct.tmpfs_node*, %struct.tmpfs_node** %17, align 8
  %217 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @APPEND, align 4
  %220 = load i32, i32* @IMMUTABLE, align 4
  %221 = or i32 %219, %220
  %222 = and i32 %218, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %215, %200
  %225 = load i32, i32* @EPERM, align 4
  store i32 %225, i32* %18, align 4
  br label %562

226:                                              ; preds = %215
  %227 = load %struct.tmpfs_node*, %struct.tmpfs_node** %15, align 8
  %228 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @VDIR, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %246

232:                                              ; preds = %226
  %233 = load %struct.tmpfs_node*, %struct.tmpfs_node** %16, align 8
  %234 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @VDIR, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %246

238:                                              ; preds = %232
  %239 = load %struct.tmpfs_node*, %struct.tmpfs_node** %16, align 8
  %240 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = icmp sgt i64 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %238
  %244 = load i32, i32* @ENOTEMPTY, align 4
  store i32 %244, i32* %18, align 4
  br label %562

245:                                              ; preds = %238
  br label %292

246:                                              ; preds = %232, %226
  %247 = load %struct.tmpfs_node*, %struct.tmpfs_node** %15, align 8
  %248 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @VDIR, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %260

252:                                              ; preds = %246
  %253 = load %struct.tmpfs_node*, %struct.tmpfs_node** %16, align 8
  %254 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @VDIR, align 8
  %257 = icmp ne i64 %255, %256
  br i1 %257, label %258, label %260

258:                                              ; preds = %252
  %259 = load i32, i32* @ENOTDIR, align 4
  store i32 %259, i32* %18, align 4
  br label %562

260:                                              ; preds = %252, %246
  %261 = load %struct.tmpfs_node*, %struct.tmpfs_node** %15, align 8
  %262 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @VDIR, align 8
  %265 = icmp ne i64 %263, %264
  br i1 %265, label %266, label %274

266:                                              ; preds = %260
  %267 = load %struct.tmpfs_node*, %struct.tmpfs_node** %16, align 8
  %268 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @VDIR, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %274

272:                                              ; preds = %266
  %273 = load i32, i32* @EISDIR, align 4
  store i32 %273, i32* %18, align 4
  br label %562

274:                                              ; preds = %266, %260
  %275 = load %struct.tmpfs_node*, %struct.tmpfs_node** %15, align 8
  %276 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @VDIR, align 8
  %279 = icmp ne i64 %277, %278
  br i1 %279, label %280, label %286

280:                                              ; preds = %274
  %281 = load %struct.tmpfs_node*, %struct.tmpfs_node** %16, align 8
  %282 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @VDIR, align 8
  %285 = icmp ne i64 %283, %284
  br label %286

286:                                              ; preds = %280, %274
  %287 = phi i1 [ false, %274 ], [ %285, %280 ]
  %288 = zext i1 %287 to i32
  %289 = call i32 @MPASS(i32 %288)
  br label %290

290:                                              ; preds = %286
  br label %291

291:                                              ; preds = %290
  br label %292

292:                                              ; preds = %291, %245
  br label %293

293:                                              ; preds = %292, %190
  %294 = load %struct.tmpfs_node*, %struct.tmpfs_node** %15, align 8
  %295 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @NOUNLINK, align 4
  %298 = load i32, i32* @IMMUTABLE, align 4
  %299 = or i32 %297, %298
  %300 = load i32, i32* @APPEND, align 4
  %301 = or i32 %299, %300
  %302 = and i32 %296, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %313, label %304

304:                                              ; preds = %293
  %305 = load %struct.tmpfs_node*, %struct.tmpfs_node** %14, align 8
  %306 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @APPEND, align 4
  %309 = load i32, i32* @IMMUTABLE, align 4
  %310 = or i32 %308, %309
  %311 = and i32 %307, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %304, %293
  %314 = load i32, i32* @EPERM, align 4
  store i32 %314, i32* %18, align 4
  br label %562

315:                                              ; preds = %304
  %316 = load %struct.componentname*, %struct.componentname** %6, align 8
  %317 = getelementptr inbounds %struct.componentname, %struct.componentname* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.componentname*, %struct.componentname** %9, align 8
  %320 = getelementptr inbounds %struct.componentname, %struct.componentname* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = icmp ne i32 %318, %321
  br i1 %322, label %335, label %323

323:                                              ; preds = %315
  %324 = load %struct.componentname*, %struct.componentname** %6, align 8
  %325 = getelementptr inbounds %struct.componentname, %struct.componentname* %324, i32 0, i32 2
  %326 = load i8*, i8** %325, align 8
  %327 = load %struct.componentname*, %struct.componentname** %9, align 8
  %328 = getelementptr inbounds %struct.componentname, %struct.componentname* %327, i32 0, i32 2
  %329 = load i8*, i8** %328, align 8
  %330 = load %struct.componentname*, %struct.componentname** %6, align 8
  %331 = getelementptr inbounds %struct.componentname, %struct.componentname* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = call i64 @bcmp(i8* %326, i8* %329, i32 %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %342

335:                                              ; preds = %323, %315
  %336 = load %struct.componentname*, %struct.componentname** %9, align 8
  %337 = getelementptr inbounds %struct.componentname, %struct.componentname* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* @M_TMPFSNAME, align 4
  %340 = load i32, i32* @M_WAITOK, align 4
  %341 = call i8* @malloc(i32 %338, i32 %339, i32 %340)
  store i8* %341, i8** %11, align 8
  br label %343

342:                                              ; preds = %323
  store i8* null, i8** %11, align 8
  br label %343

343:                                              ; preds = %342, %335
  %344 = load %struct.tmpfs_node*, %struct.tmpfs_node** %14, align 8
  %345 = load %struct.tmpfs_node*, %struct.tmpfs_node** %17, align 8
  %346 = icmp ne %struct.tmpfs_node* %344, %345
  br i1 %346, label %347, label %462

347:                                              ; preds = %343
  %348 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %12, align 8
  %349 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %348, i32 0, i32 1
  %350 = load %struct.tmpfs_node*, %struct.tmpfs_node** %349, align 8
  %351 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %350, i32 0, i32 1
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* @VDIR, align 8
  %354 = icmp eq i64 %352, %353
  br i1 %354, label %355, label %461

355:                                              ; preds = %347
  %356 = load %struct.tmpfs_node*, %struct.tmpfs_node** %17, align 8
  store %struct.tmpfs_node* %356, %struct.tmpfs_node** %19, align 8
  %357 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %13, align 8
  %358 = call i32 @TMPFS_LOCK(%struct.tmpfs_mount* %357)
  %359 = load %struct.tmpfs_node*, %struct.tmpfs_node** %19, align 8
  %360 = call i32 @TMPFS_NODE_LOCK(%struct.tmpfs_node* %359)
  br label %361

361:                                              ; preds = %406, %355
  %362 = load %struct.tmpfs_node*, %struct.tmpfs_node** %19, align 8
  %363 = load %struct.tmpfs_node*, %struct.tmpfs_node** %19, align 8
  %364 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %363, i32 0, i32 5
  %365 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %364, i32 0, i32 0
  %366 = load %struct.tmpfs_node*, %struct.tmpfs_node** %365, align 8
  %367 = icmp ne %struct.tmpfs_node* %362, %366
  br i1 %367, label %368, label %408

368:                                              ; preds = %361
  %369 = load %struct.tmpfs_node*, %struct.tmpfs_node** %19, align 8
  %370 = load %struct.tmpfs_node*, %struct.tmpfs_node** %15, align 8
  %371 = icmp eq %struct.tmpfs_node* %369, %370
  br i1 %371, label %372, label %385

372:                                              ; preds = %368
  %373 = load %struct.tmpfs_node*, %struct.tmpfs_node** %19, align 8
  %374 = call i32 @TMPFS_NODE_UNLOCK(%struct.tmpfs_node* %373)
  %375 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %13, align 8
  %376 = call i32 @TMPFS_UNLOCK(%struct.tmpfs_mount* %375)
  %377 = load i32, i32* @EINVAL, align 4
  store i32 %377, i32* %18, align 4
  %378 = load i8*, i8** %11, align 8
  %379 = icmp ne i8* %378, null
  br i1 %379, label %380, label %384

380:                                              ; preds = %372
  %381 = load i8*, i8** %11, align 8
  %382 = load i32, i32* @M_TMPFSNAME, align 4
  %383 = call i32 @free(i8* %381, i32 %382)
  br label %384

384:                                              ; preds = %380, %372
  br label %562

385:                                              ; preds = %368
  %386 = load %struct.tmpfs_node*, %struct.tmpfs_node** %19, align 8
  %387 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %386, i32 0, i32 5
  %388 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %387, i32 0, i32 0
  %389 = load %struct.tmpfs_node*, %struct.tmpfs_node** %388, align 8
  store %struct.tmpfs_node* %389, %struct.tmpfs_node** %20, align 8
  %390 = load %struct.tmpfs_node*, %struct.tmpfs_node** %19, align 8
  %391 = call i32 @TMPFS_NODE_UNLOCK(%struct.tmpfs_node* %390)
  %392 = load %struct.tmpfs_node*, %struct.tmpfs_node** %20, align 8
  %393 = icmp eq %struct.tmpfs_node* %392, null
  br i1 %393, label %394, label %395

394:                                              ; preds = %385
  store %struct.tmpfs_node* null, %struct.tmpfs_node** %19, align 8
  br label %408

395:                                              ; preds = %385
  %396 = load %struct.tmpfs_node*, %struct.tmpfs_node** %20, align 8
  %397 = call i32 @TMPFS_NODE_LOCK(%struct.tmpfs_node* %396)
  %398 = load %struct.tmpfs_node*, %struct.tmpfs_node** %20, align 8
  %399 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %398, i32 0, i32 5
  %400 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %399, i32 0, i32 0
  %401 = load %struct.tmpfs_node*, %struct.tmpfs_node** %400, align 8
  %402 = icmp eq %struct.tmpfs_node* %401, null
  br i1 %402, label %403, label %406

403:                                              ; preds = %395
  %404 = load %struct.tmpfs_node*, %struct.tmpfs_node** %20, align 8
  %405 = call i32 @TMPFS_NODE_UNLOCK(%struct.tmpfs_node* %404)
  store %struct.tmpfs_node* null, %struct.tmpfs_node** %19, align 8
  br label %408

406:                                              ; preds = %395
  %407 = load %struct.tmpfs_node*, %struct.tmpfs_node** %20, align 8
  store %struct.tmpfs_node* %407, %struct.tmpfs_node** %19, align 8
  br label %361

408:                                              ; preds = %403, %394, %361
  %409 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %13, align 8
  %410 = call i32 @TMPFS_UNLOCK(%struct.tmpfs_mount* %409)
  %411 = load %struct.tmpfs_node*, %struct.tmpfs_node** %19, align 8
  %412 = icmp eq %struct.tmpfs_node* %411, null
  br i1 %412, label %413, label %422

413:                                              ; preds = %408
  %414 = load i32, i32* @EINVAL, align 4
  store i32 %414, i32* %18, align 4
  %415 = load i8*, i8** %11, align 8
  %416 = icmp ne i8* %415, null
  br i1 %416, label %417, label %421

417:                                              ; preds = %413
  %418 = load i8*, i8** %11, align 8
  %419 = load i32, i32* @M_TMPFSNAME, align 4
  %420 = call i32 @free(i8* %418, i32 %419)
  br label %421

421:                                              ; preds = %417, %413
  br label %562

422:                                              ; preds = %408
  %423 = load %struct.tmpfs_node*, %struct.tmpfs_node** %19, align 8
  %424 = call i32 @TMPFS_NODE_UNLOCK(%struct.tmpfs_node* %423)
  %425 = load %struct.tmpfs_node*, %struct.tmpfs_node** %15, align 8
  %426 = call i32 @TMPFS_VALIDATE_DIR(%struct.tmpfs_node* %425)
  %427 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %12, align 8
  %428 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %427, i32 0, i32 1
  %429 = load %struct.tmpfs_node*, %struct.tmpfs_node** %428, align 8
  %430 = call i32 @TMPFS_NODE_LOCK(%struct.tmpfs_node* %429)
  %431 = load %struct.tmpfs_node*, %struct.tmpfs_node** %17, align 8
  %432 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %12, align 8
  %433 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %432, i32 0, i32 1
  %434 = load %struct.tmpfs_node*, %struct.tmpfs_node** %433, align 8
  %435 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %434, i32 0, i32 5
  %436 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %435, i32 0, i32 0
  store %struct.tmpfs_node* %431, %struct.tmpfs_node** %436, align 8
  %437 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %12, align 8
  %438 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %437, i32 0, i32 1
  %439 = load %struct.tmpfs_node*, %struct.tmpfs_node** %438, align 8
  %440 = call i32 @TMPFS_NODE_UNLOCK(%struct.tmpfs_node* %439)
  %441 = load %struct.tmpfs_node*, %struct.tmpfs_node** %17, align 8
  %442 = call i32 @TMPFS_NODE_LOCK(%struct.tmpfs_node* %441)
  %443 = load %struct.tmpfs_node*, %struct.tmpfs_node** %17, align 8
  %444 = call i32 @TMPFS_ASSERT_LOCKED(%struct.tmpfs_node* %443)
  %445 = load %struct.tmpfs_node*, %struct.tmpfs_node** %17, align 8
  %446 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %445, i32 0, i32 4
  %447 = load i32, i32* %446, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %446, align 4
  %449 = load %struct.tmpfs_node*, %struct.tmpfs_node** %17, align 8
  %450 = call i32 @TMPFS_NODE_UNLOCK(%struct.tmpfs_node* %449)
  %451 = load %struct.tmpfs_node*, %struct.tmpfs_node** %14, align 8
  %452 = call i32 @TMPFS_NODE_LOCK(%struct.tmpfs_node* %451)
  %453 = load %struct.tmpfs_node*, %struct.tmpfs_node** %14, align 8
  %454 = call i32 @TMPFS_ASSERT_LOCKED(%struct.tmpfs_node* %453)
  %455 = load %struct.tmpfs_node*, %struct.tmpfs_node** %14, align 8
  %456 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %455, i32 0, i32 4
  %457 = load i32, i32* %456, align 4
  %458 = add nsw i32 %457, -1
  store i32 %458, i32* %456, align 4
  %459 = load %struct.tmpfs_node*, %struct.tmpfs_node** %14, align 8
  %460 = call i32 @TMPFS_NODE_UNLOCK(%struct.tmpfs_node* %459)
  br label %461

461:                                              ; preds = %422, %347
  br label %462

462:                                              ; preds = %461, %343
  %463 = load %struct.vnode*, %struct.vnode** %4, align 8
  %464 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %12, align 8
  %465 = call i32 @tmpfs_dir_detach(%struct.vnode* %463, %struct.tmpfs_dirent* %464)
  %466 = load %struct.componentname*, %struct.componentname** %6, align 8
  %467 = getelementptr inbounds %struct.componentname, %struct.componentname* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 8
  %469 = load i32, i32* @DOWHITEOUT, align 4
  %470 = and i32 %468, %469
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %476

472:                                              ; preds = %462
  %473 = load %struct.vnode*, %struct.vnode** %4, align 8
  %474 = load %struct.componentname*, %struct.componentname** %6, align 8
  %475 = call i32 @tmpfs_dir_whiteout_add(%struct.vnode* %473, %struct.componentname* %474)
  br label %476

476:                                              ; preds = %472, %462
  %477 = load %struct.componentname*, %struct.componentname** %9, align 8
  %478 = getelementptr inbounds %struct.componentname, %struct.componentname* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 8
  %480 = load i32, i32* @ISWHITEOUT, align 4
  %481 = and i32 %479, %480
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %487

483:                                              ; preds = %476
  %484 = load %struct.vnode*, %struct.vnode** %7, align 8
  %485 = load %struct.componentname*, %struct.componentname** %9, align 8
  %486 = call i32 @tmpfs_dir_whiteout_remove(%struct.vnode* %484, %struct.componentname* %485)
  br label %487

487:                                              ; preds = %483, %476
  %488 = load i8*, i8** %11, align 8
  %489 = icmp ne i8* %488, null
  br i1 %489, label %490, label %526

490:                                              ; preds = %487
  %491 = load %struct.componentname*, %struct.componentname** %9, align 8
  %492 = getelementptr inbounds %struct.componentname, %struct.componentname* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 4
  %494 = load i32, i32* @MAXNAMLEN, align 4
  %495 = icmp sle i32 %493, %494
  %496 = zext i1 %495 to i32
  %497 = call i32 @MPASS(i32 %496)
  %498 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %12, align 8
  %499 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %498, i32 0, i32 0
  %500 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %499, i32 0, i32 0
  %501 = load i8*, i8** %500, align 8
  %502 = load i32, i32* @M_TMPFSNAME, align 4
  %503 = call i32 @free(i8* %501, i32 %502)
  %504 = load i8*, i8** %11, align 8
  %505 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %12, align 8
  %506 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %505, i32 0, i32 0
  %507 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %506, i32 0, i32 0
  store i8* %504, i8** %507, align 8
  %508 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %12, align 8
  %509 = load %struct.componentname*, %struct.componentname** %9, align 8
  %510 = getelementptr inbounds %struct.componentname, %struct.componentname* %509, i32 0, i32 2
  %511 = load i8*, i8** %510, align 8
  %512 = load %struct.componentname*, %struct.componentname** %9, align 8
  %513 = getelementptr inbounds %struct.componentname, %struct.componentname* %512, i32 0, i32 1
  %514 = load i32, i32* %513, align 4
  %515 = call i32 @tmpfs_dirent_init(%struct.tmpfs_dirent* %508, i8* %511, i32 %514)
  %516 = load i32, i32* @TMPFS_NODE_CHANGED, align 4
  %517 = load %struct.tmpfs_node*, %struct.tmpfs_node** %15, align 8
  %518 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %517, i32 0, i32 3
  %519 = load i32, i32* %518, align 8
  %520 = or i32 %519, %516
  store i32 %520, i32* %518, align 8
  %521 = load i32, i32* @TMPFS_NODE_MODIFIED, align 4
  %522 = load %struct.tmpfs_node*, %struct.tmpfs_node** %17, align 8
  %523 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %522, i32 0, i32 3
  %524 = load i32, i32* %523, align 8
  %525 = or i32 %524, %521
  store i32 %525, i32* %523, align 8
  br label %526

526:                                              ; preds = %490, %487
  %527 = load %struct.vnode*, %struct.vnode** %8, align 8
  %528 = icmp ne %struct.vnode* %527, null
  br i1 %528, label %529, label %543

529:                                              ; preds = %526
  %530 = load %struct.tmpfs_node*, %struct.tmpfs_node** %17, align 8
  %531 = load %struct.tmpfs_node*, %struct.tmpfs_node** %16, align 8
  %532 = load %struct.componentname*, %struct.componentname** %9, align 8
  %533 = call %struct.tmpfs_dirent* @tmpfs_dir_lookup(%struct.tmpfs_node* %530, %struct.tmpfs_node* %531, %struct.componentname* %532)
  store %struct.tmpfs_dirent* %533, %struct.tmpfs_dirent** %21, align 8
  %534 = load %struct.vnode*, %struct.vnode** %7, align 8
  %535 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %21, align 8
  %536 = call i32 @tmpfs_dir_detach(%struct.vnode* %534, %struct.tmpfs_dirent* %535)
  %537 = load %struct.vnode*, %struct.vnode** %8, align 8
  %538 = getelementptr inbounds %struct.vnode, %struct.vnode* %537, i32 0, i32 0
  %539 = load %struct.mount*, %struct.mount** %538, align 8
  %540 = call %struct.tmpfs_mount* @VFS_TO_TMPFS(%struct.mount* %539)
  %541 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %21, align 8
  %542 = call i32 @tmpfs_free_dirent(%struct.tmpfs_mount* %540, %struct.tmpfs_dirent* %541)
  br label %543

543:                                              ; preds = %529, %526
  %544 = load %struct.vnode*, %struct.vnode** %7, align 8
  %545 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %12, align 8
  %546 = call i32 @tmpfs_dir_attach(%struct.vnode* %544, %struct.tmpfs_dirent* %545)
  %547 = load %struct.vnode*, %struct.vnode** %5, align 8
  %548 = call i64 @tmpfs_use_nc(%struct.vnode* %547)
  %549 = icmp ne i64 %548, 0
  br i1 %549, label %550, label %561

550:                                              ; preds = %543
  %551 = load %struct.vnode*, %struct.vnode** %5, align 8
  %552 = call i32 @cache_purge(%struct.vnode* %551)
  %553 = load %struct.vnode*, %struct.vnode** %8, align 8
  %554 = icmp ne %struct.vnode* %553, null
  br i1 %554, label %555, label %558

555:                                              ; preds = %550
  %556 = load %struct.vnode*, %struct.vnode** %8, align 8
  %557 = call i32 @cache_purge(%struct.vnode* %556)
  br label %558

558:                                              ; preds = %555, %550
  %559 = load %struct.vnode*, %struct.vnode** %7, align 8
  %560 = call i32 @cache_purge_negative(%struct.vnode* %559)
  br label %561

561:                                              ; preds = %558, %543
  store i32 0, i32* %18, align 4
  br label %562

562:                                              ; preds = %561, %421, %384, %313, %272, %258, %243, %224, %189, %137
  %563 = load %struct.vnode*, %struct.vnode** %4, align 8
  %564 = load %struct.vnode*, %struct.vnode** %7, align 8
  %565 = icmp ne %struct.vnode* %563, %564
  br i1 %565, label %566, label %573

566:                                              ; preds = %562
  %567 = load %struct.vnode*, %struct.vnode** %4, align 8
  %568 = load %struct.vnode*, %struct.vnode** %8, align 8
  %569 = icmp ne %struct.vnode* %567, %568
  br i1 %569, label %570, label %573

570:                                              ; preds = %566
  %571 = load %struct.vnode*, %struct.vnode** %4, align 8
  %572 = call i32 @VOP_UNLOCK(%struct.vnode* %571, i32 0)
  br label %573

573:                                              ; preds = %570, %566, %562
  br label %574

574:                                              ; preds = %573, %110, %86, %80
  %575 = load %struct.vnode*, %struct.vnode** %7, align 8
  %576 = load %struct.vnode*, %struct.vnode** %8, align 8
  %577 = icmp eq %struct.vnode* %575, %576
  br i1 %577, label %578, label %581

578:                                              ; preds = %574
  %579 = load %struct.vnode*, %struct.vnode** %7, align 8
  %580 = call i32 @vrele(%struct.vnode* %579)
  br label %584

581:                                              ; preds = %574
  %582 = load %struct.vnode*, %struct.vnode** %7, align 8
  %583 = call i32 @vput(%struct.vnode* %582)
  br label %584

584:                                              ; preds = %581, %578
  %585 = load %struct.vnode*, %struct.vnode** %8, align 8
  %586 = icmp ne %struct.vnode* %585, null
  br i1 %586, label %587, label %590

587:                                              ; preds = %584
  %588 = load %struct.vnode*, %struct.vnode** %8, align 8
  %589 = call i32 @vput(%struct.vnode* %588)
  br label %590

590:                                              ; preds = %587, %584
  %591 = load %struct.vnode*, %struct.vnode** %4, align 8
  %592 = call i32 @vrele(%struct.vnode* %591)
  %593 = load %struct.vnode*, %struct.vnode** %5, align 8
  %594 = call i32 @vrele(%struct.vnode* %593)
  %595 = load %struct.mount*, %struct.mount** %10, align 8
  %596 = icmp ne %struct.mount* %595, null
  br i1 %596, label %597, label %600

597:                                              ; preds = %590
  %598 = load %struct.mount*, %struct.mount** %10, align 8
  %599 = call i32 @vfs_unbusy(%struct.mount* %598)
  br label %600

600:                                              ; preds = %597, %590
  %601 = load i32, i32* %18, align 4
  store i32 %601, i32* %2, align 4
  br label %602

602:                                              ; preds = %600, %119
  %603 = load i32, i32* %2, align 4
  ret i32 %603
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local i32 @IMPLIES(i32, i32) #1

declare dso_local i64 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @vfs_busy(%struct.mount*, i32) #1

declare dso_local i32 @tmpfs_rename_relock(%struct.vnode*, %struct.vnode**, %struct.vnode*, %struct.vnode**, %struct.componentname*, %struct.componentname*) #1

declare dso_local i32 @vfs_unbusy(%struct.mount*) #1

declare dso_local i32 @ASSERT_VOP_ELOCKED(%struct.vnode*, i8*) #1

declare dso_local %struct.tmpfs_mount* @VFS_TO_TMPFS(%struct.mount*) #1

declare dso_local %struct.tmpfs_node* @VP_TO_TMPFS_DIR(%struct.vnode*) #1

declare dso_local %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode*) #1

declare dso_local %struct.tmpfs_dirent* @tmpfs_dir_lookup(%struct.tmpfs_node*, %struct.tmpfs_node*, %struct.componentname*) #1

declare dso_local i64 @bcmp(i8*, i8*, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @TMPFS_LOCK(%struct.tmpfs_mount*) #1

declare dso_local i32 @TMPFS_NODE_LOCK(%struct.tmpfs_node*) #1

declare dso_local i32 @TMPFS_NODE_UNLOCK(%struct.tmpfs_node*) #1

declare dso_local i32 @TMPFS_UNLOCK(%struct.tmpfs_mount*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @TMPFS_VALIDATE_DIR(%struct.tmpfs_node*) #1

declare dso_local i32 @TMPFS_ASSERT_LOCKED(%struct.tmpfs_node*) #1

declare dso_local i32 @tmpfs_dir_detach(%struct.vnode*, %struct.tmpfs_dirent*) #1

declare dso_local i32 @tmpfs_dir_whiteout_add(%struct.vnode*, %struct.componentname*) #1

declare dso_local i32 @tmpfs_dir_whiteout_remove(%struct.vnode*, %struct.componentname*) #1

declare dso_local i32 @tmpfs_dirent_init(%struct.tmpfs_dirent*, i8*, i32) #1

declare dso_local i32 @tmpfs_free_dirent(%struct.tmpfs_mount*, %struct.tmpfs_dirent*) #1

declare dso_local i32 @tmpfs_dir_attach(%struct.vnode*, %struct.tmpfs_dirent*) #1

declare dso_local i64 @tmpfs_use_nc(%struct.vnode*) #1

declare dso_local i32 @cache_purge(%struct.vnode*) #1

declare dso_local i32 @cache_purge_negative(%struct.vnode*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
