; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.thread = type { i32 }
%struct.vop_cachedlookup_args = type { %struct.vnode**, %struct.vnode*, %struct.componentname* }
%struct.componentname = type { i64, i64, i8*, i32, i32, i32 }
%struct.unionfs_node = type { %struct.vnode*, %struct.vnode*, %struct.vnode* }
%struct.vattr = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@NULLVP = common dso_local global %struct.vnode* null, align 8
@curthread = common dso_local global %struct.thread* null, align 8
@.str = private unnamed_addr constant [56 x i8] c"unionfs_lookup: enter: nameiop=%ld, flags=%lx, path=%s\0A\00", align 1
@VDIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@ISLASTCN = common dso_local global i64 0, align 8
@MNT_RDONLY = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i64 0, align 8
@EROFS = common dso_local global i32 0, align 4
@ISDOTDOT = common dso_local global i64 0, align 8
@LK_RELEASE = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@DELETE = common dso_local global i64 0, align 8
@RENAME = common dso_local global i64 0, align 8
@LK_TYPE_MASK = common dso_local global i32 0, align 4
@MAKEENTRY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"unionfs_lookup: leave (%d)\0A\00", align 1
@EJUSTRETURN = common dso_local global i32 0, align 4
@ISWHITEOUT = common dso_local global i32 0, align 4
@OPAQUE = common dso_local global i32 0, align 4
@DOWHITEOUT = common dso_local global i64 0, align 8
@LK_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"unionfs_lookup: Unable to create shadow dir.\00", align 1
@VSOCK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"unionfs_lookup: Unable to create unionfs vnode.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_cachedlookup_args*)* @unionfs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_lookup(%struct.vop_cachedlookup_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_cachedlookup_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.unionfs_node*, align 8
  %13 = alloca %struct.vnode*, align 8
  %14 = alloca %struct.vnode*, align 8
  %15 = alloca %struct.vnode*, align 8
  %16 = alloca %struct.vnode*, align 8
  %17 = alloca %struct.vnode*, align 8
  %18 = alloca %struct.vnode*, align 8
  %19 = alloca %struct.vnode*, align 8
  %20 = alloca %struct.vattr, align 4
  %21 = alloca %struct.componentname*, align 8
  %22 = alloca %struct.thread*, align 8
  store %struct.vop_cachedlookup_args* %0, %struct.vop_cachedlookup_args** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %23 = load i32, i32* @ENOENT, align 4
  store i32 %23, i32* %8, align 4
  store i32 %23, i32* %7, align 4
  store i32 %23, i32* %6, align 4
  %24 = load %struct.vop_cachedlookup_args*, %struct.vop_cachedlookup_args** %3, align 8
  %25 = getelementptr inbounds %struct.vop_cachedlookup_args, %struct.vop_cachedlookup_args* %24, i32 0, i32 2
  %26 = load %struct.componentname*, %struct.componentname** %25, align 8
  store %struct.componentname* %26, %struct.componentname** %21, align 8
  %27 = load %struct.componentname*, %struct.componentname** %21, align 8
  %28 = getelementptr inbounds %struct.componentname, %struct.componentname* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %9, align 8
  %30 = load %struct.componentname*, %struct.componentname** %21, align 8
  %31 = getelementptr inbounds %struct.componentname, %struct.componentname* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %10, align 8
  %33 = load %struct.vop_cachedlookup_args*, %struct.vop_cachedlookup_args** %3, align 8
  %34 = getelementptr inbounds %struct.vop_cachedlookup_args, %struct.vop_cachedlookup_args* %33, i32 0, i32 1
  %35 = load %struct.vnode*, %struct.vnode** %34, align 8
  store %struct.vnode* %35, %struct.vnode** %13, align 8
  %36 = load %struct.vnode*, %struct.vnode** %13, align 8
  %37 = call %struct.unionfs_node* @VTOUNIONFS(%struct.vnode* %36)
  store %struct.unionfs_node* %37, %struct.unionfs_node** %12, align 8
  %38 = load %struct.unionfs_node*, %struct.unionfs_node** %12, align 8
  %39 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %38, i32 0, i32 2
  %40 = load %struct.vnode*, %struct.vnode** %39, align 8
  store %struct.vnode* %40, %struct.vnode** %14, align 8
  %41 = load %struct.unionfs_node*, %struct.unionfs_node** %12, align 8
  %42 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %41, i32 0, i32 1
  %43 = load %struct.vnode*, %struct.vnode** %42, align 8
  store %struct.vnode* %43, %struct.vnode** %15, align 8
  %44 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  store %struct.vnode* %44, %struct.vnode** %18, align 8
  store %struct.vnode* %44, %struct.vnode** %17, align 8
  store %struct.vnode* %44, %struct.vnode** %16, align 8
  %45 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %45, %struct.thread** %22, align 8
  %46 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %47 = load %struct.vop_cachedlookup_args*, %struct.vop_cachedlookup_args** %3, align 8
  %48 = getelementptr inbounds %struct.vop_cachedlookup_args, %struct.vop_cachedlookup_args* %47, i32 0, i32 0
  %49 = load %struct.vnode**, %struct.vnode*** %48, align 8
  store %struct.vnode* %46, %struct.vnode** %49, align 8
  %50 = load i64, i64* %9, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.componentname*, %struct.componentname** %21, align 8
  %54 = getelementptr inbounds %struct.componentname, %struct.componentname* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (i8*, i32, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %51, i64 %52, i8* %55)
  %57 = load %struct.vnode*, %struct.vnode** %13, align 8
  %58 = getelementptr inbounds %struct.vnode, %struct.vnode* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @VDIR, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %1
  %63 = load i32, i32* @ENOTDIR, align 4
  store i32 %63, i32* %2, align 4
  br label %740

64:                                               ; preds = %1
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @ISLASTCN, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %64
  %70 = load %struct.vnode*, %struct.vnode** %13, align 8
  %71 = getelementptr inbounds %struct.vnode, %struct.vnode* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @MNT_RDONLY, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %69
  %79 = load i64, i64* @LOOKUP, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* @EROFS, align 4
  store i32 %83, i32* %2, align 4
  br label %740

84:                                               ; preds = %78, %69, %64
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* @ISDOTDOT, align 8
  %87 = and i64 %85, %86
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %231

89:                                               ; preds = %84
  %90 = load i64, i64* @LOOKUP, align 8
  %91 = load i64, i64* %9, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load %struct.vnode*, %struct.vnode** %14, align 8
  %95 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %96 = icmp eq %struct.vnode* %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* @EROFS, align 4
  store i32 %98, i32* %2, align 4
  br label %740

99:                                               ; preds = %93, %89
  %100 = load %struct.vnode*, %struct.vnode** %14, align 8
  %101 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %102 = icmp ne %struct.vnode* %100, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %99
  %104 = load %struct.vnode*, %struct.vnode** %14, align 8
  store %struct.vnode* %104, %struct.vnode** %19, align 8
  %105 = load %struct.vnode*, %struct.vnode** %15, align 8
  %106 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %107 = icmp ne %struct.vnode* %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load %struct.vnode*, %struct.vnode** %15, align 8
  %110 = load i32, i32* @LK_RELEASE, align 4
  %111 = call i32 @VOP_UNLOCK(%struct.vnode* %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %103
  br label %115

113:                                              ; preds = %99
  %114 = load %struct.vnode*, %struct.vnode** %15, align 8
  store %struct.vnode* %114, %struct.vnode** %19, align 8
  br label %115

115:                                              ; preds = %113, %112
  %116 = load %struct.vnode*, %struct.vnode** %19, align 8
  %117 = load %struct.componentname*, %struct.componentname** %21, align 8
  %118 = call i32 @VOP_LOOKUP(%struct.vnode* %116, %struct.vnode** %16, %struct.componentname* %117)
  store i32 %118, i32* %6, align 4
  %119 = load %struct.vnode*, %struct.vnode** %19, align 8
  %120 = load %struct.vnode*, %struct.vnode** %14, align 8
  %121 = icmp eq %struct.vnode* %119, %120
  br i1 %121, label %122, label %135

122:                                              ; preds = %115
  %123 = load %struct.vnode*, %struct.vnode** %15, align 8
  %124 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %125 = icmp ne %struct.vnode* %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %122
  %127 = load %struct.vnode*, %struct.vnode** %14, align 8
  %128 = load i32, i32* @LK_RELEASE, align 4
  %129 = call i32 @VOP_UNLOCK(%struct.vnode* %127, i32 %128)
  %130 = load %struct.vnode*, %struct.vnode** %13, align 8
  %131 = load i32, i32* @LK_EXCLUSIVE, align 4
  %132 = load i32, i32* @LK_RETRY, align 4
  %133 = or i32 %131, %132
  %134 = call i32 @vn_lock(%struct.vnode* %130, i32 %133)
  br label %135

135:                                              ; preds = %126, %122, %115
  %136 = load i32, i32* %6, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %212

138:                                              ; preds = %135
  %139 = load i64, i64* %9, align 8
  %140 = load i64, i64* @DELETE, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %153, label %142

142:                                              ; preds = %138
  %143 = load i64, i64* %9, align 8
  %144 = load i64, i64* @RENAME, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %153, label %146

146:                                              ; preds = %142
  %147 = load %struct.componentname*, %struct.componentname** %21, align 8
  %148 = getelementptr inbounds %struct.componentname, %struct.componentname* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @LK_TYPE_MASK, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %146, %142, %138
  %154 = load %struct.vnode*, %struct.vnode** %16, align 8
  %155 = load i32, i32* @LK_RELEASE, align 4
  %156 = call i32 @VOP_UNLOCK(%struct.vnode* %154, i32 %155)
  br label %157

157:                                              ; preds = %153, %146
  %158 = load %struct.vnode*, %struct.vnode** %16, align 8
  %159 = call i32 @vrele(%struct.vnode* %158)
  %160 = load %struct.vnode*, %struct.vnode** %13, align 8
  %161 = load i32, i32* @LK_RELEASE, align 4
  %162 = call i32 @VOP_UNLOCK(%struct.vnode* %160, i32 %161)
  %163 = load %struct.unionfs_node*, %struct.unionfs_node** %12, align 8
  %164 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %163, i32 0, i32 0
  %165 = load %struct.vnode*, %struct.vnode** %164, align 8
  %166 = load %struct.vop_cachedlookup_args*, %struct.vop_cachedlookup_args** %3, align 8
  %167 = getelementptr inbounds %struct.vop_cachedlookup_args, %struct.vop_cachedlookup_args* %166, i32 0, i32 0
  %168 = load %struct.vnode**, %struct.vnode*** %167, align 8
  store %struct.vnode* %165, %struct.vnode** %168, align 8
  %169 = load %struct.unionfs_node*, %struct.unionfs_node** %12, align 8
  %170 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %169, i32 0, i32 0
  %171 = load %struct.vnode*, %struct.vnode** %170, align 8
  %172 = call i32 @vref(%struct.vnode* %171)
  %173 = load i64, i64* %9, align 8
  %174 = load i64, i64* @DELETE, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %180, label %176

176:                                              ; preds = %157
  %177 = load i64, i64* %9, align 8
  %178 = load i64, i64* @RENAME, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %188

180:                                              ; preds = %176, %157
  %181 = load %struct.unionfs_node*, %struct.unionfs_node** %12, align 8
  %182 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %181, i32 0, i32 0
  %183 = load %struct.vnode*, %struct.vnode** %182, align 8
  %184 = load i32, i32* @LK_EXCLUSIVE, align 4
  %185 = load i32, i32* @LK_RETRY, align 4
  %186 = or i32 %184, %185
  %187 = call i32 @vn_lock(%struct.vnode* %183, i32 %186)
  br label %206

188:                                              ; preds = %176
  %189 = load %struct.componentname*, %struct.componentname** %21, align 8
  %190 = getelementptr inbounds %struct.componentname, %struct.componentname* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @LK_TYPE_MASK, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %188
  %196 = load %struct.unionfs_node*, %struct.unionfs_node** %12, align 8
  %197 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %196, i32 0, i32 0
  %198 = load %struct.vnode*, %struct.vnode** %197, align 8
  %199 = load %struct.componentname*, %struct.componentname** %21, align 8
  %200 = getelementptr inbounds %struct.componentname, %struct.componentname* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @LK_RETRY, align 4
  %203 = or i32 %201, %202
  %204 = call i32 @vn_lock(%struct.vnode* %198, i32 %203)
  br label %205

205:                                              ; preds = %195, %188
  br label %206

206:                                              ; preds = %205, %180
  %207 = load %struct.vnode*, %struct.vnode** %13, align 8
  %208 = load i32, i32* @LK_EXCLUSIVE, align 4
  %209 = load i32, i32* @LK_RETRY, align 4
  %210 = or i32 %208, %209
  %211 = call i32 @vn_lock(%struct.vnode* %207, i32 %210)
  br label %227

212:                                              ; preds = %135
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* @ENOENT, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %226

216:                                              ; preds = %212
  %217 = load i64, i64* %10, align 8
  %218 = load i64, i64* @MAKEENTRY, align 8
  %219 = and i64 %217, %218
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %216
  %222 = load %struct.vnode*, %struct.vnode** %13, align 8
  %223 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %224 = load %struct.componentname*, %struct.componentname** %21, align 8
  %225 = call i32 @cache_enter(%struct.vnode* %222, %struct.vnode* %223, %struct.componentname* %224)
  br label %226

226:                                              ; preds = %221, %216, %212
  br label %227

227:                                              ; preds = %226, %206
  %228 = load i32, i32* %6, align 4
  %229 = call i32 (i8*, i32, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %228)
  %230 = load i32, i32* %6, align 4
  store i32 %230, i32* %2, align 4
  br label %740

231:                                              ; preds = %84
  %232 = load %struct.vnode*, %struct.vnode** %14, align 8
  %233 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %234 = icmp ne %struct.vnode* %232, %233
  br i1 %234, label %235, label %318

235:                                              ; preds = %231
  %236 = load %struct.vnode*, %struct.vnode** %14, align 8
  %237 = load %struct.componentname*, %struct.componentname** %21, align 8
  %238 = call i32 @VOP_LOOKUP(%struct.vnode* %236, %struct.vnode** %17, %struct.componentname* %237)
  store i32 %238, i32* %7, align 4
  %239 = load i32, i32* %7, align 4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %277

241:                                              ; preds = %235
  %242 = load %struct.vnode*, %struct.vnode** %14, align 8
  %243 = load %struct.vnode*, %struct.vnode** %17, align 8
  %244 = icmp eq %struct.vnode* %242, %243
  br i1 %244, label %245, label %257

245:                                              ; preds = %241
  %246 = load %struct.vnode*, %struct.vnode** %17, align 8
  %247 = call i32 @vrele(%struct.vnode* %246)
  %248 = load %struct.vnode*, %struct.vnode** %13, align 8
  %249 = load %struct.vop_cachedlookup_args*, %struct.vop_cachedlookup_args** %3, align 8
  %250 = getelementptr inbounds %struct.vop_cachedlookup_args, %struct.vop_cachedlookup_args* %249, i32 0, i32 0
  %251 = load %struct.vnode**, %struct.vnode*** %250, align 8
  store %struct.vnode* %248, %struct.vnode** %251, align 8
  %252 = load %struct.vnode*, %struct.vnode** %13, align 8
  %253 = call i32 @vref(%struct.vnode* %252)
  %254 = load i32, i32* %7, align 4
  %255 = call i32 (i8*, i32, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %254)
  %256 = load i32, i32* %7, align 4
  store i32 %256, i32* %2, align 4
  br label %740

257:                                              ; preds = %241
  %258 = load i64, i64* %9, align 8
  %259 = load i64, i64* @DELETE, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %272, label %261

261:                                              ; preds = %257
  %262 = load i64, i64* %9, align 8
  %263 = load i64, i64* @RENAME, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %272, label %265

265:                                              ; preds = %261
  %266 = load %struct.componentname*, %struct.componentname** %21, align 8
  %267 = getelementptr inbounds %struct.componentname, %struct.componentname* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @LK_TYPE_MASK, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %265, %261, %257
  %273 = load %struct.vnode*, %struct.vnode** %17, align 8
  %274 = load i32, i32* @LK_RELEASE, align 4
  %275 = call i32 @VOP_UNLOCK(%struct.vnode* %273, i32 %274)
  br label %276

276:                                              ; preds = %272, %265
  br label %277

277:                                              ; preds = %276, %235
  %278 = load i32, i32* %7, align 4
  %279 = load i32, i32* @ENOENT, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %285, label %281

281:                                              ; preds = %277
  %282 = load i32, i32* %7, align 4
  %283 = load i32, i32* @EJUSTRETURN, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %295

285:                                              ; preds = %281, %277
  %286 = load %struct.componentname*, %struct.componentname** %21, align 8
  %287 = getelementptr inbounds %struct.componentname, %struct.componentname* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = load i32, i32* @ISWHITEOUT, align 4
  %290 = sext i32 %289 to i64
  %291 = and i64 %288, %290
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %285
  store i32 1, i32* %4, align 4
  br label %294

294:                                              ; preds = %293, %285
  br label %295

295:                                              ; preds = %294, %281
  %296 = load i32, i32* %4, align 4
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %317

298:                                              ; preds = %295
  %299 = load %struct.vnode*, %struct.vnode** %15, align 8
  %300 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %301 = icmp ne %struct.vnode* %299, %300
  br i1 %301, label %302, label %317

302:                                              ; preds = %298
  %303 = load %struct.vnode*, %struct.vnode** %14, align 8
  %304 = load %struct.componentname*, %struct.componentname** %21, align 8
  %305 = getelementptr inbounds %struct.componentname, %struct.componentname* %304, i32 0, i32 5
  %306 = load i32, i32* %305, align 8
  %307 = call i32 @VOP_GETATTR(%struct.vnode* %303, %struct.vattr* %20, i32 %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %316, label %309

309:                                              ; preds = %302
  %310 = getelementptr inbounds %struct.vattr, %struct.vattr* %20, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @OPAQUE, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %309
  store i32 1, i32* %4, align 4
  br label %316

316:                                              ; preds = %315, %309, %302
  br label %317

317:                                              ; preds = %316, %298, %295
  br label %318

318:                                              ; preds = %317, %231
  %319 = load %struct.vnode*, %struct.vnode** %15, align 8
  %320 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %321 = icmp ne %struct.vnode* %319, %320
  br i1 %321, label %322, label %399

322:                                              ; preds = %318
  %323 = load i64, i64* %10, align 8
  %324 = load i64, i64* @DOWHITEOUT, align 8
  %325 = and i64 %323, %324
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %399, label %327

327:                                              ; preds = %322
  %328 = load i32, i32* %4, align 4
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %399

330:                                              ; preds = %327
  %331 = load i64, i64* @LOOKUP, align 8
  %332 = load %struct.componentname*, %struct.componentname** %21, align 8
  %333 = getelementptr inbounds %struct.componentname, %struct.componentname* %332, i32 0, i32 0
  store i64 %331, i64* %333, align 8
  %334 = load %struct.componentname*, %struct.componentname** %21, align 8
  %335 = getelementptr inbounds %struct.componentname, %struct.componentname* %334, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  store i64 %336, i64* %11, align 8
  %337 = load i64, i64* %10, align 8
  %338 = load %struct.componentname*, %struct.componentname** %21, align 8
  %339 = getelementptr inbounds %struct.componentname, %struct.componentname* %338, i32 0, i32 1
  store i64 %337, i64* %339, align 8
  %340 = load %struct.vnode*, %struct.vnode** %15, align 8
  %341 = load %struct.componentname*, %struct.componentname** %21, align 8
  %342 = call i32 @VOP_LOOKUP(%struct.vnode* %340, %struct.vnode** %18, %struct.componentname* %341)
  store i32 %342, i32* %8, align 4
  %343 = load i64, i64* %9, align 8
  %344 = load %struct.componentname*, %struct.componentname** %21, align 8
  %345 = getelementptr inbounds %struct.componentname, %struct.componentname* %344, i32 0, i32 0
  store i64 %343, i64* %345, align 8
  %346 = load %struct.vnode*, %struct.vnode** %14, align 8
  %347 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %348 = icmp ne %struct.vnode* %346, %347
  br i1 %348, label %349, label %360

349:                                              ; preds = %330
  %350 = load i32, i32* %7, align 4
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %356, label %352

352:                                              ; preds = %349
  %353 = load i32, i32* %7, align 4
  %354 = load i32, i32* @EJUSTRETURN, align 4
  %355 = icmp eq i32 %353, %354
  br i1 %355, label %356, label %360

356:                                              ; preds = %352, %349
  %357 = load i64, i64* %11, align 8
  %358 = load %struct.componentname*, %struct.componentname** %21, align 8
  %359 = getelementptr inbounds %struct.componentname, %struct.componentname* %358, i32 0, i32 1
  store i64 %357, i64* %359, align 8
  br label %360

360:                                              ; preds = %356, %352, %330
  %361 = load i32, i32* %8, align 4
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %398

363:                                              ; preds = %360
  %364 = load %struct.vnode*, %struct.vnode** %15, align 8
  %365 = load %struct.vnode*, %struct.vnode** %18, align 8
  %366 = icmp eq %struct.vnode* %364, %365
  br i1 %366, label %367, label %386

367:                                              ; preds = %363
  %368 = load %struct.vnode*, %struct.vnode** %17, align 8
  %369 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %370 = icmp ne %struct.vnode* %368, %369
  br i1 %370, label %371, label %374

371:                                              ; preds = %367
  %372 = load %struct.vnode*, %struct.vnode** %17, align 8
  %373 = call i32 @vrele(%struct.vnode* %372)
  br label %374

374:                                              ; preds = %371, %367
  %375 = load %struct.vnode*, %struct.vnode** %18, align 8
  %376 = call i32 @vrele(%struct.vnode* %375)
  %377 = load %struct.vnode*, %struct.vnode** %13, align 8
  %378 = load %struct.vop_cachedlookup_args*, %struct.vop_cachedlookup_args** %3, align 8
  %379 = getelementptr inbounds %struct.vop_cachedlookup_args, %struct.vop_cachedlookup_args* %378, i32 0, i32 0
  %380 = load %struct.vnode**, %struct.vnode*** %379, align 8
  store %struct.vnode* %377, %struct.vnode** %380, align 8
  %381 = load %struct.vnode*, %struct.vnode** %13, align 8
  %382 = call i32 @vref(%struct.vnode* %381)
  %383 = load i32, i32* %8, align 4
  %384 = call i32 (i8*, i32, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %383)
  %385 = load i32, i32* %8, align 4
  store i32 %385, i32* %2, align 4
  br label %740

386:                                              ; preds = %363
  %387 = load %struct.componentname*, %struct.componentname** %21, align 8
  %388 = getelementptr inbounds %struct.componentname, %struct.componentname* %387, i32 0, i32 3
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* @LK_TYPE_MASK, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %397

393:                                              ; preds = %386
  %394 = load %struct.vnode*, %struct.vnode** %18, align 8
  %395 = load i32, i32* @LK_RELEASE, align 4
  %396 = call i32 @VOP_UNLOCK(%struct.vnode* %394, i32 %395)
  br label %397

397:                                              ; preds = %393, %386
  br label %398

398:                                              ; preds = %397, %360
  br label %399

399:                                              ; preds = %398, %327, %322, %318
  %400 = load %struct.vnode*, %struct.vnode** %17, align 8
  %401 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %402 = icmp eq %struct.vnode* %400, %401
  br i1 %402, label %403, label %427

403:                                              ; preds = %399
  %404 = load %struct.vnode*, %struct.vnode** %18, align 8
  %405 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %406 = icmp eq %struct.vnode* %404, %405
  br i1 %406, label %407, label %427

407:                                              ; preds = %403
  %408 = load %struct.vnode*, %struct.vnode** %14, align 8
  %409 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %410 = icmp ne %struct.vnode* %408, %409
  br i1 %410, label %411, label %413

411:                                              ; preds = %407
  %412 = load i32, i32* %7, align 4
  br label %415

413:                                              ; preds = %407
  %414 = load i32, i32* %8, align 4
  br label %415

415:                                              ; preds = %413, %411
  %416 = phi i32 [ %412, %411 ], [ %414, %413 ]
  %417 = call i32 (i8*, i32, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %416)
  %418 = load %struct.vnode*, %struct.vnode** %14, align 8
  %419 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %420 = icmp ne %struct.vnode* %418, %419
  br i1 %420, label %421, label %423

421:                                              ; preds = %415
  %422 = load i32, i32* %7, align 4
  br label %425

423:                                              ; preds = %415
  %424 = load i32, i32* %8, align 4
  br label %425

425:                                              ; preds = %423, %421
  %426 = phi i32 [ %422, %421 ], [ %424, %423 ]
  store i32 %426, i32* %2, align 4
  br label %740

427:                                              ; preds = %403, %399
  %428 = load %struct.vnode*, %struct.vnode** %17, align 8
  %429 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %430 = icmp ne %struct.vnode* %428, %429
  br i1 %430, label %431, label %447

431:                                              ; preds = %427
  %432 = load %struct.vnode*, %struct.vnode** %18, align 8
  %433 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %434 = icmp ne %struct.vnode* %432, %433
  br i1 %434, label %435, label %447

435:                                              ; preds = %431
  %436 = load %struct.vnode*, %struct.vnode** %17, align 8
  %437 = getelementptr inbounds %struct.vnode, %struct.vnode* %436, i32 0, i32 0
  %438 = load i64, i64* %437, align 8
  %439 = load %struct.vnode*, %struct.vnode** %18, align 8
  %440 = getelementptr inbounds %struct.vnode, %struct.vnode* %439, i32 0, i32 0
  %441 = load i64, i64* %440, align 8
  %442 = icmp ne i64 %438, %441
  br i1 %442, label %443, label %447

443:                                              ; preds = %435
  %444 = load %struct.vnode*, %struct.vnode** %18, align 8
  %445 = call i32 @vrele(%struct.vnode* %444)
  %446 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  store %struct.vnode* %446, %struct.vnode** %18, align 8
  br label %447

447:                                              ; preds = %443, %435, %431, %427
  %448 = load i32, i32* %7, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %579

450:                                              ; preds = %447
  %451 = load i32, i32* %7, align 4
  %452 = load i32, i32* @EJUSTRETURN, align 4
  %453 = icmp ne i32 %451, %452
  br i1 %453, label %454, label %579

454:                                              ; preds = %450
  %455 = load %struct.vnode*, %struct.vnode** %14, align 8
  %456 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %457 = icmp ne %struct.vnode* %455, %456
  br i1 %457, label %458, label %579

458:                                              ; preds = %454
  %459 = load i32, i32* %8, align 4
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %579

461:                                              ; preds = %458
  %462 = load %struct.vnode*, %struct.vnode** %18, align 8
  %463 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %464 = icmp ne %struct.vnode* %462, %463
  br i1 %464, label %465, label %579

465:                                              ; preds = %461
  %466 = load %struct.vnode*, %struct.vnode** %18, align 8
  %467 = getelementptr inbounds %struct.vnode, %struct.vnode* %466, i32 0, i32 0
  %468 = load i64, i64* %467, align 8
  %469 = load i64, i64* @VDIR, align 8
  %470 = icmp eq i64 %468, %469
  br i1 %470, label %471, label %579

471:                                              ; preds = %465
  %472 = load %struct.vnode*, %struct.vnode** %13, align 8
  %473 = getelementptr inbounds %struct.vnode, %struct.vnode* %472, i32 0, i32 1
  %474 = load %struct.TYPE_3__*, %struct.TYPE_3__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 4
  %477 = load i32, i32* @MNT_RDONLY, align 4
  %478 = and i32 %476, %477
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %579, label %480

480:                                              ; preds = %471
  %481 = load %struct.componentname*, %struct.componentname** %21, align 8
  %482 = getelementptr inbounds %struct.componentname, %struct.componentname* %481, i32 0, i32 4
  %483 = load i32, i32* %482, align 4
  %484 = icmp slt i32 1, %483
  br i1 %484, label %492, label %485

485:                                              ; preds = %480
  %486 = load %struct.componentname*, %struct.componentname** %21, align 8
  %487 = getelementptr inbounds %struct.componentname, %struct.componentname* %486, i32 0, i32 2
  %488 = load i8*, i8** %487, align 8
  %489 = load i8, i8* %488, align 1
  %490 = sext i8 %489 to i32
  %491 = icmp ne i32 46, %490
  br i1 %491, label %492, label %579

492:                                              ; preds = %485, %480
  %493 = load %struct.vnode*, %struct.vnode** %13, align 8
  %494 = getelementptr inbounds %struct.vnode, %struct.vnode* %493, i32 0, i32 1
  %495 = load %struct.TYPE_3__*, %struct.TYPE_3__** %494, align 8
  %496 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %497 = load %struct.vnode*, %struct.vnode** %18, align 8
  %498 = load %struct.vnode*, %struct.vnode** %13, align 8
  %499 = load %struct.componentname*, %struct.componentname** %21, align 8
  %500 = load %struct.thread*, %struct.thread** %22, align 8
  %501 = call i32 @unionfs_nodeget(%struct.TYPE_3__* %495, %struct.vnode* %496, %struct.vnode* %497, %struct.vnode* %498, %struct.vnode** %16, %struct.componentname* %499, %struct.thread* %500)
  store i32 %501, i32* %6, align 4
  %502 = load i32, i32* %6, align 4
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %505

504:                                              ; preds = %492
  br label %708

505:                                              ; preds = %492
  %506 = load i32, i32* @LK_SHARED, align 4
  %507 = load %struct.componentname*, %struct.componentname** %21, align 8
  %508 = getelementptr inbounds %struct.componentname, %struct.componentname* %507, i32 0, i32 3
  %509 = load i32, i32* %508, align 8
  %510 = load i32, i32* @LK_TYPE_MASK, align 4
  %511 = and i32 %509, %510
  %512 = icmp eq i32 %506, %511
  br i1 %512, label %513, label %517

513:                                              ; preds = %505
  %514 = load %struct.vnode*, %struct.vnode** %16, align 8
  %515 = load i32, i32* @LK_RELEASE, align 4
  %516 = call i32 @VOP_UNLOCK(%struct.vnode* %514, i32 %515)
  br label %517

517:                                              ; preds = %513, %505
  %518 = load i32, i32* @LK_EXCLUSIVE, align 4
  %519 = load %struct.vnode*, %struct.vnode** %16, align 8
  %520 = call i32 @VOP_ISLOCKED(%struct.vnode* %519)
  %521 = icmp ne i32 %518, %520
  br i1 %521, label %522, label %528

522:                                              ; preds = %517
  %523 = load %struct.vnode*, %struct.vnode** %16, align 8
  %524 = load i32, i32* @LK_EXCLUSIVE, align 4
  %525 = load i32, i32* @LK_RETRY, align 4
  %526 = or i32 %524, %525
  %527 = call i32 @vn_lock(%struct.vnode* %523, i32 %526)
  store i32 1, i32* %5, align 4
  br label %528

528:                                              ; preds = %522, %517
  %529 = load %struct.vnode*, %struct.vnode** %13, align 8
  %530 = getelementptr inbounds %struct.vnode, %struct.vnode* %529, i32 0, i32 1
  %531 = load %struct.TYPE_3__*, %struct.TYPE_3__** %530, align 8
  %532 = call i32 @MOUNTTOUNIONFSMOUNT(%struct.TYPE_3__* %531)
  %533 = load %struct.vnode*, %struct.vnode** %14, align 8
  %534 = load %struct.vnode*, %struct.vnode** %16, align 8
  %535 = call %struct.unionfs_node* @VTOUNIONFS(%struct.vnode* %534)
  %536 = load %struct.componentname*, %struct.componentname** %21, align 8
  %537 = load %struct.thread*, %struct.thread** %22, align 8
  %538 = call i32 @unionfs_mkshadowdir(i32 %532, %struct.vnode* %533, %struct.unionfs_node* %535, %struct.componentname* %536, %struct.thread* %537)
  store i32 %538, i32* %6, align 4
  %539 = load i32, i32* %5, align 4
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %541, label %545

541:                                              ; preds = %528
  %542 = load %struct.vnode*, %struct.vnode** %16, align 8
  %543 = load i32, i32* @LK_RELEASE, align 4
  %544 = call i32 @VOP_UNLOCK(%struct.vnode* %542, i32 %543)
  br label %545

545:                                              ; preds = %541, %528
  %546 = load i32, i32* %6, align 4
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %564

548:                                              ; preds = %545
  %549 = call i32 @UNIONFSDEBUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %550 = load %struct.componentname*, %struct.componentname** %21, align 8
  %551 = getelementptr inbounds %struct.componentname, %struct.componentname* %550, i32 0, i32 3
  %552 = load i32, i32* %551, align 8
  %553 = load i32, i32* @LK_TYPE_MASK, align 4
  %554 = and i32 %552, %553
  %555 = load i32, i32* @LK_EXCLUSIVE, align 4
  %556 = icmp eq i32 %554, %555
  br i1 %556, label %557, label %560

557:                                              ; preds = %548
  %558 = load %struct.vnode*, %struct.vnode** %16, align 8
  %559 = call i32 @vput(%struct.vnode* %558)
  br label %563

560:                                              ; preds = %548
  %561 = load %struct.vnode*, %struct.vnode** %16, align 8
  %562 = call i32 @vrele(%struct.vnode* %561)
  br label %563

563:                                              ; preds = %560, %557
  br label %708

564:                                              ; preds = %545
  %565 = load %struct.componentname*, %struct.componentname** %21, align 8
  %566 = getelementptr inbounds %struct.componentname, %struct.componentname* %565, i32 0, i32 3
  %567 = load i32, i32* %566, align 8
  %568 = load i32, i32* @LK_TYPE_MASK, align 4
  %569 = and i32 %567, %568
  %570 = load i32, i32* @LK_SHARED, align 4
  %571 = icmp eq i32 %569, %570
  br i1 %571, label %572, label %578

572:                                              ; preds = %564
  %573 = load %struct.vnode*, %struct.vnode** %16, align 8
  %574 = load i32, i32* @LK_SHARED, align 4
  %575 = load i32, i32* @LK_RETRY, align 4
  %576 = or i32 %574, %575
  %577 = call i32 @vn_lock(%struct.vnode* %573, i32 %576)
  br label %578

578:                                              ; preds = %572, %564
  br label %687

579:                                              ; preds = %485, %471, %465, %461, %458, %454, %450, %447
  %580 = load %struct.vnode*, %struct.vnode** %17, align 8
  %581 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %582 = icmp ne %struct.vnode* %580, %581
  br i1 %582, label %583, label %585

583:                                              ; preds = %579
  %584 = load i32, i32* %7, align 4
  store i32 %584, i32* %6, align 4
  br label %587

585:                                              ; preds = %579
  %586 = load i32, i32* %8, align 4
  store i32 %586, i32* %6, align 4
  br label %587

587:                                              ; preds = %585, %583
  %588 = load i32, i32* %6, align 4
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %590, label %591

590:                                              ; preds = %587
  br label %708

591:                                              ; preds = %587
  %592 = load %struct.vnode*, %struct.vnode** %17, align 8
  %593 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %594 = icmp ne %struct.vnode* %592, %593
  br i1 %594, label %595, label %620

595:                                              ; preds = %591
  %596 = load %struct.vnode*, %struct.vnode** %17, align 8
  %597 = getelementptr inbounds %struct.vnode, %struct.vnode* %596, i32 0, i32 0
  %598 = load i64, i64* %597, align 8
  %599 = load i64, i64* @VSOCK, align 8
  %600 = icmp eq i64 %598, %599
  br i1 %600, label %601, label %620

601:                                              ; preds = %595
  %602 = load %struct.vnode*, %struct.vnode** %17, align 8
  store %struct.vnode* %602, %struct.vnode** %16, align 8
  %603 = load %struct.vnode*, %struct.vnode** %16, align 8
  %604 = call i32 @vref(%struct.vnode* %603)
  %605 = load %struct.componentname*, %struct.componentname** %21, align 8
  %606 = getelementptr inbounds %struct.componentname, %struct.componentname* %605, i32 0, i32 3
  %607 = load i32, i32* %606, align 8
  %608 = load i32, i32* @LK_TYPE_MASK, align 4
  %609 = and i32 %607, %608
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %611, label %619

611:                                              ; preds = %601
  %612 = load %struct.vnode*, %struct.vnode** %16, align 8
  %613 = load %struct.componentname*, %struct.componentname** %21, align 8
  %614 = getelementptr inbounds %struct.componentname, %struct.componentname* %613, i32 0, i32 3
  %615 = load i32, i32* %614, align 8
  %616 = load i32, i32* @LK_RETRY, align 4
  %617 = or i32 %615, %616
  %618 = call i32 @vn_lock(%struct.vnode* %612, i32 %617)
  br label %619

619:                                              ; preds = %611, %601
  br label %660

620:                                              ; preds = %595, %591
  %621 = load %struct.vnode*, %struct.vnode** %18, align 8
  %622 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %623 = icmp ne %struct.vnode* %621, %622
  br i1 %623, label %624, label %649

624:                                              ; preds = %620
  %625 = load %struct.vnode*, %struct.vnode** %18, align 8
  %626 = getelementptr inbounds %struct.vnode, %struct.vnode* %625, i32 0, i32 0
  %627 = load i64, i64* %626, align 8
  %628 = load i64, i64* @VSOCK, align 8
  %629 = icmp eq i64 %627, %628
  br i1 %629, label %630, label %649

630:                                              ; preds = %624
  %631 = load %struct.vnode*, %struct.vnode** %18, align 8
  store %struct.vnode* %631, %struct.vnode** %16, align 8
  %632 = load %struct.vnode*, %struct.vnode** %16, align 8
  %633 = call i32 @vref(%struct.vnode* %632)
  %634 = load %struct.componentname*, %struct.componentname** %21, align 8
  %635 = getelementptr inbounds %struct.componentname, %struct.componentname* %634, i32 0, i32 3
  %636 = load i32, i32* %635, align 8
  %637 = load i32, i32* @LK_TYPE_MASK, align 4
  %638 = and i32 %636, %637
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %640, label %648

640:                                              ; preds = %630
  %641 = load %struct.vnode*, %struct.vnode** %16, align 8
  %642 = load %struct.componentname*, %struct.componentname** %21, align 8
  %643 = getelementptr inbounds %struct.componentname, %struct.componentname* %642, i32 0, i32 3
  %644 = load i32, i32* %643, align 8
  %645 = load i32, i32* @LK_RETRY, align 4
  %646 = or i32 %644, %645
  %647 = call i32 @vn_lock(%struct.vnode* %641, i32 %646)
  br label %648

648:                                              ; preds = %640, %630
  br label %659

649:                                              ; preds = %624, %620
  %650 = load %struct.vnode*, %struct.vnode** %13, align 8
  %651 = getelementptr inbounds %struct.vnode, %struct.vnode* %650, i32 0, i32 1
  %652 = load %struct.TYPE_3__*, %struct.TYPE_3__** %651, align 8
  %653 = load %struct.vnode*, %struct.vnode** %17, align 8
  %654 = load %struct.vnode*, %struct.vnode** %18, align 8
  %655 = load %struct.vnode*, %struct.vnode** %13, align 8
  %656 = load %struct.componentname*, %struct.componentname** %21, align 8
  %657 = load %struct.thread*, %struct.thread** %22, align 8
  %658 = call i32 @unionfs_nodeget(%struct.TYPE_3__* %652, %struct.vnode* %653, %struct.vnode* %654, %struct.vnode* %655, %struct.vnode** %16, %struct.componentname* %656, %struct.thread* %657)
  store i32 %658, i32* %6, align 4
  br label %659

659:                                              ; preds = %649, %648
  br label %660

660:                                              ; preds = %659, %619
  %661 = load i32, i32* %6, align 4
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %663, label %665

663:                                              ; preds = %660
  %664 = call i32 @UNIONFSDEBUG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %708

665:                                              ; preds = %660
  %666 = load i64, i64* %9, align 8
  %667 = load i64, i64* @DELETE, align 8
  %668 = icmp eq i64 %666, %667
  br i1 %668, label %673, label %669

669:                                              ; preds = %665
  %670 = load i64, i64* %9, align 8
  %671 = load i64, i64* @RENAME, align 8
  %672 = icmp eq i64 %670, %671
  br i1 %672, label %673, label %686

673:                                              ; preds = %669, %665
  %674 = load %struct.componentname*, %struct.componentname** %21, align 8
  %675 = getelementptr inbounds %struct.componentname, %struct.componentname* %674, i32 0, i32 3
  %676 = load i32, i32* %675, align 8
  %677 = load i32, i32* @LK_TYPE_MASK, align 4
  %678 = and i32 %676, %677
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %680, label %686

680:                                              ; preds = %673
  %681 = load %struct.vnode*, %struct.vnode** %16, align 8
  %682 = load i32, i32* @LK_EXCLUSIVE, align 4
  %683 = load i32, i32* @LK_RETRY, align 4
  %684 = or i32 %682, %683
  %685 = call i32 @vn_lock(%struct.vnode* %681, i32 %684)
  br label %686

686:                                              ; preds = %680, %673, %669
  br label %687

687:                                              ; preds = %686, %578
  %688 = load %struct.vnode*, %struct.vnode** %16, align 8
  %689 = load %struct.vop_cachedlookup_args*, %struct.vop_cachedlookup_args** %3, align 8
  %690 = getelementptr inbounds %struct.vop_cachedlookup_args, %struct.vop_cachedlookup_args* %689, i32 0, i32 0
  %691 = load %struct.vnode**, %struct.vnode*** %690, align 8
  store %struct.vnode* %688, %struct.vnode** %691, align 8
  %692 = load i64, i64* %10, align 8
  %693 = load i64, i64* @MAKEENTRY, align 8
  %694 = and i64 %692, %693
  %695 = icmp ne i64 %694, 0
  br i1 %695, label %696, label %707

696:                                              ; preds = %687
  %697 = load %struct.vnode*, %struct.vnode** %16, align 8
  %698 = getelementptr inbounds %struct.vnode, %struct.vnode* %697, i32 0, i32 0
  %699 = load i64, i64* %698, align 8
  %700 = load i64, i64* @VSOCK, align 8
  %701 = icmp ne i64 %699, %700
  br i1 %701, label %702, label %707

702:                                              ; preds = %696
  %703 = load %struct.vnode*, %struct.vnode** %13, align 8
  %704 = load %struct.vnode*, %struct.vnode** %16, align 8
  %705 = load %struct.componentname*, %struct.componentname** %21, align 8
  %706 = call i32 @cache_enter(%struct.vnode* %703, %struct.vnode* %704, %struct.componentname* %705)
  br label %707

707:                                              ; preds = %702, %696, %687
  br label %708

708:                                              ; preds = %707, %663, %590, %563, %504
  %709 = load %struct.vnode*, %struct.vnode** %17, align 8
  %710 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %711 = icmp ne %struct.vnode* %709, %710
  br i1 %711, label %712, label %715

712:                                              ; preds = %708
  %713 = load %struct.vnode*, %struct.vnode** %17, align 8
  %714 = call i32 @vrele(%struct.vnode* %713)
  br label %715

715:                                              ; preds = %712, %708
  %716 = load %struct.vnode*, %struct.vnode** %18, align 8
  %717 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %718 = icmp ne %struct.vnode* %716, %717
  br i1 %718, label %719, label %722

719:                                              ; preds = %715
  %720 = load %struct.vnode*, %struct.vnode** %18, align 8
  %721 = call i32 @vrele(%struct.vnode* %720)
  br label %722

722:                                              ; preds = %719, %715
  %723 = load i32, i32* %6, align 4
  %724 = load i32, i32* @ENOENT, align 4
  %725 = icmp eq i32 %723, %724
  br i1 %725, label %726, label %736

726:                                              ; preds = %722
  %727 = load i64, i64* %10, align 8
  %728 = load i64, i64* @MAKEENTRY, align 8
  %729 = and i64 %727, %728
  %730 = icmp ne i64 %729, 0
  br i1 %730, label %731, label %736

731:                                              ; preds = %726
  %732 = load %struct.vnode*, %struct.vnode** %13, align 8
  %733 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %734 = load %struct.componentname*, %struct.componentname** %21, align 8
  %735 = call i32 @cache_enter(%struct.vnode* %732, %struct.vnode* %733, %struct.componentname* %734)
  br label %736

736:                                              ; preds = %731, %726, %722
  %737 = load i32, i32* %6, align 4
  %738 = call i32 (i8*, i32, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %737)
  %739 = load i32, i32* %6, align 4
  store i32 %739, i32* %2, align 4
  br label %740

740:                                              ; preds = %736, %425, %374, %245, %227, %97, %82, %62
  %741 = load i32, i32* %2, align 4
  ret i32 %741
}

declare dso_local %struct.unionfs_node* @VTOUNIONFS(%struct.vnode*) #1

declare dso_local i32 @UNIONFS_INTERNAL_DEBUG(i8*, i32, ...) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_LOOKUP(%struct.vnode*, %struct.vnode**, %struct.componentname*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @vref(%struct.vnode*) #1

declare dso_local i32 @cache_enter(%struct.vnode*, %struct.vnode*, %struct.componentname*) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, i32) #1

declare dso_local i32 @unionfs_nodeget(%struct.TYPE_3__*, %struct.vnode*, %struct.vnode*, %struct.vnode*, %struct.vnode**, %struct.componentname*, %struct.thread*) #1

declare dso_local i32 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local i32 @unionfs_mkshadowdir(i32, %struct.vnode*, %struct.unionfs_node*, %struct.componentname*, %struct.thread*) #1

declare dso_local i32 @MOUNTTOUNIONFSMOUNT(%struct.TYPE_3__*) #1

declare dso_local i32 @UNIONFSDEBUG(i8*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
