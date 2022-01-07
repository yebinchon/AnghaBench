; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vfsops.c_udf_mountfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vfsops.c_udf_mountfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.cdev*, %struct.bufobj }
%struct.cdev = type { i64 }
%struct.bufobj = type { i32 }
%struct.mount = type { i64, i32, i32, %struct.TYPE_16__*, %struct.TYPE_15__, %struct.udf_mnt* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* }
%struct.udf_mnt = type { i32, i32, i32, i32, %struct.anchor_vdp, i64, i32*, %struct.bufobj*, %struct.g_consumer*, i32*, %struct.vnode*, %struct.cdev*, %struct.mount* }
%struct.anchor_vdp = type { i32, %struct.TYPE_13__, %struct.TYPE_18__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.g_consumer = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.buf = type { i32* }
%struct.part_desc = type { i32, i32, i32, %struct.desc_tag }
%struct.desc_tag = type { i32 }
%struct.logvol_desc = type { %struct.TYPE_12__, i32, %struct.desc_tag }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.fileset_desc = type { i32, %struct.desc_tag }
%struct.file_entry = type { %struct.desc_tag }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"udf\00", align 1
@MAXPHYS = common dso_local global i64 0, align 8
@M_UDFMOUNT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Cannot allocate UDF mount struct\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MNT_LOCAL = common dso_local global i32 0, align 4
@MNTK_LOOKUP_SHARED = common dso_local global i32 0, align 4
@MNTK_EXTENDED_SHARED = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@TAGID_ANCHOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Can't read sector %d of VDS\0A\00", align 1
@TAGID_LOGVOL = common dso_local global i32 0, align 4
@TAGID_PARTITION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"FSD does not lie within the partition!\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Cannot read sector %d of FSD\0A\00", align 1
@TAGID_FSD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"Couldn't find the fsd\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Cannot read sector %d\0A\00", align 1
@TAGID_FENTRY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"Invalid root file entry!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.mount*)* @udf_mountfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_mountfs(%struct.vnode* %0, %struct.mount* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.mount*, align 8
  %6 = alloca %struct.buf*, align 8
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca %struct.anchor_vdp, align 4
  %9 = alloca %struct.udf_mnt*, align 8
  %10 = alloca %struct.part_desc*, align 8
  %11 = alloca %struct.logvol_desc*, align 8
  %12 = alloca %struct.fileset_desc*, align 8
  %13 = alloca %struct.file_entry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.g_consumer*, align 8
  %28 = alloca %struct.bufobj*, align 8
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store %struct.mount* %1, %struct.mount** %5, align 8
  store %struct.buf* null, %struct.buf** %6, align 8
  store %struct.udf_mnt* null, %struct.udf_mnt** %9, align 8
  store i32 0, i32* %19, align 4
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %30 = load %struct.vnode*, %struct.vnode** %4, align 8
  %31 = getelementptr inbounds %struct.vnode, %struct.vnode* %30, i32 0, i32 0
  %32 = load %struct.cdev*, %struct.cdev** %31, align 8
  store %struct.cdev* %32, %struct.cdev** %7, align 8
  %33 = load %struct.cdev*, %struct.cdev** %7, align 8
  %34 = call i32 @dev_ref(%struct.cdev* %33)
  %35 = call i32 (...) @g_topology_lock()
  %36 = load %struct.vnode*, %struct.vnode** %4, align 8
  %37 = call i32 @g_vfs_open(%struct.vnode* %36, %struct.g_consumer** %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %37, i32* %22, align 4
  %38 = call i32 (...) @g_topology_unlock()
  %39 = load %struct.vnode*, %struct.vnode** %4, align 8
  %40 = call i32 @VOP_UNLOCK(%struct.vnode* %39, i32 0)
  %41 = load i32, i32* %22, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %2
  br label %405

44:                                               ; preds = %2
  %45 = load %struct.vnode*, %struct.vnode** %4, align 8
  %46 = getelementptr inbounds %struct.vnode, %struct.vnode* %45, i32 0, i32 1
  store %struct.bufobj* %46, %struct.bufobj** %28, align 8
  %47 = load %struct.vnode*, %struct.vnode** %4, align 8
  %48 = getelementptr inbounds %struct.vnode, %struct.vnode* %47, i32 0, i32 0
  %49 = load %struct.cdev*, %struct.cdev** %48, align 8
  %50 = getelementptr inbounds %struct.cdev, %struct.cdev* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %44
  %54 = load %struct.vnode*, %struct.vnode** %4, align 8
  %55 = getelementptr inbounds %struct.vnode, %struct.vnode* %54, i32 0, i32 0
  %56 = load %struct.cdev*, %struct.cdev** %55, align 8
  %57 = getelementptr inbounds %struct.cdev, %struct.cdev* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.mount*, %struct.mount** %5, align 8
  %60 = getelementptr inbounds %struct.mount, %struct.mount* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %53, %44
  %62 = load %struct.mount*, %struct.mount** %5, align 8
  %63 = getelementptr inbounds %struct.mount, %struct.mount* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MAXPHYS, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i64, i64* @MAXPHYS, align 8
  %69 = load %struct.mount*, %struct.mount** %5, align 8
  %70 = getelementptr inbounds %struct.mount, %struct.mount* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %67, %61
  %72 = load i32, i32* @M_UDFMOUNT, align 4
  %73 = load i32, i32* @M_NOWAIT, align 4
  %74 = load i32, i32* @M_ZERO, align 4
  %75 = or i32 %73, %74
  %76 = call %struct.udf_mnt* @malloc(i32 96, i32 %72, i32 %75)
  store %struct.udf_mnt* %76, %struct.udf_mnt** %9, align 8
  %77 = load %struct.udf_mnt*, %struct.udf_mnt** %9, align 8
  %78 = icmp eq %struct.udf_mnt* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @ENOMEM, align 4
  store i32 %81, i32* %22, align 4
  br label %405

82:                                               ; preds = %71
  %83 = load %struct.udf_mnt*, %struct.udf_mnt** %9, align 8
  %84 = load %struct.mount*, %struct.mount** %5, align 8
  %85 = getelementptr inbounds %struct.mount, %struct.mount* %84, i32 0, i32 5
  store %struct.udf_mnt* %83, %struct.udf_mnt** %85, align 8
  %86 = load %struct.vnode*, %struct.vnode** %4, align 8
  %87 = getelementptr inbounds %struct.vnode, %struct.vnode* %86, i32 0, i32 0
  %88 = load %struct.cdev*, %struct.cdev** %87, align 8
  %89 = call i32 @dev2udev(%struct.cdev* %88)
  %90 = load %struct.mount*, %struct.mount** %5, align 8
  %91 = getelementptr inbounds %struct.mount, %struct.mount* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %89, i32* %95, align 4
  %96 = load %struct.mount*, %struct.mount** %5, align 8
  %97 = getelementptr inbounds %struct.mount, %struct.mount* %96, i32 0, i32 3
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.mount*, %struct.mount** %5, align 8
  %102 = getelementptr inbounds %struct.mount, %struct.mount* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  store i32 %100, i32* %106, align 4
  %107 = load %struct.mount*, %struct.mount** %5, align 8
  %108 = call i32 @MNT_ILOCK(%struct.mount* %107)
  %109 = load i32, i32* @MNT_LOCAL, align 4
  %110 = load %struct.mount*, %struct.mount** %5, align 8
  %111 = getelementptr inbounds %struct.mount, %struct.mount* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load i32, i32* @MNTK_LOOKUP_SHARED, align 4
  %115 = load i32, i32* @MNTK_EXTENDED_SHARED, align 4
  %116 = or i32 %114, %115
  %117 = load %struct.mount*, %struct.mount** %5, align 8
  %118 = getelementptr inbounds %struct.mount, %struct.mount* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  %121 = load %struct.mount*, %struct.mount** %5, align 8
  %122 = call i32 @MNT_IUNLOCK(%struct.mount* %121)
  %123 = load %struct.mount*, %struct.mount** %5, align 8
  %124 = load %struct.udf_mnt*, %struct.udf_mnt** %9, align 8
  %125 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %124, i32 0, i32 12
  store %struct.mount* %123, %struct.mount** %125, align 8
  %126 = load %struct.cdev*, %struct.cdev** %7, align 8
  %127 = load %struct.udf_mnt*, %struct.udf_mnt** %9, align 8
  %128 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %127, i32 0, i32 11
  store %struct.cdev* %126, %struct.cdev** %128, align 8
  %129 = load %struct.vnode*, %struct.vnode** %4, align 8
  %130 = load %struct.udf_mnt*, %struct.udf_mnt** %9, align 8
  %131 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %130, i32 0, i32 10
  store %struct.vnode* %129, %struct.vnode** %131, align 8
  %132 = load %struct.udf_mnt*, %struct.udf_mnt** %9, align 8
  %133 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %132, i32 0, i32 9
  store i32* null, i32** %133, align 8
  %134 = load %struct.g_consumer*, %struct.g_consumer** %27, align 8
  %135 = load %struct.udf_mnt*, %struct.udf_mnt** %9, align 8
  %136 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %135, i32 0, i32 8
  store %struct.g_consumer* %134, %struct.g_consumer** %136, align 8
  %137 = load %struct.bufobj*, %struct.bufobj** %28, align 8
  %138 = load %struct.udf_mnt*, %struct.udf_mnt** %9, align 8
  %139 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %138, i32 0, i32 7
  store %struct.bufobj* %137, %struct.bufobj** %139, align 8
  store i32 2048, i32* %18, align 4
  %140 = load i32, i32* %18, align 4
  %141 = load %struct.g_consumer*, %struct.g_consumer** %27, align 8
  %142 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %141, i32 0, i32 0
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = srem i32 %140, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %156, label %148

148:                                              ; preds = %82
  %149 = load i32, i32* %18, align 4
  %150 = load %struct.g_consumer*, %struct.g_consumer** %27, align 8
  %151 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %150, i32 0, i32 0
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp slt i32 %149, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %148, %82
  %157 = load i32, i32* @EINVAL, align 4
  store i32 %157, i32* %22, align 4
  br label %405

158:                                              ; preds = %148
  %159 = load %struct.g_consumer*, %struct.g_consumer** %27, align 8
  %160 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %159, i32 0, i32 0
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %26, align 4
  store i32 256, i32* %14, align 4
  %164 = load %struct.vnode*, %struct.vnode** %4, align 8
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %18, align 4
  %167 = call i32 @btodb(i32 %166)
  %168 = mul nsw i32 %165, %167
  %169 = load i32, i32* %26, align 4
  %170 = load i32, i32* @NOCRED, align 4
  %171 = call i32 @bread(%struct.vnode* %164, i32 %168, i32 %169, i32 %170, %struct.buf** %6)
  store i32 %171, i32* %22, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %158
  br label %405

174:                                              ; preds = %158
  %175 = load %struct.buf*, %struct.buf** %6, align 8
  %176 = getelementptr inbounds %struct.buf, %struct.buf* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = bitcast i32* %177 to %struct.desc_tag*
  %179 = load i32, i32* @TAGID_ANCHOR, align 4
  %180 = call i32 @udf_checktag(%struct.desc_tag* %178, i32 %179)
  store i32 %180, i32* %22, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %174
  br label %405

183:                                              ; preds = %174
  %184 = load %struct.buf*, %struct.buf** %6, align 8
  %185 = getelementptr inbounds %struct.buf, %struct.buf* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @bcopy(i32* %186, %struct.anchor_vdp* %8, i32 16)
  %188 = load %struct.buf*, %struct.buf** %6, align 8
  %189 = call i32 @brelse(%struct.buf* %188)
  store %struct.buf* null, %struct.buf** %6, align 8
  %190 = getelementptr inbounds %struct.anchor_vdp, %struct.anchor_vdp* %8, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @le32toh(i32 %192)
  store i32 %193, i32* %16, align 4
  %194 = load i32, i32* %16, align 4
  %195 = getelementptr inbounds %struct.anchor_vdp, %struct.anchor_vdp* %8, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @le32toh(i32 %197)
  %199 = sub nsw i32 %198, 1
  %200 = load i32, i32* %26, align 4
  %201 = sdiv i32 %199, %200
  %202 = add nsw i32 %194, %201
  store i32 %202, i32* %17, align 4
  %203 = load i32, i32* %16, align 4
  store i32 %203, i32* %14, align 4
  br label %204

204:                                              ; preds = %308, %183
  %205 = load i32, i32* %14, align 4
  %206 = load i32, i32* %17, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %311

208:                                              ; preds = %204
  %209 = load %struct.vnode*, %struct.vnode** %4, align 8
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* %18, align 4
  %212 = call i32 @btodb(i32 %211)
  %213 = mul nsw i32 %210, %212
  %214 = load i32, i32* %26, align 4
  %215 = load i32, i32* @NOCRED, align 4
  %216 = call i32 @bread(%struct.vnode* %209, i32 %213, i32 %214, i32 %215, %struct.buf** %6)
  store i32 %216, i32* %22, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %208
  %219 = load i32, i32* %14, align 4
  %220 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %219)
  br label %405

221:                                              ; preds = %208
  %222 = load %struct.buf*, %struct.buf** %6, align 8
  %223 = getelementptr inbounds %struct.buf, %struct.buf* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = bitcast i32* %224 to %struct.logvol_desc*
  store %struct.logvol_desc* %225, %struct.logvol_desc** %11, align 8
  %226 = load %struct.logvol_desc*, %struct.logvol_desc** %11, align 8
  %227 = getelementptr inbounds %struct.logvol_desc, %struct.logvol_desc* %226, i32 0, i32 2
  %228 = load i32, i32* @TAGID_LOGVOL, align 4
  %229 = call i32 @udf_checktag(%struct.desc_tag* %227, i32 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %271, label %231

231:                                              ; preds = %221
  %232 = load %struct.logvol_desc*, %struct.logvol_desc** %11, align 8
  %233 = getelementptr inbounds %struct.logvol_desc, %struct.logvol_desc* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @le32toh(i32 %234)
  %236 = load %struct.udf_mnt*, %struct.udf_mnt** %9, align 8
  %237 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %236, i32 0, i32 0
  store i32 %235, i32* %237, align 8
  %238 = load %struct.udf_mnt*, %struct.udf_mnt** %9, align 8
  %239 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = sub nsw i32 %240, 1
  %242 = load %struct.udf_mnt*, %struct.udf_mnt** %9, align 8
  %243 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %242, i32 0, i32 1
  store i32 %241, i32* %243, align 4
  %244 = load %struct.udf_mnt*, %struct.udf_mnt** %9, align 8
  %245 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = call i64 @ffs(i32 %246)
  %248 = sub nsw i64 %247, 1
  %249 = load %struct.udf_mnt*, %struct.udf_mnt** %9, align 8
  %250 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %249, i32 0, i32 5
  store i64 %248, i64* %250, align 8
  %251 = load %struct.logvol_desc*, %struct.logvol_desc** %11, align 8
  %252 = getelementptr inbounds %struct.logvol_desc, %struct.logvol_desc* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i64 @le16toh(i32 %256)
  store i64 %257, i64* %21, align 8
  %258 = load %struct.logvol_desc*, %struct.logvol_desc** %11, align 8
  %259 = getelementptr inbounds %struct.logvol_desc, %struct.logvol_desc* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @le32toh(i32 %263)
  store i32 %264, i32* %19, align 4
  %265 = load %struct.udf_mnt*, %struct.udf_mnt** %9, align 8
  %266 = load %struct.logvol_desc*, %struct.logvol_desc** %11, align 8
  %267 = call i64 @udf_find_partmaps(%struct.udf_mnt* %265, %struct.logvol_desc* %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %231
  br label %311

270:                                              ; preds = %231
  store i32 1, i32* %23, align 4
  br label %271

271:                                              ; preds = %270, %221
  %272 = load %struct.buf*, %struct.buf** %6, align 8
  %273 = getelementptr inbounds %struct.buf, %struct.buf* %272, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  %275 = bitcast i32* %274 to %struct.part_desc*
  store %struct.part_desc* %275, %struct.part_desc** %10, align 8
  %276 = load %struct.part_desc*, %struct.part_desc** %10, align 8
  %277 = getelementptr inbounds %struct.part_desc, %struct.part_desc* %276, i32 0, i32 3
  %278 = load i32, i32* @TAGID_PARTITION, align 4
  %279 = call i32 @udf_checktag(%struct.desc_tag* %277, i32 %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %298, label %281

281:                                              ; preds = %271
  store i32 1, i32* %24, align 4
  %282 = load %struct.part_desc*, %struct.part_desc** %10, align 8
  %283 = getelementptr inbounds %struct.part_desc, %struct.part_desc* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = call i64 @le16toh(i32 %284)
  store i64 %285, i64* %20, align 8
  %286 = load %struct.part_desc*, %struct.part_desc** %10, align 8
  %287 = getelementptr inbounds %struct.part_desc, %struct.part_desc* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @le32toh(i32 %288)
  %290 = load %struct.udf_mnt*, %struct.udf_mnt** %9, align 8
  %291 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %290, i32 0, i32 2
  store i32 %289, i32* %291, align 8
  %292 = load %struct.part_desc*, %struct.part_desc** %10, align 8
  %293 = getelementptr inbounds %struct.part_desc, %struct.part_desc* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @le32toh(i32 %294)
  %296 = load %struct.udf_mnt*, %struct.udf_mnt** %9, align 8
  %297 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %296, i32 0, i32 3
  store i32 %295, i32* %297, align 4
  br label %298

298:                                              ; preds = %281, %271
  %299 = load %struct.buf*, %struct.buf** %6, align 8
  %300 = call i32 @brelse(%struct.buf* %299)
  store %struct.buf* null, %struct.buf** %6, align 8
  %301 = load i32, i32* %24, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %307

303:                                              ; preds = %298
  %304 = load i32, i32* %23, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %303
  br label %311

307:                                              ; preds = %303, %298
  br label %308

308:                                              ; preds = %307
  %309 = load i32, i32* %14, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %14, align 4
  br label %204

311:                                              ; preds = %306, %269, %204
  %312 = load i32, i32* %24, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %317

314:                                              ; preds = %311
  %315 = load i32, i32* %23, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %319, label %317

317:                                              ; preds = %314, %311
  %318 = load i32, i32* @EINVAL, align 4
  store i32 %318, i32* %22, align 4
  br label %405

319:                                              ; preds = %314
  %320 = load i64, i64* %21, align 8
  %321 = load i64, i64* %20, align 8
  %322 = icmp ne i64 %320, %321
  br i1 %322, label %323, label %326

323:                                              ; preds = %319
  %324 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %325 = load i32, i32* @EINVAL, align 4
  store i32 %325, i32* %22, align 4
  br label %405

326:                                              ; preds = %319
  %327 = load %struct.udf_mnt*, %struct.udf_mnt** %9, align 8
  %328 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* %19, align 4
  %331 = add nsw i32 %329, %330
  store i32 %331, i32* %14, align 4
  %332 = load %struct.vnode*, %struct.vnode** %4, align 8
  %333 = load i32, i32* %14, align 4
  %334 = load %struct.udf_mnt*, %struct.udf_mnt** %9, align 8
  %335 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = call i32 @RDSECTOR(%struct.vnode* %332, i32 %333, i32 %336, %struct.buf** %6)
  store i32 %337, i32* %22, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %326
  %340 = load i32, i32* %14, align 4
  %341 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %340)
  br label %405

342:                                              ; preds = %326
  %343 = load %struct.buf*, %struct.buf** %6, align 8
  %344 = getelementptr inbounds %struct.buf, %struct.buf* %343, i32 0, i32 0
  %345 = load i32*, i32** %344, align 8
  %346 = bitcast i32* %345 to %struct.fileset_desc*
  store %struct.fileset_desc* %346, %struct.fileset_desc** %12, align 8
  %347 = load %struct.fileset_desc*, %struct.fileset_desc** %12, align 8
  %348 = getelementptr inbounds %struct.fileset_desc, %struct.fileset_desc* %347, i32 0, i32 1
  %349 = load i32, i32* @TAGID_FSD, align 4
  %350 = call i32 @udf_checktag(%struct.desc_tag* %348, i32 %349)
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %358, label %352

352:                                              ; preds = %342
  store i32 1, i32* %25, align 4
  %353 = load %struct.fileset_desc*, %struct.fileset_desc** %12, align 8
  %354 = getelementptr inbounds %struct.fileset_desc, %struct.fileset_desc* %353, i32 0, i32 0
  %355 = load %struct.udf_mnt*, %struct.udf_mnt** %9, align 8
  %356 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %355, i32 0, i32 4
  %357 = call i32 @bcopy(i32* %354, %struct.anchor_vdp* %356, i32 4)
  br label %358

358:                                              ; preds = %352, %342
  %359 = load %struct.buf*, %struct.buf** %6, align 8
  %360 = call i32 @brelse(%struct.buf* %359)
  store %struct.buf* null, %struct.buf** %6, align 8
  %361 = load i32, i32* %25, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %366, label %363

363:                                              ; preds = %358
  %364 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %365 = load i32, i32* @EINVAL, align 4
  store i32 %365, i32* %22, align 4
  br label %405

366:                                              ; preds = %358
  %367 = load %struct.udf_mnt*, %struct.udf_mnt** %9, align 8
  %368 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %367, i32 0, i32 4
  %369 = getelementptr inbounds %struct.anchor_vdp, %struct.anchor_vdp* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = call i32 @le32toh(i32 %371)
  %373 = load %struct.udf_mnt*, %struct.udf_mnt** %9, align 8
  %374 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %373, i32 0, i32 3
  %375 = load i32, i32* %374, align 4
  %376 = add nsw i32 %372, %375
  store i32 %376, i32* %14, align 4
  %377 = load %struct.udf_mnt*, %struct.udf_mnt** %9, align 8
  %378 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %377, i32 0, i32 4
  %379 = getelementptr inbounds %struct.anchor_vdp, %struct.anchor_vdp* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = call i32 @le32toh(i32 %380)
  store i32 %381, i32* %15, align 4
  %382 = load %struct.udf_mnt*, %struct.udf_mnt** %9, align 8
  %383 = load i32, i32* %14, align 4
  %384 = load i32, i32* %15, align 4
  %385 = call i32 @udf_readdevblks(%struct.udf_mnt* %382, i32 %383, i32 %384, %struct.buf** %6)
  store i32 %385, i32* %22, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %390

387:                                              ; preds = %366
  %388 = load i32, i32* %14, align 4
  %389 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %388)
  br label %405

390:                                              ; preds = %366
  %391 = load %struct.buf*, %struct.buf** %6, align 8
  %392 = getelementptr inbounds %struct.buf, %struct.buf* %391, i32 0, i32 0
  %393 = load i32*, i32** %392, align 8
  %394 = bitcast i32* %393 to %struct.file_entry*
  store %struct.file_entry* %394, %struct.file_entry** %13, align 8
  %395 = load %struct.file_entry*, %struct.file_entry** %13, align 8
  %396 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %395, i32 0, i32 0
  %397 = load i32, i32* @TAGID_FENTRY, align 4
  %398 = call i32 @udf_checktag(%struct.desc_tag* %396, i32 %397)
  store i32 %398, i32* %22, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %402

400:                                              ; preds = %390
  %401 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %405

402:                                              ; preds = %390
  %403 = load %struct.buf*, %struct.buf** %6, align 8
  %404 = call i32 @brelse(%struct.buf* %403)
  store %struct.buf* null, %struct.buf** %6, align 8
  store i32 0, i32* %3, align 4
  br label %430

405:                                              ; preds = %400, %387, %363, %339, %323, %317, %218, %182, %173, %156, %79, %43
  %406 = load %struct.udf_mnt*, %struct.udf_mnt** %9, align 8
  %407 = icmp ne %struct.udf_mnt* %406, null
  br i1 %407, label %408, label %412

408:                                              ; preds = %405
  %409 = load %struct.udf_mnt*, %struct.udf_mnt** %9, align 8
  %410 = load i32, i32* @M_UDFMOUNT, align 4
  %411 = call i32 @free(%struct.udf_mnt* %409, i32 %410)
  br label %412

412:                                              ; preds = %408, %405
  %413 = load %struct.buf*, %struct.buf** %6, align 8
  %414 = icmp ne %struct.buf* %413, null
  br i1 %414, label %415, label %418

415:                                              ; preds = %412
  %416 = load %struct.buf*, %struct.buf** %6, align 8
  %417 = call i32 @brelse(%struct.buf* %416)
  br label %418

418:                                              ; preds = %415, %412
  %419 = load %struct.g_consumer*, %struct.g_consumer** %27, align 8
  %420 = icmp ne %struct.g_consumer* %419, null
  br i1 %420, label %421, label %426

421:                                              ; preds = %418
  %422 = call i32 (...) @g_topology_lock()
  %423 = load %struct.g_consumer*, %struct.g_consumer** %27, align 8
  %424 = call i32 @g_vfs_close(%struct.g_consumer* %423)
  %425 = call i32 (...) @g_topology_unlock()
  br label %426

426:                                              ; preds = %421, %418
  %427 = load %struct.cdev*, %struct.cdev** %7, align 8
  %428 = call i32 @dev_rel(%struct.cdev* %427)
  %429 = load i32, i32* %22, align 4
  store i32 %429, i32* %3, align 4
  br label %430

430:                                              ; preds = %426, %402
  %431 = load i32, i32* %3, align 4
  ret i32 %431
}

declare dso_local i32 @dev_ref(%struct.cdev*) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @g_vfs_open(%struct.vnode*, %struct.g_consumer**, i8*, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local %struct.udf_mnt* @malloc(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @dev2udev(%struct.cdev*) #1

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

declare dso_local i32 @bread(%struct.vnode*, i32, i32, i32, %struct.buf**) #1

declare dso_local i32 @btodb(i32) #1

declare dso_local i32 @udf_checktag(%struct.desc_tag*, i32) #1

declare dso_local i32 @bcopy(i32*, %struct.anchor_vdp*, i32) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i64 @ffs(i32) #1

declare dso_local i64 @le16toh(i32) #1

declare dso_local i64 @udf_find_partmaps(%struct.udf_mnt*, %struct.logvol_desc*) #1

declare dso_local i32 @RDSECTOR(%struct.vnode*, i32, i32, %struct.buf**) #1

declare dso_local i32 @udf_readdevblks(%struct.udf_mnt*, i32, i32, %struct.buf**) #1

declare dso_local i32 @free(%struct.udf_mnt*, i32) #1

declare dso_local i32 @g_vfs_close(%struct.g_consumer*) #1

declare dso_local i32 @dev_rel(%struct.cdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
