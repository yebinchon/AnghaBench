; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.nfsrv_descript = type { i8* }
%struct.nameidata = type { %struct.vnode*, %struct.vnode*, %struct.vnode*, %struct.TYPE_4__ }
%struct.vnode = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.nfsstate = type { i32 }
%struct.nfsvattr = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.ucred = type { i32 }
%struct.nfsexstuff = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@NFSERR_NOTSUPP = common dso_local global i8* null, align 8
@NFSATTRBIT_TIMEACCESS = common dso_local global i32 0, align 4
@NFSV4OPEN_CREATE = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@RDONLY = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@NFSACCCHK_NOOVERRIDE = common dso_local global i32 0, align 4
@NFSACCCHK_VPISLOCKED = common dso_local global i32 0, align 4
@HASBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsvno_open(%struct.nfsrv_descript* %0, %struct.nameidata* %1, i32 %2, i32* %3, %struct.nfsstate* %4, i32* %5, %struct.nfsvattr* %6, i8** %7, i32 %8, i32* %9, i32* %10, %struct.ucred* %11, %struct.nfsexstuff* %12, %struct.vnode** %13) #0 {
  %15 = alloca %struct.nfsrv_descript*, align 8
  %16 = alloca %struct.nameidata*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.nfsstate*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.nfsvattr*, align 8
  %22 = alloca i8**, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.ucred*, align 8
  %27 = alloca %struct.nfsexstuff*, align 8
  %28 = alloca %struct.vnode**, align 8
  %29 = alloca %struct.vnode*, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.nfsexstuff, align 4
  %32 = alloca %struct.thread*, align 8
  store %struct.nfsrv_descript* %0, %struct.nfsrv_descript** %15, align 8
  store %struct.nameidata* %1, %struct.nameidata** %16, align 8
  store i32 %2, i32* %17, align 4
  store i32* %3, i32** %18, align 8
  store %struct.nfsstate* %4, %struct.nfsstate** %19, align 8
  store i32* %5, i32** %20, align 8
  store %struct.nfsvattr* %6, %struct.nfsvattr** %21, align 8
  store i8** %7, i8*** %22, align 8
  store i32 %8, i32* %23, align 4
  store i32* %9, i32** %24, align 8
  store i32* %10, i32** %25, align 8
  store %struct.ucred* %11, %struct.ucred** %26, align 8
  store %struct.nfsexstuff* %12, %struct.nfsexstuff** %27, align 8
  store %struct.vnode** %13, %struct.vnode*** %28, align 8
  store %struct.vnode* null, %struct.vnode** %29, align 8
  %33 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %33, %struct.thread** %32, align 8
  %34 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %35 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %34, i32 0, i32 0
  %36 = load %struct.vnode*, %struct.vnode** %35, align 8
  %37 = icmp eq %struct.vnode* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %14
  %39 = load i32, i32* %17, align 4
  %40 = load i32*, i32** %18, align 8
  %41 = load %struct.nfsstate*, %struct.nfsstate** %19, align 8
  %42 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %15, align 8
  %43 = load %struct.thread*, %struct.thread** %32, align 8
  %44 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %15, align 8
  %45 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i8* @nfsrv_opencheck(i32 %39, i32* %40, %struct.nfsstate* %41, %struct.vnode* null, %struct.nfsrv_descript* %42, %struct.thread* %43, i8* %46)
  %48 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %15, align 8
  %49 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  br label %50

50:                                               ; preds = %38, %14
  %51 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %15, align 8
  %52 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %288, label %55

55:                                               ; preds = %50
  %56 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %57 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %56, i32 0, i32 0
  %58 = load %struct.vnode*, %struct.vnode** %57, align 8
  %59 = icmp eq %struct.vnode* %58, null
  br i1 %59, label %60, label %165

60:                                               ; preds = %55
  %61 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %62 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %61, i32 0, i32 2
  %63 = load %struct.vnode*, %struct.vnode** %62, align 8
  %64 = call i32 @vrele(%struct.vnode* %63)
  %65 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %66 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %65, i32 0, i32 1
  %67 = load %struct.vnode*, %struct.vnode** %66, align 8
  %68 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %69 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %68, i32 0, i32 0
  %70 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %71 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %70, i32 0, i32 3
  %72 = load %struct.nfsvattr*, %struct.nfsvattr** %21, align 8
  %73 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %72, i32 0, i32 0
  %74 = call i8* @VOP_CREATE(%struct.vnode* %67, %struct.vnode** %69, %struct.TYPE_4__* %71, i32* %73)
  %75 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %15, align 8
  %76 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %15, align 8
  %78 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %60
  %82 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %83 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %82, i32 0, i32 0
  %84 = load %struct.vnode*, %struct.vnode** %83, align 8
  %85 = load %struct.nfsvattr*, %struct.nfsvattr** %21, align 8
  %86 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %85, i32 0, i32 0
  %87 = load %struct.ucred*, %struct.ucred** %26, align 8
  %88 = load %struct.thread*, %struct.thread** %32, align 8
  %89 = call i32 @nfsrv_pnfscreate(%struct.vnode* %84, i32* %86, %struct.ucred* %87, %struct.thread* %88)
  br label %90

90:                                               ; preds = %81, %60
  %91 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %92 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %91, i32 0, i32 1
  %93 = load %struct.vnode*, %struct.vnode** %92, align 8
  %94 = call i32 @vput(%struct.vnode* %93)
  %95 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %96 = call i32 @nfsvno_relpathbuf(%struct.nameidata* %95)
  %97 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %15, align 8
  %98 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %161, label %101

101:                                              ; preds = %90
  %102 = load i32*, i32** %20, align 8
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %149

105:                                              ; preds = %101
  %106 = load i32*, i32** %20, align 8
  store i32 0, i32* %106, align 4
  %107 = load %struct.nfsvattr*, %struct.nfsvattr** %21, align 8
  %108 = call i32 @NFSVNO_ATTRINIT(%struct.nfsvattr* %107)
  %109 = load i8**, i8*** %22, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 0
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.nfsvattr*, %struct.nfsvattr** %21, align 8
  %113 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  store i8* %111, i8** %114, align 8
  %115 = load i8**, i8*** %22, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 1
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.nfsvattr*, %struct.nfsvattr** %21, align 8
  %119 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  store i8* %117, i8** %120, align 8
  %121 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %122 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %121, i32 0, i32 0
  %123 = load %struct.vnode*, %struct.vnode** %122, align 8
  %124 = load %struct.nfsvattr*, %struct.nfsvattr** %21, align 8
  %125 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %124, i32 0, i32 0
  %126 = load %struct.ucred*, %struct.ucred** %26, align 8
  %127 = call i8* @VOP_SETATTR(%struct.vnode* %123, i32* %125, %struct.ucred* %126)
  %128 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %15, align 8
  %129 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %128, i32 0, i32 0
  store i8* %127, i8** %129, align 8
  %130 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %15, align 8
  %131 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %144

134:                                              ; preds = %105
  %135 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %136 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %135, i32 0, i32 0
  %137 = load %struct.vnode*, %struct.vnode** %136, align 8
  %138 = call i32 @vput(%struct.vnode* %137)
  %139 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %140 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %139, i32 0, i32 0
  store %struct.vnode* null, %struct.vnode** %140, align 8
  %141 = load i8*, i8** @NFSERR_NOTSUPP, align 8
  %142 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %15, align 8
  %143 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %142, i32 0, i32 0
  store i8* %141, i8** %143, align 8
  br label %148

144:                                              ; preds = %105
  %145 = load i32*, i32** %25, align 8
  %146 = load i32, i32* @NFSATTRBIT_TIMEACCESS, align 4
  %147 = call i32 @NFSSETBIT_ATTRBIT(i32* %145, i32 %146)
  br label %148

148:                                              ; preds = %144, %134
  br label %160

149:                                              ; preds = %101
  %150 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %15, align 8
  %151 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %152 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %151, i32 0, i32 0
  %153 = load %struct.vnode*, %struct.vnode** %152, align 8
  %154 = load %struct.nfsvattr*, %struct.nfsvattr** %21, align 8
  %155 = load i32*, i32** %24, align 8
  %156 = load %struct.thread*, %struct.thread** %32, align 8
  %157 = load i32*, i32** %25, align 8
  %158 = load %struct.nfsexstuff*, %struct.nfsexstuff** %27, align 8
  %159 = call i32 @nfsrv_fixattr(%struct.nfsrv_descript* %150, %struct.vnode* %153, %struct.nfsvattr* %154, i32* %155, %struct.thread* %156, i32* %157, %struct.nfsexstuff* %158)
  br label %160

160:                                              ; preds = %149, %148
  br label %161

161:                                              ; preds = %160, %90
  %162 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %163 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %162, i32 0, i32 0
  %164 = load %struct.vnode*, %struct.vnode** %163, align 8
  store %struct.vnode* %164, %struct.vnode** %29, align 8
  br label %287

165:                                              ; preds = %55
  %166 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %167 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %166, i32 0, i32 2
  %168 = load %struct.vnode*, %struct.vnode** %167, align 8
  %169 = icmp ne %struct.vnode* %168, null
  br i1 %169, label %170, label %175

170:                                              ; preds = %165
  %171 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %172 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %171, i32 0, i32 2
  %173 = load %struct.vnode*, %struct.vnode** %172, align 8
  %174 = call i32 @vrele(%struct.vnode* %173)
  br label %175

175:                                              ; preds = %170, %165
  %176 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %177 = call i32 @nfsvno_relpathbuf(%struct.nameidata* %176)
  %178 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %179 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %178, i32 0, i32 0
  %180 = load %struct.vnode*, %struct.vnode** %179, align 8
  store %struct.vnode* %180, %struct.vnode** %29, align 8
  %181 = load i32, i32* %23, align 4
  %182 = load i32, i32* @NFSV4OPEN_CREATE, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %201

184:                                              ; preds = %175
  %185 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %186 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %185, i32 0, i32 1
  %187 = load %struct.vnode*, %struct.vnode** %186, align 8
  %188 = load %struct.vnode*, %struct.vnode** %29, align 8
  %189 = icmp eq %struct.vnode* %187, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %184
  %191 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %192 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %191, i32 0, i32 1
  %193 = load %struct.vnode*, %struct.vnode** %192, align 8
  %194 = call i32 @vrele(%struct.vnode* %193)
  br label %200

195:                                              ; preds = %184
  %196 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %197 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %196, i32 0, i32 1
  %198 = load %struct.vnode*, %struct.vnode** %197, align 8
  %199 = call i32 @vput(%struct.vnode* %198)
  br label %200

200:                                              ; preds = %195, %190
  br label %201

201:                                              ; preds = %200, %175
  %202 = load %struct.nfsvattr*, %struct.nfsvattr** %21, align 8
  %203 = call i64 @NFSVNO_ISSETSIZE(%struct.nfsvattr* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %266

205:                                              ; preds = %201
  %206 = load %struct.vnode*, %struct.vnode** %29, align 8
  %207 = getelementptr inbounds %struct.vnode, %struct.vnode* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @VREG, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %266

211:                                              ; preds = %205
  %212 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %213 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @RDONLY, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %211
  %220 = call i32 @NFSVNO_SETEXRDONLY(%struct.nfsexstuff* %31)
  br label %223

221:                                              ; preds = %211
  %222 = call i32 @NFSVNO_EXINIT(%struct.nfsexstuff* %31)
  br label %223

223:                                              ; preds = %221, %219
  %224 = load %struct.vnode*, %struct.vnode** %29, align 8
  %225 = load i32, i32* @VWRITE, align 4
  %226 = load %struct.ucred*, %struct.ucred** %26, align 8
  %227 = load %struct.thread*, %struct.thread** %32, align 8
  %228 = load i32, i32* @NFSACCCHK_NOOVERRIDE, align 4
  %229 = load i32, i32* @NFSACCCHK_VPISLOCKED, align 4
  %230 = call i8* @nfsvno_accchk(%struct.vnode* %224, i32 %225, %struct.ucred* %226, %struct.nfsexstuff* %31, %struct.thread* %227, i32 %228, i32 %229, i32* null)
  %231 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %15, align 8
  %232 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %231, i32 0, i32 0
  store i8* %230, i8** %232, align 8
  %233 = load i32, i32* %17, align 4
  %234 = load i32*, i32** %18, align 8
  %235 = load %struct.nfsstate*, %struct.nfsstate** %19, align 8
  %236 = load %struct.vnode*, %struct.vnode** %29, align 8
  %237 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %15, align 8
  %238 = load %struct.thread*, %struct.thread** %32, align 8
  %239 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %15, align 8
  %240 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %239, i32 0, i32 0
  %241 = load i8*, i8** %240, align 8
  %242 = call i8* @nfsrv_opencheck(i32 %233, i32* %234, %struct.nfsstate* %235, %struct.vnode* %236, %struct.nfsrv_descript* %237, %struct.thread* %238, i8* %241)
  %243 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %15, align 8
  %244 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %243, i32 0, i32 0
  store i8* %242, i8** %244, align 8
  %245 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %15, align 8
  %246 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %245, i32 0, i32 0
  %247 = load i8*, i8** %246, align 8
  %248 = icmp ne i8* %247, null
  br i1 %248, label %265, label %249

249:                                              ; preds = %223
  %250 = load %struct.nfsvattr*, %struct.nfsvattr** %21, align 8
  %251 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  store i32 %252, i32* %30, align 4
  %253 = load %struct.nfsvattr*, %struct.nfsvattr** %21, align 8
  %254 = call i32 @NFSVNO_ATTRINIT(%struct.nfsvattr* %253)
  %255 = load i32, i32* %30, align 4
  %256 = load %struct.nfsvattr*, %struct.nfsvattr** %21, align 8
  %257 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %256, i32 0, i32 1
  store i32 %255, i32* %257, align 4
  %258 = load %struct.vnode*, %struct.vnode** %29, align 8
  %259 = load %struct.nfsvattr*, %struct.nfsvattr** %21, align 8
  %260 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %259, i32 0, i32 0
  %261 = load %struct.ucred*, %struct.ucred** %26, align 8
  %262 = call i8* @VOP_SETATTR(%struct.vnode* %258, i32* %260, %struct.ucred* %261)
  %263 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %15, align 8
  %264 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %263, i32 0, i32 0
  store i8* %262, i8** %264, align 8
  br label %265

265:                                              ; preds = %249, %223
  br label %286

266:                                              ; preds = %205, %201
  %267 = load %struct.vnode*, %struct.vnode** %29, align 8
  %268 = getelementptr inbounds %struct.vnode, %struct.vnode* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @VREG, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %285

272:                                              ; preds = %266
  %273 = load i32, i32* %17, align 4
  %274 = load i32*, i32** %18, align 8
  %275 = load %struct.nfsstate*, %struct.nfsstate** %19, align 8
  %276 = load %struct.vnode*, %struct.vnode** %29, align 8
  %277 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %15, align 8
  %278 = load %struct.thread*, %struct.thread** %32, align 8
  %279 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %15, align 8
  %280 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %279, i32 0, i32 0
  %281 = load i8*, i8** %280, align 8
  %282 = call i8* @nfsrv_opencheck(i32 %273, i32* %274, %struct.nfsstate* %275, %struct.vnode* %276, %struct.nfsrv_descript* %277, %struct.thread* %278, i8* %281)
  %283 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %15, align 8
  %284 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %283, i32 0, i32 0
  store i8* %282, i8** %284, align 8
  br label %285

285:                                              ; preds = %272, %266
  br label %286

286:                                              ; preds = %285, %265
  br label %287

287:                                              ; preds = %286, %161
  br label %342

288:                                              ; preds = %50
  %289 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %290 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @HASBUF, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %288
  %297 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %298 = call i32 @nfsvno_relpathbuf(%struct.nameidata* %297)
  br label %299

299:                                              ; preds = %296, %288
  %300 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %301 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %300, i32 0, i32 2
  %302 = load %struct.vnode*, %struct.vnode** %301, align 8
  %303 = icmp ne %struct.vnode* %302, null
  br i1 %303, label %304, label %341

304:                                              ; preds = %299
  %305 = load i32, i32* %23, align 4
  %306 = load i32, i32* @NFSV4OPEN_CREATE, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %308, label %341

308:                                              ; preds = %304
  %309 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %310 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %309, i32 0, i32 2
  %311 = load %struct.vnode*, %struct.vnode** %310, align 8
  %312 = call i32 @vrele(%struct.vnode* %311)
  %313 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %314 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %313, i32 0, i32 1
  %315 = load %struct.vnode*, %struct.vnode** %314, align 8
  %316 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %317 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %316, i32 0, i32 0
  %318 = load %struct.vnode*, %struct.vnode** %317, align 8
  %319 = icmp eq %struct.vnode* %315, %318
  br i1 %319, label %320, label %325

320:                                              ; preds = %308
  %321 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %322 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %321, i32 0, i32 1
  %323 = load %struct.vnode*, %struct.vnode** %322, align 8
  %324 = call i32 @vrele(%struct.vnode* %323)
  br label %330

325:                                              ; preds = %308
  %326 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %327 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %326, i32 0, i32 1
  %328 = load %struct.vnode*, %struct.vnode** %327, align 8
  %329 = call i32 @vput(%struct.vnode* %328)
  br label %330

330:                                              ; preds = %325, %320
  %331 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %332 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %331, i32 0, i32 0
  %333 = load %struct.vnode*, %struct.vnode** %332, align 8
  %334 = icmp ne %struct.vnode* %333, null
  br i1 %334, label %335, label %340

335:                                              ; preds = %330
  %336 = load %struct.nameidata*, %struct.nameidata** %16, align 8
  %337 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %336, i32 0, i32 0
  %338 = load %struct.vnode*, %struct.vnode** %337, align 8
  %339 = call i32 @vput(%struct.vnode* %338)
  br label %340

340:                                              ; preds = %335, %330
  br label %341

341:                                              ; preds = %340, %304, %299
  br label %342

342:                                              ; preds = %341, %287
  %343 = load %struct.vnode*, %struct.vnode** %29, align 8
  %344 = load %struct.vnode**, %struct.vnode*** %28, align 8
  store %struct.vnode* %343, %struct.vnode** %344, align 8
  %345 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %15, align 8
  %346 = call i32 @NFSEXITCODE2(i32 0, %struct.nfsrv_descript* %345)
  ret void
}

declare dso_local i8* @nfsrv_opencheck(i32, i32*, %struct.nfsstate*, %struct.vnode*, %struct.nfsrv_descript*, %struct.thread*, i8*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i8* @VOP_CREATE(%struct.vnode*, %struct.vnode**, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @nfsrv_pnfscreate(%struct.vnode*, i32*, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @nfsvno_relpathbuf(%struct.nameidata*) #1

declare dso_local i32 @NFSVNO_ATTRINIT(%struct.nfsvattr*) #1

declare dso_local i8* @VOP_SETATTR(%struct.vnode*, i32*, %struct.ucred*) #1

declare dso_local i32 @NFSSETBIT_ATTRBIT(i32*, i32) #1

declare dso_local i32 @nfsrv_fixattr(%struct.nfsrv_descript*, %struct.vnode*, %struct.nfsvattr*, i32*, %struct.thread*, i32*, %struct.nfsexstuff*) #1

declare dso_local i64 @NFSVNO_ISSETSIZE(%struct.nfsvattr*) #1

declare dso_local i32 @NFSVNO_SETEXRDONLY(%struct.nfsexstuff*) #1

declare dso_local i32 @NFSVNO_EXINIT(%struct.nfsexstuff*) #1

declare dso_local i8* @nfsvno_accchk(%struct.vnode*, i32, %struct.ucred*, %struct.nfsexstuff*, %struct.thread*, i32, i32, i32*) #1

declare dso_local i32 @NFSEXITCODE2(i32, %struct.nfsrv_descript*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
