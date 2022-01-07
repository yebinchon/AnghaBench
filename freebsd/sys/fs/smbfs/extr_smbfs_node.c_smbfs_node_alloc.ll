; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_node.c_smbfs_node_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_node.c_smbfs_node_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.mount = type { i32 }
%struct.vnode = type { i64, i32, %struct.smbnode*, i32 }
%struct.smbnode = type { i32, i8*, i32, i32, i32, i32, i32, i32, %struct.vnode*, i8*, %struct.vnode* }
%struct.smbfattr = type { i32, i32 }
%struct.vattr = type { i32 }
%struct.smbmount = type { i32* }
%struct.smbcmp = type { i32, i8*, %struct.vnode* }

@curthread = common dso_local global %struct.thread* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"do not allocate root vnode twice!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"do not call me with dot!\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"smbfs_node_alloc: dead parent vnode \00", align 1
@smbfs_vnode_cmp = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@SMB_FA_DIR = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"vnode taken from the hashtable\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"smbfs\00", align 1
@smbfs_vnodeops = common dso_local global i32 0, align 4
@M_SMBNODE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_SMBNODENAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"smbfs_node_alloc\00", align 1
@VV_ROOT = common dso_local global i32 0, align 4
@NREFPARENT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"new vnode '%s' born without parent ?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, %struct.vnode*, i8*, i32, i8*, i32, i8, %struct.smbfattr*, %struct.vnode**)* @smbfs_node_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbfs_node_alloc(%struct.mount* %0, %struct.vnode* %1, i8* %2, i32 %3, i8* %4, i32 %5, i8 signext %6, %struct.smbfattr* %7, %struct.vnode** %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.mount*, align 8
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca %struct.smbfattr*, align 8
  %19 = alloca %struct.vnode**, align 8
  %20 = alloca %struct.vattr, align 4
  %21 = alloca %struct.thread*, align 8
  %22 = alloca %struct.smbmount*, align 8
  %23 = alloca %struct.smbnode*, align 8
  %24 = alloca %struct.smbnode*, align 8
  %25 = alloca %struct.vnode*, align 8
  %26 = alloca %struct.vnode*, align 8
  %27 = alloca %struct.smbcmp, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %11, align 8
  store %struct.vnode* %1, %struct.vnode** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store i8 %6, i8* %17, align 1
  store %struct.smbfattr* %7, %struct.smbfattr** %18, align 8
  store %struct.vnode** %8, %struct.vnode*** %19, align 8
  %32 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %32, %struct.thread** %21, align 8
  %33 = load %struct.mount*, %struct.mount** %11, align 8
  %34 = call i8* @VFSTOSMBFS(%struct.mount* %33)
  %35 = bitcast i8* %34 to %struct.smbmount*
  store %struct.smbmount* %35, %struct.smbmount** %22, align 8
  %36 = load %struct.vnode*, %struct.vnode** %12, align 8
  %37 = getelementptr inbounds %struct.smbcmp, %struct.smbcmp* %27, i32 0, i32 2
  store %struct.vnode* %36, %struct.vnode** %37, align 8
  %38 = load i32, i32* %16, align 4
  %39 = getelementptr inbounds %struct.smbcmp, %struct.smbcmp* %27, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = getelementptr inbounds %struct.smbcmp, %struct.smbcmp* %27, i32 0, i32 1
  store i8* %40, i8** %41, align 8
  %42 = load %struct.smbmount*, %struct.smbmount** %22, align 8
  %43 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %9
  %47 = load %struct.vnode*, %struct.vnode** %12, align 8
  %48 = icmp eq %struct.vnode* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = call i32 (i8*, ...) @SMBERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %10, align 4
  br label %375

52:                                               ; preds = %46, %9
  %53 = load i32, i32* %16, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %83

55:                                               ; preds = %52
  %56 = load i8*, i8** %15, align 8
  %57 = call i64 @bcmp(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %55
  %60 = load %struct.vnode*, %struct.vnode** %12, align 8
  %61 = icmp eq %struct.vnode* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* %10, align 4
  br label %375

64:                                               ; preds = %59
  %65 = load %struct.vnode*, %struct.vnode** %12, align 8
  %66 = call %struct.smbnode* @VTOSMB(%struct.vnode* %65)
  %67 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %66, i32 0, i32 8
  %68 = load %struct.vnode*, %struct.vnode** %67, align 8
  %69 = call %struct.smbnode* @VTOSMB(%struct.vnode* %68)
  %70 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %69, i32 0, i32 10
  %71 = load %struct.vnode*, %struct.vnode** %70, align 8
  store %struct.vnode* %71, %struct.vnode** %25, align 8
  %72 = load %struct.vnode*, %struct.vnode** %25, align 8
  %73 = load i32, i32* @LK_EXCLUSIVE, align 4
  %74 = load %struct.thread*, %struct.thread** %21, align 8
  %75 = call i32 @vget(%struct.vnode* %72, i32 %73, %struct.thread* %74)
  store i32 %75, i32* %30, align 4
  %76 = load i32, i32* %30, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %64
  %79 = load %struct.vnode*, %struct.vnode** %25, align 8
  %80 = load %struct.vnode**, %struct.vnode*** %19, align 8
  store %struct.vnode* %79, %struct.vnode** %80, align 8
  br label %81

81:                                               ; preds = %78, %64
  %82 = load i32, i32* %30, align 4
  store i32 %82, i32* %10, align 4
  br label %375

83:                                               ; preds = %55, %52
  %84 = load i32, i32* %16, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = load i8*, i8** %15, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 46
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = call i32 (i8*, ...) @SMBERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i32, i32* @EINVAL, align 4
  store i32 %94, i32* %10, align 4
  br label %375

95:                                               ; preds = %86, %83
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.vnode*, %struct.vnode** %12, align 8
  %98 = icmp ne %struct.vnode* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load %struct.vnode*, %struct.vnode** %12, align 8
  %101 = call %struct.smbnode* @VTOSMB(%struct.vnode* %100)
  br label %103

102:                                              ; preds = %96
  br label %103

103:                                              ; preds = %102, %99
  %104 = phi %struct.smbnode* [ %101, %99 ], [ null, %102 ]
  store %struct.smbnode* %104, %struct.smbnode** %24, align 8
  %105 = load %struct.smbnode*, %struct.smbnode** %24, align 8
  %106 = icmp eq %struct.smbnode* %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load %struct.vnode*, %struct.vnode** %12, align 8
  %109 = icmp ne %struct.vnode* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load %struct.vnode*, %struct.vnode** %12, align 8
  %112 = call i32 @vn_printf(%struct.vnode* %111, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %113 = load i32, i32* @EINVAL, align 4
  store i32 %113, i32* %10, align 4
  br label %375

114:                                              ; preds = %107, %103
  %115 = load %struct.mount*, %struct.mount** %11, align 8
  %116 = load i8*, i8** %15, align 8
  %117 = load i32, i32* %16, align 4
  %118 = call i32 @smbfs_hash(i8* %116, i32 %117)
  %119 = load i32, i32* @LK_EXCLUSIVE, align 4
  %120 = load %struct.thread*, %struct.thread** %21, align 8
  %121 = load %struct.vnode**, %struct.vnode*** %19, align 8
  %122 = load i32, i32* @smbfs_vnode_cmp, align 4
  %123 = call i32 @vfs_hash_get(%struct.mount* %115, i32 %118, i32 %119, %struct.thread* %120, %struct.vnode** %121, i32 %122, %struct.smbcmp* %27)
  store i32 %123, i32* %30, align 4
  %124 = load i32, i32* %30, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %114
  %127 = load i32, i32* %30, align 4
  store i32 %127, i32* %10, align 4
  br label %375

128:                                              ; preds = %114
  %129 = load %struct.vnode**, %struct.vnode*** %19, align 8
  %130 = load %struct.vnode*, %struct.vnode** %129, align 8
  %131 = icmp ne %struct.vnode* %130, null
  br i1 %131, label %132, label %179

132:                                              ; preds = %128
  %133 = load %struct.vnode**, %struct.vnode*** %19, align 8
  %134 = load %struct.vnode*, %struct.vnode** %133, align 8
  %135 = call %struct.smbnode* @VTOSMB(%struct.vnode* %134)
  store %struct.smbnode* %135, %struct.smbnode** %23, align 8
  %136 = load %struct.vnode**, %struct.vnode*** %19, align 8
  %137 = load %struct.vnode*, %struct.vnode** %136, align 8
  %138 = load %struct.thread*, %struct.thread** %21, align 8
  %139 = getelementptr inbounds %struct.thread, %struct.thread* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @VOP_GETATTR(%struct.vnode* %137, %struct.vattr* %20, i32 %140)
  %142 = load %struct.vnode**, %struct.vnode*** %19, align 8
  %143 = load %struct.vnode*, %struct.vnode** %142, align 8
  %144 = getelementptr inbounds %struct.vnode, %struct.vnode* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @VDIR, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %132
  %149 = load %struct.smbnode*, %struct.smbnode** %23, align 8
  %150 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @SMB_FA_DIR, align 4
  %153 = and i32 %151, %152
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %169, label %155

155:                                              ; preds = %148, %132
  %156 = load %struct.vnode**, %struct.vnode*** %19, align 8
  %157 = load %struct.vnode*, %struct.vnode** %156, align 8
  %158 = getelementptr inbounds %struct.vnode, %struct.vnode* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @VREG, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %176

162:                                              ; preds = %155
  %163 = load %struct.smbnode*, %struct.smbnode** %23, align 8
  %164 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @SMB_FA_DIR, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %162, %148
  %170 = load %struct.vnode**, %struct.vnode*** %19, align 8
  %171 = load %struct.vnode*, %struct.vnode** %170, align 8
  %172 = call i32 @vgone(%struct.vnode* %171)
  %173 = load %struct.vnode**, %struct.vnode*** %19, align 8
  %174 = load %struct.vnode*, %struct.vnode** %173, align 8
  %175 = call i32 @vput(%struct.vnode* %174)
  br label %178

176:                                              ; preds = %162, %155
  %177 = call i32 @SMBVDEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %375

178:                                              ; preds = %169
  br label %179

179:                                              ; preds = %178, %128
  %180 = load %struct.smbfattr*, %struct.smbfattr** %18, align 8
  %181 = icmp eq %struct.smbfattr* %180, null
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  %183 = load i32, i32* @ENOENT, align 4
  store i32 %183, i32* %10, align 4
  br label %375

184:                                              ; preds = %179
  %185 = load %struct.mount*, %struct.mount** %11, align 8
  %186 = load %struct.vnode**, %struct.vnode*** %19, align 8
  %187 = call i32 @getnewvnode(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), %struct.mount* %185, i32* @smbfs_vnodeops, %struct.vnode** %186)
  store i32 %187, i32* %30, align 4
  %188 = load i32, i32* %30, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %184
  %191 = load i32, i32* %30, align 4
  store i32 %191, i32* %10, align 4
  br label %375

192:                                              ; preds = %184
  %193 = load %struct.vnode**, %struct.vnode*** %19, align 8
  %194 = load %struct.vnode*, %struct.vnode** %193, align 8
  store %struct.vnode* %194, %struct.vnode** %25, align 8
  %195 = load i32, i32* @M_SMBNODE, align 4
  %196 = load i32, i32* @M_WAITOK, align 4
  %197 = load i32, i32* @M_ZERO, align 4
  %198 = or i32 %196, %197
  %199 = call i8* @malloc(i32 64, i32 %195, i32 %198)
  %200 = bitcast i8* %199 to %struct.smbnode*
  store %struct.smbnode* %200, %struct.smbnode** %23, align 8
  %201 = load i32, i32* %14, align 4
  store i32 %201, i32* %31, align 4
  %202 = load i8, i8* %17, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %192
  %206 = load i32, i32* %31, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %31, align 4
  br label %208

208:                                              ; preds = %205, %192
  %209 = load i32, i32* %16, align 4
  %210 = load i32, i32* %31, align 4
  %211 = add nsw i32 %210, %209
  store i32 %211, i32* %31, align 4
  %212 = load i32, i32* %31, align 4
  %213 = add nsw i32 %212, 1
  %214 = load i32, i32* @M_SMBNODENAME, align 4
  %215 = load i32, i32* @M_WAITOK, align 4
  %216 = call i8* @malloc(i32 %213, i32 %214, i32 %215)
  store i8* %216, i8** %29, align 8
  %217 = load i8*, i8** %29, align 8
  store i8* %217, i8** %28, align 8
  %218 = load i8*, i8** %13, align 8
  %219 = load i8*, i8** %28, align 8
  %220 = load i32, i32* %14, align 4
  %221 = call i32 @bcopy(i8* %218, i8* %219, i32 %220)
  %222 = load i32, i32* %14, align 4
  %223 = load i8*, i8** %28, align 8
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds i8, i8* %223, i64 %224
  store i8* %225, i8** %28, align 8
  %226 = load i8, i8* %17, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %208
  %230 = load i8, i8* %17, align 1
  %231 = load i8*, i8** %28, align 8
  %232 = getelementptr inbounds i8, i8* %231, i32 1
  store i8* %232, i8** %28, align 8
  store i8 %230, i8* %231, align 1
  br label %233

233:                                              ; preds = %229, %208
  %234 = load i8*, i8** %15, align 8
  %235 = icmp ne i8* %234, null
  br i1 %235, label %236, label %245

236:                                              ; preds = %233
  %237 = load i8*, i8** %15, align 8
  %238 = load i8*, i8** %28, align 8
  %239 = load i32, i32* %16, align 4
  %240 = call i32 @bcopy(i8* %237, i8* %238, i32 %239)
  %241 = load i32, i32* %16, align 4
  %242 = load i8*, i8** %28, align 8
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds i8, i8* %242, i64 %243
  store i8* %244, i8** %28, align 8
  br label %245

245:                                              ; preds = %236, %233
  %246 = load i8*, i8** %28, align 8
  store i8 0, i8* %246, align 1
  %247 = load i8*, i8** %28, align 8
  %248 = load i8*, i8** %29, align 8
  %249 = load i32, i32* %31, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %248, i64 %250
  %252 = icmp eq i8* %247, %251
  %253 = zext i1 %252 to i32
  %254 = call i32 @MPASS(i32 %253)
  %255 = load %struct.vnode*, %struct.vnode** %25, align 8
  %256 = getelementptr inbounds %struct.vnode, %struct.vnode* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @LK_EXCLUSIVE, align 4
  %259 = call i32 @lockmgr(i32 %257, i32 %258, i32* null)
  %260 = load %struct.smbfattr*, %struct.smbfattr** %18, align 8
  %261 = getelementptr inbounds %struct.smbfattr, %struct.smbfattr* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @SMB_FA_DIR, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %245
  %267 = load i64, i64* @VDIR, align 8
  br label %270

268:                                              ; preds = %245
  %269 = load i64, i64* @VREG, align 8
  br label %270

270:                                              ; preds = %268, %266
  %271 = phi i64 [ %267, %266 ], [ %269, %268 ]
  %272 = load %struct.vnode*, %struct.vnode** %25, align 8
  %273 = getelementptr inbounds %struct.vnode, %struct.vnode* %272, i32 0, i32 0
  store i64 %271, i64* %273, align 8
  %274 = load %struct.smbnode*, %struct.smbnode** %23, align 8
  %275 = load %struct.vnode*, %struct.vnode** %25, align 8
  %276 = getelementptr inbounds %struct.vnode, %struct.vnode* %275, i32 0, i32 2
  store %struct.smbnode* %274, %struct.smbnode** %276, align 8
  %277 = load %struct.vnode*, %struct.vnode** %25, align 8
  %278 = load %struct.smbnode*, %struct.smbnode** %23, align 8
  %279 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %278, i32 0, i32 10
  store %struct.vnode* %277, %struct.vnode** %279, align 8
  %280 = load %struct.mount*, %struct.mount** %11, align 8
  %281 = call i8* @VFSTOSMBFS(%struct.mount* %280)
  %282 = load %struct.smbnode*, %struct.smbnode** %23, align 8
  %283 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %282, i32 0, i32 9
  store i8* %281, i8** %283, align 8
  %284 = load i8*, i8** %29, align 8
  %285 = load %struct.smbnode*, %struct.smbnode** %23, align 8
  %286 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %285, i32 0, i32 1
  store i8* %284, i8** %286, align 8
  %287 = load i32, i32* %31, align 4
  %288 = load %struct.smbnode*, %struct.smbnode** %23, align 8
  %289 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %288, i32 0, i32 2
  store i32 %287, i32* %289, align 8
  %290 = load i32, i32* %16, align 4
  %291 = load %struct.smbnode*, %struct.smbnode** %23, align 8
  %292 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %291, i32 0, i32 3
  store i32 %290, i32* %292, align 4
  %293 = load i8*, i8** %15, align 8
  %294 = load i32, i32* %16, align 4
  %295 = call i32 @smbfs_name_alloc(i8* %293, i32 %294)
  %296 = load %struct.smbnode*, %struct.smbnode** %23, align 8
  %297 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %296, i32 0, i32 4
  store i32 %295, i32* %297, align 8
  %298 = load %struct.smbfattr*, %struct.smbfattr** %18, align 8
  %299 = getelementptr inbounds %struct.smbfattr, %struct.smbfattr* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.smbnode*, %struct.smbnode** %23, align 8
  %302 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %301, i32 0, i32 6
  store i32 %300, i32* %302, align 8
  %303 = load %struct.vnode*, %struct.vnode** %12, align 8
  %304 = icmp ne %struct.vnode* %303, null
  br i1 %304, label %305, label %332

305:                                              ; preds = %270
  %306 = load %struct.vnode*, %struct.vnode** %12, align 8
  %307 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %306, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %308 = load %struct.vnode*, %struct.vnode** %12, align 8
  %309 = load %struct.smbnode*, %struct.smbnode** %23, align 8
  %310 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %309, i32 0, i32 8
  store %struct.vnode* %308, %struct.vnode** %310, align 8
  %311 = load %struct.vnode*, %struct.vnode** %12, align 8
  %312 = call %struct.smbnode* @VTOSMB(%struct.vnode* %311)
  %313 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %312, i32 0, i32 6
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.smbnode*, %struct.smbnode** %23, align 8
  %316 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %315, i32 0, i32 7
  store i32 %314, i32* %316, align 4
  %317 = load %struct.vnode*, %struct.vnode** %12, align 8
  %318 = getelementptr inbounds %struct.vnode, %struct.vnode* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @VV_ROOT, align 4
  %321 = and i32 %319, %320
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %331

323:                                              ; preds = %305
  %324 = load %struct.vnode*, %struct.vnode** %12, align 8
  %325 = call i32 @vref(%struct.vnode* %324)
  %326 = load i32, i32* @NREFPARENT, align 4
  %327 = load %struct.smbnode*, %struct.smbnode** %23, align 8
  %328 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %327, i32 0, i32 5
  %329 = load i32, i32* %328, align 4
  %330 = or i32 %329, %326
  store i32 %330, i32* %328, align 4
  br label %331

331:                                              ; preds = %323, %305
  br label %344

332:                                              ; preds = %270
  %333 = load %struct.vnode*, %struct.vnode** %25, align 8
  %334 = getelementptr inbounds %struct.vnode, %struct.vnode* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @VREG, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %338, label %343

338:                                              ; preds = %332
  %339 = load %struct.smbnode*, %struct.smbnode** %23, align 8
  %340 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %339, i32 0, i32 4
  %341 = load i32, i32* %340, align 8
  %342 = call i32 (i8*, ...) @SMBERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %341)
  br label %343

343:                                              ; preds = %338, %332
  br label %344

344:                                              ; preds = %343, %331
  %345 = load %struct.vnode*, %struct.vnode** %25, align 8
  %346 = load %struct.mount*, %struct.mount** %11, align 8
  %347 = call i32 @insmntque(%struct.vnode* %345, %struct.mount* %346)
  store i32 %347, i32* %30, align 4
  %348 = load i32, i32* %30, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %355

350:                                              ; preds = %344
  %351 = load %struct.smbnode*, %struct.smbnode** %23, align 8
  %352 = load i32, i32* @M_SMBNODE, align 4
  %353 = call i32 @free(%struct.smbnode* %351, i32 %352)
  %354 = load i32, i32* %30, align 4
  store i32 %354, i32* %10, align 4
  br label %375

355:                                              ; preds = %344
  %356 = load %struct.vnode*, %struct.vnode** %25, align 8
  %357 = load i8*, i8** %15, align 8
  %358 = load i32, i32* %16, align 4
  %359 = call i32 @smbfs_hash(i8* %357, i32 %358)
  %360 = load i32, i32* @LK_EXCLUSIVE, align 4
  %361 = load %struct.thread*, %struct.thread** %21, align 8
  %362 = load i32, i32* @smbfs_vnode_cmp, align 4
  %363 = call i32 @vfs_hash_insert(%struct.vnode* %356, i32 %359, i32 %360, %struct.thread* %361, %struct.vnode** %26, i32 %362, %struct.smbcmp* %27)
  store i32 %363, i32* %30, align 4
  %364 = load i32, i32* %30, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %368

366:                                              ; preds = %355
  %367 = load i32, i32* %30, align 4
  store i32 %367, i32* %10, align 4
  br label %375

368:                                              ; preds = %355
  %369 = load %struct.vnode*, %struct.vnode** %26, align 8
  %370 = icmp ne %struct.vnode* %369, null
  br i1 %370, label %371, label %374

371:                                              ; preds = %368
  %372 = load %struct.vnode*, %struct.vnode** %26, align 8
  %373 = load %struct.vnode**, %struct.vnode*** %19, align 8
  store %struct.vnode* %372, %struct.vnode** %373, align 8
  br label %374

374:                                              ; preds = %371, %368
  store i32 0, i32* %10, align 4
  br label %375

375:                                              ; preds = %374, %366, %350, %190, %182, %176, %126, %110, %92, %81, %62, %49
  %376 = load i32, i32* %10, align 4
  ret i32 %376
}

declare dso_local i8* @VFSTOSMBFS(%struct.mount*) #1

declare dso_local i32 @SMBERROR(i8*, ...) #1

declare dso_local i64 @bcmp(i8*, i8*, i32) #1

declare dso_local %struct.smbnode* @VTOSMB(%struct.vnode*) #1

declare dso_local i32 @vget(%struct.vnode*, i32, %struct.thread*) #1

declare dso_local i32 @vn_printf(%struct.vnode*, i8*) #1

declare dso_local i32 @vfs_hash_get(%struct.mount*, i32, i32, %struct.thread*, %struct.vnode**, i32, %struct.smbcmp*) #1

declare dso_local i32 @smbfs_hash(i8*, i32) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, i32) #1

declare dso_local i32 @vgone(%struct.vnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @SMBVDEBUG(i8*) #1

declare dso_local i32 @getnewvnode(i8*, %struct.mount*, i32*, %struct.vnode**) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @lockmgr(i32, i32, i32*) #1

declare dso_local i32 @smbfs_name_alloc(i8*, i32) #1

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @vref(%struct.vnode*) #1

declare dso_local i32 @insmntque(%struct.vnode*, %struct.mount*) #1

declare dso_local i32 @free(%struct.smbnode*, i32) #1

declare dso_local i32 @vfs_hash_insert(%struct.vnode*, i32, i32, %struct.thread*, %struct.vnode**, i32, %struct.smbcmp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
