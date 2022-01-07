; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_createsub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_createsub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.nfsrv_descript = type { i32, i32 }
%struct.nameidata = type { %struct.vnode*, %struct.vnode*, %struct.vnode*, i32 }
%struct.vnode = type { i32 }
%struct.nfsvattr = type { i64, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.nfsexstuff = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@VREG = common dso_local global i64 0, align 8
@VSOCK = common dso_local global i64 0, align 8
@NFSERR_NOTSUPP = common dso_local global i32 0, align 4
@VCHR = common dso_local global i64 0, align 8
@VBLK = common dso_local global i64 0, align 8
@VFIFO = common dso_local global i64 0, align 8
@PRIV_VFS_MKNOD_DEV = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@VNOVAL = common dso_local global i64 0, align 8
@VWRITE = common dso_local global i32 0, align 4
@NFSACCCHK_NOOVERRIDE = common dso_local global i32 0, align 4
@NFSACCCHK_VPISLOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsvno_createsub(%struct.nfsrv_descript* %0, %struct.nameidata* %1, %struct.vnode** %2, %struct.nfsvattr* %3, i32* %4, i8** %5, i32 %6, %struct.nfsexstuff* %7) #0 {
  %9 = alloca %struct.nfsrv_descript*, align 8
  %10 = alloca %struct.nameidata*, align 8
  %11 = alloca %struct.vnode**, align 8
  %12 = alloca %struct.nfsvattr*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.nfsexstuff*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.thread*, align 8
  store %struct.nfsrv_descript* %0, %struct.nfsrv_descript** %9, align 8
  store %struct.nameidata* %1, %struct.nameidata** %10, align 8
  store %struct.vnode** %2, %struct.vnode*** %11, align 8
  store %struct.nfsvattr* %3, %struct.nfsvattr** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8** %5, i8*** %14, align 8
  store i32 %6, i32* %15, align 4
  store %struct.nfsexstuff* %7, %struct.nfsexstuff** %16, align 8
  %20 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %20, %struct.thread** %19, align 8
  %21 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %9, align 8
  %22 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %18, align 4
  %24 = load i32, i32* %18, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %229, label %26

26:                                               ; preds = %8
  %27 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %28 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %27, i32 0, i32 1
  %29 = load %struct.vnode*, %struct.vnode** %28, align 8
  %30 = icmp eq %struct.vnode* %29, null
  br i1 %30, label %31, label %229

31:                                               ; preds = %26
  %32 = load %struct.nfsvattr*, %struct.nfsvattr** %12, align 8
  %33 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VREG, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.nfsvattr*, %struct.nfsvattr** %12, align 8
  %39 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VSOCK, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %128

43:                                               ; preds = %37, %31
  %44 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %45 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %44, i32 0, i32 2
  %46 = load %struct.vnode*, %struct.vnode** %45, align 8
  %47 = call i32 @vrele(%struct.vnode* %46)
  %48 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %49 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %48, i32 0, i32 0
  %50 = load %struct.vnode*, %struct.vnode** %49, align 8
  %51 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %52 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %51, i32 0, i32 1
  %53 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %54 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %53, i32 0, i32 3
  %55 = load %struct.nfsvattr*, %struct.nfsvattr** %12, align 8
  %56 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %55, i32 0, i32 3
  %57 = call i32 @VOP_CREATE(%struct.vnode* %50, %struct.vnode** %52, i32* %54, i32* %56)
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %18, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %43
  %61 = load %struct.nfsvattr*, %struct.nfsvattr** %12, align 8
  %62 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @VREG, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %60
  %67 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %68 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %67, i32 0, i32 1
  %69 = load %struct.vnode*, %struct.vnode** %68, align 8
  %70 = load %struct.nfsvattr*, %struct.nfsvattr** %12, align 8
  %71 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %70, i32 0, i32 3
  %72 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %9, align 8
  %73 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.thread*, %struct.thread** %19, align 8
  %76 = call i32 @nfsrv_pnfscreate(%struct.vnode* %69, i32* %71, i32 %74, %struct.thread* %75)
  br label %77

77:                                               ; preds = %66, %60, %43
  %78 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %79 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %78, i32 0, i32 0
  %80 = load %struct.vnode*, %struct.vnode** %79, align 8
  %81 = call i32 @vput(%struct.vnode* %80)
  %82 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %83 = call i32 @nfsvno_relpathbuf(%struct.nameidata* %82)
  %84 = load i32, i32* %18, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %127, label %86

86:                                               ; preds = %77
  %87 = load i32*, i32** %13, align 8
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %126

90:                                               ; preds = %86
  %91 = load i32*, i32** %13, align 8
  store i32 0, i32* %91, align 4
  %92 = load %struct.nfsvattr*, %struct.nfsvattr** %12, align 8
  %93 = call i32 @NFSVNO_ATTRINIT(%struct.nfsvattr* %92)
  %94 = load i8**, i8*** %14, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 0
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.nfsvattr*, %struct.nfsvattr** %12, align 8
  %98 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  store i8* %96, i8** %99, align 8
  %100 = load i8**, i8*** %14, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 1
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.nfsvattr*, %struct.nfsvattr** %12, align 8
  %104 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  store i8* %102, i8** %105, align 8
  %106 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %107 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %106, i32 0, i32 1
  %108 = load %struct.vnode*, %struct.vnode** %107, align 8
  %109 = load %struct.nfsvattr*, %struct.nfsvattr** %12, align 8
  %110 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %109, i32 0, i32 3
  %111 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %9, align 8
  %112 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @VOP_SETATTR(%struct.vnode* %108, i32* %110, i32 %113)
  store i32 %114, i32* %18, align 4
  %115 = load i32, i32* %18, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %90
  %118 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %119 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %118, i32 0, i32 1
  %120 = load %struct.vnode*, %struct.vnode** %119, align 8
  %121 = call i32 @vput(%struct.vnode* %120)
  %122 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %123 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %122, i32 0, i32 1
  store %struct.vnode* null, %struct.vnode** %123, align 8
  %124 = load i32, i32* @NFSERR_NOTSUPP, align 4
  store i32 %124, i32* %18, align 4
  br label %125

125:                                              ; preds = %117, %90
  br label %126

126:                                              ; preds = %125, %86
  br label %127

127:                                              ; preds = %126, %77
  br label %224

128:                                              ; preds = %37
  %129 = load %struct.nfsvattr*, %struct.nfsvattr** %12, align 8
  %130 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @VCHR, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %146, label %134

134:                                              ; preds = %128
  %135 = load %struct.nfsvattr*, %struct.nfsvattr** %12, align 8
  %136 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @VBLK, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %146, label %140

140:                                              ; preds = %134
  %141 = load %struct.nfsvattr*, %struct.nfsvattr** %12, align 8
  %142 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @VFIFO, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %211

146:                                              ; preds = %140, %134, %128
  %147 = load %struct.nfsvattr*, %struct.nfsvattr** %12, align 8
  %148 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @VCHR, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %146
  %153 = load i32, i32* %15, align 4
  %154 = icmp eq i32 %153, -1
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = load i64, i64* @VFIFO, align 8
  %157 = load %struct.nfsvattr*, %struct.nfsvattr** %12, align 8
  %158 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  br label %159

159:                                              ; preds = %155, %152, %146
  %160 = load %struct.nfsvattr*, %struct.nfsvattr** %12, align 8
  %161 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @VFIFO, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %183

165:                                              ; preds = %159
  %166 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %9, align 8
  %167 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @PRIV_VFS_MKNOD_DEV, align 4
  %170 = call i32 @priv_check_cred(i32 %168, i32 %169)
  store i32 %170, i32* %18, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %165
  %173 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %174 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %173, i32 0, i32 2
  %175 = load %struct.vnode*, %struct.vnode** %174, align 8
  %176 = call i32 @vrele(%struct.vnode* %175)
  %177 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %178 = call i32 @nfsvno_relpathbuf(%struct.nameidata* %177)
  %179 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %180 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %179, i32 0, i32 0
  %181 = load %struct.vnode*, %struct.vnode** %180, align 8
  %182 = call i32 @vput(%struct.vnode* %181)
  br label %306

183:                                              ; preds = %165, %159
  %184 = load i32, i32* %15, align 4
  %185 = load %struct.nfsvattr*, %struct.nfsvattr** %12, align 8
  %186 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 8
  %187 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %188 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %187, i32 0, i32 0
  %189 = load %struct.vnode*, %struct.vnode** %188, align 8
  %190 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %191 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %190, i32 0, i32 1
  %192 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %193 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %192, i32 0, i32 3
  %194 = load %struct.nfsvattr*, %struct.nfsvattr** %12, align 8
  %195 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %194, i32 0, i32 3
  %196 = call i32 @VOP_MKNOD(%struct.vnode* %189, %struct.vnode** %191, i32* %193, i32* %195)
  store i32 %196, i32* %18, align 4
  %197 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %198 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %197, i32 0, i32 0
  %199 = load %struct.vnode*, %struct.vnode** %198, align 8
  %200 = call i32 @vput(%struct.vnode* %199)
  %201 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %202 = call i32 @nfsvno_relpathbuf(%struct.nameidata* %201)
  %203 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %204 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %203, i32 0, i32 2
  %205 = load %struct.vnode*, %struct.vnode** %204, align 8
  %206 = call i32 @vrele(%struct.vnode* %205)
  %207 = load i32, i32* %18, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %183
  br label %306

210:                                              ; preds = %183
  br label %223

211:                                              ; preds = %140
  %212 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %213 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %212, i32 0, i32 2
  %214 = load %struct.vnode*, %struct.vnode** %213, align 8
  %215 = call i32 @vrele(%struct.vnode* %214)
  %216 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %217 = call i32 @nfsvno_relpathbuf(%struct.nameidata* %216)
  %218 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %219 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %218, i32 0, i32 0
  %220 = load %struct.vnode*, %struct.vnode** %219, align 8
  %221 = call i32 @vput(%struct.vnode* %220)
  %222 = load i32, i32* @ENXIO, align 4
  store i32 %222, i32* %18, align 4
  br label %306

223:                                              ; preds = %210
  br label %224

224:                                              ; preds = %223, %127
  %225 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %226 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %225, i32 0, i32 1
  %227 = load %struct.vnode*, %struct.vnode** %226, align 8
  %228 = load %struct.vnode**, %struct.vnode*** %11, align 8
  store %struct.vnode* %227, %struct.vnode** %228, align 8
  br label %305

229:                                              ; preds = %26, %8
  %230 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %231 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %230, i32 0, i32 2
  %232 = load %struct.vnode*, %struct.vnode** %231, align 8
  %233 = call i32 @vrele(%struct.vnode* %232)
  %234 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %235 = call i32 @nfsvno_relpathbuf(%struct.nameidata* %234)
  %236 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %237 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %236, i32 0, i32 1
  %238 = load %struct.vnode*, %struct.vnode** %237, align 8
  %239 = load %struct.vnode**, %struct.vnode*** %11, align 8
  store %struct.vnode* %238, %struct.vnode** %239, align 8
  %240 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %241 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %240, i32 0, i32 0
  %242 = load %struct.vnode*, %struct.vnode** %241, align 8
  %243 = load %struct.vnode**, %struct.vnode*** %11, align 8
  %244 = load %struct.vnode*, %struct.vnode** %243, align 8
  %245 = icmp eq %struct.vnode* %242, %244
  br i1 %245, label %246, label %251

246:                                              ; preds = %229
  %247 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %248 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %247, i32 0, i32 0
  %249 = load %struct.vnode*, %struct.vnode** %248, align 8
  %250 = call i32 @vrele(%struct.vnode* %249)
  br label %256

251:                                              ; preds = %229
  %252 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %253 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %252, i32 0, i32 0
  %254 = load %struct.vnode*, %struct.vnode** %253, align 8
  %255 = call i32 @vput(%struct.vnode* %254)
  br label %256

256:                                              ; preds = %251, %246
  %257 = load i32, i32* %18, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %297, label %259

259:                                              ; preds = %256
  %260 = load %struct.nfsvattr*, %struct.nfsvattr** %12, align 8
  %261 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @VNOVAL, align 8
  %264 = icmp ne i64 %262, %263
  br i1 %264, label %265, label %297

265:                                              ; preds = %259
  %266 = load %struct.vnode**, %struct.vnode*** %11, align 8
  %267 = load %struct.vnode*, %struct.vnode** %266, align 8
  %268 = load i32, i32* @VWRITE, align 4
  %269 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %9, align 8
  %270 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.nfsexstuff*, %struct.nfsexstuff** %16, align 8
  %273 = load %struct.thread*, %struct.thread** %19, align 8
  %274 = load i32, i32* @NFSACCCHK_NOOVERRIDE, align 4
  %275 = load i32, i32* @NFSACCCHK_VPISLOCKED, align 4
  %276 = call i32 @nfsvno_accchk(%struct.vnode* %267, i32 %268, i32 %271, %struct.nfsexstuff* %272, %struct.thread* %273, i32 %274, i32 %275, i32* null)
  store i32 %276, i32* %18, align 4
  %277 = load i32, i32* %18, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %296, label %279

279:                                              ; preds = %265
  %280 = load %struct.nfsvattr*, %struct.nfsvattr** %12, align 8
  %281 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  store i64 %282, i64* %17, align 8
  %283 = load %struct.nfsvattr*, %struct.nfsvattr** %12, align 8
  %284 = call i32 @NFSVNO_ATTRINIT(%struct.nfsvattr* %283)
  %285 = load i64, i64* %17, align 8
  %286 = load %struct.nfsvattr*, %struct.nfsvattr** %12, align 8
  %287 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %286, i32 0, i32 2
  store i64 %285, i64* %287, align 8
  %288 = load %struct.vnode**, %struct.vnode*** %11, align 8
  %289 = load %struct.vnode*, %struct.vnode** %288, align 8
  %290 = load %struct.nfsvattr*, %struct.nfsvattr** %12, align 8
  %291 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %290, i32 0, i32 3
  %292 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %9, align 8
  %293 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @VOP_SETATTR(%struct.vnode* %289, i32* %291, i32 %294)
  store i32 %295, i32* %18, align 4
  br label %296

296:                                              ; preds = %279, %265
  br label %297

297:                                              ; preds = %296, %259, %256
  %298 = load i32, i32* %18, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %297
  %301 = load %struct.vnode**, %struct.vnode*** %11, align 8
  %302 = load %struct.vnode*, %struct.vnode** %301, align 8
  %303 = call i32 @vput(%struct.vnode* %302)
  br label %304

304:                                              ; preds = %300, %297
  br label %305

305:                                              ; preds = %304, %224
  br label %306

306:                                              ; preds = %305, %211, %209, %172
  %307 = load i32, i32* %18, align 4
  %308 = call i32 @NFSEXITCODE(i32 %307)
  %309 = load i32, i32* %18, align 4
  ret i32 %309
}

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @VOP_CREATE(%struct.vnode*, %struct.vnode**, i32*, i32*) #1

declare dso_local i32 @nfsrv_pnfscreate(%struct.vnode*, i32*, i32, %struct.thread*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @nfsvno_relpathbuf(%struct.nameidata*) #1

declare dso_local i32 @NFSVNO_ATTRINIT(%struct.nfsvattr*) #1

declare dso_local i32 @VOP_SETATTR(%struct.vnode*, i32*, i32) #1

declare dso_local i32 @priv_check_cred(i32, i32) #1

declare dso_local i32 @VOP_MKNOD(%struct.vnode*, %struct.vnode**, i32*, i32*) #1

declare dso_local i32 @nfsvno_accchk(%struct.vnode*, i32, i32, %struct.nfsexstuff*, %struct.thread*, i32, i32, i32*) #1

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
