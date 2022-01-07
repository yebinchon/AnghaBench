; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, i32, i32* }
%struct.thread = type { i32 }
%struct.vop_rename_args = type { %struct.componentname*, %struct.vnode*, %struct.vnode*, %struct.componentname*, %struct.vnode*, %struct.vnode* }
%struct.componentname = type { i32, i32 }
%struct.unionfs_mount = type { i32 }
%struct.unionfs_node = type { %struct.vnode*, %struct.vnode* }

@.str = private unnamed_addr constant [23 x i8] c"unionfs_rename: enter\0A\00", align 1
@NULLVP = common dso_local global %struct.vnode* null, align 8
@curthread = common dso_local global %struct.thread* null, align 8
@unionfs_vnodeops = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RELEASE = common dso_local global i32 0, align 4
@DOWHITEOUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unionfs_rename: leave (%d)\0A\00", align 1
@HASBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_rename_args*)* @unionfs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_rename(%struct.vop_rename_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_rename_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.componentname*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.componentname*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca %struct.thread*, align 8
  %14 = alloca %struct.vnode*, align 8
  %15 = alloca %struct.vnode*, align 8
  %16 = alloca %struct.vnode*, align 8
  %17 = alloca %struct.vnode*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.unionfs_mount*, align 8
  %20 = alloca %struct.unionfs_node*, align 8
  store %struct.vop_rename_args* %0, %struct.vop_rename_args** %3, align 8
  %21 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  %22 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %23 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %22, i32 0, i32 5
  %24 = load %struct.vnode*, %struct.vnode** %23, align 8
  store %struct.vnode* %24, %struct.vnode** %5, align 8
  %25 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %26 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %25, i32 0, i32 4
  %27 = load %struct.vnode*, %struct.vnode** %26, align 8
  store %struct.vnode* %27, %struct.vnode** %6, align 8
  %28 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %29 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %28, i32 0, i32 3
  %30 = load %struct.componentname*, %struct.componentname** %29, align 8
  store %struct.componentname* %30, %struct.componentname** %7, align 8
  %31 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %32 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %31, i32 0, i32 2
  %33 = load %struct.vnode*, %struct.vnode** %32, align 8
  store %struct.vnode* %33, %struct.vnode** %8, align 8
  %34 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %35 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %34, i32 0, i32 1
  %36 = load %struct.vnode*, %struct.vnode** %35, align 8
  store %struct.vnode* %36, %struct.vnode** %9, align 8
  %37 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %38 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %37, i32 0, i32 0
  %39 = load %struct.componentname*, %struct.componentname** %38, align 8
  store %struct.componentname* %39, %struct.componentname** %10, align 8
  %40 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  store %struct.vnode* %40, %struct.vnode** %11, align 8
  %41 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  store %struct.vnode* %41, %struct.vnode** %12, align 8
  %42 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %42, %struct.thread** %13, align 8
  %43 = load %struct.vnode*, %struct.vnode** %5, align 8
  store %struct.vnode* %43, %struct.vnode** %14, align 8
  %44 = load %struct.vnode*, %struct.vnode** %6, align 8
  store %struct.vnode* %44, %struct.vnode** %15, align 8
  %45 = load %struct.vnode*, %struct.vnode** %8, align 8
  store %struct.vnode* %45, %struct.vnode** %16, align 8
  %46 = load %struct.vnode*, %struct.vnode** %9, align 8
  store %struct.vnode* %46, %struct.vnode** %17, align 8
  store i32 0, i32* %18, align 4
  %47 = load %struct.vnode*, %struct.vnode** %6, align 8
  %48 = getelementptr inbounds %struct.vnode, %struct.vnode* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.vnode*, %struct.vnode** %8, align 8
  %51 = getelementptr inbounds %struct.vnode, %struct.vnode* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %66, label %54

54:                                               ; preds = %1
  %55 = load %struct.vnode*, %struct.vnode** %9, align 8
  %56 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %57 = icmp ne %struct.vnode* %55, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %54
  %59 = load %struct.vnode*, %struct.vnode** %6, align 8
  %60 = getelementptr inbounds %struct.vnode, %struct.vnode* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.vnode*, %struct.vnode** %9, align 8
  %63 = getelementptr inbounds %struct.vnode, %struct.vnode* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %58, %1
  %67 = load %struct.vnode*, %struct.vnode** %6, align 8
  %68 = getelementptr inbounds %struct.vnode, %struct.vnode* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, @unionfs_vnodeops
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @ENODEV, align 4
  store i32 %72, i32* %4, align 4
  br label %75

73:                                               ; preds = %66
  %74 = load i32, i32* @EXDEV, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %71
  br label %398

76:                                               ; preds = %58, %54
  %77 = load %struct.vnode*, %struct.vnode** %6, align 8
  %78 = load %struct.vnode*, %struct.vnode** %9, align 8
  %79 = icmp eq %struct.vnode* %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %398

81:                                               ; preds = %76
  %82 = load %struct.vnode*, %struct.vnode** %5, align 8
  %83 = call i32 @KASSERT_UNIONFS_VNODE(%struct.vnode* %82)
  %84 = load %struct.vnode*, %struct.vnode** %6, align 8
  %85 = call i32 @KASSERT_UNIONFS_VNODE(%struct.vnode* %84)
  %86 = load %struct.vnode*, %struct.vnode** %8, align 8
  %87 = call i32 @KASSERT_UNIONFS_VNODE(%struct.vnode* %86)
  %88 = load %struct.vnode*, %struct.vnode** %9, align 8
  %89 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %90 = icmp ne %struct.vnode* %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %81
  %92 = load %struct.vnode*, %struct.vnode** %9, align 8
  %93 = call i32 @KASSERT_UNIONFS_VNODE(%struct.vnode* %92)
  br label %94

94:                                               ; preds = %91, %81
  %95 = load %struct.vnode*, %struct.vnode** %5, align 8
  %96 = call %struct.unionfs_node* @VTOUNIONFS(%struct.vnode* %95)
  store %struct.unionfs_node* %96, %struct.unionfs_node** %20, align 8
  %97 = load %struct.unionfs_node*, %struct.unionfs_node** %20, align 8
  %98 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %97, i32 0, i32 1
  %99 = load %struct.vnode*, %struct.vnode** %98, align 8
  %100 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %101 = icmp eq %struct.vnode* %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i32, i32* @ENODEV, align 4
  store i32 %103, i32* %4, align 4
  br label %398

104:                                              ; preds = %94
  %105 = load %struct.unionfs_node*, %struct.unionfs_node** %20, align 8
  %106 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %105, i32 0, i32 1
  %107 = load %struct.vnode*, %struct.vnode** %106, align 8
  store %struct.vnode* %107, %struct.vnode** %14, align 8
  %108 = load %struct.vnode*, %struct.vnode** %14, align 8
  %109 = call i32 @vref(%struct.vnode* %108)
  %110 = load %struct.vnode*, %struct.vnode** %6, align 8
  %111 = call %struct.unionfs_node* @VTOUNIONFS(%struct.vnode* %110)
  store %struct.unionfs_node* %111, %struct.unionfs_node** %20, align 8
  %112 = load %struct.vnode*, %struct.vnode** %6, align 8
  %113 = getelementptr inbounds %struct.vnode, %struct.vnode* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call %struct.unionfs_mount* @MOUNTTOUNIONFSMOUNT(i64 %114)
  store %struct.unionfs_mount* %115, %struct.unionfs_mount** %19, align 8
  %116 = load %struct.unionfs_node*, %struct.unionfs_node** %20, align 8
  %117 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %116, i32 0, i32 1
  %118 = load %struct.vnode*, %struct.vnode** %117, align 8
  %119 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %120 = icmp eq %struct.vnode* %118, %119
  br i1 %120, label %121, label %168

121:                                              ; preds = %104
  %122 = load %struct.vnode*, %struct.vnode** %6, align 8
  %123 = getelementptr inbounds %struct.vnode, %struct.vnode* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  switch i32 %124, label %165 [
    i32 128, label %125
    i32 129, label %145
  ]

125:                                              ; preds = %121
  %126 = load %struct.vnode*, %struct.vnode** %6, align 8
  %127 = load i32, i32* @LK_EXCLUSIVE, align 4
  %128 = call i32 @vn_lock(%struct.vnode* %126, i32 %127)
  store i32 %128, i32* %4, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %398

131:                                              ; preds = %125
  %132 = load %struct.unionfs_node*, %struct.unionfs_node** %20, align 8
  %133 = load %struct.componentname*, %struct.componentname** %7, align 8
  %134 = getelementptr inbounds %struct.componentname, %struct.componentname* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.thread*, %struct.thread** %13, align 8
  %137 = call i32 @unionfs_copyfile(%struct.unionfs_node* %132, i32 1, i32 %135, %struct.thread* %136)
  store i32 %137, i32* %4, align 4
  %138 = load %struct.vnode*, %struct.vnode** %6, align 8
  %139 = load i32, i32* @LK_RELEASE, align 4
  %140 = call i32 @VOP_UNLOCK(%struct.vnode* %138, i32 %139)
  %141 = load i32, i32* %4, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %131
  br label %398

144:                                              ; preds = %131
  br label %167

145:                                              ; preds = %121
  %146 = load %struct.vnode*, %struct.vnode** %6, align 8
  %147 = load i32, i32* @LK_EXCLUSIVE, align 4
  %148 = call i32 @vn_lock(%struct.vnode* %146, i32 %147)
  store i32 %148, i32* %4, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %398

151:                                              ; preds = %145
  %152 = load %struct.unionfs_mount*, %struct.unionfs_mount** %19, align 8
  %153 = load %struct.vnode*, %struct.vnode** %14, align 8
  %154 = load %struct.unionfs_node*, %struct.unionfs_node** %20, align 8
  %155 = load %struct.componentname*, %struct.componentname** %7, align 8
  %156 = load %struct.thread*, %struct.thread** %13, align 8
  %157 = call i32 @unionfs_mkshadowdir(%struct.unionfs_mount* %152, %struct.vnode* %153, %struct.unionfs_node* %154, %struct.componentname* %155, %struct.thread* %156)
  store i32 %157, i32* %4, align 4
  %158 = load %struct.vnode*, %struct.vnode** %6, align 8
  %159 = load i32, i32* @LK_RELEASE, align 4
  %160 = call i32 @VOP_UNLOCK(%struct.vnode* %158, i32 %159)
  %161 = load i32, i32* %4, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %151
  br label %398

164:                                              ; preds = %151
  br label %167

165:                                              ; preds = %121
  %166 = load i32, i32* @ENODEV, align 4
  store i32 %166, i32* %4, align 4
  br label %398

167:                                              ; preds = %164, %144
  store i32 1, i32* %18, align 4
  br label %168

168:                                              ; preds = %167, %104
  %169 = load %struct.unionfs_node*, %struct.unionfs_node** %20, align 8
  %170 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %169, i32 0, i32 0
  %171 = load %struct.vnode*, %struct.vnode** %170, align 8
  %172 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %173 = icmp ne %struct.vnode* %171, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %168
  %175 = load i32, i32* @DOWHITEOUT, align 4
  %176 = load %struct.componentname*, %struct.componentname** %7, align 8
  %177 = getelementptr inbounds %struct.componentname, %struct.componentname* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %174, %168
  %181 = load %struct.unionfs_node*, %struct.unionfs_node** %20, align 8
  %182 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %181, i32 0, i32 1
  %183 = load %struct.vnode*, %struct.vnode** %182, align 8
  store %struct.vnode* %183, %struct.vnode** %15, align 8
  %184 = load %struct.vnode*, %struct.vnode** %15, align 8
  %185 = call i32 @vref(%struct.vnode* %184)
  %186 = load %struct.vnode*, %struct.vnode** %8, align 8
  %187 = call %struct.unionfs_node* @VTOUNIONFS(%struct.vnode* %186)
  store %struct.unionfs_node* %187, %struct.unionfs_node** %20, align 8
  %188 = load %struct.unionfs_node*, %struct.unionfs_node** %20, align 8
  %189 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %188, i32 0, i32 1
  %190 = load %struct.vnode*, %struct.vnode** %189, align 8
  %191 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %192 = icmp eq %struct.vnode* %190, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %180
  %194 = load i32, i32* @ENODEV, align 4
  store i32 %194, i32* %4, align 4
  br label %398

195:                                              ; preds = %180
  %196 = load %struct.unionfs_node*, %struct.unionfs_node** %20, align 8
  %197 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %196, i32 0, i32 1
  %198 = load %struct.vnode*, %struct.vnode** %197, align 8
  store %struct.vnode* %198, %struct.vnode** %16, align 8
  %199 = load %struct.unionfs_node*, %struct.unionfs_node** %20, align 8
  %200 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %199, i32 0, i32 0
  %201 = load %struct.vnode*, %struct.vnode** %200, align 8
  store %struct.vnode* %201, %struct.vnode** %11, align 8
  %202 = load %struct.vnode*, %struct.vnode** %16, align 8
  %203 = call i32 @vref(%struct.vnode* %202)
  %204 = load %struct.vnode*, %struct.vnode** %8, align 8
  %205 = load %struct.vnode*, %struct.vnode** %9, align 8
  %206 = icmp eq %struct.vnode* %204, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %195
  %208 = load %struct.vnode*, %struct.vnode** %16, align 8
  store %struct.vnode* %208, %struct.vnode** %17, align 8
  %209 = load %struct.vnode*, %struct.vnode** %17, align 8
  %210 = call i32 @vref(%struct.vnode* %209)
  br label %243

211:                                              ; preds = %195
  %212 = load %struct.vnode*, %struct.vnode** %9, align 8
  %213 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %214 = icmp ne %struct.vnode* %212, %213
  br i1 %214, label %215, label %242

215:                                              ; preds = %211
  %216 = load %struct.vnode*, %struct.vnode** %9, align 8
  %217 = call %struct.unionfs_node* @VTOUNIONFS(%struct.vnode* %216)
  store %struct.unionfs_node* %217, %struct.unionfs_node** %20, align 8
  %218 = load %struct.unionfs_node*, %struct.unionfs_node** %20, align 8
  %219 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %218, i32 0, i32 1
  %220 = load %struct.vnode*, %struct.vnode** %219, align 8
  %221 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %222 = icmp eq %struct.vnode* %220, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %215
  %224 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  store %struct.vnode* %224, %struct.vnode** %17, align 8
  br label %241

225:                                              ; preds = %215
  %226 = load %struct.vnode*, %struct.vnode** %9, align 8
  %227 = getelementptr inbounds %struct.vnode, %struct.vnode* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = icmp eq i32 %228, 129
  br i1 %229, label %230, label %232

230:                                              ; preds = %225
  %231 = load i32, i32* @EINVAL, align 4
  store i32 %231, i32* %4, align 4
  br label %398

232:                                              ; preds = %225
  %233 = load %struct.unionfs_node*, %struct.unionfs_node** %20, align 8
  %234 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %233, i32 0, i32 1
  %235 = load %struct.vnode*, %struct.vnode** %234, align 8
  store %struct.vnode* %235, %struct.vnode** %17, align 8
  %236 = load %struct.unionfs_node*, %struct.unionfs_node** %20, align 8
  %237 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %236, i32 0, i32 0
  %238 = load %struct.vnode*, %struct.vnode** %237, align 8
  store %struct.vnode* %238, %struct.vnode** %12, align 8
  %239 = load %struct.vnode*, %struct.vnode** %17, align 8
  %240 = call i32 @vref(%struct.vnode* %239)
  br label %241

241:                                              ; preds = %232, %223
  br label %242

242:                                              ; preds = %241, %211
  br label %243

243:                                              ; preds = %242, %207
  %244 = load %struct.vnode*, %struct.vnode** %15, align 8
  %245 = load %struct.vnode*, %struct.vnode** %17, align 8
  %246 = icmp eq %struct.vnode* %244, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %243
  br label %398

248:                                              ; preds = %243
  %249 = load i32, i32* %18, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %303

251:                                              ; preds = %248
  %252 = load %struct.vnode*, %struct.vnode** %5, align 8
  %253 = load i32, i32* @LK_EXCLUSIVE, align 4
  %254 = call i32 @vn_lock(%struct.vnode* %252, i32 %253)
  store i32 %254, i32* %4, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %251
  br label %398

257:                                              ; preds = %251
  %258 = load %struct.vnode*, %struct.vnode** %5, align 8
  %259 = load %struct.componentname*, %struct.componentname** %7, align 8
  %260 = load %struct.thread*, %struct.thread** %13, align 8
  %261 = call i32 @unionfs_relookup_for_delete(%struct.vnode* %258, %struct.componentname* %259, %struct.thread* %260)
  store i32 %261, i32* %4, align 4
  %262 = load %struct.vnode*, %struct.vnode** %5, align 8
  %263 = load i32, i32* @LK_RELEASE, align 4
  %264 = call i32 @VOP_UNLOCK(%struct.vnode* %262, i32 %263)
  %265 = load i32, i32* %4, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %257
  br label %398

268:                                              ; preds = %257
  %269 = load %struct.vnode*, %struct.vnode** %9, align 8
  %270 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %271 = icmp ne %struct.vnode* %269, %270
  br i1 %271, label %272, label %280

272:                                              ; preds = %268
  %273 = load %struct.vnode*, %struct.vnode** %9, align 8
  %274 = load %struct.vnode*, %struct.vnode** %8, align 8
  %275 = icmp ne %struct.vnode* %273, %274
  br i1 %275, label %276, label %280

276:                                              ; preds = %272
  %277 = load %struct.vnode*, %struct.vnode** %9, align 8
  %278 = load i32, i32* @LK_RELEASE, align 4
  %279 = call i32 @VOP_UNLOCK(%struct.vnode* %277, i32 %278)
  br label %280

280:                                              ; preds = %276, %272, %268
  %281 = load %struct.vnode*, %struct.vnode** %8, align 8
  %282 = load %struct.componentname*, %struct.componentname** %10, align 8
  %283 = load %struct.thread*, %struct.thread** %13, align 8
  %284 = call i32 @unionfs_relookup_for_rename(%struct.vnode* %281, %struct.componentname* %282, %struct.thread* %283)
  store i32 %284, i32* %4, align 4
  %285 = load %struct.vnode*, %struct.vnode** %9, align 8
  %286 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %287 = icmp ne %struct.vnode* %285, %286
  br i1 %287, label %288, label %298

288:                                              ; preds = %280
  %289 = load %struct.vnode*, %struct.vnode** %9, align 8
  %290 = load %struct.vnode*, %struct.vnode** %8, align 8
  %291 = icmp ne %struct.vnode* %289, %290
  br i1 %291, label %292, label %298

292:                                              ; preds = %288
  %293 = load %struct.vnode*, %struct.vnode** %9, align 8
  %294 = load i32, i32* @LK_EXCLUSIVE, align 4
  %295 = load i32, i32* @LK_RETRY, align 4
  %296 = or i32 %294, %295
  %297 = call i32 @vn_lock(%struct.vnode* %293, i32 %296)
  br label %298

298:                                              ; preds = %292, %288, %280
  %299 = load i32, i32* %4, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %298
  br label %398

302:                                              ; preds = %298
  br label %303

303:                                              ; preds = %302, %248
  %304 = load %struct.vnode*, %struct.vnode** %14, align 8
  %305 = load %struct.vnode*, %struct.vnode** %15, align 8
  %306 = load %struct.componentname*, %struct.componentname** %7, align 8
  %307 = load %struct.vnode*, %struct.vnode** %16, align 8
  %308 = load %struct.vnode*, %struct.vnode** %17, align 8
  %309 = load %struct.componentname*, %struct.componentname** %10, align 8
  %310 = call i32 @VOP_RENAME(%struct.vnode* %304, %struct.vnode* %305, %struct.componentname* %306, %struct.vnode* %307, %struct.vnode* %308, %struct.componentname* %309)
  store i32 %310, i32* %4, align 4
  %311 = load i32, i32* %4, align 4
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %338

313:                                              ; preds = %303
  %314 = load %struct.vnode*, %struct.vnode** %17, align 8
  %315 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %316 = icmp ne %struct.vnode* %314, %315
  br i1 %316, label %317, label %325

317:                                              ; preds = %313
  %318 = load %struct.vnode*, %struct.vnode** %17, align 8
  %319 = getelementptr inbounds %struct.vnode, %struct.vnode* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = icmp eq i32 %320, 129
  br i1 %321, label %322, label %325

322:                                              ; preds = %317
  %323 = load %struct.vnode*, %struct.vnode** %8, align 8
  %324 = call i32 @cache_purge(%struct.vnode* %323)
  br label %325

325:                                              ; preds = %322, %317, %313
  %326 = load %struct.vnode*, %struct.vnode** %6, align 8
  %327 = getelementptr inbounds %struct.vnode, %struct.vnode* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = icmp eq i32 %328, 129
  br i1 %329, label %330, label %337

330:                                              ; preds = %325
  %331 = load %struct.vnode*, %struct.vnode** %5, align 8
  %332 = load %struct.vnode*, %struct.vnode** %8, align 8
  %333 = icmp ne %struct.vnode* %331, %332
  br i1 %333, label %334, label %337

334:                                              ; preds = %330
  %335 = load %struct.vnode*, %struct.vnode** %5, align 8
  %336 = call i32 @cache_purge(%struct.vnode* %335)
  br label %337

337:                                              ; preds = %334, %330, %325
  br label %338

338:                                              ; preds = %337, %303
  %339 = load %struct.vnode*, %struct.vnode** %11, align 8
  %340 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %341 = icmp ne %struct.vnode* %339, %340
  br i1 %341, label %342, label %346

342:                                              ; preds = %338
  %343 = load %struct.vnode*, %struct.vnode** %11, align 8
  %344 = load i32, i32* @LK_RELEASE, align 4
  %345 = call i32 @VOP_UNLOCK(%struct.vnode* %343, i32 %344)
  br label %346

346:                                              ; preds = %342, %338
  %347 = load %struct.vnode*, %struct.vnode** %8, align 8
  %348 = load %struct.vnode*, %struct.vnode** %16, align 8
  %349 = icmp ne %struct.vnode* %347, %348
  br i1 %349, label %350, label %353

350:                                              ; preds = %346
  %351 = load %struct.vnode*, %struct.vnode** %8, align 8
  %352 = call i32 @vrele(%struct.vnode* %351)
  br label %353

353:                                              ; preds = %350, %346
  %354 = load %struct.vnode*, %struct.vnode** %12, align 8
  %355 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %356 = icmp ne %struct.vnode* %354, %355
  br i1 %356, label %357, label %361

357:                                              ; preds = %353
  %358 = load %struct.vnode*, %struct.vnode** %12, align 8
  %359 = load i32, i32* @LK_RELEASE, align 4
  %360 = call i32 @VOP_UNLOCK(%struct.vnode* %358, i32 %359)
  br label %361

361:                                              ; preds = %357, %353
  %362 = load %struct.vnode*, %struct.vnode** %9, align 8
  %363 = load %struct.vnode*, %struct.vnode** %17, align 8
  %364 = icmp ne %struct.vnode* %362, %363
  br i1 %364, label %365, label %380

365:                                              ; preds = %361
  %366 = load %struct.vnode*, %struct.vnode** %9, align 8
  %367 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %368 = icmp ne %struct.vnode* %366, %367
  br i1 %368, label %369, label %380

369:                                              ; preds = %365
  %370 = load %struct.vnode*, %struct.vnode** %17, align 8
  %371 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %372 = icmp eq %struct.vnode* %370, %371
  br i1 %372, label %373, label %376

373:                                              ; preds = %369
  %374 = load %struct.vnode*, %struct.vnode** %9, align 8
  %375 = call i32 @vput(%struct.vnode* %374)
  br label %379

376:                                              ; preds = %369
  %377 = load %struct.vnode*, %struct.vnode** %9, align 8
  %378 = call i32 @vrele(%struct.vnode* %377)
  br label %379

379:                                              ; preds = %376, %373
  br label %380

380:                                              ; preds = %379, %365, %361
  %381 = load %struct.vnode*, %struct.vnode** %5, align 8
  %382 = load %struct.vnode*, %struct.vnode** %14, align 8
  %383 = icmp ne %struct.vnode* %381, %382
  br i1 %383, label %384, label %387

384:                                              ; preds = %380
  %385 = load %struct.vnode*, %struct.vnode** %5, align 8
  %386 = call i32 @vrele(%struct.vnode* %385)
  br label %387

387:                                              ; preds = %384, %380
  %388 = load %struct.vnode*, %struct.vnode** %6, align 8
  %389 = load %struct.vnode*, %struct.vnode** %15, align 8
  %390 = icmp ne %struct.vnode* %388, %389
  br i1 %390, label %391, label %394

391:                                              ; preds = %387
  %392 = load %struct.vnode*, %struct.vnode** %6, align 8
  %393 = call i32 @vrele(%struct.vnode* %392)
  br label %394

394:                                              ; preds = %391, %387
  %395 = load i32, i32* %4, align 4
  %396 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %395)
  %397 = load i32, i32* %4, align 4
  store i32 %397, i32* %2, align 4
  br label %455

398:                                              ; preds = %301, %267, %256, %247, %230, %193, %165, %163, %150, %143, %130, %102, %80, %75
  %399 = load %struct.vnode*, %struct.vnode** %8, align 8
  %400 = call i32 @vput(%struct.vnode* %399)
  %401 = load %struct.vnode*, %struct.vnode** %8, align 8
  %402 = load %struct.vnode*, %struct.vnode** %16, align 8
  %403 = icmp ne %struct.vnode* %401, %402
  br i1 %403, label %404, label %407

404:                                              ; preds = %398
  %405 = load %struct.vnode*, %struct.vnode** %16, align 8
  %406 = call i32 @vrele(%struct.vnode* %405)
  br label %407

407:                                              ; preds = %404, %398
  %408 = load %struct.vnode*, %struct.vnode** %9, align 8
  %409 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %410 = icmp ne %struct.vnode* %408, %409
  br i1 %410, label %411, label %422

411:                                              ; preds = %407
  %412 = load %struct.vnode*, %struct.vnode** %8, align 8
  %413 = load %struct.vnode*, %struct.vnode** %9, align 8
  %414 = icmp ne %struct.vnode* %412, %413
  br i1 %414, label %415, label %418

415:                                              ; preds = %411
  %416 = load %struct.vnode*, %struct.vnode** %9, align 8
  %417 = call i32 @vput(%struct.vnode* %416)
  br label %421

418:                                              ; preds = %411
  %419 = load %struct.vnode*, %struct.vnode** %9, align 8
  %420 = call i32 @vrele(%struct.vnode* %419)
  br label %421

421:                                              ; preds = %418, %415
  br label %422

422:                                              ; preds = %421, %407
  %423 = load %struct.vnode*, %struct.vnode** %9, align 8
  %424 = load %struct.vnode*, %struct.vnode** %17, align 8
  %425 = icmp ne %struct.vnode* %423, %424
  br i1 %425, label %426, label %433

426:                                              ; preds = %422
  %427 = load %struct.vnode*, %struct.vnode** %17, align 8
  %428 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %429 = icmp ne %struct.vnode* %427, %428
  br i1 %429, label %430, label %433

430:                                              ; preds = %426
  %431 = load %struct.vnode*, %struct.vnode** %17, align 8
  %432 = call i32 @vrele(%struct.vnode* %431)
  br label %433

433:                                              ; preds = %430, %426, %422
  %434 = load %struct.vnode*, %struct.vnode** %5, align 8
  %435 = load %struct.vnode*, %struct.vnode** %14, align 8
  %436 = icmp ne %struct.vnode* %434, %435
  br i1 %436, label %437, label %440

437:                                              ; preds = %433
  %438 = load %struct.vnode*, %struct.vnode** %14, align 8
  %439 = call i32 @vrele(%struct.vnode* %438)
  br label %440

440:                                              ; preds = %437, %433
  %441 = load %struct.vnode*, %struct.vnode** %6, align 8
  %442 = load %struct.vnode*, %struct.vnode** %15, align 8
  %443 = icmp ne %struct.vnode* %441, %442
  br i1 %443, label %444, label %447

444:                                              ; preds = %440
  %445 = load %struct.vnode*, %struct.vnode** %15, align 8
  %446 = call i32 @vrele(%struct.vnode* %445)
  br label %447

447:                                              ; preds = %444, %440
  %448 = load %struct.vnode*, %struct.vnode** %5, align 8
  %449 = call i32 @vrele(%struct.vnode* %448)
  %450 = load %struct.vnode*, %struct.vnode** %6, align 8
  %451 = call i32 @vrele(%struct.vnode* %450)
  %452 = load i32, i32* %4, align 4
  %453 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %452)
  %454 = load i32, i32* %4, align 4
  store i32 %454, i32* %2, align 4
  br label %455

455:                                              ; preds = %447, %394
  %456 = load i32, i32* %2, align 4
  ret i32 %456
}

declare dso_local i32 @UNIONFS_INTERNAL_DEBUG(i8*, ...) #1

declare dso_local i32 @KASSERT_UNIONFS_VNODE(%struct.vnode*) #1

declare dso_local %struct.unionfs_node* @VTOUNIONFS(%struct.vnode*) #1

declare dso_local i32 @vref(%struct.vnode*) #1

declare dso_local %struct.unionfs_mount* @MOUNTTOUNIONFSMOUNT(i64) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @unionfs_copyfile(%struct.unionfs_node*, i32, i32, %struct.thread*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @unionfs_mkshadowdir(%struct.unionfs_mount*, %struct.vnode*, %struct.unionfs_node*, %struct.componentname*, %struct.thread*) #1

declare dso_local i32 @unionfs_relookup_for_delete(%struct.vnode*, %struct.componentname*, %struct.thread*) #1

declare dso_local i32 @unionfs_relookup_for_rename(%struct.vnode*, %struct.componentname*, %struct.thread*) #1

declare dso_local i32 @VOP_RENAME(%struct.vnode*, %struct.vnode*, %struct.componentname*, %struct.vnode*, %struct.vnode*, %struct.componentname*) #1

declare dso_local i32 @cache_purge(%struct.vnode*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
