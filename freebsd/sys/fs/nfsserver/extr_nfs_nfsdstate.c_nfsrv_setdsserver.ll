; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_setdsserver.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_setdsserver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsdevice = type { i32, i32, %struct.TYPE_7__**, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.mount* }
%struct.mount = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nameidata = type { %struct.TYPE_7__* }

@.str = private unnamed_addr constant [18 x i8] c"setdssrv path=%s\0A\00", align 1
@LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@LOCKSHARED = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"lookup=%d\0A\00", align 1
@VDIR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"dspath not dir\0A\00", align 1
@ENOTDIR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"dspath not an NFS mount\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@nfsrv_dsdirsize = common dso_local global i32 0, align 4
@M_NFSDSTATE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"%s/ds%d\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"dsdirpath=%s lookup=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"dsdirpath not a VDIR\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"dsdirpath not an NFS mount\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"mds lookup=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"mdspath not dir\0A\00", align 1
@MNT_EXPORTED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"mdspath not an exported fs\0A\00", align 1
@nfsrv_devidhead = common dso_local global i32 0, align 4
@nfsdev_list = common dso_local global i32 0, align 4
@nfsrv_devidcnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*, %struct.nfsdevice**)* @nfsrv_setdsserver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsrv_setdsserver(i8* %0, i8* %1, i32* %2, %struct.nfsdevice** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.nfsdevice**, align 8
  %10 = alloca %struct.nameidata, align 8
  %11 = alloca %struct.nfsdevice*, align 8
  %12 = alloca %struct.mount*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.nfsdevice** %3, %struct.nfsdevice*** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load %struct.nfsdevice**, %struct.nfsdevice*** %9, align 8
  store %struct.nfsdevice* null, %struct.nfsdevice** %19, align 8
  %20 = load i32, i32* @LOOKUP, align 4
  %21 = load i32, i32* @FOLLOW, align 4
  %22 = load i32, i32* @LOCKSHARED, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @LOCKLEAF, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @UIO_SYSSPACE, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @NDINIT(%struct.nameidata* %10, i32 %20, i32 %25, i32 %26, i8* %27, i32* %28)
  %30 = call i32 @namei(%struct.nameidata* %10)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %5, align 4
  br label %246

37:                                               ; preds = %4
  %38 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VDIR, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = call i32 @vput(%struct.TYPE_7__* %46)
  %48 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @ENOTDIR, align 4
  store i32 %49, i32* %5, align 4
  br label %246

50:                                               ; preds = %37
  %51 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load %struct.mount*, %struct.mount** %53, align 8
  %55 = getelementptr inbounds %struct.mount, %struct.mount* %54, i32 0, i32 2
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @strcmp(i32 %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = call i32 @vput(%struct.TYPE_7__* %63)
  %65 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %66 = load i32, i32* @ENXIO, align 4
  store i32 %66, i32* %5, align 4
  br label %246

67:                                               ; preds = %50
  %68 = load i32, i32* @nfsrv_dsdirsize, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 4
  %71 = add i64 32, %70
  %72 = load i32, i32* @M_NFSDSTATE, align 4
  %73 = load i32, i32* @M_WAITOK, align 4
  %74 = load i32, i32* @M_ZERO, align 4
  %75 = or i32 %73, %74
  %76 = call i8* @malloc(i64 %71, i32 %72, i32 %75)
  %77 = bitcast i8* %76 to %struct.nfsdevice*
  store %struct.nfsdevice* %77, %struct.nfsdevice** %11, align 8
  %78 = load %struct.nfsdevice**, %struct.nfsdevice*** %9, align 8
  store %struct.nfsdevice* %77, %struct.nfsdevice** %78, align 8
  %79 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = load %struct.nfsdevice*, %struct.nfsdevice** %11, align 8
  %82 = getelementptr inbounds %struct.nfsdevice, %struct.nfsdevice* %81, i32 0, i32 4
  store %struct.TYPE_7__* %80, %struct.TYPE_7__** %82, align 8
  %83 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load %struct.mount*, %struct.mount** %85, align 8
  %87 = call i32 @VFSTONFS(%struct.mount* %86)
  %88 = load %struct.nfsdevice*, %struct.nfsdevice** %11, align 8
  %89 = getelementptr inbounds %struct.nfsdevice, %struct.nfsdevice* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = call i32 @NFSVOPUNLOCK(%struct.TYPE_7__* %91, i32 0)
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @strlen(i8* %93)
  %95 = add nsw i32 %94, 16
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %16, align 8
  %97 = load i64, i64* %16, align 8
  %98 = load i32, i32* @M_TEMP, align 4
  %99 = load i32, i32* @M_WAITOK, align 4
  %100 = call i8* @malloc(i64 %97, i32 %98, i32 %99)
  store i8* %100, i8** %15, align 8
  store i32 0, i32* %14, align 4
  br label %101

101:                                              ; preds = %170, %67
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* @nfsrv_dsdirsize, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %173

105:                                              ; preds = %101
  %106 = load i8*, i8** %15, align 8
  %107 = load i64, i64* %16, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @snprintf(i8* %106, i64 %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %108, i32 %109)
  %111 = load i32, i32* @LOOKUP, align 4
  %112 = load i32, i32* @FOLLOW, align 4
  %113 = load i32, i32* @LOCKSHARED, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @LOCKLEAF, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @UIO_SYSSPACE, align 4
  %118 = load i8*, i8** %15, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = call i32 @NDINIT(%struct.nameidata* %10, i32 %111, i32 %116, i32 %117, i8* %118, i32* %119)
  %121 = call i32 @namei(%struct.nameidata* %10)
  store i32 %121, i32* %13, align 4
  %122 = load i8*, i8** %15, align 8
  %123 = load i32, i32* %13, align 4
  %124 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %122, i32 %123)
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %105
  br label %173

128:                                              ; preds = %105
  %129 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @VDIR, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = call i32 @vput(%struct.TYPE_7__* %137)
  %139 = load i32, i32* @ENOTDIR, align 4
  store i32 %139, i32* %13, align 4
  %140 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %173

141:                                              ; preds = %128
  %142 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load %struct.mount*, %struct.mount** %144, align 8
  %146 = getelementptr inbounds %struct.mount, %struct.mount* %145, i32 0, i32 2
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @strcmp(i32 %149, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %141
  %153 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = call i32 @vput(%struct.TYPE_7__* %154)
  %156 = load i32, i32* @ENXIO, align 4
  store i32 %156, i32* %13, align 4
  %157 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %173

158:                                              ; preds = %141
  %159 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = load %struct.nfsdevice*, %struct.nfsdevice** %11, align 8
  %162 = getelementptr inbounds %struct.nfsdevice, %struct.nfsdevice* %161, i32 0, i32 2
  %163 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %162, align 8
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %163, i64 %165
  store %struct.TYPE_7__* %160, %struct.TYPE_7__** %166, align 8
  %167 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = call i32 @NFSVOPUNLOCK(%struct.TYPE_7__* %168, i32 0)
  br label %170

170:                                              ; preds = %158
  %171 = load i32, i32* %14, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %14, align 4
  br label %101

173:                                              ; preds = %152, %135, %127, %101
  %174 = load i8*, i8** %15, align 8
  %175 = load i32, i32* @M_TEMP, align 4
  %176 = call i32 @free(i8* %174, i32 %175)
  %177 = load i8*, i8** %7, align 8
  %178 = call i32 @strlen(i8* %177)
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %239

180:                                              ; preds = %173
  %181 = load i32, i32* @LOOKUP, align 4
  %182 = load i32, i32* @FOLLOW, align 4
  %183 = load i32, i32* @LOCKSHARED, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @LOCKLEAF, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @UIO_SYSSPACE, align 4
  %188 = load i8*, i8** %7, align 8
  %189 = load i32*, i32** %8, align 8
  %190 = call i32 @NDINIT(%struct.nameidata* %10, i32 %181, i32 %186, i32 %187, i8* %188, i32* %189)
  %191 = call i32 @namei(%struct.nameidata* %10)
  store i32 %191, i32* %13, align 4
  %192 = load i32, i32* %13, align 4
  %193 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %192)
  %194 = load i32, i32* %13, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %180
  br label %240

197:                                              ; preds = %180
  %198 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @VDIR, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %204, label %210

204:                                              ; preds = %197
  %205 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %205, align 8
  %207 = call i32 @vput(%struct.TYPE_7__* %206)
  %208 = load i32, i32* @ENOTDIR, align 4
  store i32 %208, i32* %13, align 4
  %209 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  br label %240

210:                                              ; preds = %197
  %211 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 1
  %214 = load %struct.mount*, %struct.mount** %213, align 8
  store %struct.mount* %214, %struct.mount** %12, align 8
  %215 = load %struct.mount*, %struct.mount** %12, align 8
  %216 = getelementptr inbounds %struct.mount, %struct.mount* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @MNT_EXPORTED, align 4
  %219 = and i32 %217, %218
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %210
  %222 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %222, align 8
  %224 = call i32 @vput(%struct.TYPE_7__* %223)
  %225 = load i32, i32* @ENXIO, align 4
  store i32 %225, i32* %13, align 4
  %226 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  br label %240

227:                                              ; preds = %210
  %228 = load %struct.mount*, %struct.mount** %12, align 8
  %229 = getelementptr inbounds %struct.mount, %struct.mount* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.nfsdevice*, %struct.nfsdevice** %11, align 8
  %233 = getelementptr inbounds %struct.nfsdevice, %struct.nfsdevice* %232, i32 0, i32 1
  store i32 %231, i32* %233, align 4
  %234 = load %struct.nfsdevice*, %struct.nfsdevice** %11, align 8
  %235 = getelementptr inbounds %struct.nfsdevice, %struct.nfsdevice* %234, i32 0, i32 0
  store i32 1, i32* %235, align 8
  %236 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %236, align 8
  %238 = call i32 @vput(%struct.TYPE_7__* %237)
  br label %239

239:                                              ; preds = %227, %173
  br label %240

240:                                              ; preds = %239, %221, %204, %196
  %241 = load %struct.nfsdevice*, %struct.nfsdevice** %11, align 8
  %242 = load i32, i32* @nfsdev_list, align 4
  %243 = call i32 @TAILQ_INSERT_TAIL(i32* @nfsrv_devidhead, %struct.nfsdevice* %241, i32 %242)
  %244 = call i32 @atomic_add_int(i32* @nfsrv_devidcnt, i32 1)
  %245 = load i32, i32* %13, align 4
  store i32 %245, i32* %5, align 4
  br label %246

246:                                              ; preds = %240, %61, %44, %35
  %247 = load i32, i32* %5, align 4
  ret i32 %247
}

declare dso_local i32 @NFSD_DEBUG(i32, i8*, ...) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @vput(%struct.TYPE_7__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @VFSTONFS(%struct.mount*) #1

declare dso_local i32 @NFSVOPUNLOCK(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i32) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.nfsdevice*, i32) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
