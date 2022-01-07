; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vnops.c_msdosfs_getattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vnops.c_msdosfs_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_getattr_args = type { %struct.TYPE_4__*, %struct.vattr* }
%struct.TYPE_4__ = type { i64 }
%struct.vattr = type { i32, i32, i32, i32, i32, i64, i32, i32, i64, i32, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.denode = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.msdosfsmount* }
%struct.msdosfsmount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timespec = type { i32 }

@ATTR_DIRECTORY = common dso_local global i32 0, align 4
@MSDOSFSROOT = common dso_local global i64 0, align 8
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@ATTR_READONLY = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@NODEV = common dso_local global i32 0, align 4
@MSDOSFSMNT_LONGNAME = common dso_local global i32 0, align 4
@ATTR_ARCHIVE = common dso_local global i32 0, align 4
@UF_ARCHIVE = common dso_local global i32 0, align 4
@ATTR_HIDDEN = common dso_local global i32 0, align 4
@UF_HIDDEN = common dso_local global i32 0, align 4
@UF_READONLY = common dso_local global i32 0, align 4
@ATTR_SYSTEM = common dso_local global i32 0, align 4
@UF_SYSTEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_getattr_args*)* @msdosfs_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdosfs_getattr(%struct.vop_getattr_args* %0) #0 {
  %2 = alloca %struct.vop_getattr_args*, align 8
  %3 = alloca %struct.denode*, align 8
  %4 = alloca %struct.msdosfsmount*, align 8
  %5 = alloca %struct.vattr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timespec, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vop_getattr_args* %0, %struct.vop_getattr_args** %2, align 8
  %10 = load %struct.vop_getattr_args*, %struct.vop_getattr_args** %2, align 8
  %11 = getelementptr inbounds %struct.vop_getattr_args, %struct.vop_getattr_args* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = call %struct.denode* @VTODE(%struct.TYPE_4__* %12)
  store %struct.denode* %13, %struct.denode** %3, align 8
  %14 = load %struct.denode*, %struct.denode** %3, align 8
  %15 = getelementptr inbounds %struct.denode, %struct.denode* %14, i32 0, i32 12
  %16 = load %struct.msdosfsmount*, %struct.msdosfsmount** %15, align 8
  store %struct.msdosfsmount* %16, %struct.msdosfsmount** %4, align 8
  %17 = load %struct.vop_getattr_args*, %struct.vop_getattr_args** %2, align 8
  %18 = getelementptr inbounds %struct.vop_getattr_args, %struct.vop_getattr_args* %17, i32 0, i32 1
  %19 = load %struct.vattr*, %struct.vattr** %18, align 8
  store %struct.vattr* %19, %struct.vattr** %5, align 8
  %20 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %21 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = udiv i64 %23, 4
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = call i32 @vfs_timestamp(%struct.timespec* %7)
  %27 = load %struct.denode*, %struct.denode** %3, align 8
  %28 = call i32 @DETIMES(%struct.denode* %27, %struct.timespec* %7, %struct.timespec* %7, %struct.timespec* %7)
  %29 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %30 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev2udev(i32 %31)
  %33 = load %struct.vattr*, %struct.vattr** %5, align 8
  %34 = getelementptr inbounds %struct.vattr, %struct.vattr* %33, i32 0, i32 17
  store i32 %32, i32* %34, align 4
  %35 = load %struct.denode*, %struct.denode** %3, align 8
  %36 = getelementptr inbounds %struct.denode, %struct.denode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @ATTR_DIRECTORY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %1
  %42 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %43 = load %struct.denode*, %struct.denode** %3, align 8
  %44 = getelementptr inbounds %struct.denode, %struct.denode* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @cntobn(%struct.msdosfsmount* %42, i64 %45)
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* %8, align 4
  %49 = mul nsw i32 %47, %48
  store i32 %49, i32* %9, align 4
  %50 = load %struct.denode*, %struct.denode** %3, align 8
  %51 = getelementptr inbounds %struct.denode, %struct.denode* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MSDOSFSROOT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  store i32 1, i32* %9, align 4
  br label %56

56:                                               ; preds = %55, %41
  br label %88

57:                                               ; preds = %1
  %58 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %59 = load %struct.denode*, %struct.denode** %3, align 8
  %60 = getelementptr inbounds %struct.denode, %struct.denode* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @cntobn(%struct.msdosfsmount* %58, i64 %61)
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* %8, align 4
  %65 = mul nsw i32 %63, %64
  store i32 %65, i32* %9, align 4
  %66 = load %struct.denode*, %struct.denode** %3, align 8
  %67 = getelementptr inbounds %struct.denode, %struct.denode* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @MSDOSFSROOT, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %57
  %72 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %73 = call i64 @roottobn(%struct.msdosfsmount* %72, i32 0)
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* %8, align 4
  %76 = mul nsw i32 %74, %75
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %71, %57
  %78 = load %struct.denode*, %struct.denode** %3, align 8
  %79 = getelementptr inbounds %struct.denode, %struct.denode* %78, i32 0, i32 11
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = sext i32 %81 to i64
  %83 = udiv i64 %82, 4
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %77, %56
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.vattr*, %struct.vattr** %5, align 8
  %91 = getelementptr inbounds %struct.vattr, %struct.vattr* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @S_IRWXU, align 4
  %93 = load i32, i32* @S_IRWXG, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @S_IRWXO, align 4
  %96 = or i32 %94, %95
  store i32 %96, i32* %6, align 4
  %97 = load %struct.denode*, %struct.denode** %3, align 8
  %98 = getelementptr inbounds %struct.denode, %struct.denode* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @ATTR_READONLY, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %88
  %104 = load i32, i32* @S_IWUSR, align 4
  %105 = load i32, i32* @S_IWGRP, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @S_IWOTH, align 4
  %108 = or i32 %106, %107
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %6, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %103, %88
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.vop_getattr_args*, %struct.vop_getattr_args** %2, align 8
  %115 = getelementptr inbounds %struct.vop_getattr_args, %struct.vop_getattr_args* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @VDIR, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %112
  %122 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %123 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  br label %129

125:                                              ; preds = %112
  %126 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %127 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  br label %129

129:                                              ; preds = %125, %121
  %130 = phi i32 [ %124, %121 ], [ %128, %125 ]
  %131 = and i32 %113, %130
  %132 = load %struct.vattr*, %struct.vattr** %5, align 8
  %133 = getelementptr inbounds %struct.vattr, %struct.vattr* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %135 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.vattr*, %struct.vattr** %5, align 8
  %138 = getelementptr inbounds %struct.vattr, %struct.vattr* %137, i32 0, i32 16
  store i32 %136, i32* %138, align 8
  %139 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %140 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.vattr*, %struct.vattr** %5, align 8
  %143 = getelementptr inbounds %struct.vattr, %struct.vattr* %142, i32 0, i32 15
  store i32 %141, i32* %143, align 4
  %144 = load %struct.vattr*, %struct.vattr** %5, align 8
  %145 = getelementptr inbounds %struct.vattr, %struct.vattr* %144, i32 0, i32 2
  store i32 1, i32* %145, align 8
  %146 = load i32, i32* @NODEV, align 4
  %147 = load %struct.vattr*, %struct.vattr** %5, align 8
  %148 = getelementptr inbounds %struct.vattr, %struct.vattr* %147, i32 0, i32 14
  store i32 %146, i32* %148, align 8
  %149 = load %struct.denode*, %struct.denode** %3, align 8
  %150 = getelementptr inbounds %struct.denode, %struct.denode* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.vattr*, %struct.vattr** %5, align 8
  %153 = getelementptr inbounds %struct.vattr, %struct.vattr* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 4
  %154 = load %struct.denode*, %struct.denode** %3, align 8
  %155 = getelementptr inbounds %struct.denode, %struct.denode* %154, i32 0, i32 10
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.denode*, %struct.denode** %3, align 8
  %158 = getelementptr inbounds %struct.denode, %struct.denode* %157, i32 0, i32 9
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.vattr*, %struct.vattr** %5, align 8
  %161 = getelementptr inbounds %struct.vattr, %struct.vattr* %160, i32 0, i32 11
  %162 = call i32 @fattime2timespec(i32 %156, i32 %159, i32 0, i32 0, %struct.TYPE_3__* %161)
  %163 = load %struct.vattr*, %struct.vattr** %5, align 8
  %164 = getelementptr inbounds %struct.vattr, %struct.vattr* %163, i32 0, i32 13
  %165 = load %struct.vattr*, %struct.vattr** %5, align 8
  %166 = getelementptr inbounds %struct.vattr, %struct.vattr* %165, i32 0, i32 11
  %167 = bitcast %struct.TYPE_3__* %164 to i8*
  %168 = bitcast %struct.TYPE_3__* %166 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %167, i8* align 8 %168, i64 16, i1 false)
  %169 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %170 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @MSDOSFSMNT_LONGNAME, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %194

175:                                              ; preds = %129
  %176 = load %struct.denode*, %struct.denode** %3, align 8
  %177 = getelementptr inbounds %struct.denode, %struct.denode* %176, i32 0, i32 8
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.vattr*, %struct.vattr** %5, align 8
  %180 = getelementptr inbounds %struct.vattr, %struct.vattr* %179, i32 0, i32 12
  %181 = call i32 @fattime2timespec(i32 %178, i32 0, i32 0, i32 0, %struct.TYPE_3__* %180)
  %182 = load %struct.denode*, %struct.denode** %3, align 8
  %183 = getelementptr inbounds %struct.denode, %struct.denode* %182, i32 0, i32 7
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.denode*, %struct.denode** %3, align 8
  %186 = getelementptr inbounds %struct.denode, %struct.denode* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.denode*, %struct.denode** %3, align 8
  %189 = getelementptr inbounds %struct.denode, %struct.denode* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.vattr*, %struct.vattr** %5, align 8
  %192 = getelementptr inbounds %struct.vattr, %struct.vattr* %191, i32 0, i32 10
  %193 = call i32 @fattime2timespec(i32 %184, i32 %187, i32 %190, i32 0, %struct.TYPE_3__* %192)
  br label %207

194:                                              ; preds = %129
  %195 = load %struct.vattr*, %struct.vattr** %5, align 8
  %196 = getelementptr inbounds %struct.vattr, %struct.vattr* %195, i32 0, i32 12
  %197 = load %struct.vattr*, %struct.vattr** %5, align 8
  %198 = getelementptr inbounds %struct.vattr, %struct.vattr* %197, i32 0, i32 11
  %199 = bitcast %struct.TYPE_3__* %196 to i8*
  %200 = bitcast %struct.TYPE_3__* %198 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %199, i8* align 8 %200, i64 16, i1 false)
  %201 = load %struct.vattr*, %struct.vattr** %5, align 8
  %202 = getelementptr inbounds %struct.vattr, %struct.vattr* %201, i32 0, i32 10
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  store i32 -1, i32* %203, align 8
  %204 = load %struct.vattr*, %struct.vattr** %5, align 8
  %205 = getelementptr inbounds %struct.vattr, %struct.vattr* %204, i32 0, i32 10
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 1
  store i64 0, i64* %206, align 8
  br label %207

207:                                              ; preds = %194, %175
  %208 = load %struct.vattr*, %struct.vattr** %5, align 8
  %209 = getelementptr inbounds %struct.vattr, %struct.vattr* %208, i32 0, i32 9
  store i32 0, i32* %209, align 8
  %210 = load %struct.denode*, %struct.denode** %3, align 8
  %211 = getelementptr inbounds %struct.denode, %struct.denode* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @ATTR_ARCHIVE, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %207
  %217 = load i32, i32* @UF_ARCHIVE, align 4
  %218 = load %struct.vattr*, %struct.vattr** %5, align 8
  %219 = getelementptr inbounds %struct.vattr, %struct.vattr* %218, i32 0, i32 9
  %220 = load i32, i32* %219, align 8
  %221 = or i32 %220, %217
  store i32 %221, i32* %219, align 8
  br label %222

222:                                              ; preds = %216, %207
  %223 = load %struct.denode*, %struct.denode** %3, align 8
  %224 = getelementptr inbounds %struct.denode, %struct.denode* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @ATTR_HIDDEN, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %222
  %230 = load i32, i32* @UF_HIDDEN, align 4
  %231 = load %struct.vattr*, %struct.vattr** %5, align 8
  %232 = getelementptr inbounds %struct.vattr, %struct.vattr* %231, i32 0, i32 9
  %233 = load i32, i32* %232, align 8
  %234 = or i32 %233, %230
  store i32 %234, i32* %232, align 8
  br label %235

235:                                              ; preds = %229, %222
  %236 = load %struct.denode*, %struct.denode** %3, align 8
  %237 = getelementptr inbounds %struct.denode, %struct.denode* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @ATTR_READONLY, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %235
  %243 = load i32, i32* @UF_READONLY, align 4
  %244 = load %struct.vattr*, %struct.vattr** %5, align 8
  %245 = getelementptr inbounds %struct.vattr, %struct.vattr* %244, i32 0, i32 9
  %246 = load i32, i32* %245, align 8
  %247 = or i32 %246, %243
  store i32 %247, i32* %245, align 8
  br label %248

248:                                              ; preds = %242, %235
  %249 = load %struct.denode*, %struct.denode** %3, align 8
  %250 = getelementptr inbounds %struct.denode, %struct.denode* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @ATTR_SYSTEM, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %248
  %256 = load i32, i32* @UF_SYSTEM, align 4
  %257 = load %struct.vattr*, %struct.vattr** %5, align 8
  %258 = getelementptr inbounds %struct.vattr, %struct.vattr* %257, i32 0, i32 9
  %259 = load i32, i32* %258, align 8
  %260 = or i32 %259, %256
  store i32 %260, i32* %258, align 8
  br label %261

261:                                              ; preds = %255, %248
  %262 = load %struct.vattr*, %struct.vattr** %5, align 8
  %263 = getelementptr inbounds %struct.vattr, %struct.vattr* %262, i32 0, i32 8
  store i64 0, i64* %263, align 8
  %264 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %265 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.vattr*, %struct.vattr** %5, align 8
  %268 = getelementptr inbounds %struct.vattr, %struct.vattr* %267, i32 0, i32 7
  store i32 %266, i32* %268, align 4
  %269 = load %struct.denode*, %struct.denode** %3, align 8
  %270 = getelementptr inbounds %struct.denode, %struct.denode* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %273 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 4
  %275 = add nsw i32 %271, %274
  %276 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %277 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 4
  %279 = xor i32 %278, -1
  %280 = and i32 %275, %279
  %281 = load %struct.vattr*, %struct.vattr** %5, align 8
  %282 = getelementptr inbounds %struct.vattr, %struct.vattr* %281, i32 0, i32 4
  store i32 %280, i32* %282, align 8
  %283 = load %struct.vop_getattr_args*, %struct.vop_getattr_args** %2, align 8
  %284 = getelementptr inbounds %struct.vop_getattr_args, %struct.vop_getattr_args* %283, i32 0, i32 0
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.vattr*, %struct.vattr** %5, align 8
  %289 = getelementptr inbounds %struct.vattr, %struct.vattr* %288, i32 0, i32 5
  store i64 %287, i64* %289, align 8
  %290 = load %struct.denode*, %struct.denode** %3, align 8
  %291 = getelementptr inbounds %struct.denode, %struct.denode* %290, i32 0, i32 4
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.vattr*, %struct.vattr** %5, align 8
  %294 = getelementptr inbounds %struct.vattr, %struct.vattr* %293, i32 0, i32 6
  store i32 %292, i32* %294, align 8
  ret i32 0
}

declare dso_local %struct.denode* @VTODE(%struct.TYPE_4__*) #1

declare dso_local i32 @vfs_timestamp(%struct.timespec*) #1

declare dso_local i32 @DETIMES(%struct.denode*, %struct.timespec*, %struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @dev2udev(i32) #1

declare dso_local i64 @cntobn(%struct.msdosfsmount*, i64) #1

declare dso_local i64 @roottobn(%struct.msdosfsmount*, i32) #1

declare dso_local i32 @fattime2timespec(i32, i32, i32, i32, %struct.TYPE_3__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
