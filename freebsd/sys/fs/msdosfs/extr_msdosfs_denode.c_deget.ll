; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_denode.c_deget.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_denode.c_deget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdosfsmount = type { i64, i32, i64, %struct.mount* }
%struct.mount = type { i32 }
%struct.denode = type { i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32*, i64, i64, %struct.msdosfsmount*, i64, i64, %struct.vnode* }
%struct.vnode = type { i32, i32, %struct.denode*, i32 }
%struct.direntry = type { i32 }
%struct.buf = type { i32 }

@MSDOSFSROOT = common dso_local global i64 0, align 8
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@de_vncmpf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"wrong dirclust\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"wrong diroffset\00", align 1
@M_MSDOSFSNODE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"msdosfs\00", align 1
@msdosfs_vnodeops = common dso_local global i32 0, align 4
@MSDOSFSROOT_OFS = common dso_local global i64 0, align 8
@VV_ROOT = common dso_local global i32 0, align 4
@ATTR_DIRECTORY = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4
@DD_YEAR_SHIFT = common dso_local global i32 0, align 4
@DD_MONTH_SHIFT = common dso_local global i32 0, align 4
@DD_DAY_SHIFT = common dso_local global i32 0, align 4
@SLOT_DELETED = common dso_local global i32 0, align 4
@VDIR = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@VREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @deget(%struct.msdosfsmount* %0, i64 %1, i64 %2, %struct.denode** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.msdosfsmount*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.denode**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.mount*, align 8
  %13 = alloca %struct.direntry*, align 8
  %14 = alloca %struct.denode*, align 8
  %15 = alloca %struct.vnode*, align 8
  %16 = alloca %struct.vnode*, align 8
  %17 = alloca %struct.buf*, align 8
  %18 = alloca i64, align 8
  store %struct.msdosfsmount* %0, %struct.msdosfsmount** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.denode** %3, %struct.denode*** %9, align 8
  %19 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %20 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %19, i32 0, i32 3
  %21 = load %struct.mount*, %struct.mount** %20, align 8
  store %struct.mount* %21, %struct.mount** %12, align 8
  %22 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %23 = call i64 @FAT32(%struct.msdosfsmount* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %4
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @MSDOSFSROOT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %31 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %29, %25, %4
  %34 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %35 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = mul nsw i64 %36, %37
  %39 = load i64, i64* %8, align 8
  %40 = add nsw i64 %38, %39
  store i64 %40, i64* %11, align 8
  %41 = load %struct.mount*, %struct.mount** %12, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i32, i32* @LK_EXCLUSIVE, align 4
  %44 = load i32, i32* @curthread, align 4
  %45 = load i32, i32* @de_vncmpf, align 4
  %46 = call i32 @vfs_hash_get(%struct.mount* %41, i64 %42, i32 %43, i32 %44, %struct.vnode** %15, i32 %45, i64* %11)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %33
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %5, align 4
  br label %307

51:                                               ; preds = %33
  %52 = load %struct.vnode*, %struct.vnode** %15, align 8
  %53 = icmp ne %struct.vnode* %52, null
  br i1 %53, label %54, label %74

54:                                               ; preds = %51
  %55 = load %struct.vnode*, %struct.vnode** %15, align 8
  %56 = call %struct.denode* @VTODE(%struct.vnode* %55)
  %57 = load %struct.denode**, %struct.denode*** %9, align 8
  store %struct.denode* %56, %struct.denode** %57, align 8
  %58 = load %struct.denode**, %struct.denode*** %9, align 8
  %59 = load %struct.denode*, %struct.denode** %58, align 8
  %60 = getelementptr inbounds %struct.denode, %struct.denode* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @KASSERT(i32 %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.denode**, %struct.denode*** %9, align 8
  %67 = load %struct.denode*, %struct.denode** %66, align 8
  %68 = getelementptr inbounds %struct.denode, %struct.denode* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @KASSERT(i32 %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %307

74:                                               ; preds = %51
  %75 = load i32, i32* @M_MSDOSFSNODE, align 4
  %76 = load i32, i32* @M_WAITOK, align 4
  %77 = load i32, i32* @M_ZERO, align 4
  %78 = or i32 %76, %77
  %79 = call %struct.denode* @malloc(i32 120, i32 %75, i32 %78)
  store %struct.denode* %79, %struct.denode** %14, align 8
  %80 = load %struct.mount*, %struct.mount** %12, align 8
  %81 = call i32 @getnewvnode(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.mount* %80, i32* @msdosfs_vnodeops, %struct.vnode** %15)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %74
  %85 = load %struct.denode**, %struct.denode*** %9, align 8
  store %struct.denode* null, %struct.denode** %85, align 8
  %86 = load %struct.denode*, %struct.denode** %14, align 8
  %87 = load i32, i32* @M_MSDOSFSNODE, align 4
  %88 = call i32 @free(%struct.denode* %86, i32 %87)
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %5, align 4
  br label %307

90:                                               ; preds = %74
  %91 = load %struct.denode*, %struct.denode** %14, align 8
  %92 = load %struct.vnode*, %struct.vnode** %15, align 8
  %93 = getelementptr inbounds %struct.vnode, %struct.vnode* %92, i32 0, i32 2
  store %struct.denode* %91, %struct.denode** %93, align 8
  %94 = load %struct.vnode*, %struct.vnode** %15, align 8
  %95 = load %struct.denode*, %struct.denode** %14, align 8
  %96 = getelementptr inbounds %struct.denode, %struct.denode* %95, i32 0, i32 18
  store %struct.vnode* %94, %struct.vnode** %96, align 8
  %97 = load %struct.denode*, %struct.denode** %14, align 8
  %98 = getelementptr inbounds %struct.denode, %struct.denode* %97, i32 0, i32 17
  store i64 0, i64* %98, align 8
  %99 = load i64, i64* %7, align 8
  %100 = load %struct.denode*, %struct.denode** %14, align 8
  %101 = getelementptr inbounds %struct.denode, %struct.denode* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load %struct.denode*, %struct.denode** %14, align 8
  %104 = getelementptr inbounds %struct.denode, %struct.denode* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  %105 = load i64, i64* %11, align 8
  %106 = load %struct.denode*, %struct.denode** %14, align 8
  %107 = getelementptr inbounds %struct.denode, %struct.denode* %106, i32 0, i32 16
  store i64 %105, i64* %107, align 8
  %108 = load %struct.vnode*, %struct.vnode** %15, align 8
  %109 = getelementptr inbounds %struct.vnode, %struct.vnode* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @LK_EXCLUSIVE, align 4
  %112 = call i32 @lockmgr(i32 %110, i32 %111, i32* null)
  %113 = load %struct.denode*, %struct.denode** %14, align 8
  %114 = call i32 @fc_purge(%struct.denode* %113, i32 0)
  %115 = load %struct.vnode*, %struct.vnode** %15, align 8
  %116 = load %struct.mount*, %struct.mount** %12, align 8
  %117 = call i32 @insmntque(%struct.vnode* %115, %struct.mount* %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %90
  %121 = load %struct.denode*, %struct.denode** %14, align 8
  %122 = load i32, i32* @M_MSDOSFSNODE, align 4
  %123 = call i32 @free(%struct.denode* %121, i32 %122)
  %124 = load %struct.denode**, %struct.denode*** %9, align 8
  store %struct.denode* null, %struct.denode** %124, align 8
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %5, align 4
  br label %307

126:                                              ; preds = %90
  %127 = load %struct.vnode*, %struct.vnode** %15, align 8
  %128 = load i64, i64* %11, align 8
  %129 = load i32, i32* @LK_EXCLUSIVE, align 4
  %130 = load i32, i32* @curthread, align 4
  %131 = load i32, i32* @de_vncmpf, align 4
  %132 = call i32 @vfs_hash_insert(%struct.vnode* %127, i64 %128, i32 %129, i32 %130, %struct.vnode** %16, i32 %131, i64* %11)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %126
  %136 = load %struct.denode**, %struct.denode*** %9, align 8
  store %struct.denode* null, %struct.denode** %136, align 8
  %137 = load i32, i32* %10, align 4
  store i32 %137, i32* %5, align 4
  br label %307

138:                                              ; preds = %126
  %139 = load %struct.vnode*, %struct.vnode** %16, align 8
  %140 = icmp ne %struct.vnode* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load %struct.vnode*, %struct.vnode** %16, align 8
  %143 = getelementptr inbounds %struct.vnode, %struct.vnode* %142, i32 0, i32 2
  %144 = load %struct.denode*, %struct.denode** %143, align 8
  %145 = load %struct.denode**, %struct.denode*** %9, align 8
  store %struct.denode* %144, %struct.denode** %145, align 8
  store i32 0, i32* %5, align 4
  br label %307

146:                                              ; preds = %138
  %147 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %148 = load %struct.denode*, %struct.denode** %14, align 8
  %149 = getelementptr inbounds %struct.denode, %struct.denode* %148, i32 0, i32 15
  store %struct.msdosfsmount* %147, %struct.msdosfsmount** %149, align 8
  %150 = load %struct.denode*, %struct.denode** %14, align 8
  %151 = getelementptr inbounds %struct.denode, %struct.denode* %150, i32 0, i32 2
  store i32 1, i32* %151, align 8
  %152 = load i64, i64* %7, align 8
  %153 = load i64, i64* @MSDOSFSROOT, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %165, label %155

155:                                              ; preds = %146
  %156 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %157 = call i64 @FAT32(%struct.msdosfsmount* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %230

159:                                              ; preds = %155
  %160 = load i64, i64* %7, align 8
  %161 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %162 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %160, %163
  br i1 %164, label %165, label %230

165:                                              ; preds = %159, %146
  %166 = load i64, i64* %8, align 8
  %167 = load i64, i64* @MSDOSFSROOT_OFS, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %230

169:                                              ; preds = %165
  %170 = load i32, i32* @VV_ROOT, align 4
  %171 = load %struct.vnode*, %struct.vnode** %15, align 8
  %172 = getelementptr inbounds %struct.vnode, %struct.vnode* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 4
  %175 = load i32, i32* @ATTR_DIRECTORY, align 4
  %176 = load %struct.denode*, %struct.denode** %14, align 8
  %177 = getelementptr inbounds %struct.denode, %struct.denode* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 4
  %178 = load %struct.denode*, %struct.denode** %14, align 8
  %179 = getelementptr inbounds %struct.denode, %struct.denode* %178, i32 0, i32 14
  store i64 0, i64* %179, align 8
  %180 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %181 = call i64 @FAT32(%struct.msdosfsmount* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %169
  %184 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %185 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.denode*, %struct.denode** %14, align 8
  %188 = getelementptr inbounds %struct.denode, %struct.denode* %187, i32 0, i32 4
  store i64 %186, i64* %188, align 8
  br label %200

189:                                              ; preds = %169
  %190 = load i64, i64* @MSDOSFSROOT, align 8
  %191 = load %struct.denode*, %struct.denode** %14, align 8
  %192 = getelementptr inbounds %struct.denode, %struct.denode* %191, i32 0, i32 4
  store i64 %190, i64* %192, align 8
  %193 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %194 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @DEV_BSIZE, align 4
  %197 = mul nsw i32 %195, %196
  %198 = load %struct.denode*, %struct.denode** %14, align 8
  %199 = getelementptr inbounds %struct.denode, %struct.denode* %198, i32 0, i32 5
  store i32 %197, i32* %199, align 8
  br label %200

200:                                              ; preds = %189, %183
  %201 = load %struct.denode*, %struct.denode** %14, align 8
  %202 = getelementptr inbounds %struct.denode, %struct.denode* %201, i32 0, i32 13
  store i64 0, i64* %202, align 8
  %203 = load %struct.denode*, %struct.denode** %14, align 8
  %204 = getelementptr inbounds %struct.denode, %struct.denode* %203, i32 0, i32 6
  store i32 0, i32* %204, align 4
  %205 = load i32, i32* @DD_YEAR_SHIFT, align 4
  %206 = shl i32 0, %205
  %207 = load i32, i32* @DD_MONTH_SHIFT, align 4
  %208 = shl i32 1, %207
  %209 = or i32 %206, %208
  %210 = load i32, i32* @DD_DAY_SHIFT, align 4
  %211 = shl i32 1, %210
  %212 = or i32 %209, %211
  %213 = load %struct.denode*, %struct.denode** %14, align 8
  %214 = getelementptr inbounds %struct.denode, %struct.denode* %213, i32 0, i32 7
  store i32 %212, i32* %214, align 8
  %215 = load %struct.denode*, %struct.denode** %14, align 8
  %216 = getelementptr inbounds %struct.denode, %struct.denode* %215, i32 0, i32 7
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.denode*, %struct.denode** %14, align 8
  %219 = getelementptr inbounds %struct.denode, %struct.denode* %218, i32 0, i32 8
  store i32 %217, i32* %219, align 4
  %220 = load %struct.denode*, %struct.denode** %14, align 8
  %221 = getelementptr inbounds %struct.denode, %struct.denode* %220, i32 0, i32 6
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.denode*, %struct.denode** %14, align 8
  %224 = getelementptr inbounds %struct.denode, %struct.denode* %223, i32 0, i32 9
  store i32 %222, i32* %224, align 8
  %225 = load %struct.denode*, %struct.denode** %14, align 8
  %226 = getelementptr inbounds %struct.denode, %struct.denode* %225, i32 0, i32 7
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.denode*, %struct.denode** %14, align 8
  %229 = getelementptr inbounds %struct.denode, %struct.denode* %228, i32 0, i32 10
  store i32 %227, i32* %229, align 4
  br label %253

230:                                              ; preds = %165, %159, %155
  %231 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %232 = load i64, i64* %7, align 8
  %233 = load i64, i64* %8, align 8
  %234 = call i32 @readep(%struct.msdosfsmount* %231, i64 %232, i64 %233, %struct.buf** %17, %struct.direntry** %13)
  store i32 %234, i32* %10, align 4
  %235 = load i32, i32* %10, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %247

237:                                              ; preds = %230
  %238 = load i32, i32* @SLOT_DELETED, align 4
  %239 = load %struct.denode*, %struct.denode** %14, align 8
  %240 = getelementptr inbounds %struct.denode, %struct.denode* %239, i32 0, i32 12
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 0
  store i32 %238, i32* %242, align 4
  %243 = load %struct.vnode*, %struct.vnode** %15, align 8
  %244 = call i32 @vput(%struct.vnode* %243)
  %245 = load %struct.denode**, %struct.denode*** %9, align 8
  store %struct.denode* null, %struct.denode** %245, align 8
  %246 = load i32, i32* %10, align 4
  store i32 %246, i32* %5, align 4
  br label %307

247:                                              ; preds = %230
  %248 = load %struct.denode*, %struct.denode** %14, align 8
  %249 = load %struct.direntry*, %struct.direntry** %13, align 8
  %250 = call i32 @DE_INTERNALIZE(%struct.denode* %248, %struct.direntry* %249)
  %251 = load %struct.buf*, %struct.buf** %17, align 8
  %252 = call i32 @brelse(%struct.buf* %251)
  br label %253

253:                                              ; preds = %247, %200
  %254 = load %struct.denode*, %struct.denode** %14, align 8
  %255 = getelementptr inbounds %struct.denode, %struct.denode* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @ATTR_DIRECTORY, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %297

260:                                              ; preds = %253
  %261 = load i64, i64* %8, align 8
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %263, label %273

263:                                              ; preds = %260
  %264 = load %struct.denode*, %struct.denode** %14, align 8
  %265 = getelementptr inbounds %struct.denode, %struct.denode* %264, i32 0, i32 4
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* %7, align 8
  %268 = icmp ne i64 %266, %267
  br i1 %268, label %269, label %273

269:                                              ; preds = %263
  %270 = load i64, i64* %7, align 8
  %271 = load %struct.denode*, %struct.denode** %14, align 8
  %272 = getelementptr inbounds %struct.denode, %struct.denode* %271, i32 0, i32 4
  store i64 %270, i64* %272, align 8
  br label %273

273:                                              ; preds = %269, %263, %260
  %274 = load i32, i32* @VDIR, align 4
  %275 = load %struct.vnode*, %struct.vnode** %15, align 8
  %276 = getelementptr inbounds %struct.vnode, %struct.vnode* %275, i32 0, i32 0
  store i32 %274, i32* %276, align 8
  %277 = load %struct.denode*, %struct.denode** %14, align 8
  %278 = getelementptr inbounds %struct.denode, %struct.denode* %277, i32 0, i32 4
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @MSDOSFSROOT, align 8
  %281 = icmp ne i64 %279, %280
  br i1 %281, label %282, label %296

282:                                              ; preds = %273
  %283 = load %struct.denode*, %struct.denode** %14, align 8
  %284 = call i32 @pcbmap(%struct.denode* %283, i32 65535, i32 0, i64* %18, i32 0)
  store i32 %284, i32* %10, align 4
  %285 = load i32, i32* %10, align 4
  %286 = load i32, i32* @E2BIG, align 4
  %287 = icmp eq i32 %285, %286
  br i1 %287, label %288, label %294

288:                                              ; preds = %282
  %289 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %290 = load i64, i64* %18, align 8
  %291 = call i32 @de_cn2off(%struct.msdosfsmount* %289, i64 %290)
  %292 = load %struct.denode*, %struct.denode** %14, align 8
  %293 = getelementptr inbounds %struct.denode, %struct.denode* %292, i32 0, i32 5
  store i32 %291, i32* %293, align 8
  store i32 0, i32* %10, align 4
  br label %295

294:                                              ; preds = %282
  br label %295

295:                                              ; preds = %294, %288
  br label %296

296:                                              ; preds = %295, %273
  br label %301

297:                                              ; preds = %253
  %298 = load i32, i32* @VREG, align 4
  %299 = load %struct.vnode*, %struct.vnode** %15, align 8
  %300 = getelementptr inbounds %struct.vnode, %struct.vnode* %299, i32 0, i32 0
  store i32 %298, i32* %300, align 8
  br label %301

301:                                              ; preds = %297, %296
  %302 = call i32 (...) @init_va_filerev()
  %303 = load %struct.denode*, %struct.denode** %14, align 8
  %304 = getelementptr inbounds %struct.denode, %struct.denode* %303, i32 0, i32 11
  store i32 %302, i32* %304, align 8
  %305 = load %struct.denode*, %struct.denode** %14, align 8
  %306 = load %struct.denode**, %struct.denode*** %9, align 8
  store %struct.denode* %305, %struct.denode** %306, align 8
  store i32 0, i32* %5, align 4
  br label %307

307:                                              ; preds = %301, %237, %141, %135, %120, %84, %54, %49
  %308 = load i32, i32* %5, align 4
  ret i32 %308
}

declare dso_local i64 @FAT32(%struct.msdosfsmount*) #1

declare dso_local i32 @vfs_hash_get(%struct.mount*, i64, i32, i32, %struct.vnode**, i32, i64*) #1

declare dso_local %struct.denode* @VTODE(%struct.vnode*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.denode* @malloc(i32, i32, i32) #1

declare dso_local i32 @getnewvnode(i8*, %struct.mount*, i32*, %struct.vnode**) #1

declare dso_local i32 @free(%struct.denode*, i32) #1

declare dso_local i32 @lockmgr(i32, i32, i32*) #1

declare dso_local i32 @fc_purge(%struct.denode*, i32) #1

declare dso_local i32 @insmntque(%struct.vnode*, %struct.mount*) #1

declare dso_local i32 @vfs_hash_insert(%struct.vnode*, i64, i32, i32, %struct.vnode**, i32, i64*) #1

declare dso_local i32 @readep(%struct.msdosfsmount*, i64, i64, %struct.buf**, %struct.direntry**) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @DE_INTERNALIZE(%struct.denode*, %struct.direntry*) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @pcbmap(%struct.denode*, i32, i32, i64*, i32) #1

declare dso_local i32 @de_cn2off(%struct.msdosfsmount*, i64) #1

declare dso_local i32 @init_va_filerev(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
