; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqfs_lookupx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqfs_lookupx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, i32, i32 }
%struct.vop_cachedlookup_args = type { %struct.vnode*, %struct.vnode**, %struct.componentname* }
%struct.componentname = type { i8*, i32, i32, i32, i32, %struct.thread* }
%struct.thread = type { i32 }
%struct.mqfs_node = type { %struct.mqfs_node*, %struct.mqfs_info* }
%struct.mqfs_info = type { i32 }

@NULLVP = common dso_local global %struct.vnode* null, align 8
@VDIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@VEXEC = common dso_local global i32 0, align 4
@MQFS_NAMELEN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ISLASTCN = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ISDOTDOT = common dso_local global i32 0, align 4
@VV_ROOT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"non-root directory has no parent\00", align 1
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@DELETE = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@MAKEENTRY = common dso_local global i32 0, align 4
@CREATE = common dso_local global i32 0, align 4
@RENAME = common dso_local global i32 0, align 4
@LOCKPARENT = common dso_local global i32 0, align 4
@SAVENAME = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_cachedlookup_args*)* @mqfs_lookupx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqfs_lookupx(%struct.vop_cachedlookup_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_cachedlookup_args*, align 8
  %4 = alloca %struct.componentname*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.vnode**, align 8
  %7 = alloca %struct.mqfs_node*, align 8
  %8 = alloca %struct.mqfs_node*, align 8
  %9 = alloca %struct.mqfs_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.thread*, align 8
  store %struct.vop_cachedlookup_args* %0, %struct.vop_cachedlookup_args** %3, align 8
  %16 = load %struct.vop_cachedlookup_args*, %struct.vop_cachedlookup_args** %3, align 8
  %17 = getelementptr inbounds %struct.vop_cachedlookup_args, %struct.vop_cachedlookup_args* %16, i32 0, i32 2
  %18 = load %struct.componentname*, %struct.componentname** %17, align 8
  store %struct.componentname* %18, %struct.componentname** %4, align 8
  %19 = load %struct.vop_cachedlookup_args*, %struct.vop_cachedlookup_args** %3, align 8
  %20 = getelementptr inbounds %struct.vop_cachedlookup_args, %struct.vop_cachedlookup_args* %19, i32 0, i32 1
  %21 = load %struct.vnode**, %struct.vnode*** %20, align 8
  store %struct.vnode** %21, %struct.vnode*** %6, align 8
  %22 = load %struct.vop_cachedlookup_args*, %struct.vop_cachedlookup_args** %3, align 8
  %23 = getelementptr inbounds %struct.vop_cachedlookup_args, %struct.vop_cachedlookup_args* %22, i32 0, i32 0
  %24 = load %struct.vnode*, %struct.vnode** %23, align 8
  store %struct.vnode* %24, %struct.vnode** %5, align 8
  %25 = load %struct.componentname*, %struct.componentname** %4, align 8
  %26 = getelementptr inbounds %struct.componentname, %struct.componentname* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %14, align 8
  %28 = load %struct.componentname*, %struct.componentname** %4, align 8
  %29 = getelementptr inbounds %struct.componentname, %struct.componentname* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %13, align 4
  %31 = load %struct.componentname*, %struct.componentname** %4, align 8
  %32 = getelementptr inbounds %struct.componentname, %struct.componentname* %31, i32 0, i32 5
  %33 = load %struct.thread*, %struct.thread** %32, align 8
  store %struct.thread* %33, %struct.thread** %15, align 8
  %34 = load %struct.componentname*, %struct.componentname** %4, align 8
  %35 = getelementptr inbounds %struct.componentname, %struct.componentname* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = load %struct.componentname*, %struct.componentname** %4, align 8
  %38 = getelementptr inbounds %struct.componentname, %struct.componentname* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %10, align 4
  %40 = load %struct.vnode*, %struct.vnode** %5, align 8
  %41 = call %struct.mqfs_node* @VTON(%struct.vnode* %40)
  store %struct.mqfs_node* %41, %struct.mqfs_node** %7, align 8
  store %struct.mqfs_node* null, %struct.mqfs_node** %8, align 8
  %42 = load %struct.mqfs_node*, %struct.mqfs_node** %7, align 8
  %43 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %42, i32 0, i32 1
  %44 = load %struct.mqfs_info*, %struct.mqfs_info** %43, align 8
  store %struct.mqfs_info* %44, %struct.mqfs_info** %9, align 8
  %45 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %46 = load %struct.vnode**, %struct.vnode*** %6, align 8
  store %struct.vnode* %45, %struct.vnode** %46, align 8
  %47 = load %struct.vnode*, %struct.vnode** %5, align 8
  %48 = getelementptr inbounds %struct.vnode, %struct.vnode* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @VDIR, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %1
  %53 = load i32, i32* @ENOTDIR, align 4
  store i32 %53, i32* %2, align 4
  br label %274

54:                                               ; preds = %1
  %55 = load %struct.vnode*, %struct.vnode** %5, align 8
  %56 = load i32, i32* @VEXEC, align 4
  %57 = load %struct.componentname*, %struct.componentname** %4, align 8
  %58 = getelementptr inbounds %struct.componentname, %struct.componentname* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.componentname*, %struct.componentname** %4, align 8
  %61 = getelementptr inbounds %struct.componentname, %struct.componentname* %60, i32 0, i32 5
  %62 = load %struct.thread*, %struct.thread** %61, align 8
  %63 = call i32 @VOP_ACCESS(%struct.vnode* %55, i32 %56, i32 %59, %struct.thread* %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %2, align 4
  br label %274

68:                                               ; preds = %54
  %69 = load %struct.componentname*, %struct.componentname** %4, align 8
  %70 = getelementptr inbounds %struct.componentname, %struct.componentname* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @MQFS_NAMELEN, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @ENOENT, align 4
  store i32 %75, i32* %2, align 4
  br label %274

76:                                               ; preds = %68
  %77 = load i32, i32* %13, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %102

79:                                               ; preds = %76
  %80 = load i8*, i8** %14, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 46
  br i1 %84, label %85, label %102

85:                                               ; preds = %79
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @ISLASTCN, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @LOOKUP, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* @EINVAL, align 4
  store i32 %95, i32* %2, align 4
  br label %274

96:                                               ; preds = %90, %85
  %97 = load %struct.mqfs_node*, %struct.mqfs_node** %7, align 8
  store %struct.mqfs_node* %97, %struct.mqfs_node** %8, align 8
  %98 = load %struct.vnode*, %struct.vnode** %5, align 8
  %99 = load %struct.vnode**, %struct.vnode*** %6, align 8
  store %struct.vnode* %98, %struct.vnode** %99, align 8
  %100 = load %struct.vnode*, %struct.vnode** %5, align 8
  %101 = call i32 @VREF(%struct.vnode* %100)
  store i32 0, i32* %2, align 4
  br label %274

102:                                              ; preds = %79, %76
  %103 = load %struct.componentname*, %struct.componentname** %4, align 8
  %104 = getelementptr inbounds %struct.componentname, %struct.componentname* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @ISDOTDOT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %151

109:                                              ; preds = %102
  %110 = load %struct.vnode*, %struct.vnode** %5, align 8
  %111 = getelementptr inbounds %struct.vnode, %struct.vnode* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @VV_ROOT, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = load i32, i32* @EIO, align 4
  store i32 %117, i32* %2, align 4
  br label %274

118:                                              ; preds = %109
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @ISLASTCN, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @LOOKUP, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* @EINVAL, align 4
  store i32 %128, i32* %2, align 4
  br label %274

129:                                              ; preds = %123, %118
  %130 = load %struct.vnode*, %struct.vnode** %5, align 8
  %131 = call i32 @VOP_UNLOCK(%struct.vnode* %130, i32 0)
  %132 = load %struct.mqfs_node*, %struct.mqfs_node** %7, align 8
  %133 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %132, i32 0, i32 0
  %134 = load %struct.mqfs_node*, %struct.mqfs_node** %133, align 8
  %135 = call i32 @KASSERT(%struct.mqfs_node* %134, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %136 = load %struct.mqfs_node*, %struct.mqfs_node** %7, align 8
  %137 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %136, i32 0, i32 0
  %138 = load %struct.mqfs_node*, %struct.mqfs_node** %137, align 8
  store %struct.mqfs_node* %138, %struct.mqfs_node** %8, align 8
  %139 = load %struct.vnode*, %struct.vnode** %5, align 8
  %140 = getelementptr inbounds %struct.vnode, %struct.vnode* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.vnode**, %struct.vnode*** %6, align 8
  %143 = load %struct.mqfs_node*, %struct.mqfs_node** %8, align 8
  %144 = call i32 @mqfs_allocv(i32 %141, %struct.vnode** %142, %struct.mqfs_node* %143)
  store i32 %144, i32* %12, align 4
  %145 = load %struct.vnode*, %struct.vnode** %5, align 8
  %146 = load i32, i32* @LK_EXCLUSIVE, align 4
  %147 = load i32, i32* @LK_RETRY, align 4
  %148 = or i32 %146, %147
  %149 = call i32 @vn_lock(%struct.vnode* %145, i32 %148)
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %2, align 4
  br label %274

151:                                              ; preds = %102
  %152 = load %struct.mqfs_info*, %struct.mqfs_info** %9, align 8
  %153 = getelementptr inbounds %struct.mqfs_info, %struct.mqfs_info* %152, i32 0, i32 0
  %154 = call i32 @sx_xlock(i32* %153)
  %155 = load %struct.mqfs_node*, %struct.mqfs_node** %7, align 8
  %156 = load i8*, i8** %14, align 8
  %157 = load i32, i32* %13, align 4
  %158 = load %struct.componentname*, %struct.componentname** %4, align 8
  %159 = getelementptr inbounds %struct.componentname, %struct.componentname* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = call %struct.mqfs_node* @mqfs_search(%struct.mqfs_node* %155, i8* %156, i32 %157, i32 %160)
  store %struct.mqfs_node* %161, %struct.mqfs_node** %8, align 8
  %162 = load %struct.mqfs_node*, %struct.mqfs_node** %8, align 8
  %163 = icmp ne %struct.mqfs_node* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %151
  %165 = load %struct.mqfs_node*, %struct.mqfs_node** %8, align 8
  %166 = call i32 @mqnode_addref(%struct.mqfs_node* %165)
  br label %167

167:                                              ; preds = %164, %151
  %168 = load %struct.mqfs_info*, %struct.mqfs_info** %9, align 8
  %169 = getelementptr inbounds %struct.mqfs_info, %struct.mqfs_info* %168, i32 0, i32 0
  %170 = call i32 @sx_xunlock(i32* %169)
  %171 = load %struct.mqfs_node*, %struct.mqfs_node** %8, align 8
  %172 = icmp ne %struct.mqfs_node* %171, null
  br i1 %172, label %173, label %235

173:                                              ; preds = %167
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @DELETE, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %209

177:                                              ; preds = %173
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* @ISLASTCN, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %209

182:                                              ; preds = %177
  %183 = load %struct.vnode*, %struct.vnode** %5, align 8
  %184 = load i32, i32* @VWRITE, align 4
  %185 = load %struct.componentname*, %struct.componentname** %4, align 8
  %186 = getelementptr inbounds %struct.componentname, %struct.componentname* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.thread*, %struct.thread** %15, align 8
  %189 = call i32 @VOP_ACCESS(%struct.vnode* %183, i32 %184, i32 %187, %struct.thread* %188)
  store i32 %189, i32* %12, align 4
  %190 = load i32, i32* %12, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %182
  %193 = load %struct.mqfs_node*, %struct.mqfs_node** %8, align 8
  %194 = call i32 @mqnode_release(%struct.mqfs_node* %193)
  %195 = load i32, i32* %12, align 4
  store i32 %195, i32* %2, align 4
  br label %274

196:                                              ; preds = %182
  %197 = load %struct.vnode**, %struct.vnode*** %6, align 8
  %198 = load %struct.vnode*, %struct.vnode** %197, align 8
  %199 = load %struct.vnode*, %struct.vnode** %5, align 8
  %200 = icmp eq %struct.vnode* %198, %199
  br i1 %200, label %201, label %208

201:                                              ; preds = %196
  %202 = load %struct.vnode*, %struct.vnode** %5, align 8
  %203 = call i32 @VREF(%struct.vnode* %202)
  %204 = load %struct.vnode*, %struct.vnode** %5, align 8
  %205 = load %struct.vnode**, %struct.vnode*** %6, align 8
  store %struct.vnode* %204, %struct.vnode** %205, align 8
  %206 = load %struct.mqfs_node*, %struct.mqfs_node** %8, align 8
  %207 = call i32 @mqnode_release(%struct.mqfs_node* %206)
  store i32 0, i32* %2, align 4
  br label %274

208:                                              ; preds = %196
  br label %209

209:                                              ; preds = %208, %177, %173
  %210 = load %struct.vnode*, %struct.vnode** %5, align 8
  %211 = getelementptr inbounds %struct.vnode, %struct.vnode* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.vnode**, %struct.vnode*** %6, align 8
  %214 = load %struct.mqfs_node*, %struct.mqfs_node** %8, align 8
  %215 = call i32 @mqfs_allocv(i32 %212, %struct.vnode** %213, %struct.mqfs_node* %214)
  store i32 %215, i32* %12, align 4
  %216 = load %struct.mqfs_node*, %struct.mqfs_node** %8, align 8
  %217 = call i32 @mqnode_release(%struct.mqfs_node* %216)
  %218 = load i32, i32* %12, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %233

220:                                              ; preds = %209
  %221 = load %struct.componentname*, %struct.componentname** %4, align 8
  %222 = getelementptr inbounds %struct.componentname, %struct.componentname* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @MAKEENTRY, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %220
  %228 = load %struct.vnode*, %struct.vnode** %5, align 8
  %229 = load %struct.vnode**, %struct.vnode*** %6, align 8
  %230 = load %struct.vnode*, %struct.vnode** %229, align 8
  %231 = load %struct.componentname*, %struct.componentname** %4, align 8
  %232 = call i32 @cache_enter(%struct.vnode* %228, %struct.vnode* %230, %struct.componentname* %231)
  br label %233

233:                                              ; preds = %227, %220, %209
  %234 = load i32, i32* %12, align 4
  store i32 %234, i32* %2, align 4
  br label %274

235:                                              ; preds = %167
  %236 = load i32, i32* %10, align 4
  %237 = load i32, i32* @CREATE, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %243, label %239

239:                                              ; preds = %235
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* @RENAME, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %272

243:                                              ; preds = %239, %235
  %244 = load i32, i32* %11, align 4
  %245 = load i32, i32* @LOCKPARENT, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %272

248:                                              ; preds = %243
  %249 = load i32, i32* %11, align 4
  %250 = load i32, i32* @ISLASTCN, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %272

253:                                              ; preds = %248
  %254 = load %struct.vnode*, %struct.vnode** %5, align 8
  %255 = load i32, i32* @VWRITE, align 4
  %256 = load %struct.componentname*, %struct.componentname** %4, align 8
  %257 = getelementptr inbounds %struct.componentname, %struct.componentname* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.thread*, %struct.thread** %15, align 8
  %260 = call i32 @VOP_ACCESS(%struct.vnode* %254, i32 %255, i32 %258, %struct.thread* %259)
  store i32 %260, i32* %12, align 4
  %261 = load i32, i32* %12, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %253
  %264 = load i32, i32* %12, align 4
  store i32 %264, i32* %2, align 4
  br label %274

265:                                              ; preds = %253
  %266 = load i32, i32* @SAVENAME, align 4
  %267 = load %struct.componentname*, %struct.componentname** %4, align 8
  %268 = getelementptr inbounds %struct.componentname, %struct.componentname* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = or i32 %269, %266
  store i32 %270, i32* %268, align 4
  %271 = load i32, i32* @EJUSTRETURN, align 4
  store i32 %271, i32* %2, align 4
  br label %274

272:                                              ; preds = %248, %243, %239
  %273 = load i32, i32* @ENOENT, align 4
  store i32 %273, i32* %2, align 4
  br label %274

274:                                              ; preds = %272, %265, %263, %233, %201, %192, %129, %127, %116, %96, %94, %74, %66, %52
  %275 = load i32, i32* %2, align 4
  ret i32 %275
}

declare dso_local %struct.mqfs_node* @VTON(%struct.vnode*) #1

declare dso_local i32 @VOP_ACCESS(%struct.vnode*, i32, i32, %struct.thread*) #1

declare dso_local i32 @VREF(%struct.vnode*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @KASSERT(%struct.mqfs_node*, i8*) #1

declare dso_local i32 @mqfs_allocv(i32, %struct.vnode**, %struct.mqfs_node*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local %struct.mqfs_node* @mqfs_search(%struct.mqfs_node*, i8*, i32, i32) #1

declare dso_local i32 @mqnode_addref(%struct.mqfs_node*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @mqnode_release(%struct.mqfs_node*) #1

declare dso_local i32 @cache_enter(%struct.vnode*, %struct.vnode*, %struct.componentname*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
