; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clport.c_nfscl_nget.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clport.c_nfscl_nget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.vnode = type { i32, i64, i32, i32, %struct.nfsnode*, %struct.TYPE_2__ }
%struct.nfsnode = type { %struct.nfsv4node*, i32, i32, %struct.nfsv4node*, %struct.vnode* }
%struct.nfsv4node = type { i64, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i64, i32* }
%struct.nfsfh = type { i64, i64, i64, i32, i32 }
%struct.componentname = type { i64, i32 }
%struct.thread = type { i32 }
%struct.nfsmount = type { i32, i64, i32 }

@FNV1_32_INIT = common dso_local global i32 0, align 4
@newnfs_vncmpf = common dso_local global i32 0, align 4
@VI_DOOMED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@M_NFSFH = common dso_local global i32 0, align 4
@NFSMNT_NFSV4 = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@M_NFSV4NODE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@newnfsnode_zone = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@nfs_vnode_tag = common dso_local global i32 0, align 4
@newnfs_vnodeops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"nfscl_nget: bo_bsize == 0\00", align 1
@buf_ops_newnfs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"NEWNFSnode lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_DUPOK = common dso_local global i32 0, align 4
@PVFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"nfsupg\00", align 1
@VLKTIMEOUT = common dso_local global i32 0, align 4
@LK_NOSHARE = common dso_local global i32 0, align 4
@LK_CANRECURSE = common dso_local global i32 0, align 4
@VNON = common dso_local global i64 0, align 8
@VDIR = common dso_local global i64 0, align 8
@VV_ROOT = common dso_local global i32 0, align 4
@VV_VMSIZEVNLOCK = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_NOWITNESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfscl_nget(%struct.mount* %0, %struct.vnode* %1, %struct.nfsfh* %2, %struct.componentname* %3, %struct.thread* %4, %struct.nfsnode** %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.mount*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca %struct.nfsfh*, align 8
  %13 = alloca %struct.componentname*, align 8
  %14 = alloca %struct.thread*, align 8
  %15 = alloca %struct.nfsnode**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.nfsnode*, align 8
  %19 = alloca %struct.nfsnode*, align 8
  %20 = alloca %struct.vnode*, align 8
  %21 = alloca %struct.vnode*, align 8
  %22 = alloca %struct.nfsv4node*, align 8
  %23 = alloca %struct.nfsv4node*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.nfsmount*, align 8
  store %struct.mount* %0, %struct.mount** %10, align 8
  store %struct.vnode* %1, %struct.vnode** %11, align 8
  store %struct.nfsfh* %2, %struct.nfsfh** %12, align 8
  store %struct.componentname* %3, %struct.componentname** %13, align 8
  store %struct.thread* %4, %struct.thread** %14, align 8
  store %struct.nfsnode** %5, %struct.nfsnode*** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %27 = load %struct.mount*, %struct.mount** %10, align 8
  %28 = call %struct.nfsmount* @VFSTONFS(%struct.mount* %27)
  store %struct.nfsmount* %28, %struct.nfsmount** %26, align 8
  %29 = load %struct.vnode*, %struct.vnode** %11, align 8
  %30 = call %struct.nfsnode* @VTONFS(%struct.vnode* %29)
  store %struct.nfsnode* %30, %struct.nfsnode** %19, align 8
  %31 = load %struct.nfsnode**, %struct.nfsnode*** %15, align 8
  store %struct.nfsnode* null, %struct.nfsnode** %31, align 8
  %32 = load %struct.nfsfh*, %struct.nfsfh** %12, align 8
  %33 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nfsfh*, %struct.nfsfh** %12, align 8
  %36 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @FNV1_32_INIT, align 4
  %39 = call i32 @fnv_32_buf(i32 %34, i64 %37, i32 %38)
  store i32 %39, i32* %25, align 4
  %40 = load %struct.mount*, %struct.mount** %10, align 8
  %41 = load i32, i32* %25, align 4
  %42 = load i32, i32* %17, align 4
  %43 = load %struct.thread*, %struct.thread** %14, align 8
  %44 = load i32, i32* @newnfs_vncmpf, align 4
  %45 = load %struct.nfsfh*, %struct.nfsfh** %12, align 8
  %46 = bitcast %struct.nfsfh* %45 to %struct.nfsv4node*
  %47 = call i32 @vfs_hash_get(%struct.mount* %40, i32 %41, i32 %42, %struct.thread* %43, %struct.vnode** %21, i32 %44, %struct.nfsv4node* %46)
  store i32 %47, i32* %24, align 4
  %48 = load i32, i32* %24, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %8
  %51 = load %struct.vnode*, %struct.vnode** %21, align 8
  %52 = icmp ne %struct.vnode* %51, null
  br i1 %52, label %53, label %72

53:                                               ; preds = %50
  %54 = load %struct.vnode*, %struct.vnode** %21, align 8
  %55 = call i32 @VI_LOCK(%struct.vnode* %54)
  %56 = load %struct.vnode*, %struct.vnode** %21, align 8
  %57 = getelementptr inbounds %struct.vnode, %struct.vnode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @VI_DOOMED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  %63 = load %struct.vnode*, %struct.vnode** %21, align 8
  %64 = call i32 @VI_UNLOCK(%struct.vnode* %63)
  %65 = load %struct.vnode*, %struct.vnode** %21, align 8
  %66 = call i32 @vrele(%struct.vnode* %65)
  %67 = load i32, i32* @ENOENT, align 4
  store i32 %67, i32* %24, align 4
  br label %71

68:                                               ; preds = %53
  %69 = load %struct.vnode*, %struct.vnode** %21, align 8
  %70 = call i32 @VI_UNLOCK(%struct.vnode* %69)
  br label %71

71:                                               ; preds = %68, %62
  br label %72

72:                                               ; preds = %71, %50, %8
  %73 = load i32, i32* %24, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load %struct.nfsfh*, %struct.nfsfh** %12, align 8
  %77 = bitcast %struct.nfsfh* %76 to %struct.nfsv4node*
  %78 = load i32, i32* @M_NFSFH, align 4
  %79 = call i32 @free(%struct.nfsv4node* %77, i32 %78)
  %80 = load i32, i32* %24, align 4
  store i32 %80, i32* %9, align 4
  br label %551

81:                                               ; preds = %72
  %82 = load %struct.vnode*, %struct.vnode** %21, align 8
  %83 = icmp ne %struct.vnode* %82, null
  br i1 %83, label %84, label %316

84:                                               ; preds = %81
  %85 = load %struct.vnode*, %struct.vnode** %21, align 8
  %86 = call %struct.nfsnode* @VTONFS(%struct.vnode* %85)
  store %struct.nfsnode* %86, %struct.nfsnode** %18, align 8
  store %struct.nfsv4node* null, %struct.nfsv4node** %22, align 8
  store %struct.nfsv4node* null, %struct.nfsv4node** %23, align 8
  %87 = load %struct.nfsmount*, %struct.nfsmount** %26, align 8
  %88 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @NFSMNT_NFSV4, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %295

93:                                               ; preds = %84
  %94 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %95 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %94, i32 0, i32 0
  %96 = load %struct.nfsv4node*, %struct.nfsv4node** %95, align 8
  %97 = icmp ne %struct.nfsv4node* %96, null
  br i1 %97, label %98, label %295

98:                                               ; preds = %93
  %99 = load %struct.vnode*, %struct.vnode** %21, align 8
  %100 = getelementptr inbounds %struct.vnode, %struct.vnode* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @VREG, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %295

104:                                              ; preds = %98
  %105 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %106 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %105, i32 0, i32 0
  %107 = load %struct.nfsv4node*, %struct.nfsv4node** %106, align 8
  %108 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.componentname*, %struct.componentname** %13, align 8
  %111 = getelementptr inbounds %struct.componentname, %struct.componentname* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %109, %112
  br i1 %113, label %157, label %114

114:                                              ; preds = %104
  %115 = load %struct.componentname*, %struct.componentname** %13, align 8
  %116 = getelementptr inbounds %struct.componentname, %struct.componentname* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %119 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %118, i32 0, i32 0
  %120 = load %struct.nfsv4node*, %struct.nfsv4node** %119, align 8
  %121 = call i32 @NFS4NODENAME(%struct.nfsv4node* %120)
  %122 = load %struct.componentname*, %struct.componentname** %13, align 8
  %123 = getelementptr inbounds %struct.componentname, %struct.componentname* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @NFSBCMP(i32 %117, i32 %121, i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %157, label %127

127:                                              ; preds = %114
  %128 = load %struct.nfsnode*, %struct.nfsnode** %19, align 8
  %129 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %128, i32 0, i32 3
  %130 = load %struct.nfsv4node*, %struct.nfsv4node** %129, align 8
  %131 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %134 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %133, i32 0, i32 0
  %135 = load %struct.nfsv4node*, %struct.nfsv4node** %134, align 8
  %136 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %132, %137
  br i1 %138, label %157, label %139

139:                                              ; preds = %127
  %140 = load %struct.nfsnode*, %struct.nfsnode** %19, align 8
  %141 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %140, i32 0, i32 3
  %142 = load %struct.nfsv4node*, %struct.nfsv4node** %141, align 8
  %143 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %146 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %145, i32 0, i32 0
  %147 = load %struct.nfsv4node*, %struct.nfsv4node** %146, align 8
  %148 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.nfsnode*, %struct.nfsnode** %19, align 8
  %151 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %150, i32 0, i32 3
  %152 = load %struct.nfsv4node*, %struct.nfsv4node** %151, align 8
  %153 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i64 @NFSBCMP(i32 %144, i32 %149, i64 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %295

157:                                              ; preds = %139, %127, %114, %104
  %158 = load %struct.nfsnode*, %struct.nfsnode** %19, align 8
  %159 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %158, i32 0, i32 3
  %160 = load %struct.nfsv4node*, %struct.nfsv4node** %159, align 8
  %161 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = add i64 32, %162
  %164 = load %struct.componentname*, %struct.componentname** %13, align 8
  %165 = getelementptr inbounds %struct.componentname, %struct.componentname* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = add i64 %163, %166
  %168 = sub i64 %167, 1
  %169 = trunc i64 %168 to i32
  %170 = load i32, i32* @M_NFSV4NODE, align 4
  %171 = load i32, i32* @M_WAITOK, align 4
  %172 = call i8* @malloc(i32 %169, i32 %170, i32 %171)
  %173 = bitcast i8* %172 to %struct.nfsv4node*
  store %struct.nfsv4node* %173, %struct.nfsv4node** %22, align 8
  %174 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %175 = call i32 @NFSLOCKNODE(%struct.nfsnode* %174)
  %176 = load %struct.nfsv4node*, %struct.nfsv4node** %22, align 8
  %177 = icmp ne %struct.nfsv4node* %176, null
  br i1 %177, label %178, label %292

178:                                              ; preds = %157
  %179 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %180 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %179, i32 0, i32 0
  %181 = load %struct.nfsv4node*, %struct.nfsv4node** %180, align 8
  %182 = icmp ne %struct.nfsv4node* %181, null
  br i1 %182, label %183, label %292

183:                                              ; preds = %178
  %184 = load %struct.vnode*, %struct.vnode** %21, align 8
  %185 = getelementptr inbounds %struct.vnode, %struct.vnode* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @VREG, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %292

189:                                              ; preds = %183
  %190 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %191 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %190, i32 0, i32 0
  %192 = load %struct.nfsv4node*, %struct.nfsv4node** %191, align 8
  %193 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.componentname*, %struct.componentname** %13, align 8
  %196 = getelementptr inbounds %struct.componentname, %struct.componentname* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %194, %197
  br i1 %198, label %242, label %199

199:                                              ; preds = %189
  %200 = load %struct.componentname*, %struct.componentname** %13, align 8
  %201 = getelementptr inbounds %struct.componentname, %struct.componentname* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %204 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %203, i32 0, i32 0
  %205 = load %struct.nfsv4node*, %struct.nfsv4node** %204, align 8
  %206 = call i32 @NFS4NODENAME(%struct.nfsv4node* %205)
  %207 = load %struct.componentname*, %struct.componentname** %13, align 8
  %208 = getelementptr inbounds %struct.componentname, %struct.componentname* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = call i64 @NFSBCMP(i32 %202, i32 %206, i64 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %242, label %212

212:                                              ; preds = %199
  %213 = load %struct.nfsnode*, %struct.nfsnode** %19, align 8
  %214 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %213, i32 0, i32 3
  %215 = load %struct.nfsv4node*, %struct.nfsv4node** %214, align 8
  %216 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %219 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %218, i32 0, i32 0
  %220 = load %struct.nfsv4node*, %struct.nfsv4node** %219, align 8
  %221 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %217, %222
  br i1 %223, label %242, label %224

224:                                              ; preds = %212
  %225 = load %struct.nfsnode*, %struct.nfsnode** %19, align 8
  %226 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %225, i32 0, i32 3
  %227 = load %struct.nfsv4node*, %struct.nfsv4node** %226, align 8
  %228 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %231 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %230, i32 0, i32 0
  %232 = load %struct.nfsv4node*, %struct.nfsv4node** %231, align 8
  %233 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.nfsnode*, %struct.nfsnode** %19, align 8
  %236 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %235, i32 0, i32 3
  %237 = load %struct.nfsv4node*, %struct.nfsv4node** %236, align 8
  %238 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = call i64 @NFSBCMP(i32 %229, i32 %234, i64 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %292

242:                                              ; preds = %224, %212, %199, %189
  %243 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %244 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %243, i32 0, i32 0
  %245 = load %struct.nfsv4node*, %struct.nfsv4node** %244, align 8
  store %struct.nfsv4node* %245, %struct.nfsv4node** %23, align 8
  %246 = load %struct.nfsv4node*, %struct.nfsv4node** %22, align 8
  %247 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %248 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %247, i32 0, i32 0
  store %struct.nfsv4node* %246, %struct.nfsv4node** %248, align 8
  store %struct.nfsv4node* null, %struct.nfsv4node** %22, align 8
  %249 = load %struct.nfsnode*, %struct.nfsnode** %19, align 8
  %250 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %249, i32 0, i32 3
  %251 = load %struct.nfsv4node*, %struct.nfsv4node** %250, align 8
  %252 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %255 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %254, i32 0, i32 0
  %256 = load %struct.nfsv4node*, %struct.nfsv4node** %255, align 8
  %257 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %256, i32 0, i32 2
  store i64 %253, i64* %257, align 8
  %258 = load %struct.componentname*, %struct.componentname** %13, align 8
  %259 = getelementptr inbounds %struct.componentname, %struct.componentname* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %262 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %261, i32 0, i32 0
  %263 = load %struct.nfsv4node*, %struct.nfsv4node** %262, align 8
  %264 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %263, i32 0, i32 1
  store i64 %260, i64* %264, align 8
  %265 = load %struct.nfsnode*, %struct.nfsnode** %19, align 8
  %266 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %265, i32 0, i32 3
  %267 = load %struct.nfsv4node*, %struct.nfsv4node** %266, align 8
  %268 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %271 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %270, i32 0, i32 0
  %272 = load %struct.nfsv4node*, %struct.nfsv4node** %271, align 8
  %273 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.nfsnode*, %struct.nfsnode** %19, align 8
  %276 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %275, i32 0, i32 3
  %277 = load %struct.nfsv4node*, %struct.nfsv4node** %276, align 8
  %278 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = call i32 @NFSBCOPY(i32 %269, i32 %274, i64 %279)
  %281 = load %struct.componentname*, %struct.componentname** %13, align 8
  %282 = getelementptr inbounds %struct.componentname, %struct.componentname* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %285 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %284, i32 0, i32 0
  %286 = load %struct.nfsv4node*, %struct.nfsv4node** %285, align 8
  %287 = call i32 @NFS4NODENAME(%struct.nfsv4node* %286)
  %288 = load %struct.componentname*, %struct.componentname** %13, align 8
  %289 = getelementptr inbounds %struct.componentname, %struct.componentname* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = call i32 @NFSBCOPY(i32 %283, i32 %287, i64 %290)
  br label %292

292:                                              ; preds = %242, %224, %183, %178, %157
  %293 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %294 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %293)
  br label %295

295:                                              ; preds = %292, %139, %98, %93, %84
  %296 = load %struct.nfsv4node*, %struct.nfsv4node** %22, align 8
  %297 = icmp ne %struct.nfsv4node* %296, null
  br i1 %297, label %298, label %302

298:                                              ; preds = %295
  %299 = load %struct.nfsv4node*, %struct.nfsv4node** %22, align 8
  %300 = load i32, i32* @M_NFSV4NODE, align 4
  %301 = call i32 @free(%struct.nfsv4node* %299, i32 %300)
  br label %302

302:                                              ; preds = %298, %295
  %303 = load %struct.nfsv4node*, %struct.nfsv4node** %23, align 8
  %304 = icmp ne %struct.nfsv4node* %303, null
  br i1 %304, label %305, label %309

305:                                              ; preds = %302
  %306 = load %struct.nfsv4node*, %struct.nfsv4node** %23, align 8
  %307 = load i32, i32* @M_NFSV4NODE, align 4
  %308 = call i32 @free(%struct.nfsv4node* %306, i32 %307)
  br label %309

309:                                              ; preds = %305, %302
  %310 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %311 = load %struct.nfsnode**, %struct.nfsnode*** %15, align 8
  store %struct.nfsnode* %310, %struct.nfsnode** %311, align 8
  %312 = load %struct.nfsfh*, %struct.nfsfh** %12, align 8
  %313 = bitcast %struct.nfsfh* %312 to %struct.nfsv4node*
  %314 = load i32, i32* @M_NFSFH, align 4
  %315 = call i32 @free(%struct.nfsv4node* %313, i32 %314)
  store i32 0, i32* %9, align 4
  br label %551

316:                                              ; preds = %81
  %317 = load i32, i32* @newnfsnode_zone, align 4
  %318 = load i32, i32* @M_WAITOK, align 4
  %319 = load i32, i32* @M_ZERO, align 4
  %320 = or i32 %318, %319
  %321 = call %struct.nfsnode* @uma_zalloc(i32 %317, i32 %320)
  store %struct.nfsnode* %321, %struct.nfsnode** %18, align 8
  %322 = load i32, i32* @nfs_vnode_tag, align 4
  %323 = load %struct.mount*, %struct.mount** %10, align 8
  %324 = call i32 @getnewvnode(i32 %322, %struct.mount* %323, i32* @newnfs_vnodeops, %struct.vnode** %21)
  store i32 %324, i32* %24, align 4
  %325 = load i32, i32* %24, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %336

327:                                              ; preds = %316
  %328 = load i32, i32* @newnfsnode_zone, align 4
  %329 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %330 = call i32 @uma_zfree(i32 %328, %struct.nfsnode* %329)
  %331 = load %struct.nfsfh*, %struct.nfsfh** %12, align 8
  %332 = bitcast %struct.nfsfh* %331 to %struct.nfsv4node*
  %333 = load i32, i32* @M_NFSFH, align 4
  %334 = call i32 @free(%struct.nfsv4node* %332, i32 %333)
  %335 = load i32, i32* %24, align 4
  store i32 %335, i32* %9, align 4
  br label %551

336:                                              ; preds = %316
  %337 = load %struct.vnode*, %struct.vnode** %21, align 8
  store %struct.vnode* %337, %struct.vnode** %20, align 8
  %338 = load %struct.vnode*, %struct.vnode** %20, align 8
  %339 = getelementptr inbounds %struct.vnode, %struct.vnode* %338, i32 0, i32 5
  %340 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = icmp ne i64 %341, 0
  %343 = zext i1 %342 to i32
  %344 = call i32 @KASSERT(i32 %343, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %345 = load %struct.vnode*, %struct.vnode** %20, align 8
  %346 = getelementptr inbounds %struct.vnode, %struct.vnode* %345, i32 0, i32 5
  %347 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %346, i32 0, i32 1
  store i32* @buf_ops_newnfs, i32** %347, align 8
  %348 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %349 = load %struct.vnode*, %struct.vnode** %20, align 8
  %350 = getelementptr inbounds %struct.vnode, %struct.vnode* %349, i32 0, i32 4
  store %struct.nfsnode* %348, %struct.nfsnode** %350, align 8
  %351 = load %struct.vnode*, %struct.vnode** %20, align 8
  %352 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %353 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %352, i32 0, i32 4
  store %struct.vnode* %351, %struct.vnode** %353, align 8
  %354 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %355 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %354, i32 0, i32 2
  %356 = load i32, i32* @MTX_DEF, align 4
  %357 = load i32, i32* @MTX_DUPOK, align 4
  %358 = or i32 %356, %357
  %359 = call i32 @mtx_init(i32* %355, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %358)
  %360 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %361 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %360, i32 0, i32 1
  %362 = load i32, i32* @PVFS, align 4
  %363 = load i32, i32* @VLKTIMEOUT, align 4
  %364 = load i32, i32* @LK_NOSHARE, align 4
  %365 = load i32, i32* @LK_CANRECURSE, align 4
  %366 = or i32 %364, %365
  %367 = call i32 @lockinit(i32* %361, i32 %362, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %363, i32 %366)
  %368 = load %struct.nfsfh*, %struct.nfsfh** %12, align 8
  %369 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = load %struct.nfsmount*, %struct.nfsmount** %26, align 8
  %372 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %371, i32 0, i32 1
  %373 = load i64, i64* %372, align 8
  %374 = icmp eq i64 %370, %373
  br i1 %374, label %375, label %403

375:                                              ; preds = %336
  %376 = load %struct.nfsfh*, %struct.nfsfh** %12, align 8
  %377 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %376, i32 0, i32 4
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.nfsmount*, %struct.nfsmount** %26, align 8
  %380 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 8
  %382 = load %struct.nfsfh*, %struct.nfsfh** %12, align 8
  %383 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %382, i32 0, i32 0
  %384 = load i64, i64* %383, align 8
  %385 = call i32 @bcmp(i32 %378, i32 %381, i64 %384)
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %403, label %387

387:                                              ; preds = %375
  %388 = load %struct.vnode*, %struct.vnode** %20, align 8
  %389 = getelementptr inbounds %struct.vnode, %struct.vnode* %388, i32 0, i32 1
  %390 = load i64, i64* %389, align 8
  %391 = load i64, i64* @VNON, align 8
  %392 = icmp eq i64 %390, %391
  br i1 %392, label %393, label %397

393:                                              ; preds = %387
  %394 = load i64, i64* @VDIR, align 8
  %395 = load %struct.vnode*, %struct.vnode** %20, align 8
  %396 = getelementptr inbounds %struct.vnode, %struct.vnode* %395, i32 0, i32 1
  store i64 %394, i64* %396, align 8
  br label %397

397:                                              ; preds = %393, %387
  %398 = load i32, i32* @VV_ROOT, align 4
  %399 = load %struct.vnode*, %struct.vnode** %20, align 8
  %400 = getelementptr inbounds %struct.vnode, %struct.vnode* %399, i32 0, i32 3
  %401 = load i32, i32* %400, align 4
  %402 = or i32 %401, %398
  store i32 %402, i32* %400, align 4
  br label %403

403:                                              ; preds = %397, %375, %336
  %404 = load i32, i32* @VV_VMSIZEVNLOCK, align 4
  %405 = load %struct.vnode*, %struct.vnode** %20, align 8
  %406 = getelementptr inbounds %struct.vnode, %struct.vnode* %405, i32 0, i32 3
  %407 = load i32, i32* %406, align 4
  %408 = or i32 %407, %404
  store i32 %408, i32* %406, align 4
  %409 = load %struct.nfsfh*, %struct.nfsfh** %12, align 8
  %410 = bitcast %struct.nfsfh* %409 to %struct.nfsv4node*
  %411 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %412 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %411, i32 0, i32 3
  store %struct.nfsv4node* %410, %struct.nfsv4node** %412, align 8
  %413 = load %struct.nfsmount*, %struct.nfsmount** %26, align 8
  %414 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = load i32, i32* @NFSMNT_NFSV4, align 4
  %417 = and i32 %415, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %481

419:                                              ; preds = %403
  %420 = load %struct.nfsnode*, %struct.nfsnode** %19, align 8
  %421 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %420, i32 0, i32 3
  %422 = load %struct.nfsv4node*, %struct.nfsv4node** %421, align 8
  %423 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %422, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = add i64 32, %424
  %426 = load %struct.componentname*, %struct.componentname** %13, align 8
  %427 = getelementptr inbounds %struct.componentname, %struct.componentname* %426, i32 0, i32 0
  %428 = load i64, i64* %427, align 8
  %429 = add i64 %425, %428
  %430 = sub i64 %429, 1
  %431 = trunc i64 %430 to i32
  %432 = load i32, i32* @M_NFSV4NODE, align 4
  %433 = load i32, i32* @M_WAITOK, align 4
  %434 = call i8* @malloc(i32 %431, i32 %432, i32 %433)
  %435 = bitcast i8* %434 to %struct.nfsv4node*
  %436 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %437 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %436, i32 0, i32 0
  store %struct.nfsv4node* %435, %struct.nfsv4node** %437, align 8
  %438 = load %struct.nfsnode*, %struct.nfsnode** %19, align 8
  %439 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %438, i32 0, i32 3
  %440 = load %struct.nfsv4node*, %struct.nfsv4node** %439, align 8
  %441 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %440, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  %443 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %444 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %443, i32 0, i32 0
  %445 = load %struct.nfsv4node*, %struct.nfsv4node** %444, align 8
  %446 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %445, i32 0, i32 2
  store i64 %442, i64* %446, align 8
  %447 = load %struct.componentname*, %struct.componentname** %13, align 8
  %448 = getelementptr inbounds %struct.componentname, %struct.componentname* %447, i32 0, i32 0
  %449 = load i64, i64* %448, align 8
  %450 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %451 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %450, i32 0, i32 0
  %452 = load %struct.nfsv4node*, %struct.nfsv4node** %451, align 8
  %453 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %452, i32 0, i32 1
  store i64 %449, i64* %453, align 8
  %454 = load %struct.nfsnode*, %struct.nfsnode** %19, align 8
  %455 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %454, i32 0, i32 3
  %456 = load %struct.nfsv4node*, %struct.nfsv4node** %455, align 8
  %457 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %456, i32 0, i32 4
  %458 = load i32, i32* %457, align 4
  %459 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %460 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %459, i32 0, i32 0
  %461 = load %struct.nfsv4node*, %struct.nfsv4node** %460, align 8
  %462 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %461, i32 0, i32 3
  %463 = load i32, i32* %462, align 8
  %464 = load %struct.nfsnode*, %struct.nfsnode** %19, align 8
  %465 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %464, i32 0, i32 3
  %466 = load %struct.nfsv4node*, %struct.nfsv4node** %465, align 8
  %467 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %466, i32 0, i32 0
  %468 = load i64, i64* %467, align 8
  %469 = call i32 @NFSBCOPY(i32 %458, i32 %463, i64 %468)
  %470 = load %struct.componentname*, %struct.componentname** %13, align 8
  %471 = getelementptr inbounds %struct.componentname, %struct.componentname* %470, i32 0, i32 1
  %472 = load i32, i32* %471, align 8
  %473 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %474 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %473, i32 0, i32 0
  %475 = load %struct.nfsv4node*, %struct.nfsv4node** %474, align 8
  %476 = call i32 @NFS4NODENAME(%struct.nfsv4node* %475)
  %477 = load %struct.componentname*, %struct.componentname** %13, align 8
  %478 = getelementptr inbounds %struct.componentname, %struct.componentname* %477, i32 0, i32 0
  %479 = load i64, i64* %478, align 8
  %480 = call i32 @NFSBCOPY(i32 %472, i32 %476, i64 %479)
  br label %484

481:                                              ; preds = %403
  %482 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %483 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %482, i32 0, i32 0
  store %struct.nfsv4node* null, %struct.nfsv4node** %483, align 8
  br label %484

484:                                              ; preds = %481, %419
  %485 = load %struct.vnode*, %struct.vnode** %20, align 8
  %486 = getelementptr inbounds %struct.vnode, %struct.vnode* %485, i32 0, i32 2
  %487 = load i32, i32* %486, align 8
  %488 = load i32, i32* @LK_EXCLUSIVE, align 4
  %489 = load i32, i32* @LK_NOWITNESS, align 4
  %490 = or i32 %488, %489
  %491 = call i32 @lockmgr(i32 %487, i32 %490, i32* null)
  %492 = load %struct.vnode*, %struct.vnode** %20, align 8
  %493 = call i32 @VN_LOCK_AREC(%struct.vnode* %492)
  %494 = load %struct.vnode*, %struct.vnode** %20, align 8
  %495 = call i32 @VN_LOCK_ASHARE(%struct.vnode* %494)
  %496 = load %struct.vnode*, %struct.vnode** %20, align 8
  %497 = load %struct.mount*, %struct.mount** %10, align 8
  %498 = call i32 @insmntque(%struct.vnode* %496, %struct.mount* %497)
  store i32 %498, i32* %24, align 4
  %499 = load i32, i32* %24, align 4
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %528

501:                                              ; preds = %484
  %502 = load %struct.nfsnode**, %struct.nfsnode*** %15, align 8
  store %struct.nfsnode* null, %struct.nfsnode** %502, align 8
  %503 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %504 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %503, i32 0, i32 2
  %505 = call i32 @mtx_destroy(i32* %504)
  %506 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %507 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %506, i32 0, i32 1
  %508 = call i32 @lockdestroy(i32* %507)
  %509 = load %struct.nfsfh*, %struct.nfsfh** %12, align 8
  %510 = bitcast %struct.nfsfh* %509 to %struct.nfsv4node*
  %511 = load i32, i32* @M_NFSFH, align 4
  %512 = call i32 @free(%struct.nfsv4node* %510, i32 %511)
  %513 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %514 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %513, i32 0, i32 0
  %515 = load %struct.nfsv4node*, %struct.nfsv4node** %514, align 8
  %516 = icmp ne %struct.nfsv4node* %515, null
  br i1 %516, label %517, label %523

517:                                              ; preds = %501
  %518 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %519 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %518, i32 0, i32 0
  %520 = load %struct.nfsv4node*, %struct.nfsv4node** %519, align 8
  %521 = load i32, i32* @M_NFSV4NODE, align 4
  %522 = call i32 @free(%struct.nfsv4node* %520, i32 %521)
  br label %523

523:                                              ; preds = %517, %501
  %524 = load i32, i32* @newnfsnode_zone, align 4
  %525 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %526 = call i32 @uma_zfree(i32 %524, %struct.nfsnode* %525)
  %527 = load i32, i32* %24, align 4
  store i32 %527, i32* %9, align 4
  br label %551

528:                                              ; preds = %484
  %529 = load %struct.vnode*, %struct.vnode** %20, align 8
  %530 = load i32, i32* %25, align 4
  %531 = load i32, i32* %17, align 4
  %532 = load %struct.thread*, %struct.thread** %14, align 8
  %533 = load i32, i32* @newnfs_vncmpf, align 4
  %534 = load %struct.nfsfh*, %struct.nfsfh** %12, align 8
  %535 = bitcast %struct.nfsfh* %534 to %struct.nfsv4node*
  %536 = call i32 @vfs_hash_insert(%struct.vnode* %529, i32 %530, i32 %531, %struct.thread* %532, %struct.vnode** %21, i32 %533, %struct.nfsv4node* %535)
  store i32 %536, i32* %24, align 4
  %537 = load i32, i32* %24, align 4
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %541

539:                                              ; preds = %528
  %540 = load i32, i32* %24, align 4
  store i32 %540, i32* %9, align 4
  br label %551

541:                                              ; preds = %528
  %542 = load %struct.vnode*, %struct.vnode** %21, align 8
  %543 = icmp ne %struct.vnode* %542, null
  br i1 %543, label %544, label %548

544:                                              ; preds = %541
  %545 = load %struct.vnode*, %struct.vnode** %21, align 8
  %546 = call %struct.nfsnode* @VTONFS(%struct.vnode* %545)
  %547 = load %struct.nfsnode**, %struct.nfsnode*** %15, align 8
  store %struct.nfsnode* %546, %struct.nfsnode** %547, align 8
  store i32 0, i32* %9, align 4
  br label %551

548:                                              ; preds = %541
  %549 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %550 = load %struct.nfsnode**, %struct.nfsnode*** %15, align 8
  store %struct.nfsnode* %549, %struct.nfsnode** %550, align 8
  store i32 0, i32* %9, align 4
  br label %551

551:                                              ; preds = %548, %544, %539, %523, %327, %309, %75
  %552 = load i32, i32* %9, align 4
  ret i32 %552
}

declare dso_local %struct.nfsmount* @VFSTONFS(%struct.mount*) #1

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @fnv_32_buf(i32, i64, i32) #1

declare dso_local i32 @vfs_hash_get(%struct.mount*, i32, i32, %struct.thread*, %struct.vnode**, i32, %struct.nfsv4node*) #1

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @free(%struct.nfsv4node*, i32) #1

declare dso_local i64 @NFSBCMP(i32, i32, i64) #1

declare dso_local i32 @NFS4NODENAME(%struct.nfsv4node*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSBCOPY(i32, i32, i64) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local %struct.nfsnode* @uma_zalloc(i32, i32) #1

declare dso_local i32 @getnewvnode(i32, %struct.mount*, i32*, %struct.vnode**) #1

declare dso_local i32 @uma_zfree(i32, %struct.nfsnode*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @lockinit(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @bcmp(i32, i32, i64) #1

declare dso_local i32 @lockmgr(i32, i32, i32*) #1

declare dso_local i32 @VN_LOCK_AREC(%struct.vnode*) #1

declare dso_local i32 @VN_LOCK_ASHARE(%struct.vnode*) #1

declare dso_local i32 @insmntque(%struct.vnode*, %struct.mount*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @lockdestroy(i32*) #1

declare dso_local i32 @vfs_hash_insert(%struct.vnode*, i32, i32, %struct.thread*, %struct.vnode**, i32, %struct.nfsv4node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
