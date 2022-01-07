; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vnops.c_msdosfs_mkdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vnops.c_msdosfs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_mkdir_args = type { i32*, i32, %struct.componentname* }
%struct.componentname = type { i32 }
%struct.denode = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, %struct.msdosfsmount* }
%struct.msdosfsmount = type { i32, i32, i32 }
%struct.direntry = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.buf = type { %struct.denode* }
%struct.timespec = type { i32 }

@MSDOSFSROOT = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@CLUST_EOFE = common dso_local global i32 0, align 4
@DE_ACCESS = common dso_local global i32 0, align 4
@DE_CREATE = common dso_local global i32 0, align 4
@DE_UPDATE = common dso_local global i32 0, align 4
@dosdirtemplate = common dso_local global i32 0, align 4
@ATTR_DIRECTORY = common dso_local global i32 0, align 4
@HASBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_mkdir_args*)* @msdosfs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdosfs_mkdir(%struct.vop_mkdir_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_mkdir_args*, align 8
  %4 = alloca %struct.componentname*, align 8
  %5 = alloca %struct.denode*, align 8
  %6 = alloca %struct.denode*, align 8
  %7 = alloca %struct.direntry*, align 8
  %8 = alloca %struct.msdosfsmount*, align 8
  %9 = alloca %struct.buf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.denode, align 8
  %15 = alloca %struct.timespec, align 4
  store %struct.vop_mkdir_args* %0, %struct.vop_mkdir_args** %3, align 8
  %16 = load %struct.vop_mkdir_args*, %struct.vop_mkdir_args** %3, align 8
  %17 = getelementptr inbounds %struct.vop_mkdir_args, %struct.vop_mkdir_args* %16, i32 0, i32 2
  %18 = load %struct.componentname*, %struct.componentname** %17, align 8
  store %struct.componentname* %18, %struct.componentname** %4, align 8
  %19 = load %struct.vop_mkdir_args*, %struct.vop_mkdir_args** %3, align 8
  %20 = getelementptr inbounds %struct.vop_mkdir_args, %struct.vop_mkdir_args* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.denode* @VTODE(i32 %21)
  store %struct.denode* %22, %struct.denode** %6, align 8
  %23 = load %struct.denode*, %struct.denode** %6, align 8
  %24 = getelementptr inbounds %struct.denode, %struct.denode* %23, i32 0, i32 13
  %25 = load %struct.msdosfsmount*, %struct.msdosfsmount** %24, align 8
  store %struct.msdosfsmount* %25, %struct.msdosfsmount** %8, align 8
  %26 = load %struct.denode*, %struct.denode** %6, align 8
  %27 = getelementptr inbounds %struct.denode, %struct.denode* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MSDOSFSROOT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %1
  %32 = load %struct.denode*, %struct.denode** %6, align 8
  %33 = getelementptr inbounds %struct.denode, %struct.denode* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.denode*, %struct.denode** %6, align 8
  %36 = getelementptr inbounds %struct.denode, %struct.denode* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %34, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOSPC, align 4
  store i32 %40, i32* %13, align 4
  br label %261

41:                                               ; preds = %31, %1
  %42 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %43 = load i32, i32* @CLUST_EOFE, align 4
  %44 = call i32 @clusteralloc(%struct.msdosfsmount* %42, i32 0, i32 1, i32 %43, i32* %10, i32* null)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %261

48:                                               ; preds = %41
  %49 = call i32 @memset(%struct.denode* %14, i32 0, i32 80)
  %50 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %51 = getelementptr inbounds %struct.denode, %struct.denode* %14, i32 0, i32 13
  store %struct.msdosfsmount* %50, %struct.msdosfsmount** %51, align 8
  %52 = load i32, i32* @DE_ACCESS, align 4
  %53 = load i32, i32* @DE_CREATE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @DE_UPDATE, align 4
  %56 = or i32 %54, %55
  %57 = getelementptr inbounds %struct.denode, %struct.denode* %14, i32 0, i32 3
  store i32 %56, i32* %57, align 8
  %58 = call i32 @vfs_timestamp(%struct.timespec* %15)
  %59 = call i32 @DETIMES(%struct.denode* %14, %struct.timespec* %15, %struct.timespec* %15, %struct.timespec* %15)
  %60 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @cntobn(%struct.msdosfsmount* %60, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %64 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %68 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.buf* @getblk(i32 %65, i32 %66, i32 %69, i32 0, i32 0, i32 0)
  store %struct.buf* %70, %struct.buf** %9, align 8
  %71 = load %struct.buf*, %struct.buf** %9, align 8
  %72 = getelementptr inbounds %struct.buf, %struct.buf* %71, i32 0, i32 0
  %73 = load %struct.denode*, %struct.denode** %72, align 8
  %74 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %75 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @memset(%struct.denode* %73, i32 0, i32 %76)
  %78 = load %struct.buf*, %struct.buf** %9, align 8
  %79 = getelementptr inbounds %struct.buf, %struct.buf* %78, i32 0, i32 0
  %80 = load %struct.denode*, %struct.denode** %79, align 8
  %81 = call i32 @memcpy(%struct.denode* %80, i32* @dosdirtemplate, i32 4)
  %82 = load %struct.buf*, %struct.buf** %9, align 8
  %83 = getelementptr inbounds %struct.buf, %struct.buf* %82, i32 0, i32 0
  %84 = load %struct.denode*, %struct.denode** %83, align 8
  %85 = bitcast %struct.denode* %84 to %struct.direntry*
  store %struct.direntry* %85, %struct.direntry** %7, align 8
  %86 = load %struct.direntry*, %struct.direntry** %7, align 8
  %87 = getelementptr inbounds %struct.direntry, %struct.direntry* %86, i64 0
  %88 = getelementptr inbounds %struct.direntry, %struct.direntry* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @putushort(i32 %89, i32 %90)
  %92 = load %struct.direntry*, %struct.direntry** %7, align 8
  %93 = getelementptr inbounds %struct.direntry, %struct.direntry* %92, i64 0
  %94 = getelementptr inbounds %struct.direntry, %struct.direntry* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.denode, %struct.denode* %14, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @putushort(i32 %95, i32 %97)
  %99 = load %struct.direntry*, %struct.direntry** %7, align 8
  %100 = getelementptr inbounds %struct.direntry, %struct.direntry* %99, i64 0
  %101 = getelementptr inbounds %struct.direntry, %struct.direntry* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.denode, %struct.denode* %14, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @putushort(i32 %102, i32 %104)
  %106 = getelementptr inbounds %struct.denode, %struct.denode* %14, i32 0, i32 12
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.direntry*, %struct.direntry** %7, align 8
  %109 = getelementptr inbounds %struct.direntry, %struct.direntry* %108, i64 0
  %110 = getelementptr inbounds %struct.direntry, %struct.direntry* %109, i32 0, i32 4
  store i32 %107, i32* %110, align 4
  %111 = load %struct.direntry*, %struct.direntry** %7, align 8
  %112 = getelementptr inbounds %struct.direntry, %struct.direntry* %111, i64 0
  %113 = getelementptr inbounds %struct.direntry, %struct.direntry* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.denode, %struct.denode* %14, i32 0, i32 6
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @putushort(i32 %114, i32 %116)
  %118 = load %struct.direntry*, %struct.direntry** %7, align 8
  %119 = getelementptr inbounds %struct.direntry, %struct.direntry* %118, i64 0
  %120 = getelementptr inbounds %struct.direntry, %struct.direntry* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.denode, %struct.denode* %14, i32 0, i32 7
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @putushort(i32 %121, i32 %123)
  %125 = load %struct.direntry*, %struct.direntry** %7, align 8
  %126 = getelementptr inbounds %struct.direntry, %struct.direntry* %125, i64 0
  %127 = getelementptr inbounds %struct.direntry, %struct.direntry* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.denode, %struct.denode* %14, i32 0, i32 8
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @putushort(i32 %128, i32 %130)
  %132 = load %struct.denode*, %struct.denode** %6, align 8
  %133 = getelementptr inbounds %struct.denode, %struct.denode* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %11, align 4
  %136 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %137 = call i64 @FAT32(%struct.msdosfsmount* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %48
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %142 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %140, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load i64, i64* @MSDOSFSROOT, align 8
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %11, align 4
  br label %148

148:                                              ; preds = %145, %139, %48
  %149 = load %struct.direntry*, %struct.direntry** %7, align 8
  %150 = getelementptr inbounds %struct.direntry, %struct.direntry* %149, i64 1
  %151 = getelementptr inbounds %struct.direntry, %struct.direntry* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %11, align 4
  %154 = call i32 @putushort(i32 %152, i32 %153)
  %155 = load %struct.direntry*, %struct.direntry** %7, align 8
  %156 = getelementptr inbounds %struct.direntry, %struct.direntry* %155, i64 1
  %157 = getelementptr inbounds %struct.direntry, %struct.direntry* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.denode, %struct.denode* %14, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @putushort(i32 %158, i32 %160)
  %162 = load %struct.direntry*, %struct.direntry** %7, align 8
  %163 = getelementptr inbounds %struct.direntry, %struct.direntry* %162, i64 1
  %164 = getelementptr inbounds %struct.direntry, %struct.direntry* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.denode, %struct.denode* %14, i32 0, i32 5
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @putushort(i32 %165, i32 %167)
  %169 = getelementptr inbounds %struct.denode, %struct.denode* %14, i32 0, i32 12
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.direntry*, %struct.direntry** %7, align 8
  %172 = getelementptr inbounds %struct.direntry, %struct.direntry* %171, i64 1
  %173 = getelementptr inbounds %struct.direntry, %struct.direntry* %172, i32 0, i32 4
  store i32 %170, i32* %173, align 4
  %174 = load %struct.direntry*, %struct.direntry** %7, align 8
  %175 = getelementptr inbounds %struct.direntry, %struct.direntry* %174, i64 1
  %176 = getelementptr inbounds %struct.direntry, %struct.direntry* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.denode, %struct.denode* %14, i32 0, i32 6
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @putushort(i32 %177, i32 %179)
  %181 = load %struct.direntry*, %struct.direntry** %7, align 8
  %182 = getelementptr inbounds %struct.direntry, %struct.direntry* %181, i64 1
  %183 = getelementptr inbounds %struct.direntry, %struct.direntry* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds %struct.denode, %struct.denode* %14, i32 0, i32 7
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @putushort(i32 %184, i32 %186)
  %188 = load %struct.direntry*, %struct.direntry** %7, align 8
  %189 = getelementptr inbounds %struct.direntry, %struct.direntry* %188, i64 1
  %190 = getelementptr inbounds %struct.direntry, %struct.direntry* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = getelementptr inbounds %struct.denode, %struct.denode* %14, i32 0, i32 8
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @putushort(i32 %191, i32 %193)
  %195 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %196 = call i64 @FAT32(%struct.msdosfsmount* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %213

198:                                              ; preds = %148
  %199 = load %struct.direntry*, %struct.direntry** %7, align 8
  %200 = getelementptr inbounds %struct.direntry, %struct.direntry* %199, i64 0
  %201 = getelementptr inbounds %struct.direntry, %struct.direntry* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %10, align 4
  %204 = ashr i32 %203, 16
  %205 = call i32 @putushort(i32 %202, i32 %204)
  %206 = load %struct.direntry*, %struct.direntry** %7, align 8
  %207 = getelementptr inbounds %struct.direntry, %struct.direntry* %206, i64 1
  %208 = getelementptr inbounds %struct.direntry, %struct.direntry* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %11, align 4
  %211 = ashr i32 %210, 16
  %212 = call i32 @putushort(i32 %209, i32 %211)
  br label %213

213:                                              ; preds = %198, %148
  %214 = load %struct.vop_mkdir_args*, %struct.vop_mkdir_args** %3, align 8
  %215 = getelementptr inbounds %struct.vop_mkdir_args, %struct.vop_mkdir_args* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = call i64 @DOINGASYNC(i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %213
  %220 = load %struct.buf*, %struct.buf** %9, align 8
  %221 = call i32 @bdwrite(%struct.buf* %220)
  br label %228

222:                                              ; preds = %213
  %223 = load %struct.buf*, %struct.buf** %9, align 8
  %224 = call i32 @bwrite(%struct.buf* %223)
  store i32 %224, i32* %13, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  br label %257

227:                                              ; preds = %222
  br label %228

228:                                              ; preds = %227, %219
  %229 = load %struct.denode*, %struct.denode** %6, align 8
  %230 = load %struct.componentname*, %struct.componentname** %4, align 8
  %231 = getelementptr inbounds %struct.denode, %struct.denode* %14, i32 0, i32 11
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @uniqdosname(%struct.denode* %229, %struct.componentname* %230, i32 %232)
  store i32 %233, i32* %13, align 4
  %234 = load i32, i32* %13, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %228
  br label %257

237:                                              ; preds = %228
  %238 = load i32, i32* @ATTR_DIRECTORY, align 4
  %239 = getelementptr inbounds %struct.denode, %struct.denode* %14, i32 0, i32 10
  store i32 %238, i32* %239, align 8
  %240 = getelementptr inbounds %struct.denode, %struct.denode* %14, i32 0, i32 9
  store i64 0, i64* %240, align 8
  %241 = load i32, i32* %10, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.denode, %struct.denode* %14, i32 0, i32 0
  store i64 %242, i64* %243, align 8
  %244 = getelementptr inbounds %struct.denode, %struct.denode* %14, i32 0, i32 2
  store i64 0, i64* %244, align 8
  %245 = load %struct.denode*, %struct.denode** %6, align 8
  %246 = load %struct.componentname*, %struct.componentname** %4, align 8
  %247 = call i32 @createde(%struct.denode* %14, %struct.denode* %245, %struct.denode** %5, %struct.componentname* %246)
  store i32 %247, i32* %13, align 4
  %248 = load i32, i32* %13, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %237
  br label %257

251:                                              ; preds = %237
  %252 = load %struct.denode*, %struct.denode** %5, align 8
  %253 = call i32 @DETOV(%struct.denode* %252)
  %254 = load %struct.vop_mkdir_args*, %struct.vop_mkdir_args** %3, align 8
  %255 = getelementptr inbounds %struct.vop_mkdir_args, %struct.vop_mkdir_args* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  store i32 %253, i32* %256, align 4
  store i32 0, i32* %2, align 4
  br label %263

257:                                              ; preds = %250, %236, %226
  %258 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %259 = load i32, i32* %10, align 4
  %260 = call i32 @clusterfree(%struct.msdosfsmount* %258, i32 %259, i32* null)
  br label %261

261:                                              ; preds = %257, %47, %39
  %262 = load i32, i32* %13, align 4
  store i32 %262, i32* %2, align 4
  br label %263

263:                                              ; preds = %261, %251
  %264 = load i32, i32* %2, align 4
  ret i32 %264
}

declare dso_local %struct.denode* @VTODE(i32) #1

declare dso_local i32 @clusteralloc(%struct.msdosfsmount*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @memset(%struct.denode*, i32, i32) #1

declare dso_local i32 @vfs_timestamp(%struct.timespec*) #1

declare dso_local i32 @DETIMES(%struct.denode*, %struct.timespec*, %struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @cntobn(%struct.msdosfsmount*, i32) #1

declare dso_local %struct.buf* @getblk(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.denode*, i32*, i32) #1

declare dso_local i32 @putushort(i32, i32) #1

declare dso_local i64 @FAT32(%struct.msdosfsmount*) #1

declare dso_local i64 @DOINGASYNC(i32) #1

declare dso_local i32 @bdwrite(%struct.buf*) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

declare dso_local i32 @uniqdosname(%struct.denode*, %struct.componentname*, i32) #1

declare dso_local i32 @createde(%struct.denode*, %struct.denode*, %struct.denode**, %struct.componentname*) #1

declare dso_local i32 @DETOV(%struct.denode*) #1

declare dso_local i32 @clusterfree(%struct.msdosfsmount*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
