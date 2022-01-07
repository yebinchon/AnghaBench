; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clnode.c_ncl_nget.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clnode.c_ncl_nget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.mount = type { i32 }
%struct.nfsnode = type { %struct.nfsfh*, i32, i32, %struct.vnode* }
%struct.nfsfh = type { i32, i32* }
%struct.vnode = type { i64, i32, i32, %struct.nfsnode*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }
%struct.nfsmount = type { i32, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@FNV1_32_INIT = common dso_local global i32 0, align 4
@M_NFSFH = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@newnfs_vncmpf = common dso_local global i32 0, align 4
@newnfsnode_zone = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@nfs_vnode_tag = common dso_local global i32 0, align 4
@newnfs_vnodeops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ncl_nget: bo_bsize == 0\00", align 1
@buf_ops_newnfs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"NEWNFSnode lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_DUPOK = common dso_local global i32 0, align 4
@PVFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"nfsupg\00", align 1
@VLKTIMEOUT = common dso_local global i32 0, align 4
@LK_NOSHARE = common dso_local global i32 0, align 4
@LK_CANRECURSE = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_NOWITNESS = common dso_local global i32 0, align 4
@VNON = common dso_local global i64 0, align 8
@VDIR = common dso_local global i64 0, align 8
@VV_ROOT = common dso_local global i32 0, align 4
@VV_VMSIZEVNLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncl_nget(%struct.mount* %0, i32* %1, i32 %2, %struct.nfsnode** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mount*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfsnode**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.thread*, align 8
  %13 = alloca %struct.nfsnode*, align 8
  %14 = alloca %struct.vnode*, align 8
  %15 = alloca %struct.vnode*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.nfsmount*, align 8
  %19 = alloca %struct.nfsfh*, align 8
  store %struct.mount* %0, %struct.mount** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.nfsnode** %3, %struct.nfsnode*** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %20, %struct.thread** %12, align 8
  %21 = load %struct.mount*, %struct.mount** %7, align 8
  %22 = call %struct.nfsmount* @VFSTONFS(%struct.mount* %21)
  store %struct.nfsmount* %22, %struct.nfsmount** %18, align 8
  %23 = load %struct.nfsnode**, %struct.nfsnode*** %10, align 8
  store %struct.nfsnode* null, %struct.nfsnode** %23, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @FNV1_32_INIT, align 4
  %27 = call i32 @fnv_32_buf(i32* %24, i32 %25, i32 %26)
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 16, %29
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @M_NFSFH, align 4
  %33 = load i32, i32* @M_WAITOK, align 4
  %34 = call i8* @malloc(i32 %31, i32 %32, i32 %33)
  %35 = bitcast i8* %34 to %struct.nfsfh*
  store %struct.nfsfh* %35, %struct.nfsfh** %19, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.nfsfh*, %struct.nfsfh** %19, align 8
  %38 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @bcopy(i32* %36, i32* %40, i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.nfsfh*, %struct.nfsfh** %19, align 8
  %45 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.mount*, %struct.mount** %7, align 8
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.thread*, %struct.thread** %12, align 8
  %50 = load i32, i32* @newnfs_vncmpf, align 4
  %51 = load %struct.nfsfh*, %struct.nfsfh** %19, align 8
  %52 = call i32 @vfs_hash_get(%struct.mount* %46, i32 %47, i32 %48, %struct.thread* %49, %struct.vnode** %15, i32 %50, %struct.nfsfh* %51)
  store i32 %52, i32* %16, align 4
  %53 = load %struct.nfsfh*, %struct.nfsfh** %19, align 8
  %54 = load i32, i32* @M_NFSFH, align 4
  %55 = call i32 @free(%struct.nfsfh* %53, i32 %54)
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %5
  %59 = load i32, i32* %16, align 4
  store i32 %59, i32* %6, align 4
  br label %230

60:                                               ; preds = %5
  %61 = load %struct.vnode*, %struct.vnode** %15, align 8
  %62 = icmp ne %struct.vnode* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load %struct.vnode*, %struct.vnode** %15, align 8
  %65 = call %struct.nfsnode* @VTONFS(%struct.vnode* %64)
  %66 = load %struct.nfsnode**, %struct.nfsnode*** %10, align 8
  store %struct.nfsnode* %65, %struct.nfsnode** %66, align 8
  store i32 0, i32* %6, align 4
  br label %230

67:                                               ; preds = %60
  %68 = load i32, i32* @newnfsnode_zone, align 4
  %69 = load i32, i32* @M_WAITOK, align 4
  %70 = load i32, i32* @M_ZERO, align 4
  %71 = or i32 %69, %70
  %72 = call %struct.nfsnode* @uma_zalloc(i32 %68, i32 %71)
  store %struct.nfsnode* %72, %struct.nfsnode** %13, align 8
  %73 = load i32, i32* @nfs_vnode_tag, align 4
  %74 = load %struct.mount*, %struct.mount** %7, align 8
  %75 = call i32 @getnewvnode(i32 %73, %struct.mount* %74, i32* @newnfs_vnodeops, %struct.vnode** %15)
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %67
  %79 = load i32, i32* @newnfsnode_zone, align 4
  %80 = load %struct.nfsnode*, %struct.nfsnode** %13, align 8
  %81 = call i32 @uma_zfree(i32 %79, %struct.nfsnode* %80)
  %82 = load i32, i32* %16, align 4
  store i32 %82, i32* %6, align 4
  br label %230

83:                                               ; preds = %67
  %84 = load %struct.vnode*, %struct.vnode** %15, align 8
  store %struct.vnode* %84, %struct.vnode** %14, align 8
  %85 = load %struct.vnode*, %struct.vnode** %14, align 8
  %86 = getelementptr inbounds %struct.vnode, %struct.vnode* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @KASSERT(i32 %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %92 = load %struct.vnode*, %struct.vnode** %14, align 8
  %93 = getelementptr inbounds %struct.vnode, %struct.vnode* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i32* @buf_ops_newnfs, i32** %94, align 8
  %95 = load %struct.nfsnode*, %struct.nfsnode** %13, align 8
  %96 = load %struct.vnode*, %struct.vnode** %14, align 8
  %97 = getelementptr inbounds %struct.vnode, %struct.vnode* %96, i32 0, i32 3
  store %struct.nfsnode* %95, %struct.nfsnode** %97, align 8
  %98 = load %struct.vnode*, %struct.vnode** %14, align 8
  %99 = load %struct.nfsnode*, %struct.nfsnode** %13, align 8
  %100 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %99, i32 0, i32 3
  store %struct.vnode* %98, %struct.vnode** %100, align 8
  %101 = load %struct.nfsnode*, %struct.nfsnode** %13, align 8
  %102 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %101, i32 0, i32 2
  %103 = load i32, i32* @MTX_DEF, align 4
  %104 = load i32, i32* @MTX_DUPOK, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @mtx_init(i32* %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %105)
  %107 = load %struct.nfsnode*, %struct.nfsnode** %13, align 8
  %108 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %107, i32 0, i32 1
  %109 = load i32, i32* @PVFS, align 4
  %110 = load i32, i32* @VLKTIMEOUT, align 4
  %111 = load i32, i32* @LK_NOSHARE, align 4
  %112 = load i32, i32* @LK_CANRECURSE, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @lockinit(i32* %108, i32 %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %110, i32 %113)
  %115 = load %struct.vnode*, %struct.vnode** %14, align 8
  %116 = getelementptr inbounds %struct.vnode, %struct.vnode* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @LK_EXCLUSIVE, align 4
  %119 = load i32, i32* @LK_NOWITNESS, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @lockmgr(i32 %117, i32 %120, i32* null)
  %122 = load %struct.vnode*, %struct.vnode** %14, align 8
  %123 = call i32 @VN_LOCK_AREC(%struct.vnode* %122)
  %124 = load %struct.vnode*, %struct.vnode** %14, align 8
  %125 = call i32 @VN_LOCK_ASHARE(%struct.vnode* %124)
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.nfsmount*, %struct.nfsmount** %18, align 8
  %128 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %126, %129
  br i1 %130, label %131, label %155

131:                                              ; preds = %83
  %132 = load i32*, i32** %8, align 8
  %133 = load %struct.nfsmount*, %struct.nfsmount** %18, align 8
  %134 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @bcmp(i32* %132, i32 %135, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %155, label %139

139:                                              ; preds = %131
  %140 = load %struct.vnode*, %struct.vnode** %14, align 8
  %141 = getelementptr inbounds %struct.vnode, %struct.vnode* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @VNON, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = load i64, i64* @VDIR, align 8
  %147 = load %struct.vnode*, %struct.vnode** %14, align 8
  %148 = getelementptr inbounds %struct.vnode, %struct.vnode* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  br label %149

149:                                              ; preds = %145, %139
  %150 = load i32, i32* @VV_ROOT, align 4
  %151 = load %struct.vnode*, %struct.vnode** %14, align 8
  %152 = getelementptr inbounds %struct.vnode, %struct.vnode* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %149, %131, %83
  %156 = load i32, i32* @VV_VMSIZEVNLOCK, align 4
  %157 = load %struct.vnode*, %struct.vnode** %14, align 8
  %158 = getelementptr inbounds %struct.vnode, %struct.vnode* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = add i64 16, %162
  %164 = trunc i64 %163 to i32
  %165 = load i32, i32* @M_NFSFH, align 4
  %166 = load i32, i32* @M_WAITOK, align 4
  %167 = call i8* @malloc(i32 %164, i32 %165, i32 %166)
  %168 = bitcast i8* %167 to %struct.nfsfh*
  %169 = load %struct.nfsnode*, %struct.nfsnode** %13, align 8
  %170 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %169, i32 0, i32 0
  store %struct.nfsfh* %168, %struct.nfsfh** %170, align 8
  %171 = load i32*, i32** %8, align 8
  %172 = load %struct.nfsnode*, %struct.nfsnode** %13, align 8
  %173 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %172, i32 0, i32 0
  %174 = load %struct.nfsfh*, %struct.nfsfh** %173, align 8
  %175 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %9, align 4
  %178 = call i32 @bcopy(i32* %171, i32* %176, i32 %177)
  %179 = load i32, i32* %9, align 4
  %180 = load %struct.nfsnode*, %struct.nfsnode** %13, align 8
  %181 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %180, i32 0, i32 0
  %182 = load %struct.nfsfh*, %struct.nfsfh** %181, align 8
  %183 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %182, i32 0, i32 0
  store i32 %179, i32* %183, align 8
  %184 = load %struct.vnode*, %struct.vnode** %14, align 8
  %185 = load %struct.mount*, %struct.mount** %7, align 8
  %186 = call i32 @insmntque(%struct.vnode* %184, %struct.mount* %185)
  store i32 %186, i32* %16, align 4
  %187 = load i32, i32* %16, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %206

189:                                              ; preds = %155
  %190 = load %struct.nfsnode**, %struct.nfsnode*** %10, align 8
  store %struct.nfsnode* null, %struct.nfsnode** %190, align 8
  %191 = load %struct.nfsnode*, %struct.nfsnode** %13, align 8
  %192 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %191, i32 0, i32 0
  %193 = load %struct.nfsfh*, %struct.nfsfh** %192, align 8
  %194 = load i32, i32* @M_NFSFH, align 4
  %195 = call i32 @free(%struct.nfsfh* %193, i32 %194)
  %196 = load %struct.nfsnode*, %struct.nfsnode** %13, align 8
  %197 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %196, i32 0, i32 2
  %198 = call i32 @mtx_destroy(i32* %197)
  %199 = load %struct.nfsnode*, %struct.nfsnode** %13, align 8
  %200 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %199, i32 0, i32 1
  %201 = call i32 @lockdestroy(i32* %200)
  %202 = load i32, i32* @newnfsnode_zone, align 4
  %203 = load %struct.nfsnode*, %struct.nfsnode** %13, align 8
  %204 = call i32 @uma_zfree(i32 %202, %struct.nfsnode* %203)
  %205 = load i32, i32* %16, align 4
  store i32 %205, i32* %6, align 4
  br label %230

206:                                              ; preds = %155
  %207 = load %struct.vnode*, %struct.vnode** %14, align 8
  %208 = load i32, i32* %17, align 4
  %209 = load i32, i32* %11, align 4
  %210 = load %struct.thread*, %struct.thread** %12, align 8
  %211 = load i32, i32* @newnfs_vncmpf, align 4
  %212 = load %struct.nfsnode*, %struct.nfsnode** %13, align 8
  %213 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %212, i32 0, i32 0
  %214 = load %struct.nfsfh*, %struct.nfsfh** %213, align 8
  %215 = call i32 @vfs_hash_insert(%struct.vnode* %207, i32 %208, i32 %209, %struct.thread* %210, %struct.vnode** %15, i32 %211, %struct.nfsfh* %214)
  store i32 %215, i32* %16, align 4
  %216 = load i32, i32* %16, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %206
  %219 = load i32, i32* %16, align 4
  store i32 %219, i32* %6, align 4
  br label %230

220:                                              ; preds = %206
  %221 = load %struct.vnode*, %struct.vnode** %15, align 8
  %222 = icmp ne %struct.vnode* %221, null
  br i1 %222, label %223, label %227

223:                                              ; preds = %220
  %224 = load %struct.vnode*, %struct.vnode** %15, align 8
  %225 = call %struct.nfsnode* @VTONFS(%struct.vnode* %224)
  %226 = load %struct.nfsnode**, %struct.nfsnode*** %10, align 8
  store %struct.nfsnode* %225, %struct.nfsnode** %226, align 8
  store i32 0, i32* %6, align 4
  br label %230

227:                                              ; preds = %220
  %228 = load %struct.nfsnode*, %struct.nfsnode** %13, align 8
  %229 = load %struct.nfsnode**, %struct.nfsnode*** %10, align 8
  store %struct.nfsnode* %228, %struct.nfsnode** %229, align 8
  store i32 0, i32* %6, align 4
  br label %230

230:                                              ; preds = %227, %223, %218, %189, %78, %63, %58
  %231 = load i32, i32* %6, align 4
  ret i32 %231
}

declare dso_local %struct.nfsmount* @VFSTONFS(%struct.mount*) #1

declare dso_local i32 @fnv_32_buf(i32*, i32, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @vfs_hash_get(%struct.mount*, i32, i32, %struct.thread*, %struct.vnode**, i32, %struct.nfsfh*) #1

declare dso_local i32 @free(%struct.nfsfh*, i32) #1

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local %struct.nfsnode* @uma_zalloc(i32, i32) #1

declare dso_local i32 @getnewvnode(i32, %struct.mount*, i32*, %struct.vnode**) #1

declare dso_local i32 @uma_zfree(i32, %struct.nfsnode*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @lockinit(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @lockmgr(i32, i32, i32*) #1

declare dso_local i32 @VN_LOCK_AREC(%struct.vnode*) #1

declare dso_local i32 @VN_LOCK_ASHARE(%struct.vnode*) #1

declare dso_local i32 @bcmp(i32*, i32, i32) #1

declare dso_local i32 @insmntque(%struct.vnode*, %struct.mount*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @lockdestroy(i32*) #1

declare dso_local i32 @vfs_hash_insert(%struct.vnode*, i32, i32, %struct.thread*, %struct.vnode**, i32, %struct.nfsfh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
