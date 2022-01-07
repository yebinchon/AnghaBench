; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_readdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64 }
%struct.vop_readdir_args = type { i32*, i32*, i32**, i32, %struct.vnode*, %struct.uio* }
%struct.uio = type { i32, i32, %struct.thread* }
%struct.thread = type { i32 }
%struct.unionfs_node = type { %struct.vnode*, %struct.vnode* }
%struct.unionfs_node_status = type { i64, i64, i32 }
%struct.vattr = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"unionfs_readdir: enter\0A\00", align 1
@NULLVP = common dso_local global %struct.vnode* null, align 8
@VDIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_UPGRADE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@LK_DOWNGRADE = common dso_local global i32 0, align 4
@OPAQUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"unionfs_readdir: null upper vp\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"unionfs_readdir: null lower vp\00", align 1
@DEV_BSIZE = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"unionfs_readdir: leave (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_readdir_args*)* @unionfs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_readdir(%struct.vop_readdir_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_readdir_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.unionfs_node*, align 8
  %9 = alloca %struct.unionfs_node_status*, align 8
  %10 = alloca %struct.uio*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca %struct.vnode*, align 8
  %14 = alloca %struct.thread*, align 8
  %15 = alloca %struct.vattr, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store %struct.vop_readdir_args* %0, %struct.vop_readdir_args** %3, align 8
  %21 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %23 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %22, i32 0, i32 4
  %24 = load %struct.vnode*, %struct.vnode** %23, align 8
  %25 = call i32 @KASSERT_UNIONFS_VNODE(%struct.vnode* %24)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %26 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %27 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %26, i32 0, i32 5
  %28 = load %struct.uio*, %struct.uio** %27, align 8
  store %struct.uio* %28, %struct.uio** %10, align 8
  %29 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  store %struct.vnode* %29, %struct.vnode** %12, align 8
  %30 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  store %struct.vnode* %30, %struct.vnode** %13, align 8
  %31 = load %struct.uio*, %struct.uio** %10, align 8
  %32 = getelementptr inbounds %struct.uio, %struct.uio* %31, i32 0, i32 2
  %33 = load %struct.thread*, %struct.thread** %32, align 8
  store %struct.thread* %33, %struct.thread** %14, align 8
  store i32 0, i32* %16, align 4
  store i32* null, i32** %17, align 8
  %34 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %35 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %34, i32 0, i32 4
  %36 = load %struct.vnode*, %struct.vnode** %35, align 8
  store %struct.vnode* %36, %struct.vnode** %11, align 8
  %37 = load %struct.vnode*, %struct.vnode** %11, align 8
  %38 = getelementptr inbounds %struct.vnode, %struct.vnode* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @VDIR, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %1
  %43 = load i32, i32* @ENOTDIR, align 4
  store i32 %43, i32* %2, align 4
  br label %394

44:                                               ; preds = %1
  %45 = load %struct.vnode*, %struct.vnode** %11, align 8
  %46 = call i32 @VOP_ISLOCKED(%struct.vnode* %45)
  %47 = load i32, i32* @LK_EXCLUSIVE, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.vnode*, %struct.vnode** %11, align 8
  %51 = load i32, i32* @LK_UPGRADE, align 4
  %52 = call i64 @vn_lock(%struct.vnode* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.vnode*, %struct.vnode** %11, align 8
  %56 = load i32, i32* @LK_EXCLUSIVE, align 4
  %57 = load i32, i32* @LK_RETRY, align 4
  %58 = or i32 %56, %57
  %59 = call i64 @vn_lock(%struct.vnode* %55, i32 %58)
  br label %60

60:                                               ; preds = %54, %49
  store i32 1, i32* %6, align 4
  br label %61

61:                                               ; preds = %60, %44
  %62 = load %struct.vnode*, %struct.vnode** %11, align 8
  %63 = call %struct.unionfs_node* @VTOUNIONFS(%struct.vnode* %62)
  store %struct.unionfs_node* %63, %struct.unionfs_node** %8, align 8
  %64 = load %struct.unionfs_node*, %struct.unionfs_node** %8, align 8
  %65 = icmp eq %struct.unionfs_node* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @EBADF, align 4
  store i32 %67, i32* %4, align 4
  br label %101

68:                                               ; preds = %61
  %69 = load %struct.unionfs_node*, %struct.unionfs_node** %8, align 8
  %70 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %69, i32 0, i32 1
  %71 = load %struct.vnode*, %struct.vnode** %70, align 8
  store %struct.vnode* %71, %struct.vnode** %12, align 8
  %72 = load %struct.unionfs_node*, %struct.unionfs_node** %8, align 8
  %73 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %72, i32 0, i32 0
  %74 = load %struct.vnode*, %struct.vnode** %73, align 8
  store %struct.vnode* %74, %struct.vnode** %13, align 8
  %75 = load %struct.unionfs_node*, %struct.unionfs_node** %8, align 8
  %76 = load %struct.thread*, %struct.thread** %14, align 8
  %77 = call i32 @unionfs_get_node_status(%struct.unionfs_node* %75, %struct.thread* %76, %struct.unionfs_node_status** %9)
  %78 = load %struct.vnode*, %struct.vnode** %12, align 8
  %79 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %80 = icmp ne %struct.vnode* %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %68
  %82 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %9, align 8
  %83 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp sle i64 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %81, %68
  %87 = load %struct.vnode*, %struct.vnode** %13, align 8
  %88 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %89 = icmp ne %struct.vnode* %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %9, align 8
  %92 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp sle i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90, %81
  %96 = load %struct.unionfs_node*, %struct.unionfs_node** %8, align 8
  %97 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %9, align 8
  %98 = call i32 @unionfs_tryrem_node_status(%struct.unionfs_node* %96, %struct.unionfs_node_status* %97)
  %99 = load i32, i32* @EBADF, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %95, %90, %86
  br label %101

101:                                              ; preds = %100, %66
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load %struct.vnode*, %struct.vnode** %11, align 8
  %106 = load i32, i32* @LK_DOWNGRADE, align 4
  %107 = load i32, i32* @LK_RETRY, align 4
  %108 = or i32 %106, %107
  %109 = call i64 @vn_lock(%struct.vnode* %105, i32 %108)
  br label %110

110:                                              ; preds = %104, %101
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %378

114:                                              ; preds = %110
  %115 = load %struct.vnode*, %struct.vnode** %12, align 8
  %116 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %117 = icmp ne %struct.vnode* %115, %116
  br i1 %117, label %118, label %139

118:                                              ; preds = %114
  %119 = load %struct.vnode*, %struct.vnode** %13, align 8
  %120 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %121 = icmp ne %struct.vnode* %119, %120
  br i1 %121, label %122, label %139

122:                                              ; preds = %118
  %123 = load %struct.vnode*, %struct.vnode** %12, align 8
  %124 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %125 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @VOP_GETATTR(%struct.vnode* %123, %struct.vattr* %15, i32 %126)
  store i32 %127, i32* %4, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %378

130:                                              ; preds = %122
  %131 = getelementptr inbounds %struct.vattr, %struct.vattr* %15, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @OPAQUE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  store %struct.vnode* %137, %struct.vnode** %13, align 8
  br label %138

138:                                              ; preds = %136, %130
  br label %139

139:                                              ; preds = %138, %118, %114
  %140 = load %struct.vnode*, %struct.vnode** %12, align 8
  %141 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %142 = icmp ne %struct.vnode* %140, %141
  br i1 %142, label %143, label %165

143:                                              ; preds = %139
  %144 = load %struct.vnode*, %struct.vnode** %13, align 8
  %145 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %146 = icmp eq %struct.vnode* %144, %145
  br i1 %146, label %147, label %165

147:                                              ; preds = %143
  %148 = load %struct.vnode*, %struct.vnode** %12, align 8
  %149 = load %struct.uio*, %struct.uio** %10, align 8
  %150 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %151 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %154 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %157 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %160 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %159, i32 0, i32 2
  %161 = load i32**, i32*** %160, align 8
  %162 = call i32 @VOP_READDIR(%struct.vnode* %148, %struct.uio* %149, i32 %152, i32* %155, i32* %158, i32** %161)
  store i32 %162, i32* %4, align 4
  %163 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %9, align 8
  %164 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %163, i32 0, i32 2
  store i32 0, i32* %164, align 8
  br label %378

165:                                              ; preds = %143, %139
  %166 = load %struct.vnode*, %struct.vnode** %12, align 8
  %167 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %168 = icmp eq %struct.vnode* %166, %167
  br i1 %168, label %169, label %191

169:                                              ; preds = %165
  %170 = load %struct.vnode*, %struct.vnode** %13, align 8
  %171 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %172 = icmp ne %struct.vnode* %170, %171
  br i1 %172, label %173, label %191

173:                                              ; preds = %169
  %174 = load %struct.vnode*, %struct.vnode** %13, align 8
  %175 = load %struct.uio*, %struct.uio** %10, align 8
  %176 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %177 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %180 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %183 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %186 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %185, i32 0, i32 2
  %187 = load i32**, i32*** %186, align 8
  %188 = call i32 @VOP_READDIR(%struct.vnode* %174, %struct.uio* %175, i32 %178, i32* %181, i32* %184, i32** %187)
  store i32 %188, i32* %4, align 4
  %189 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %9, align 8
  %190 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %189, i32 0, i32 2
  store i32 2, i32* %190, align 8
  br label %378

191:                                              ; preds = %169, %165
  %192 = load %struct.vnode*, %struct.vnode** %12, align 8
  %193 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %194 = icmp ne %struct.vnode* %192, %193
  %195 = zext i1 %194 to i32
  %196 = call i32 @KASSERT(i32 %195, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %197 = load %struct.vnode*, %struct.vnode** %13, align 8
  %198 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %199 = icmp ne %struct.vnode* %197, %198
  %200 = zext i1 %199 to i32
  %201 = call i32 @KASSERT(i32 %200, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %202 = load %struct.uio*, %struct.uio** %10, align 8
  %203 = getelementptr inbounds %struct.uio, %struct.uio* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %191
  %207 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %9, align 8
  %208 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %207, i32 0, i32 2
  store i32 0, i32* %208, align 8
  br label %209

209:                                              ; preds = %206, %191
  %210 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %9, align 8
  %211 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %274

214:                                              ; preds = %209
  %215 = load %struct.vnode*, %struct.vnode** %12, align 8
  %216 = load %struct.uio*, %struct.uio** %10, align 8
  %217 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %218 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %221 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %224 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %223, i32 0, i32 2
  %225 = load i32**, i32*** %224, align 8
  %226 = call i32 @VOP_READDIR(%struct.vnode* %215, %struct.uio* %216, i32 %219, i32* %5, i32* %222, i32** %225)
  store i32 %226, i32* %4, align 4
  %227 = load i32, i32* %4, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %214
  %230 = load i32, i32* %5, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %229, %214
  br label %378

233:                                              ; preds = %229
  %234 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %9, align 8
  %235 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %234, i32 0, i32 2
  store i32 1, i32* %235, align 8
  %236 = load %struct.uio*, %struct.uio** %10, align 8
  %237 = getelementptr inbounds %struct.uio, %struct.uio* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.uio*, %struct.uio** %10, align 8
  %240 = getelementptr inbounds %struct.uio, %struct.uio* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @DEV_BSIZE, align 4
  %243 = sub nsw i32 %242, 1
  %244 = and i32 %241, %243
  %245 = icmp sle i32 %238, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %233
  br label %378

247:                                              ; preds = %233
  %248 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %249 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %248, i32 0, i32 1
  %250 = load i32*, i32** %249, align 8
  %251 = icmp ne i32* %250, null
  br i1 %251, label %252, label %260

252:                                              ; preds = %247
  %253 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %254 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %255, align 4
  store i32 %256, i32* %16, align 4
  %257 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %258 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %257, i32 0, i32 1
  %259 = load i32*, i32** %258, align 8
  store i32 0, i32* %259, align 4
  br label %260

260:                                              ; preds = %252, %247
  %261 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %262 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %261, i32 0, i32 2
  %263 = load i32**, i32*** %262, align 8
  %264 = icmp ne i32** %263, null
  br i1 %264, label %265, label %273

265:                                              ; preds = %260
  %266 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %267 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %266, i32 0, i32 2
  %268 = load i32**, i32*** %267, align 8
  %269 = load i32*, i32** %268, align 8
  store i32* %269, i32** %17, align 8
  %270 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %271 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %270, i32 0, i32 2
  %272 = load i32**, i32*** %271, align 8
  store i32* null, i32** %272, align 8
  br label %273

273:                                              ; preds = %265, %260
  br label %274

274:                                              ; preds = %273, %209
  %275 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %9, align 8
  %276 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = icmp eq i32 %277, 1
  br i1 %278, label %279, label %287

279:                                              ; preds = %274
  %280 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %9, align 8
  %281 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %280, i32 0, i32 2
  store i32 2, i32* %281, align 8
  %282 = load %struct.uio*, %struct.uio** %10, align 8
  %283 = getelementptr inbounds %struct.uio, %struct.uio* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  store i32 %284, i32* %7, align 4
  %285 = load %struct.uio*, %struct.uio** %10, align 8
  %286 = getelementptr inbounds %struct.uio, %struct.uio* %285, i32 0, i32 0
  store i32 0, i32* %286, align 8
  br label %287

287:                                              ; preds = %279, %274
  %288 = load %struct.vnode*, %struct.vnode** %13, align 8
  %289 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %290 = icmp eq %struct.vnode* %288, %289
  br i1 %290, label %291, label %293

291:                                              ; preds = %287
  %292 = load i32, i32* @EBADF, align 4
  store i32 %292, i32* %4, align 4
  br label %378

293:                                              ; preds = %287
  %294 = load %struct.vnode*, %struct.vnode** %13, align 8
  %295 = load %struct.uio*, %struct.uio** %10, align 8
  %296 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %297 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %300 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %299, i32 0, i32 0
  %301 = load i32*, i32** %300, align 8
  %302 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %303 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %302, i32 0, i32 1
  %304 = load i32*, i32** %303, align 8
  %305 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %306 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %305, i32 0, i32 2
  %307 = load i32**, i32*** %306, align 8
  %308 = call i32 @VOP_READDIR(%struct.vnode* %294, %struct.uio* %295, i32 %298, i32* %301, i32* %304, i32** %307)
  store i32 %308, i32* %4, align 4
  %309 = load %struct.uio*, %struct.uio** %10, align 8
  %310 = getelementptr inbounds %struct.uio, %struct.uio* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %293
  %314 = load i32, i32* %7, align 4
  %315 = load %struct.uio*, %struct.uio** %10, align 8
  %316 = getelementptr inbounds %struct.uio, %struct.uio* %315, i32 0, i32 0
  store i32 %314, i32* %316, align 8
  br label %317

317:                                              ; preds = %313, %293
  %318 = load i32*, i32** %17, align 8
  %319 = icmp ne i32* %318, null
  br i1 %319, label %320, label %377

320:                                              ; preds = %317
  %321 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %322 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %321, i32 0, i32 1
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* %16, align 4
  %326 = add nsw i32 %324, %325
  store i32 %326, i32* %18, align 4
  %327 = load i32, i32* %18, align 4
  %328 = sext i32 %327 to i64
  %329 = mul i64 %328, 4
  %330 = trunc i64 %329 to i32
  %331 = load i32, i32* @M_TEMP, align 4
  %332 = load i32, i32* @M_WAITOK, align 4
  %333 = call i64 @malloc(i32 %330, i32 %331, i32 %332)
  %334 = inttoptr i64 %333 to i32*
  store i32* %334, i32** %19, align 8
  %335 = load i32*, i32** %19, align 8
  store i32* %335, i32** %20, align 8
  %336 = load i32*, i32** %20, align 8
  %337 = load i32*, i32** %17, align 8
  %338 = load i32, i32* %16, align 4
  %339 = sext i32 %338 to i64
  %340 = mul i64 %339, 4
  %341 = trunc i64 %340 to i32
  %342 = call i32 @memcpy(i32* %336, i32* %337, i32 %341)
  %343 = load i32, i32* %16, align 4
  %344 = load i32*, i32** %20, align 8
  %345 = sext i32 %343 to i64
  %346 = getelementptr inbounds i32, i32* %344, i64 %345
  store i32* %346, i32** %20, align 8
  %347 = load i32*, i32** %20, align 8
  %348 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %349 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %348, i32 0, i32 2
  %350 = load i32**, i32*** %349, align 8
  %351 = load i32*, i32** %350, align 8
  %352 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %353 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %352, i32 0, i32 1
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %354, align 4
  %356 = sext i32 %355 to i64
  %357 = mul i64 %356, 4
  %358 = trunc i64 %357 to i32
  %359 = call i32 @memcpy(i32* %347, i32* %351, i32 %358)
  %360 = load i32*, i32** %17, align 8
  %361 = load i32, i32* @M_TEMP, align 4
  %362 = call i32 @free(i32* %360, i32 %361)
  %363 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %364 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %363, i32 0, i32 2
  %365 = load i32**, i32*** %364, align 8
  %366 = load i32*, i32** %365, align 8
  %367 = load i32, i32* @M_TEMP, align 4
  %368 = call i32 @free(i32* %366, i32 %367)
  %369 = load i32, i32* %18, align 4
  %370 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %371 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %370, i32 0, i32 1
  %372 = load i32*, i32** %371, align 8
  store i32 %369, i32* %372, align 4
  %373 = load i32*, i32** %19, align 8
  %374 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %375 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %374, i32 0, i32 2
  %376 = load i32**, i32*** %375, align 8
  store i32* %373, i32** %376, align 8
  br label %377

377:                                              ; preds = %320, %317
  br label %378

378:                                              ; preds = %377, %291, %246, %232, %173, %147, %129, %113
  %379 = load i32, i32* %4, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %390

381:                                              ; preds = %378
  %382 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %383 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %382, i32 0, i32 0
  %384 = load i32*, i32** %383, align 8
  %385 = icmp ne i32* %384, null
  br i1 %385, label %386, label %390

386:                                              ; preds = %381
  %387 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %388 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %387, i32 0, i32 0
  %389 = load i32*, i32** %388, align 8
  store i32 1, i32* %389, align 4
  br label %390

390:                                              ; preds = %386, %381, %378
  %391 = load i32, i32* %4, align 4
  %392 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %391)
  %393 = load i32, i32* %4, align 4
  store i32 %393, i32* %2, align 4
  br label %394

394:                                              ; preds = %390, %42
  %395 = load i32, i32* %2, align 4
  ret i32 %395
}

declare dso_local i32 @UNIONFS_INTERNAL_DEBUG(i8*, ...) #1

declare dso_local i32 @KASSERT_UNIONFS_VNODE(%struct.vnode*) #1

declare dso_local i32 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local i64 @vn_lock(%struct.vnode*, i32) #1

declare dso_local %struct.unionfs_node* @VTOUNIONFS(%struct.vnode*) #1

declare dso_local i32 @unionfs_get_node_status(%struct.unionfs_node*, %struct.thread*, %struct.unionfs_node_status**) #1

declare dso_local i32 @unionfs_tryrem_node_status(%struct.unionfs_node*, %struct.unionfs_node_status*) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, i32) #1

declare dso_local i32 @VOP_READDIR(%struct.vnode*, %struct.uio*, i32, i32*, i32*, i32**) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
