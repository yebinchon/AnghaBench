; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vfsops.c_ext2_mountfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vfsops.c_ext2_mountfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.bufobj, %struct.cdev* }
%struct.bufobj = type { i32, %struct.g_consumer* }
%struct.g_consumer = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.cdev = type { i64 }
%struct.mount = type { i32, i32, i32, %struct.m_ext2fs*, i32, %struct.TYPE_7__*, %struct.TYPE_6__, i32 }
%struct.m_ext2fs = type { i32, i32, i32, i32, i32, i32, i32, %struct.m_ext2fs*, %struct.m_ext2fs*, %struct.m_ext2fs*, %struct.m_ext2fs*, i32, i64, i64, i32, %struct.g_consumer*, %struct.bufobj*, %struct.vnode*, %struct.cdev*, %struct.mount*, %struct.csum*, i32* }
%struct.csum = type { i8*, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.ext2mount = type { i32, i32, i32, i32, i32, i32, i32, %struct.ext2mount*, %struct.ext2mount*, %struct.ext2mount*, %struct.ext2mount*, i32, i64, i64, i32, %struct.g_consumer*, %struct.bufobj*, %struct.vnode*, %struct.cdev*, %struct.mount*, %struct.csum*, i32* }
%struct.buf = type { i64 }
%struct.ext2fs = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ext2fs\00", align 1
@SBSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@g_vfs_bufops = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i32 0, align 4
@SBLOCK = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@E2FS_ISCLEAN = common dso_local global i32 0, align 4
@E2FS_ERRORS = common dso_local global i32 0, align 4
@MNT_FORCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"WARNING: Filesystem was not properly dismounted\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"WARNING: R/W mount denied.  Filesystem is not clean - run fsck\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@M_EXT2MNT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"EXT2FS\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"EXT2FS Lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@EXT2_MAXCONTIG = common dso_local global i32 0, align 4
@EXT2_MAXSYMLINKLEN = common dso_local global i32 0, align 4
@MNT_LOCAL = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i32 0, align 4
@MNTK_LOOKUP_SHARED = common dso_local global i32 0, align 4
@MNTK_EXTENDED_SHARED = common dso_local global i32 0, align 4
@MNTK_USES_BCACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.mount*)* @ext2_mountfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_mountfs(%struct.vnode* %0, %struct.mount* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.mount*, align 8
  %6 = alloca %struct.ext2mount*, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca %struct.m_ext2fs*, align 8
  %9 = alloca %struct.ext2fs*, align 8
  %10 = alloca %struct.cdev*, align 8
  %11 = alloca %struct.g_consumer*, align 8
  %12 = alloca %struct.bufobj*, align 8
  %13 = alloca %struct.csum*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store %struct.mount* %1, %struct.mount** %5, align 8
  %20 = load %struct.vnode*, %struct.vnode** %4, align 8
  %21 = getelementptr inbounds %struct.vnode, %struct.vnode* %20, i32 0, i32 1
  %22 = load %struct.cdev*, %struct.cdev** %21, align 8
  store %struct.cdev* %22, %struct.cdev** %10, align 8
  %23 = load %struct.mount*, %struct.mount** %5, align 8
  %24 = getelementptr inbounds %struct.mount, %struct.mount* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @vfs_flagopt(i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store i32 %26, i32* %15, align 4
  %27 = call i32 (...) @g_topology_lock()
  %28 = load %struct.vnode*, %struct.vnode** %4, align 8
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 0, i32 1
  %33 = call i32 @g_vfs_open(%struct.vnode* %28, %struct.g_consumer** %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = call i32 (...) @g_topology_unlock()
  %35 = load %struct.vnode*, %struct.vnode** %4, align 8
  %36 = call i32 @VOP_UNLOCK(%struct.vnode* %35, i32 0)
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %3, align 4
  br label %489

41:                                               ; preds = %2
  %42 = load i32, i32* @SBSIZE, align 4
  %43 = load %struct.g_consumer*, %struct.g_consumer** %11, align 8
  %44 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = srem i32 %42, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* @SBSIZE, align 4
  %52 = load %struct.g_consumer*, %struct.g_consumer** %11, align 8
  %53 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %51, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %50, %41
  %59 = call i32 (...) @g_topology_lock()
  %60 = load %struct.g_consumer*, %struct.g_consumer** %11, align 8
  %61 = call i32 @g_vfs_close(%struct.g_consumer* %60)
  %62 = call i32 (...) @g_topology_unlock()
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* %3, align 4
  br label %489

64:                                               ; preds = %50
  %65 = load %struct.vnode*, %struct.vnode** %4, align 8
  %66 = getelementptr inbounds %struct.vnode, %struct.vnode* %65, i32 0, i32 0
  store %struct.bufobj* %66, %struct.bufobj** %12, align 8
  %67 = load %struct.g_consumer*, %struct.g_consumer** %11, align 8
  %68 = load %struct.bufobj*, %struct.bufobj** %12, align 8
  %69 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %68, i32 0, i32 1
  store %struct.g_consumer* %67, %struct.g_consumer** %69, align 8
  %70 = load i32, i32* @g_vfs_bufops, align 4
  %71 = load %struct.bufobj*, %struct.bufobj** %12, align 8
  %72 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.vnode*, %struct.vnode** %4, align 8
  %74 = getelementptr inbounds %struct.vnode, %struct.vnode* %73, i32 0, i32 1
  %75 = load %struct.cdev*, %struct.cdev** %74, align 8
  %76 = getelementptr inbounds %struct.cdev, %struct.cdev* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %64
  %80 = load %struct.vnode*, %struct.vnode** %4, align 8
  %81 = getelementptr inbounds %struct.vnode, %struct.vnode* %80, i32 0, i32 1
  %82 = load %struct.cdev*, %struct.cdev** %81, align 8
  %83 = getelementptr inbounds %struct.cdev, %struct.cdev* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = load %struct.mount*, %struct.mount** %5, align 8
  %87 = getelementptr inbounds %struct.mount, %struct.mount* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %79, %64
  %89 = load %struct.mount*, %struct.mount** %5, align 8
  %90 = getelementptr inbounds %struct.mount, %struct.mount* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @MAXPHYS, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32, i32* @MAXPHYS, align 4
  %96 = load %struct.mount*, %struct.mount** %5, align 8
  %97 = getelementptr inbounds %struct.mount, %struct.mount* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %94, %88
  store %struct.buf* null, %struct.buf** %7, align 8
  store %struct.ext2mount* null, %struct.ext2mount** %6, align 8
  %99 = load %struct.vnode*, %struct.vnode** %4, align 8
  %100 = load i32, i32* @SBLOCK, align 4
  %101 = load i32, i32* @SBSIZE, align 4
  %102 = load i32, i32* @NOCRED, align 4
  %103 = call i32 @bread(%struct.vnode* %99, i32 %100, i32 %101, i32 %102, %struct.buf** %7)
  store i32 %103, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %429

106:                                              ; preds = %98
  %107 = load %struct.buf*, %struct.buf** %7, align 8
  %108 = getelementptr inbounds %struct.buf, %struct.buf* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to %struct.ext2fs*
  store %struct.ext2fs* %110, %struct.ext2fs** %9, align 8
  %111 = load %struct.ext2fs*, %struct.ext2fs** %9, align 8
  %112 = load %struct.cdev*, %struct.cdev** %10, align 8
  %113 = load i32, i32* %15, align 4
  %114 = call i64 @ext2_check_sb_compat(%struct.ext2fs* %111, %struct.cdev* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %106
  %117 = load i32, i32* @EINVAL, align 4
  store i32 %117, i32* %14, align 4
  br label %429

118:                                              ; preds = %106
  %119 = load %struct.ext2fs*, %struct.ext2fs** %9, align 8
  %120 = getelementptr inbounds %struct.ext2fs, %struct.ext2fs* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @E2FS_ISCLEAN, align 4
  %123 = and i32 %121, %122
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %118
  %126 = load %struct.ext2fs*, %struct.ext2fs** %9, align 8
  %127 = getelementptr inbounds %struct.ext2fs, %struct.ext2fs* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @E2FS_ERRORS, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %148

132:                                              ; preds = %125, %118
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %132
  %136 = load %struct.mount*, %struct.mount** %5, align 8
  %137 = getelementptr inbounds %struct.mount, %struct.mount* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @MNT_FORCE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %135, %132
  %143 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %147

144:                                              ; preds = %135
  %145 = call i32 @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  %146 = load i32, i32* @EPERM, align 4
  store i32 %146, i32* %14, align 4
  br label %429

147:                                              ; preds = %142
  br label %148

148:                                              ; preds = %147, %125
  %149 = load i32, i32* @M_EXT2MNT, align 4
  %150 = load i32, i32* @M_WAITOK, align 4
  %151 = load i32, i32* @M_ZERO, align 4
  %152 = or i32 %150, %151
  %153 = call i8* @malloc(i32 152, i32 %149, i32 %152)
  %154 = bitcast i8* %153 to %struct.ext2mount*
  store %struct.ext2mount* %154, %struct.ext2mount** %6, align 8
  %155 = load i32, i32* @M_EXT2MNT, align 4
  %156 = load i32, i32* @M_WAITOK, align 4
  %157 = load i32, i32* @M_ZERO, align 4
  %158 = or i32 %156, %157
  %159 = call i8* @malloc(i32 152, i32 %155, i32 %158)
  %160 = bitcast i8* %159 to %struct.ext2mount*
  %161 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %162 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %161, i32 0, i32 7
  store %struct.ext2mount* %160, %struct.ext2mount** %162, align 8
  %163 = load i32, i32* @M_EXT2MNT, align 4
  %164 = load i32, i32* @M_WAITOK, align 4
  %165 = call i8* @malloc(i32 4, i32 %163, i32 %164)
  %166 = bitcast i8* %165 to %struct.ext2mount*
  %167 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %168 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %167, i32 0, i32 7
  %169 = load %struct.ext2mount*, %struct.ext2mount** %168, align 8
  %170 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %169, i32 0, i32 8
  store %struct.ext2mount* %166, %struct.ext2mount** %170, align 8
  %171 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %172 = bitcast %struct.ext2mount* %171 to %struct.m_ext2fs*
  %173 = call i32 @EXT2_MTX(%struct.m_ext2fs* %172)
  %174 = load i32, i32* @MTX_DEF, align 4
  %175 = call i32 @mtx_init(i32 %173, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %174)
  %176 = load %struct.ext2fs*, %struct.ext2fs** %9, align 8
  %177 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %178 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %177, i32 0, i32 7
  %179 = load %struct.ext2mount*, %struct.ext2mount** %178, align 8
  %180 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %179, i32 0, i32 8
  %181 = load %struct.ext2mount*, %struct.ext2mount** %180, align 8
  %182 = bitcast %struct.ext2mount* %181 to %struct.m_ext2fs*
  %183 = call i32 @bcopy(%struct.ext2fs* %176, %struct.m_ext2fs* %182, i32 4)
  %184 = load %struct.vnode*, %struct.vnode** %4, align 8
  %185 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %186 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %185, i32 0, i32 7
  %187 = load %struct.ext2mount*, %struct.ext2mount** %186, align 8
  %188 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %187, i32 0, i32 8
  %189 = load %struct.ext2mount*, %struct.ext2mount** %188, align 8
  %190 = bitcast %struct.ext2mount* %189 to %struct.m_ext2fs*
  %191 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %192 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %191, i32 0, i32 7
  %193 = load %struct.ext2mount*, %struct.ext2mount** %192, align 8
  %194 = bitcast %struct.ext2mount* %193 to %struct.m_ext2fs*
  %195 = call i32 @ext2_compute_sb_data(%struct.vnode* %184, %struct.m_ext2fs* %190, %struct.m_ext2fs* %194)
  store i32 %195, i32* %14, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %148
  br label %429

198:                                              ; preds = %148
  %199 = load i32, i32* @MAXPHYS, align 4
  %200 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %201 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %200, i32 0, i32 7
  %202 = load %struct.ext2mount*, %struct.ext2mount** %201, align 8
  %203 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = sdiv i32 %199, %204
  %206 = call i32 @MAX(i32 1, i32 %205)
  store i32 %206, i32* %19, align 4
  %207 = load i32, i32* %19, align 4
  %208 = load i32, i32* @EXT2_MAXCONTIG, align 4
  %209 = call i32 @MIN(i32 %207, i32 %208)
  %210 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %211 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %210, i32 0, i32 7
  %212 = load %struct.ext2mount*, %struct.ext2mount** %211, align 8
  %213 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %212, i32 0, i32 1
  store i32 %209, i32* %213, align 4
  %214 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %215 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %214, i32 0, i32 7
  %216 = load %struct.ext2mount*, %struct.ext2mount** %215, align 8
  %217 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = icmp sgt i32 %218, 0
  br i1 %219, label %220, label %305

220:                                              ; preds = %198
  %221 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %222 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %221, i32 0, i32 7
  %223 = load %struct.ext2mount*, %struct.ext2mount** %222, align 8
  %224 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = sext i32 %225 to i64
  %227 = mul i64 %226, 4
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %17, align 4
  %229 = load i32, i32* %17, align 4
  %230 = load i32, i32* @M_EXT2MNT, align 4
  %231 = load i32, i32* @M_WAITOK, align 4
  %232 = call i8* @malloc(i32 %229, i32 %230, i32 %231)
  %233 = bitcast i8* %232 to i32*
  %234 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %235 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %234, i32 0, i32 7
  %236 = load %struct.ext2mount*, %struct.ext2mount** %235, align 8
  %237 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %236, i32 0, i32 21
  store i32* %233, i32** %237, align 8
  %238 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %239 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %238, i32 0, i32 7
  %240 = load %struct.ext2mount*, %struct.ext2mount** %239, align 8
  %241 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = sext i32 %242 to i64
  %244 = mul i64 %243, 16
  %245 = trunc i64 %244 to i32
  store i32 %245, i32* %17, align 4
  %246 = load i32, i32* %17, align 4
  %247 = load i32, i32* @M_EXT2MNT, align 4
  %248 = load i32, i32* @M_WAITOK, align 4
  %249 = call i8* @malloc(i32 %246, i32 %247, i32 %248)
  %250 = bitcast i8* %249 to %struct.csum*
  %251 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %252 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %251, i32 0, i32 7
  %253 = load %struct.ext2mount*, %struct.ext2mount** %252, align 8
  %254 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %253, i32 0, i32 20
  store %struct.csum* %250, %struct.csum** %254, align 8
  %255 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %256 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %255, i32 0, i32 7
  %257 = load %struct.ext2mount*, %struct.ext2mount** %256, align 8
  %258 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %257, i32 0, i32 21
  %259 = load i32*, i32** %258, align 8
  store i32* %259, i32** %18, align 8
  %260 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %261 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %260, i32 0, i32 7
  %262 = load %struct.ext2mount*, %struct.ext2mount** %261, align 8
  %263 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %262, i32 0, i32 20
  %264 = load %struct.csum*, %struct.csum** %263, align 8
  store %struct.csum* %264, %struct.csum** %13, align 8
  store i32 0, i32* %16, align 4
  br label %265

265:                                              ; preds = %299, %220
  %266 = load i32, i32* %16, align 4
  %267 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %268 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %267, i32 0, i32 7
  %269 = load %struct.ext2mount*, %struct.ext2mount** %268, align 8
  %270 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = icmp slt i32 %266, %271
  br i1 %272, label %273, label %304

273:                                              ; preds = %265
  %274 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %275 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %274, i32 0, i32 7
  %276 = load %struct.ext2mount*, %struct.ext2mount** %275, align 8
  %277 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load i32*, i32** %18, align 8
  %280 = getelementptr inbounds i32, i32* %279, i32 1
  store i32* %280, i32** %18, align 8
  store i32 %278, i32* %279, align 4
  %281 = load %struct.csum*, %struct.csum** %13, align 8
  %282 = getelementptr inbounds %struct.csum, %struct.csum* %281, i32 0, i32 1
  store i64 0, i64* %282, align 8
  %283 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %284 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %283, i32 0, i32 7
  %285 = load %struct.ext2mount*, %struct.ext2mount** %284, align 8
  %286 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = add nsw i32 %287, 1
  %289 = sext i32 %288 to i64
  %290 = mul i64 %289, 4
  %291 = trunc i64 %290 to i32
  %292 = load i32, i32* @M_EXT2MNT, align 4
  %293 = load i32, i32* @M_WAITOK, align 4
  %294 = load i32, i32* @M_ZERO, align 4
  %295 = or i32 %293, %294
  %296 = call i8* @malloc(i32 %291, i32 %292, i32 %295)
  %297 = load %struct.csum*, %struct.csum** %13, align 8
  %298 = getelementptr inbounds %struct.csum, %struct.csum* %297, i32 0, i32 0
  store i8* %296, i8** %298, align 8
  br label %299

299:                                              ; preds = %273
  %300 = load i32, i32* %16, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %16, align 4
  %302 = load %struct.csum*, %struct.csum** %13, align 8
  %303 = getelementptr inbounds %struct.csum, %struct.csum* %302, i32 1
  store %struct.csum* %303, %struct.csum** %13, align 8
  br label %265

304:                                              ; preds = %265
  br label %305

305:                                              ; preds = %304, %198
  %306 = load %struct.buf*, %struct.buf** %7, align 8
  %307 = call i32 @brelse(%struct.buf* %306)
  store %struct.buf* null, %struct.buf** %7, align 8
  %308 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %309 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %308, i32 0, i32 7
  %310 = load %struct.ext2mount*, %struct.ext2mount** %309, align 8
  %311 = bitcast %struct.ext2mount* %310 to %struct.m_ext2fs*
  store %struct.m_ext2fs* %311, %struct.m_ext2fs** %8, align 8
  %312 = load i32, i32* %15, align 4
  %313 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %314 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %313, i32 0, i32 3
  store i32 %312, i32* %314, align 4
  %315 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %316 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %315, i32 0, i32 8
  %317 = load %struct.m_ext2fs*, %struct.m_ext2fs** %316, align 8
  %318 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %317, i32 0, i32 5
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @E2FS_ISCLEAN, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  %323 = zext i1 %322 to i64
  %324 = select i1 %322, i32 1, i32 0
  %325 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %326 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %325, i32 0, i32 4
  store i32 %324, i32* %326, align 8
  %327 = load i32, i32* %15, align 4
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %340

329:                                              ; preds = %305
  %330 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %331 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %330, i32 0, i32 6
  store i32 1, i32* %331, align 8
  %332 = load i32, i32* @E2FS_ISCLEAN, align 4
  %333 = xor i32 %332, -1
  %334 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %335 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %334, i32 0, i32 8
  %336 = load %struct.m_ext2fs*, %struct.m_ext2fs** %335, align 8
  %337 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %336, i32 0, i32 5
  %338 = load i32, i32* %337, align 4
  %339 = and i32 %338, %333
  store i32 %339, i32* %337, align 4
  br label %340

340:                                              ; preds = %329, %305
  %341 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %342 = bitcast %struct.ext2mount* %341 to %struct.m_ext2fs*
  %343 = load %struct.mount*, %struct.mount** %5, align 8
  %344 = getelementptr inbounds %struct.mount, %struct.mount* %343, i32 0, i32 3
  store %struct.m_ext2fs* %342, %struct.m_ext2fs** %344, align 8
  %345 = load %struct.cdev*, %struct.cdev** %10, align 8
  %346 = call i32 @dev2udev(%struct.cdev* %345)
  %347 = load %struct.mount*, %struct.mount** %5, align 8
  %348 = getelementptr inbounds %struct.mount, %struct.mount* %347, i32 0, i32 6
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %349, i32 0, i32 0
  %351 = load i32*, i32** %350, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 0
  store i32 %346, i32* %352, align 4
  %353 = load %struct.mount*, %struct.mount** %5, align 8
  %354 = getelementptr inbounds %struct.mount, %struct.mount* %353, i32 0, i32 5
  %355 = load %struct.TYPE_7__*, %struct.TYPE_7__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.mount*, %struct.mount** %5, align 8
  %359 = getelementptr inbounds %struct.mount, %struct.mount* %358, i32 0, i32 6
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %360, i32 0, i32 0
  %362 = load i32*, i32** %361, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 1
  store i32 %357, i32* %363, align 4
  %364 = load i32, i32* @EXT2_MAXSYMLINKLEN, align 4
  %365 = load %struct.mount*, %struct.mount** %5, align 8
  %366 = getelementptr inbounds %struct.mount, %struct.mount* %365, i32 0, i32 4
  store i32 %364, i32* %366, align 8
  %367 = load %struct.mount*, %struct.mount** %5, align 8
  %368 = call i32 @MNT_ILOCK(%struct.mount* %367)
  %369 = load i32, i32* @MNT_LOCAL, align 4
  %370 = load %struct.mount*, %struct.mount** %5, align 8
  %371 = getelementptr inbounds %struct.mount, %struct.mount* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = or i32 %372, %369
  store i32 %373, i32* %371, align 4
  %374 = load %struct.mount*, %struct.mount** %5, align 8
  %375 = call i32 @MNT_IUNLOCK(%struct.mount* %374)
  %376 = load %struct.mount*, %struct.mount** %5, align 8
  %377 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %378 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %377, i32 0, i32 19
  store %struct.mount* %376, %struct.mount** %378, align 8
  %379 = load %struct.cdev*, %struct.cdev** %10, align 8
  %380 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %381 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %380, i32 0, i32 18
  store %struct.cdev* %379, %struct.cdev** %381, align 8
  %382 = load %struct.vnode*, %struct.vnode** %4, align 8
  %383 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %384 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %383, i32 0, i32 17
  store %struct.vnode* %382, %struct.vnode** %384, align 8
  %385 = load %struct.vnode*, %struct.vnode** %4, align 8
  %386 = getelementptr inbounds %struct.vnode, %struct.vnode* %385, i32 0, i32 0
  %387 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %388 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %387, i32 0, i32 16
  store %struct.bufobj* %386, %struct.bufobj** %388, align 8
  %389 = load %struct.g_consumer*, %struct.g_consumer** %11, align 8
  %390 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %391 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %390, i32 0, i32 15
  store %struct.g_consumer* %389, %struct.g_consumer** %391, align 8
  %392 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %393 = call i32 @EXT2_ADDR_PER_BLOCK(%struct.m_ext2fs* %392)
  %394 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %395 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %394, i32 0, i32 14
  store i32 %393, i32* %395, align 8
  %396 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %397 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %396, i32 0, i32 8
  %398 = load %struct.m_ext2fs*, %struct.m_ext2fs** %397, align 8
  %399 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %398, i32 0, i32 12
  %400 = load i64, i64* %399, align 8
  %401 = add nsw i64 %400, 1
  %402 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %403 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %402, i32 0, i32 13
  store i64 %401, i64* %403, align 8
  %404 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %405 = call i32 @EXT2_FRAGS_PER_BLOCK(%struct.m_ext2fs* %404)
  %406 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %407 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %406, i32 0, i32 11
  store i32 %405, i32* %407, align 8
  %408 = load i32, i32* %15, align 4
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %410, label %415

410:                                              ; preds = %340
  %411 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %412 = bitcast %struct.ext2mount* %411 to %struct.m_ext2fs*
  %413 = load i32, i32* @MNT_WAIT, align 4
  %414 = call i32 @ext2_sbupdate(%struct.m_ext2fs* %412, i32 %413)
  br label %415

415:                                              ; preds = %410, %340
  %416 = load %struct.mount*, %struct.mount** %5, align 8
  %417 = call i32 @MNT_ILOCK(%struct.mount* %416)
  %418 = load i32, i32* @MNTK_LOOKUP_SHARED, align 4
  %419 = load i32, i32* @MNTK_EXTENDED_SHARED, align 4
  %420 = or i32 %418, %419
  %421 = load i32, i32* @MNTK_USES_BCACHE, align 4
  %422 = or i32 %420, %421
  %423 = load %struct.mount*, %struct.mount** %5, align 8
  %424 = getelementptr inbounds %struct.mount, %struct.mount* %423, i32 0, i32 2
  %425 = load i32, i32* %424, align 8
  %426 = or i32 %425, %422
  store i32 %426, i32* %424, align 8
  %427 = load %struct.mount*, %struct.mount** %5, align 8
  %428 = call i32 @MNT_IUNLOCK(%struct.mount* %427)
  store i32 0, i32* %3, align 4
  br label %489

429:                                              ; preds = %197, %144, %116, %105
  %430 = load %struct.buf*, %struct.buf** %7, align 8
  %431 = icmp ne %struct.buf* %430, null
  br i1 %431, label %432, label %435

432:                                              ; preds = %429
  %433 = load %struct.buf*, %struct.buf** %7, align 8
  %434 = call i32 @brelse(%struct.buf* %433)
  br label %435

435:                                              ; preds = %432, %429
  %436 = load %struct.g_consumer*, %struct.g_consumer** %11, align 8
  %437 = icmp ne %struct.g_consumer* %436, null
  br i1 %437, label %438, label %443

438:                                              ; preds = %435
  %439 = call i32 (...) @g_topology_lock()
  %440 = load %struct.g_consumer*, %struct.g_consumer** %11, align 8
  %441 = call i32 @g_vfs_close(%struct.g_consumer* %440)
  %442 = call i32 (...) @g_topology_unlock()
  br label %443

443:                                              ; preds = %438, %435
  %444 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %445 = icmp ne %struct.ext2mount* %444, null
  br i1 %445, label %446, label %487

446:                                              ; preds = %443
  %447 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %448 = bitcast %struct.ext2mount* %447 to %struct.m_ext2fs*
  %449 = call i32 @EXT2_MTX(%struct.m_ext2fs* %448)
  %450 = call i32 @mtx_destroy(i32 %449)
  %451 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %452 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %451, i32 0, i32 7
  %453 = load %struct.ext2mount*, %struct.ext2mount** %452, align 8
  %454 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %453, i32 0, i32 10
  %455 = load %struct.ext2mount*, %struct.ext2mount** %454, align 8
  %456 = bitcast %struct.ext2mount* %455 to %struct.m_ext2fs*
  %457 = load i32, i32* @M_EXT2MNT, align 4
  %458 = call i32 @free(%struct.m_ext2fs* %456, i32 %457)
  %459 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %460 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %459, i32 0, i32 7
  %461 = load %struct.ext2mount*, %struct.ext2mount** %460, align 8
  %462 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %461, i32 0, i32 9
  %463 = load %struct.ext2mount*, %struct.ext2mount** %462, align 8
  %464 = bitcast %struct.ext2mount* %463 to %struct.m_ext2fs*
  %465 = load i32, i32* @M_EXT2MNT, align 4
  %466 = call i32 @free(%struct.m_ext2fs* %464, i32 %465)
  %467 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %468 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %467, i32 0, i32 7
  %469 = load %struct.ext2mount*, %struct.ext2mount** %468, align 8
  %470 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %469, i32 0, i32 8
  %471 = load %struct.ext2mount*, %struct.ext2mount** %470, align 8
  %472 = bitcast %struct.ext2mount* %471 to %struct.m_ext2fs*
  %473 = load i32, i32* @M_EXT2MNT, align 4
  %474 = call i32 @free(%struct.m_ext2fs* %472, i32 %473)
  %475 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %476 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %475, i32 0, i32 7
  %477 = load %struct.ext2mount*, %struct.ext2mount** %476, align 8
  %478 = bitcast %struct.ext2mount* %477 to %struct.m_ext2fs*
  %479 = load i32, i32* @M_EXT2MNT, align 4
  %480 = call i32 @free(%struct.m_ext2fs* %478, i32 %479)
  %481 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %482 = bitcast %struct.ext2mount* %481 to %struct.m_ext2fs*
  %483 = load i32, i32* @M_EXT2MNT, align 4
  %484 = call i32 @free(%struct.m_ext2fs* %482, i32 %483)
  %485 = load %struct.mount*, %struct.mount** %5, align 8
  %486 = getelementptr inbounds %struct.mount, %struct.mount* %485, i32 0, i32 3
  store %struct.m_ext2fs* null, %struct.m_ext2fs** %486, align 8
  br label %487

487:                                              ; preds = %446, %443
  %488 = load i32, i32* %14, align 4
  store i32 %488, i32* %3, align 4
  br label %489

489:                                              ; preds = %487, %415, %58, %39
  %490 = load i32, i32* %3, align 4
  ret i32 %490
}

declare dso_local i32 @vfs_flagopt(i32, i8*, i32*, i32) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @g_vfs_open(%struct.vnode*, %struct.g_consumer**, i8*, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @g_vfs_close(%struct.g_consumer*) #1

declare dso_local i32 @bread(%struct.vnode*, i32, i32, i32, %struct.buf**) #1

declare dso_local i64 @ext2_check_sb_compat(%struct.ext2fs*, %struct.cdev*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32, i8*, i8*, i32) #1

declare dso_local i32 @EXT2_MTX(%struct.m_ext2fs*) #1

declare dso_local i32 @bcopy(%struct.ext2fs*, %struct.m_ext2fs*, i32) #1

declare dso_local i32 @ext2_compute_sb_data(%struct.vnode*, %struct.m_ext2fs*, %struct.m_ext2fs*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @dev2udev(%struct.cdev*) #1

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

declare dso_local i32 @EXT2_ADDR_PER_BLOCK(%struct.m_ext2fs*) #1

declare dso_local i32 @EXT2_FRAGS_PER_BLOCK(%struct.m_ext2fs*) #1

declare dso_local i32 @ext2_sbupdate(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @mtx_destroy(i32) #1

declare dso_local i32 @free(%struct.m_ext2fs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
