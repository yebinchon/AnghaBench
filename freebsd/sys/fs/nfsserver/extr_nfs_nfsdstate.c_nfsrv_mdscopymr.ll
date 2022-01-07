; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_mdscopymr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_mdscopymr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pnfsdsfile = type { i32, i32 }
%struct.nfsdevice = type { i32 }
%struct.nameidata = type { %struct.vnode* }
%struct.nfsmount = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"mdsopen path=%s\0A\00", align 1
@LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@LOCKSHARED = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"lookup=%d\0A\00", align 1
@VREG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"mdspath not reg\0A\00", align 1
@EISDIR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"curmdsdev path=%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"ds lookup=%d\0A\00", align 1
@VDIR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"curdspath not dir\0A\00", align 1
@ENOTDIR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"curdspath not an NFS mount\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"mdscopymr: no current ds\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"mdsdev path=%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"dspath not dir\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"dspath not an NFS mount\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"mdscopymr: no ds\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsrv_mdscopymr(i8* %0, i8* %1, i8* %2, i8* %3, i32* %4, i8* %5, i32* %6, %struct.vnode** %7, %struct.vnode** %8, %struct.pnfsdsfile** %9, %struct.nfsdevice** %10, %struct.nfsdevice** %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.vnode**, align 8
  %22 = alloca %struct.vnode**, align 8
  %23 = alloca %struct.pnfsdsfile**, align 8
  %24 = alloca %struct.nfsdevice**, align 8
  %25 = alloca %struct.nfsdevice**, align 8
  %26 = alloca %struct.nameidata, align 8
  %27 = alloca %struct.vnode*, align 8
  %28 = alloca %struct.vnode*, align 8
  %29 = alloca %struct.pnfsdsfile*, align 8
  %30 = alloca %struct.nfsmount*, align 8
  %31 = alloca %struct.nfsmount*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store i8* %0, i8** %14, align 8
  store i8* %1, i8** %15, align 8
  store i8* %2, i8** %16, align 8
  store i8* %3, i8** %17, align 8
  store i32* %4, i32** %18, align 8
  store i8* %5, i8** %19, align 8
  store i32* %6, i32** %20, align 8
  store %struct.vnode** %7, %struct.vnode*** %21, align 8
  store %struct.vnode** %8, %struct.vnode*** %22, align 8
  store %struct.pnfsdsfile** %9, %struct.pnfsdsfile*** %23, align 8
  store %struct.nfsdevice** %10, %struct.nfsdevice*** %24, align 8
  store %struct.nfsdevice** %11, %struct.nfsdevice*** %25, align 8
  store %struct.vnode* null, %struct.vnode** %27, align 8
  store %struct.vnode* null, %struct.vnode** %28, align 8
  store %struct.nfsmount* null, %struct.nfsmount** %31, align 8
  %36 = load %struct.nfsdevice**, %struct.nfsdevice*** %24, align 8
  store %struct.nfsdevice* null, %struct.nfsdevice** %36, align 8
  %37 = load %struct.nfsdevice**, %struct.nfsdevice*** %25, align 8
  store %struct.nfsdevice* null, %struct.nfsdevice** %37, align 8
  %38 = load i8*, i8** %15, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %12
  %41 = load i8*, i8** %16, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @EPERM, align 4
  store i32 %44, i32* %13, align 4
  br label %424

45:                                               ; preds = %40, %12
  %46 = load i8*, i8** %14, align 8
  %47 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* @LOOKUP, align 4
  %49 = load i32, i32* @FOLLOW, align 4
  %50 = load i32, i32* @LOCKSHARED, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @LOCKLEAF, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @UIO_SYSSPACE, align 4
  %55 = load i8*, i8** %14, align 8
  %56 = load i32*, i32** %20, align 8
  %57 = call i32 @NDINIT(%struct.nameidata* %26, i32 %48, i32 %53, i32 %54, i8* %55, i32* %56)
  %58 = call i32 @namei(%struct.nameidata* %26)
  store i32 %58, i32* %33, align 4
  %59 = load i32, i32* %33, align 4
  %60 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %33, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %45
  %64 = load i32, i32* %33, align 4
  store i32 %64, i32* %13, align 4
  br label %424

65:                                               ; preds = %45
  %66 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %26, i32 0, i32 0
  %67 = load %struct.vnode*, %struct.vnode** %66, align 8
  %68 = getelementptr inbounds %struct.vnode, %struct.vnode* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @VREG, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %26, i32 0, i32 0
  %74 = load %struct.vnode*, %struct.vnode** %73, align 8
  %75 = call i32 @vput(%struct.vnode* %74)
  %76 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @EISDIR, align 4
  store i32 %77, i32* %13, align 4
  br label %424

78:                                               ; preds = %65
  %79 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %26, i32 0, i32 0
  %80 = load %struct.vnode*, %struct.vnode** %79, align 8
  store %struct.vnode* %80, %struct.vnode** %27, align 8
  %81 = load i8*, i8** %16, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %168

83:                                               ; preds = %78
  %84 = load i8*, i8** %16, align 8
  %85 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %84)
  %86 = load i32, i32* @LOOKUP, align 4
  %87 = load i32, i32* @FOLLOW, align 4
  %88 = load i32, i32* @LOCKSHARED, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @LOCKLEAF, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @UIO_SYSSPACE, align 4
  %93 = load i8*, i8** %16, align 8
  %94 = load i32*, i32** %20, align 8
  %95 = call i32 @NDINIT(%struct.nameidata* %26, i32 %86, i32 %91, i32 %92, i8* %93, i32* %94)
  %96 = call i32 @namei(%struct.nameidata* %26)
  store i32 %96, i32* %33, align 4
  %97 = load i32, i32* %33, align 4
  %98 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %33, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %83
  %102 = load %struct.vnode*, %struct.vnode** %27, align 8
  %103 = call i32 @vput(%struct.vnode* %102)
  %104 = load i32, i32* %33, align 4
  store i32 %104, i32* %13, align 4
  br label %424

105:                                              ; preds = %83
  %106 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %26, i32 0, i32 0
  %107 = load %struct.vnode*, %struct.vnode** %106, align 8
  %108 = getelementptr inbounds %struct.vnode, %struct.vnode* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @VDIR, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %26, i32 0, i32 0
  %114 = load %struct.vnode*, %struct.vnode** %113, align 8
  %115 = call i32 @vput(%struct.vnode* %114)
  %116 = load %struct.vnode*, %struct.vnode** %27, align 8
  %117 = call i32 @vput(%struct.vnode* %116)
  %118 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %119 = load i32, i32* @ENOTDIR, align 4
  store i32 %119, i32* %13, align 4
  br label %424

120:                                              ; preds = %105
  %121 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %26, i32 0, i32 0
  %122 = load %struct.vnode*, %struct.vnode** %121, align 8
  %123 = getelementptr inbounds %struct.vnode, %struct.vnode* %122, i32 0, i32 1
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @strcmp(i32 %128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %120
  %132 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %26, i32 0, i32 0
  %133 = load %struct.vnode*, %struct.vnode** %132, align 8
  %134 = call i32 @vput(%struct.vnode* %133)
  %135 = load %struct.vnode*, %struct.vnode** %27, align 8
  %136 = call i32 @vput(%struct.vnode* %135)
  %137 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %138 = load i32, i32* @ENXIO, align 4
  store i32 %138, i32* %13, align 4
  br label %424

139:                                              ; preds = %120
  %140 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %26, i32 0, i32 0
  %141 = load %struct.vnode*, %struct.vnode** %140, align 8
  %142 = getelementptr inbounds %struct.vnode, %struct.vnode* %141, i32 0, i32 1
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = call %struct.nfsmount* @VFSTONFS(%struct.TYPE_4__* %143)
  store %struct.nfsmount* %144, %struct.nfsmount** %31, align 8
  %145 = call i32 (...) @NFSDDSLOCK()
  %146 = load %struct.nfsmount*, %struct.nfsmount** %31, align 8
  %147 = call %struct.nfsdevice* @nfsv4_findmirror(%struct.nfsmount* %146)
  %148 = load %struct.nfsdevice**, %struct.nfsdevice*** %25, align 8
  store %struct.nfsdevice* %147, %struct.nfsdevice** %148, align 8
  %149 = call i32 (...) @NFSDDSUNLOCK()
  %150 = load %struct.nfsdevice**, %struct.nfsdevice*** %25, align 8
  %151 = load %struct.nfsdevice*, %struct.nfsdevice** %150, align 8
  %152 = icmp eq %struct.nfsdevice* %151, null
  br i1 %152, label %153, label %154

153:                                              ; preds = %139
  store %struct.nfsmount* null, %struct.nfsmount** %31, align 8
  br label %154

154:                                              ; preds = %153, %139
  %155 = load %struct.nfsmount*, %struct.nfsmount** %31, align 8
  %156 = icmp eq %struct.nfsmount* %155, null
  br i1 %156, label %157, label %165

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %26, i32 0, i32 0
  %159 = load %struct.vnode*, %struct.vnode** %158, align 8
  %160 = call i32 @vput(%struct.vnode* %159)
  %161 = load %struct.vnode*, %struct.vnode** %27, align 8
  %162 = call i32 @vput(%struct.vnode* %161)
  %163 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %164 = load i32, i32* @ENXIO, align 4
  store i32 %164, i32* %13, align 4
  br label %424

165:                                              ; preds = %154
  %166 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %26, i32 0, i32 0
  %167 = load %struct.vnode*, %struct.vnode** %166, align 8
  store %struct.vnode* %167, %struct.vnode** %28, align 8
  br label %168

168:                                              ; preds = %165, %78
  %169 = load i8*, i8** %15, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %294

171:                                              ; preds = %168
  %172 = load i8*, i8** %15, align 8
  %173 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %172)
  %174 = load i32, i32* @LOOKUP, align 4
  %175 = load i32, i32* @FOLLOW, align 4
  %176 = load i32, i32* @LOCKSHARED, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @LOCKLEAF, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @UIO_SYSSPACE, align 4
  %181 = load i8*, i8** %15, align 8
  %182 = load i32*, i32** %20, align 8
  %183 = call i32 @NDINIT(%struct.nameidata* %26, i32 %174, i32 %179, i32 %180, i8* %181, i32* %182)
  %184 = call i32 @namei(%struct.nameidata* %26)
  store i32 %184, i32* %33, align 4
  %185 = load i32, i32* %33, align 4
  %186 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %185)
  %187 = load i32, i32* %33, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %171
  %190 = load %struct.vnode*, %struct.vnode** %27, align 8
  %191 = call i32 @vput(%struct.vnode* %190)
  %192 = load %struct.vnode*, %struct.vnode** %28, align 8
  %193 = icmp ne %struct.vnode* %192, null
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = load %struct.vnode*, %struct.vnode** %28, align 8
  %196 = call i32 @vput(%struct.vnode* %195)
  br label %197

197:                                              ; preds = %194, %189
  %198 = load i32, i32* %33, align 4
  store i32 %198, i32* %13, align 4
  br label %424

199:                                              ; preds = %171
  %200 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %26, i32 0, i32 0
  %201 = load %struct.vnode*, %struct.vnode** %200, align 8
  %202 = getelementptr inbounds %struct.vnode, %struct.vnode* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @VDIR, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %211, label %206

206:                                              ; preds = %199
  %207 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %26, i32 0, i32 0
  %208 = load %struct.vnode*, %struct.vnode** %207, align 8
  %209 = load %struct.vnode*, %struct.vnode** %28, align 8
  %210 = icmp eq %struct.vnode* %208, %209
  br i1 %210, label %211, label %232

211:                                              ; preds = %206, %199
  %212 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %26, i32 0, i32 0
  %213 = load %struct.vnode*, %struct.vnode** %212, align 8
  %214 = call i32 @vput(%struct.vnode* %213)
  %215 = load %struct.vnode*, %struct.vnode** %27, align 8
  %216 = call i32 @vput(%struct.vnode* %215)
  %217 = load %struct.vnode*, %struct.vnode** %28, align 8
  %218 = icmp ne %struct.vnode* %217, null
  br i1 %218, label %219, label %222

219:                                              ; preds = %211
  %220 = load %struct.vnode*, %struct.vnode** %28, align 8
  %221 = call i32 @vput(%struct.vnode* %220)
  br label %222

222:                                              ; preds = %219, %211
  %223 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %224 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %26, i32 0, i32 0
  %225 = load %struct.vnode*, %struct.vnode** %224, align 8
  %226 = load %struct.vnode*, %struct.vnode** %28, align 8
  %227 = icmp eq %struct.vnode* %225, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %222
  %229 = load i32, i32* @EPERM, align 4
  store i32 %229, i32* %13, align 4
  br label %424

230:                                              ; preds = %222
  %231 = load i32, i32* @ENOTDIR, align 4
  store i32 %231, i32* %13, align 4
  br label %424

232:                                              ; preds = %206
  %233 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %26, i32 0, i32 0
  %234 = load %struct.vnode*, %struct.vnode** %233, align 8
  %235 = getelementptr inbounds %struct.vnode, %struct.vnode* %234, i32 0, i32 1
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call i64 @strcmp(i32 %240, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %257

243:                                              ; preds = %232
  %244 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %26, i32 0, i32 0
  %245 = load %struct.vnode*, %struct.vnode** %244, align 8
  %246 = call i32 @vput(%struct.vnode* %245)
  %247 = load %struct.vnode*, %struct.vnode** %27, align 8
  %248 = call i32 @vput(%struct.vnode* %247)
  %249 = load %struct.vnode*, %struct.vnode** %28, align 8
  %250 = icmp ne %struct.vnode* %249, null
  br i1 %250, label %251, label %254

251:                                              ; preds = %243
  %252 = load %struct.vnode*, %struct.vnode** %28, align 8
  %253 = call i32 @vput(%struct.vnode* %252)
  br label %254

254:                                              ; preds = %251, %243
  %255 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %256 = load i32, i32* @ENXIO, align 4
  store i32 %256, i32* %13, align 4
  br label %424

257:                                              ; preds = %232
  %258 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %26, i32 0, i32 0
  %259 = load %struct.vnode*, %struct.vnode** %258, align 8
  %260 = getelementptr inbounds %struct.vnode, %struct.vnode* %259, i32 0, i32 1
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %260, align 8
  %262 = call %struct.nfsmount* @VFSTONFS(%struct.TYPE_4__* %261)
  store %struct.nfsmount* %262, %struct.nfsmount** %30, align 8
  %263 = call i32 (...) @NFSDDSLOCK()
  %264 = load %struct.nfsmount*, %struct.nfsmount** %31, align 8
  %265 = icmp eq %struct.nfsmount* %264, null
  br i1 %265, label %266, label %270

266:                                              ; preds = %257
  %267 = load %struct.nfsmount*, %struct.nfsmount** %30, align 8
  %268 = call %struct.nfsdevice* @nfsrv_findmirroredds(%struct.nfsmount* %267)
  %269 = load %struct.nfsdevice**, %struct.nfsdevice*** %24, align 8
  store %struct.nfsdevice* %268, %struct.nfsdevice** %269, align 8
  br label %274

270:                                              ; preds = %257
  %271 = load %struct.nfsmount*, %struct.nfsmount** %30, align 8
  %272 = call %struct.nfsdevice* @nfsv4_findmirror(%struct.nfsmount* %271)
  %273 = load %struct.nfsdevice**, %struct.nfsdevice*** %24, align 8
  store %struct.nfsdevice* %272, %struct.nfsdevice** %273, align 8
  br label %274

274:                                              ; preds = %270, %266
  %275 = call i32 (...) @NFSDDSUNLOCK()
  %276 = load %struct.nfsdevice**, %struct.nfsdevice*** %24, align 8
  %277 = load %struct.nfsdevice*, %struct.nfsdevice** %276, align 8
  %278 = icmp eq %struct.nfsdevice* %277, null
  br i1 %278, label %279, label %293

279:                                              ; preds = %274
  %280 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %26, i32 0, i32 0
  %281 = load %struct.vnode*, %struct.vnode** %280, align 8
  %282 = call i32 @vput(%struct.vnode* %281)
  %283 = load %struct.vnode*, %struct.vnode** %27, align 8
  %284 = call i32 @vput(%struct.vnode* %283)
  %285 = load %struct.vnode*, %struct.vnode** %28, align 8
  %286 = icmp ne %struct.vnode* %285, null
  br i1 %286, label %287, label %290

287:                                              ; preds = %279
  %288 = load %struct.vnode*, %struct.vnode** %28, align 8
  %289 = call i32 @vput(%struct.vnode* %288)
  br label %290

290:                                              ; preds = %287, %279
  %291 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %292 = load i32, i32* @ENXIO, align 4
  store i32 %292, i32* %13, align 4
  br label %424

293:                                              ; preds = %274
  br label %296

294:                                              ; preds = %168
  %295 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %26, i32 0, i32 0
  store %struct.vnode* null, %struct.vnode** %295, align 8
  store %struct.nfsmount* null, %struct.nfsmount** %30, align 8
  br label %296

296:                                              ; preds = %294, %293
  %297 = load %struct.vnode*, %struct.vnode** %27, align 8
  %298 = load i8*, i8** %17, align 8
  %299 = load i32*, i32** %18, align 8
  %300 = load i32*, i32** %20, align 8
  %301 = load i8*, i8** %19, align 8
  %302 = load %struct.vnode**, %struct.vnode*** %22, align 8
  %303 = load %struct.nfsmount*, %struct.nfsmount** %31, align 8
  %304 = call i32 @nfsrv_dsgetsockmnt(%struct.vnode* %297, i32 0, i8* %298, i32* %299, i32* %34, i32* %300, i32* null, i32* null, i32* null, i8* %301, %struct.vnode** %302, %struct.nfsmount** %30, %struct.nfsmount* %303, i32* %35, i32* %32)
  store i32 %304, i32* %33, align 4
  %305 = load %struct.vnode*, %struct.vnode** %28, align 8
  %306 = icmp ne %struct.vnode* %305, null
  br i1 %306, label %307, label %310

307:                                              ; preds = %296
  %308 = load %struct.vnode*, %struct.vnode** %28, align 8
  %309 = call i32 @vput(%struct.vnode* %308)
  br label %310

310:                                              ; preds = %307, %296
  %311 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %26, i32 0, i32 0
  %312 = load %struct.vnode*, %struct.vnode** %311, align 8
  %313 = icmp eq %struct.vnode* %312, null
  br i1 %313, label %314, label %351

314:                                              ; preds = %310
  %315 = load i32, i32* %33, align 4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %326

317:                                              ; preds = %314
  %318 = load %struct.nfsmount*, %struct.nfsmount** %30, align 8
  %319 = icmp ne %struct.nfsmount* %318, null
  br i1 %319, label %320, label %326

320:                                              ; preds = %317
  %321 = call i32 (...) @NFSDDSLOCK()
  %322 = load %struct.nfsmount*, %struct.nfsmount** %30, align 8
  %323 = call %struct.nfsdevice* @nfsrv_findmirroredds(%struct.nfsmount* %322)
  %324 = load %struct.nfsdevice**, %struct.nfsdevice*** %24, align 8
  store %struct.nfsdevice* %323, %struct.nfsdevice** %324, align 8
  %325 = call i32 (...) @NFSDDSUNLOCK()
  br label %326

326:                                              ; preds = %320, %317, %314
  %327 = load i32, i32* %33, align 4
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %350

329:                                              ; preds = %326
  %330 = load %struct.nfsmount*, %struct.nfsmount** %30, align 8
  %331 = icmp eq %struct.nfsmount* %330, null
  br i1 %331, label %336, label %332

332:                                              ; preds = %329
  %333 = load %struct.nfsdevice**, %struct.nfsdevice*** %24, align 8
  %334 = load %struct.nfsdevice*, %struct.nfsdevice** %333, align 8
  %335 = icmp eq %struct.nfsdevice* %334, null
  br i1 %335, label %336, label %350

336:                                              ; preds = %332, %329
  %337 = load %struct.vnode**, %struct.vnode*** %22, align 8
  %338 = icmp ne %struct.vnode** %337, null
  br i1 %338, label %339, label %348

339:                                              ; preds = %336
  %340 = load %struct.vnode**, %struct.vnode*** %22, align 8
  %341 = load %struct.vnode*, %struct.vnode** %340, align 8
  %342 = icmp ne %struct.vnode* %341, null
  br i1 %342, label %343, label %348

343:                                              ; preds = %339
  %344 = load %struct.vnode**, %struct.vnode*** %22, align 8
  %345 = load %struct.vnode*, %struct.vnode** %344, align 8
  %346 = call i32 @vput(%struct.vnode* %345)
  %347 = load %struct.vnode**, %struct.vnode*** %22, align 8
  store %struct.vnode* null, %struct.vnode** %347, align 8
  br label %348

348:                                              ; preds = %343, %339, %336
  %349 = load i32, i32* @ENXIO, align 4
  store i32 %349, i32* %33, align 4
  br label %350

350:                                              ; preds = %348, %332, %326
  br label %355

351:                                              ; preds = %310
  %352 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %26, i32 0, i32 0
  %353 = load %struct.vnode*, %struct.vnode** %352, align 8
  %354 = call i32 @vput(%struct.vnode* %353)
  br label %355

355:                                              ; preds = %351, %350
  %356 = load i32, i32* %33, align 4
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %378

358:                                              ; preds = %355
  %359 = load i8*, i8** %15, align 8
  %360 = icmp ne i8* %359, null
  br i1 %360, label %361, label %378

361:                                              ; preds = %358
  %362 = load i32, i32* %35, align 4
  %363 = icmp eq i32 %362, -1
  br i1 %363, label %364, label %378

364:                                              ; preds = %361
  %365 = load %struct.vnode**, %struct.vnode*** %22, align 8
  %366 = icmp ne %struct.vnode** %365, null
  br i1 %366, label %367, label %376

367:                                              ; preds = %364
  %368 = load %struct.vnode**, %struct.vnode*** %22, align 8
  %369 = load %struct.vnode*, %struct.vnode** %368, align 8
  %370 = icmp ne %struct.vnode* %369, null
  br i1 %370, label %371, label %376

371:                                              ; preds = %367
  %372 = load %struct.vnode**, %struct.vnode*** %22, align 8
  %373 = load %struct.vnode*, %struct.vnode** %372, align 8
  %374 = call i32 @vput(%struct.vnode* %373)
  %375 = load %struct.vnode**, %struct.vnode*** %22, align 8
  store %struct.vnode* null, %struct.vnode** %375, align 8
  br label %376

376:                                              ; preds = %371, %367, %364
  %377 = load i32, i32* @ENXIO, align 4
  store i32 %377, i32* %33, align 4
  br label %378

378:                                              ; preds = %376, %361, %358, %355
  %379 = load i32, i32* %33, align 4
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %419

381:                                              ; preds = %378
  %382 = load %struct.vnode*, %struct.vnode** %27, align 8
  %383 = load %struct.vnode**, %struct.vnode*** %21, align 8
  store %struct.vnode* %382, %struct.vnode** %383, align 8
  %384 = load i8*, i8** %17, align 8
  %385 = bitcast i8* %384 to %struct.pnfsdsfile*
  store %struct.pnfsdsfile* %385, %struct.pnfsdsfile** %29, align 8
  %386 = load i32, i32* %35, align 4
  %387 = icmp eq i32 %386, -1
  br i1 %387, label %388, label %411

388:                                              ; preds = %381
  %389 = load i32*, i32** %18, align 8
  %390 = load i32, i32* %389, align 4
  %391 = sext i32 %390 to i64
  %392 = udiv i64 %391, 8
  %393 = trunc i64 %392 to i32
  store i32 %393, i32* %35, align 4
  %394 = load i32*, i32** %18, align 8
  %395 = load i32, i32* %394, align 4
  %396 = sext i32 %395 to i64
  %397 = add i64 %396, 8
  %398 = trunc i64 %397 to i32
  store i32 %398, i32* %394, align 4
  %399 = load i32, i32* %35, align 4
  %400 = load %struct.pnfsdsfile*, %struct.pnfsdsfile** %29, align 8
  %401 = sext i32 %399 to i64
  %402 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %400, i64 %401
  store %struct.pnfsdsfile* %402, %struct.pnfsdsfile** %29, align 8
  %403 = load i32, i32* %32, align 4
  %404 = load %struct.pnfsdsfile*, %struct.pnfsdsfile** %29, align 8
  %405 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %404, i32 0, i32 0
  store i32 %403, i32* %405, align 4
  %406 = load %struct.pnfsdsfile*, %struct.pnfsdsfile** %29, align 8
  %407 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = load i8*, i8** %19, align 8
  %410 = call i32 @strlcpy(i32 %408, i8* %409, i32 4)
  br label %416

411:                                              ; preds = %381
  %412 = load i32, i32* %35, align 4
  %413 = load %struct.pnfsdsfile*, %struct.pnfsdsfile** %29, align 8
  %414 = sext i32 %412 to i64
  %415 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %413, i64 %414
  store %struct.pnfsdsfile* %415, %struct.pnfsdsfile** %29, align 8
  br label %416

416:                                              ; preds = %411, %388
  %417 = load %struct.pnfsdsfile*, %struct.pnfsdsfile** %29, align 8
  %418 = load %struct.pnfsdsfile**, %struct.pnfsdsfile*** %23, align 8
  store %struct.pnfsdsfile* %417, %struct.pnfsdsfile** %418, align 8
  br label %422

419:                                              ; preds = %378
  %420 = load %struct.vnode*, %struct.vnode** %27, align 8
  %421 = call i32 @vput(%struct.vnode* %420)
  br label %422

422:                                              ; preds = %419, %416
  %423 = load i32, i32* %33, align 4
  store i32 %423, i32* %13, align 4
  br label %424

424:                                              ; preds = %422, %290, %254, %230, %228, %197, %157, %131, %112, %101, %72, %63, %43
  %425 = load i32, i32* %13, align 4
  ret i32 %425
}

declare dso_local i32 @NFSD_DEBUG(i32, i8*, ...) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.nfsmount* @VFSTONFS(%struct.TYPE_4__*) #1

declare dso_local i32 @NFSDDSLOCK(...) #1

declare dso_local %struct.nfsdevice* @nfsv4_findmirror(%struct.nfsmount*) #1

declare dso_local i32 @NFSDDSUNLOCK(...) #1

declare dso_local %struct.nfsdevice* @nfsrv_findmirroredds(%struct.nfsmount*) #1

declare dso_local i32 @nfsrv_dsgetsockmnt(%struct.vnode*, i32, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, %struct.vnode**, %struct.nfsmount**, %struct.nfsmount*, i32*, i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
