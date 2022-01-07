; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_lookitup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_lookitup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.nfsnode = type { %struct.nfsfh*, %struct.nfsfh* }
%struct.nfsfh = type { i32, i32, i32, i8*, i32 }
%struct.nfsvattr = type { i64 }
%struct.componentname = type { i8*, i32 }

@VREG = common dso_local global i64 0, align 8
@M_NFSV4NODE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@FNV1_32_INIT = common dso_local global i32 0, align 4
@M_NFSFH = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i8*, i32, %struct.ucred*, %struct.thread*, %struct.nfsnode**)* @nfs_lookitup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_lookitup(%struct.vnode* %0, i8* %1, i32 %2, %struct.ucred* %3, %struct.thread* %4, %struct.nfsnode** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ucred*, align 8
  %12 = alloca %struct.thread*, align 8
  %13 = alloca %struct.nfsnode**, align 8
  %14 = alloca %struct.vnode*, align 8
  %15 = alloca %struct.vnode*, align 8
  %16 = alloca %struct.nfsnode*, align 8
  %17 = alloca %struct.nfsnode*, align 8
  %18 = alloca %struct.nfsfh*, align 8
  %19 = alloca %struct.nfsfh*, align 8
  %20 = alloca %struct.nfsvattr, align 8
  %21 = alloca %struct.nfsvattr, align 8
  %22 = alloca %struct.componentname, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.ucred* %3, %struct.ucred** %11, align 8
  store %struct.thread* %4, %struct.thread** %12, align 8
  store %struct.nfsnode** %5, %struct.nfsnode*** %13, align 8
  store %struct.vnode* null, %struct.vnode** %14, align 8
  %27 = load %struct.vnode*, %struct.vnode** %8, align 8
  %28 = call %struct.nfsnode* @VTONFS(%struct.vnode* %27)
  store %struct.nfsnode* %28, %struct.nfsnode** %17, align 8
  store i32 0, i32* %23, align 4
  %29 = load %struct.vnode*, %struct.vnode** %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.ucred*, %struct.ucred** %11, align 8
  %33 = load %struct.thread*, %struct.thread** %12, align 8
  %34 = call i32 @nfsrpc_lookup(%struct.vnode* %29, i8* %30, i32 %31, %struct.ucred* %32, %struct.thread* %33, %struct.nfsvattr* %21, %struct.nfsvattr* %20, %struct.nfsfh** %18, i32* %24, i32* %25, i32* null)
  store i32 %34, i32* %23, align 4
  %35 = load i32, i32* %25, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %6
  %38 = call i32 @nfscl_loadattrcache(%struct.vnode** %8, %struct.nfsvattr* %21, i32* null, i32* null, i32 0, i32 1)
  br label %39

39:                                               ; preds = %37, %6
  %40 = load %struct.nfsnode**, %struct.nfsnode*** %13, align 8
  %41 = icmp ne %struct.nfsnode** %40, null
  br i1 %41, label %42, label %260

42:                                               ; preds = %39
  %43 = load i32, i32* %23, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %260, label %45

45:                                               ; preds = %42
  %46 = load %struct.nfsnode**, %struct.nfsnode*** %13, align 8
  %47 = load %struct.nfsnode*, %struct.nfsnode** %46, align 8
  %48 = icmp ne %struct.nfsnode* %47, null
  br i1 %48, label %49, label %197

49:                                               ; preds = %45
  %50 = load %struct.nfsnode**, %struct.nfsnode*** %13, align 8
  %51 = load %struct.nfsnode*, %struct.nfsnode** %50, align 8
  store %struct.nfsnode* %51, %struct.nfsnode** %16, align 8
  %52 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %53 = call %struct.vnode* @NFSTOV(%struct.nfsnode* %52)
  store %struct.vnode* %53, %struct.vnode** %15, align 8
  %54 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %55 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %54, i32 0, i32 1
  %56 = load %struct.nfsfh*, %struct.nfsfh** %55, align 8
  %57 = icmp ne %struct.nfsfh* %56, null
  br i1 %57, label %58, label %170

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %20, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @VREG, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %170

63:                                               ; preds = %58
  %64 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %65 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %64, i32 0, i32 1
  %66 = load %struct.nfsfh*, %struct.nfsfh** %65, align 8
  %67 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %110, label %71

71:                                               ; preds = %63
  %72 = load i8*, i8** %9, align 8
  %73 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %74 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %73, i32 0, i32 1
  %75 = load %struct.nfsfh*, %struct.nfsfh** %74, align 8
  %76 = call i32 @NFS4NODENAME(%struct.nfsfh* %75)
  %77 = load i32, i32* %10, align 4
  %78 = call i64 @NFSBCMP(i8* %72, i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %110, label %80

80:                                               ; preds = %71
  %81 = load %struct.nfsnode*, %struct.nfsnode** %17, align 8
  %82 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %81, i32 0, i32 0
  %83 = load %struct.nfsfh*, %struct.nfsfh** %82, align 8
  %84 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %87 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %86, i32 0, i32 1
  %88 = load %struct.nfsfh*, %struct.nfsfh** %87, align 8
  %89 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %85, %90
  br i1 %91, label %110, label %92

92:                                               ; preds = %80
  %93 = load %struct.nfsnode*, %struct.nfsnode** %17, align 8
  %94 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %93, i32 0, i32 0
  %95 = load %struct.nfsfh*, %struct.nfsfh** %94, align 8
  %96 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %95, i32 0, i32 3
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %99 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %98, i32 0, i32 1
  %100 = load %struct.nfsfh*, %struct.nfsfh** %99, align 8
  %101 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.nfsnode*, %struct.nfsnode** %17, align 8
  %104 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %103, i32 0, i32 0
  %105 = load %struct.nfsfh*, %struct.nfsfh** %104, align 8
  %106 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @NFSBCMP(i8* %97, i32 %102, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %170

110:                                              ; preds = %92, %80, %71, %63
  %111 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %112 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %111, i32 0, i32 1
  %113 = load %struct.nfsfh*, %struct.nfsfh** %112, align 8
  %114 = load i32, i32* @M_NFSV4NODE, align 4
  %115 = call i32 @free(%struct.nfsfh* %113, i32 %114)
  %116 = load %struct.nfsnode*, %struct.nfsnode** %17, align 8
  %117 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %116, i32 0, i32 0
  %118 = load %struct.nfsfh*, %struct.nfsfh** %117, align 8
  %119 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = add i64 4, %121
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = add i64 %122, %124
  %126 = sub i64 %125, 1
  %127 = trunc i64 %126 to i32
  %128 = load i32, i32* @M_NFSV4NODE, align 4
  %129 = load i32, i32* @M_WAITOK, align 4
  %130 = call %struct.nfsfh* @malloc(i32 %127, i32 %128, i32 %129)
  %131 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %132 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %131, i32 0, i32 1
  store %struct.nfsfh* %130, %struct.nfsfh** %132, align 8
  %133 = load %struct.nfsnode*, %struct.nfsnode** %17, align 8
  %134 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %133, i32 0, i32 0
  %135 = load %struct.nfsfh*, %struct.nfsfh** %134, align 8
  %136 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %139 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %138, i32 0, i32 1
  %140 = load %struct.nfsfh*, %struct.nfsfh** %139, align 8
  %141 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %140, i32 0, i32 2
  store i32 %137, i32* %141, align 8
  %142 = load i32, i32* %10, align 4
  %143 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %144 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %143, i32 0, i32 1
  %145 = load %struct.nfsfh*, %struct.nfsfh** %144, align 8
  %146 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %145, i32 0, i32 0
  store i32 %142, i32* %146, align 8
  %147 = load %struct.nfsnode*, %struct.nfsnode** %17, align 8
  %148 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %147, i32 0, i32 0
  %149 = load %struct.nfsfh*, %struct.nfsfh** %148, align 8
  %150 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %149, i32 0, i32 3
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %153 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %152, i32 0, i32 1
  %154 = load %struct.nfsfh*, %struct.nfsfh** %153, align 8
  %155 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.nfsnode*, %struct.nfsnode** %17, align 8
  %158 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %157, i32 0, i32 0
  %159 = load %struct.nfsfh*, %struct.nfsfh** %158, align 8
  %160 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @NFSBCOPY(i8* %151, i32 %156, i32 %161)
  %163 = load i8*, i8** %9, align 8
  %164 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %165 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %164, i32 0, i32 1
  %166 = load %struct.nfsfh*, %struct.nfsfh** %165, align 8
  %167 = call i32 @NFS4NODENAME(%struct.nfsfh* %166)
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @NFSBCOPY(i8* %163, i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %110, %92, %58, %49
  %171 = load %struct.nfsfh*, %struct.nfsfh** %18, align 8
  %172 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %171, i32 0, i32 3
  %173 = load i8*, i8** %172, align 8
  %174 = load %struct.nfsfh*, %struct.nfsfh** %18, align 8
  %175 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @FNV1_32_INIT, align 4
  %178 = call i32 @fnv_32_buf(i8* %173, i32 %176, i32 %177)
  store i32 %178, i32* %26, align 4
  %179 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %180 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %179, i32 0, i32 0
  %181 = load %struct.nfsfh*, %struct.nfsfh** %180, align 8
  store %struct.nfsfh* %181, %struct.nfsfh** %19, align 8
  %182 = load %struct.vnode*, %struct.vnode** %15, align 8
  %183 = load i32, i32* %26, align 4
  %184 = call i32 @vfs_hash_rehash(%struct.vnode* %182, i32 %183)
  %185 = load %struct.nfsfh*, %struct.nfsfh** %18, align 8
  %186 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %187 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %186, i32 0, i32 0
  store %struct.nfsfh* %185, %struct.nfsfh** %187, align 8
  %188 = load %struct.nfsfh*, %struct.nfsfh** %19, align 8
  %189 = icmp ne %struct.nfsfh* %188, null
  br i1 %189, label %190, label %194

190:                                              ; preds = %170
  %191 = load %struct.nfsfh*, %struct.nfsfh** %19, align 8
  %192 = load i32, i32* @M_NFSFH, align 4
  %193 = call i32 @free(%struct.nfsfh* %191, i32 %192)
  br label %194

194:                                              ; preds = %190, %170
  %195 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %196 = call %struct.vnode* @NFSTOV(%struct.nfsnode* %195)
  store %struct.vnode* %196, %struct.vnode** %14, align 8
  br label %235

197:                                              ; preds = %45
  %198 = load %struct.nfsnode*, %struct.nfsnode** %17, align 8
  %199 = load %struct.nfsfh*, %struct.nfsfh** %18, align 8
  %200 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %199, i32 0, i32 3
  %201 = load i8*, i8** %200, align 8
  %202 = load %struct.nfsfh*, %struct.nfsfh** %18, align 8
  %203 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i64 @NFS_CMPFH(%struct.nfsnode* %198, i8* %201, i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %197
  %208 = load %struct.nfsfh*, %struct.nfsfh** %18, align 8
  %209 = load i32, i32* @M_NFSFH, align 4
  %210 = call i32 @free(%struct.nfsfh* %208, i32 %209)
  %211 = load %struct.vnode*, %struct.vnode** %8, align 8
  %212 = call i32 @VREF(%struct.vnode* %211)
  %213 = load %struct.vnode*, %struct.vnode** %8, align 8
  store %struct.vnode* %213, %struct.vnode** %14, align 8
  br label %234

214:                                              ; preds = %197
  %215 = load i8*, i8** %9, align 8
  %216 = getelementptr inbounds %struct.componentname, %struct.componentname* %22, i32 0, i32 0
  store i8* %215, i8** %216, align 8
  %217 = load i32, i32* %10, align 4
  %218 = getelementptr inbounds %struct.componentname, %struct.componentname* %22, i32 0, i32 1
  store i32 %217, i32* %218, align 8
  %219 = load %struct.vnode*, %struct.vnode** %8, align 8
  %220 = getelementptr inbounds %struct.vnode, %struct.vnode* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.vnode*, %struct.vnode** %8, align 8
  %223 = load %struct.nfsfh*, %struct.nfsfh** %18, align 8
  %224 = load %struct.thread*, %struct.thread** %12, align 8
  %225 = load i32, i32* @LK_EXCLUSIVE, align 4
  %226 = call i32 @nfscl_nget(i32 %221, %struct.vnode* %222, %struct.nfsfh* %223, %struct.componentname* %22, %struct.thread* %224, %struct.nfsnode** %16, i32* null, i32 %225)
  store i32 %226, i32* %23, align 4
  %227 = load i32, i32* %23, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %214
  %230 = load i32, i32* %23, align 4
  store i32 %230, i32* %7, align 4
  br label %302

231:                                              ; preds = %214
  %232 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %233 = call %struct.vnode* @NFSTOV(%struct.nfsnode* %232)
  store %struct.vnode* %233, %struct.vnode** %14, align 8
  br label %234

234:                                              ; preds = %231, %207
  br label %235

235:                                              ; preds = %234, %194
  %236 = load i32, i32* %24, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %254, label %238

238:                                              ; preds = %235
  %239 = load %struct.nfsnode**, %struct.nfsnode*** %13, align 8
  %240 = load %struct.nfsnode*, %struct.nfsnode** %239, align 8
  %241 = icmp eq %struct.nfsnode* %240, null
  br i1 %241, label %242, label %254

242:                                              ; preds = %238
  %243 = load %struct.vnode*, %struct.vnode** %14, align 8
  %244 = load %struct.vnode*, %struct.vnode** %8, align 8
  %245 = icmp eq %struct.vnode* %243, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %242
  %247 = load %struct.vnode*, %struct.vnode** %14, align 8
  %248 = call i32 @vrele(%struct.vnode* %247)
  br label %252

249:                                              ; preds = %242
  %250 = load %struct.vnode*, %struct.vnode** %14, align 8
  %251 = call i32 @vput(%struct.vnode* %250)
  br label %252

252:                                              ; preds = %249, %246
  %253 = load i32, i32* @ENOENT, align 4
  store i32 %253, i32* %7, align 4
  br label %302

254:                                              ; preds = %238, %235
  %255 = load i32, i32* %24, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %254
  %258 = call i32 @nfscl_loadattrcache(%struct.vnode** %14, %struct.nfsvattr* %20, i32* null, i32* null, i32 0, i32 1)
  br label %259

259:                                              ; preds = %257, %254
  br label %260

260:                                              ; preds = %259, %42, %39
  %261 = load %struct.nfsnode**, %struct.nfsnode*** %13, align 8
  %262 = icmp ne %struct.nfsnode** %261, null
  br i1 %262, label %263, label %289

263:                                              ; preds = %260
  %264 = load %struct.nfsnode**, %struct.nfsnode*** %13, align 8
  %265 = load %struct.nfsnode*, %struct.nfsnode** %264, align 8
  %266 = icmp eq %struct.nfsnode* %265, null
  br i1 %266, label %267, label %289

267:                                              ; preds = %263
  %268 = load i32, i32* %23, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %285

270:                                              ; preds = %267
  %271 = load %struct.vnode*, %struct.vnode** %14, align 8
  %272 = icmp ne %struct.vnode* %271, null
  br i1 %272, label %273, label %284

273:                                              ; preds = %270
  %274 = load %struct.vnode*, %struct.vnode** %14, align 8
  %275 = load %struct.vnode*, %struct.vnode** %8, align 8
  %276 = icmp eq %struct.vnode* %274, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %273
  %278 = load %struct.vnode*, %struct.vnode** %14, align 8
  %279 = call i32 @vrele(%struct.vnode* %278)
  br label %283

280:                                              ; preds = %273
  %281 = load %struct.vnode*, %struct.vnode** %14, align 8
  %282 = call i32 @vput(%struct.vnode* %281)
  br label %283

283:                                              ; preds = %280, %277
  br label %284

284:                                              ; preds = %283, %270
  br label %288

285:                                              ; preds = %267
  %286 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %287 = load %struct.nfsnode**, %struct.nfsnode*** %13, align 8
  store %struct.nfsnode* %286, %struct.nfsnode** %287, align 8
  br label %288

288:                                              ; preds = %285, %284
  br label %289

289:                                              ; preds = %288, %263, %260
  %290 = load i32, i32* %23, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %300

292:                                              ; preds = %289
  %293 = load %struct.vnode*, %struct.vnode** %8, align 8
  %294 = call i64 @NFS_ISV4(%struct.vnode* %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %292
  %297 = load %struct.thread*, %struct.thread** %12, align 8
  %298 = load i32, i32* %23, align 4
  %299 = call i32 @nfscl_maperr(%struct.thread* %297, i32 %298, i32 0, i32 0)
  store i32 %299, i32* %23, align 4
  br label %300

300:                                              ; preds = %296, %292, %289
  %301 = load i32, i32* %23, align 4
  store i32 %301, i32* %7, align 4
  br label %302

302:                                              ; preds = %300, %252, %229
  %303 = load i32, i32* %7, align 4
  ret i32 %303
}

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @nfsrpc_lookup(%struct.vnode*, i8*, i32, %struct.ucred*, %struct.thread*, %struct.nfsvattr*, %struct.nfsvattr*, %struct.nfsfh**, i32*, i32*, i32*) #1

declare dso_local i32 @nfscl_loadattrcache(%struct.vnode**, %struct.nfsvattr*, i32*, i32*, i32, i32) #1

declare dso_local %struct.vnode* @NFSTOV(%struct.nfsnode*) #1

declare dso_local i64 @NFSBCMP(i8*, i32, i32) #1

declare dso_local i32 @NFS4NODENAME(%struct.nfsfh*) #1

declare dso_local i32 @free(%struct.nfsfh*, i32) #1

declare dso_local %struct.nfsfh* @malloc(i32, i32, i32) #1

declare dso_local i32 @NFSBCOPY(i8*, i32, i32) #1

declare dso_local i32 @fnv_32_buf(i8*, i32, i32) #1

declare dso_local i32 @vfs_hash_rehash(%struct.vnode*, i32) #1

declare dso_local i64 @NFS_CMPFH(%struct.nfsnode*, i8*, i32) #1

declare dso_local i32 @VREF(%struct.vnode*) #1

declare dso_local i32 @nfscl_nget(i32, %struct.vnode*, %struct.nfsfh*, %struct.componentname*, %struct.thread*, %struct.nfsnode**, i32*, i32) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i64 @NFS_ISV4(%struct.vnode*) #1

declare dso_local i32 @nfscl_maperr(%struct.thread*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
