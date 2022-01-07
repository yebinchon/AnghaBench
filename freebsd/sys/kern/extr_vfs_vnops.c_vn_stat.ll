; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64* }
%struct.stat = type { i64, i64, i32, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.vattr = type { i64, i32, i64, i32, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_22__, %struct.TYPE_20__, %struct.TYPE_18__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }

@VNOVAL = common dso_local global i64 0, align 8
@NODEV = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IFBLK = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IFSOCK = common dso_local global i32 0, align 4
@S_IFIFO = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@OFF_MAX = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PRIV_VFS_GENERATION = common dso_local global i32 0, align 4
@S_BLKSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_stat(%struct.vnode* %0, %struct.stat* %1, %struct.ucred* %2, %struct.ucred* %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.stat*, align 8
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca %struct.ucred*, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.vattr, align 8
  %13 = alloca %struct.vattr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store %struct.stat* %1, %struct.stat** %8, align 8
  store %struct.ucred* %2, %struct.ucred** %9, align 8
  store %struct.ucred* %3, %struct.ucred** %10, align 8
  store %struct.thread* %4, %struct.thread** %11, align 8
  %16 = load %struct.vnode*, %struct.vnode** %7, align 8
  %17 = call i32 @AUDIT_ARG_VNODE1(%struct.vnode* %16)
  store %struct.vattr* %12, %struct.vattr** %13, align 8
  %18 = load %struct.vattr*, %struct.vattr** %13, align 8
  %19 = getelementptr inbounds %struct.vattr, %struct.vattr* %18, i32 0, i32 7
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  store i32 -1, i32* %20, align 8
  %21 = load %struct.vattr*, %struct.vattr** %13, align 8
  %22 = getelementptr inbounds %struct.vattr, %struct.vattr* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load i64, i64* @VNOVAL, align 8
  %25 = load %struct.vattr*, %struct.vattr** %13, align 8
  %26 = getelementptr inbounds %struct.vattr, %struct.vattr* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* @NODEV, align 4
  %28 = load %struct.vattr*, %struct.vattr** %13, align 8
  %29 = getelementptr inbounds %struct.vattr, %struct.vattr* %28, i32 0, i32 11
  store i32 %27, i32* %29, align 8
  %30 = load %struct.vnode*, %struct.vnode** %7, align 8
  %31 = load %struct.vattr*, %struct.vattr** %13, align 8
  %32 = load %struct.ucred*, %struct.ucred** %9, align 8
  %33 = call i32 @VOP_GETATTR(%struct.vnode* %30, %struct.vattr* %31, %struct.ucred* %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %5
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %6, align 4
  br label %232

38:                                               ; preds = %5
  %39 = load %struct.stat*, %struct.stat** %8, align 8
  %40 = call i32 @bzero(%struct.stat* %39, i32 96)
  %41 = load %struct.vattr*, %struct.vattr** %13, align 8
  %42 = getelementptr inbounds %struct.vattr, %struct.vattr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @VNOVAL, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load %struct.vattr*, %struct.vattr** %13, align 8
  %48 = getelementptr inbounds %struct.vattr, %struct.vattr* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.stat*, %struct.stat** %8, align 8
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %64

52:                                               ; preds = %38
  %53 = load %struct.vnode*, %struct.vnode** %7, align 8
  %54 = getelementptr inbounds %struct.vnode, %struct.vnode* %53, i32 0, i32 0
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.stat*, %struct.stat** %8, align 8
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %52, %46
  %65 = load %struct.vattr*, %struct.vattr** %13, align 8
  %66 = getelementptr inbounds %struct.vattr, %struct.vattr* %65, i32 0, i32 16
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.stat*, %struct.stat** %8, align 8
  %69 = getelementptr inbounds %struct.stat, %struct.stat* %68, i32 0, i32 15
  store i32 %67, i32* %69, align 4
  %70 = load %struct.vattr*, %struct.vattr** %13, align 8
  %71 = getelementptr inbounds %struct.vattr, %struct.vattr* %70, i32 0, i32 15
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %15, align 4
  %73 = load %struct.vattr*, %struct.vattr** %13, align 8
  %74 = getelementptr inbounds %struct.vattr, %struct.vattr* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  switch i32 %75, label %104 [
    i32 129, label %76
    i32 132, label %80
    i32 134, label %84
    i32 133, label %88
    i32 130, label %92
    i32 128, label %96
    i32 131, label %100
  ]

76:                                               ; preds = %64
  %77 = load i32, i32* @S_IFREG, align 4
  %78 = load i32, i32* %15, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %15, align 4
  br label %106

80:                                               ; preds = %64
  %81 = load i32, i32* @S_IFDIR, align 4
  %82 = load i32, i32* %15, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %15, align 4
  br label %106

84:                                               ; preds = %64
  %85 = load i32, i32* @S_IFBLK, align 4
  %86 = load i32, i32* %15, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %15, align 4
  br label %106

88:                                               ; preds = %64
  %89 = load i32, i32* @S_IFCHR, align 4
  %90 = load i32, i32* %15, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %15, align 4
  br label %106

92:                                               ; preds = %64
  %93 = load i32, i32* @S_IFLNK, align 4
  %94 = load i32, i32* %15, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %15, align 4
  br label %106

96:                                               ; preds = %64
  %97 = load i32, i32* @S_IFSOCK, align 4
  %98 = load i32, i32* %15, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %15, align 4
  br label %106

100:                                              ; preds = %64
  %101 = load i32, i32* @S_IFIFO, align 4
  %102 = load i32, i32* %15, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %15, align 4
  br label %106

104:                                              ; preds = %64
  %105 = load i32, i32* @EBADF, align 4
  store i32 %105, i32* %6, align 4
  br label %232

106:                                              ; preds = %100, %96, %92, %88, %84, %80, %76
  %107 = load i32, i32* %15, align 4
  %108 = load %struct.stat*, %struct.stat** %8, align 8
  %109 = getelementptr inbounds %struct.stat, %struct.stat* %108, i32 0, i32 14
  store i32 %107, i32* %109, align 8
  %110 = load %struct.vattr*, %struct.vattr** %13, align 8
  %111 = getelementptr inbounds %struct.vattr, %struct.vattr* %110, i32 0, i32 14
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.stat*, %struct.stat** %8, align 8
  %114 = getelementptr inbounds %struct.stat, %struct.stat* %113, i32 0, i32 13
  store i32 %112, i32* %114, align 4
  %115 = load %struct.vattr*, %struct.vattr** %13, align 8
  %116 = getelementptr inbounds %struct.vattr, %struct.vattr* %115, i32 0, i32 13
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.stat*, %struct.stat** %8, align 8
  %119 = getelementptr inbounds %struct.stat, %struct.stat* %118, i32 0, i32 12
  store i32 %117, i32* %119, align 8
  %120 = load %struct.vattr*, %struct.vattr** %13, align 8
  %121 = getelementptr inbounds %struct.vattr, %struct.vattr* %120, i32 0, i32 12
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.stat*, %struct.stat** %8, align 8
  %124 = getelementptr inbounds %struct.stat, %struct.stat* %123, i32 0, i32 11
  store i32 %122, i32* %124, align 4
  %125 = load %struct.vattr*, %struct.vattr** %13, align 8
  %126 = getelementptr inbounds %struct.vattr, %struct.vattr* %125, i32 0, i32 11
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.stat*, %struct.stat** %8, align 8
  %129 = getelementptr inbounds %struct.stat, %struct.stat* %128, i32 0, i32 10
  store i32 %127, i32* %129, align 8
  %130 = load %struct.vattr*, %struct.vattr** %13, align 8
  %131 = getelementptr inbounds %struct.vattr, %struct.vattr* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @OFF_MAX, align 8
  %134 = icmp sgt i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %106
  %136 = load i32, i32* @EOVERFLOW, align 4
  store i32 %136, i32* %6, align 4
  br label %232

137:                                              ; preds = %106
  %138 = load %struct.vattr*, %struct.vattr** %13, align 8
  %139 = getelementptr inbounds %struct.vattr, %struct.vattr* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.stat*, %struct.stat** %8, align 8
  %142 = getelementptr inbounds %struct.stat, %struct.stat* %141, i32 0, i32 1
  store i64 %140, i64* %142, align 8
  %143 = load %struct.vattr*, %struct.vattr** %13, align 8
  %144 = getelementptr inbounds %struct.vattr, %struct.vattr* %143, i32 0, i32 10
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.stat*, %struct.stat** %8, align 8
  %148 = getelementptr inbounds %struct.stat, %struct.stat* %147, i32 0, i32 9
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 1
  store i32 %146, i32* %149, align 4
  %150 = load %struct.vattr*, %struct.vattr** %13, align 8
  %151 = getelementptr inbounds %struct.vattr, %struct.vattr* %150, i32 0, i32 10
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.stat*, %struct.stat** %8, align 8
  %155 = getelementptr inbounds %struct.stat, %struct.stat* %154, i32 0, i32 9
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  store i32 %153, i32* %156, align 8
  %157 = load %struct.vattr*, %struct.vattr** %13, align 8
  %158 = getelementptr inbounds %struct.vattr, %struct.vattr* %157, i32 0, i32 9
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.stat*, %struct.stat** %8, align 8
  %162 = getelementptr inbounds %struct.stat, %struct.stat* %161, i32 0, i32 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 1
  store i32 %160, i32* %163, align 4
  %164 = load %struct.vattr*, %struct.vattr** %13, align 8
  %165 = getelementptr inbounds %struct.vattr, %struct.vattr* %164, i32 0, i32 9
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.stat*, %struct.stat** %8, align 8
  %169 = getelementptr inbounds %struct.stat, %struct.stat* %168, i32 0, i32 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 0
  store i32 %167, i32* %170, align 8
  %171 = load %struct.vattr*, %struct.vattr** %13, align 8
  %172 = getelementptr inbounds %struct.vattr, %struct.vattr* %171, i32 0, i32 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.stat*, %struct.stat** %8, align 8
  %176 = getelementptr inbounds %struct.stat, %struct.stat* %175, i32 0, i32 7
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 1
  store i32 %174, i32* %177, align 4
  %178 = load %struct.vattr*, %struct.vattr** %13, align 8
  %179 = getelementptr inbounds %struct.vattr, %struct.vattr* %178, i32 0, i32 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.stat*, %struct.stat** %8, align 8
  %183 = getelementptr inbounds %struct.stat, %struct.stat* %182, i32 0, i32 7
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 0
  store i32 %181, i32* %184, align 8
  %185 = load %struct.vattr*, %struct.vattr** %13, align 8
  %186 = getelementptr inbounds %struct.vattr, %struct.vattr* %185, i32 0, i32 7
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.stat*, %struct.stat** %8, align 8
  %190 = getelementptr inbounds %struct.stat, %struct.stat* %189, i32 0, i32 6
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  store i32 %188, i32* %191, align 8
  %192 = load %struct.vattr*, %struct.vattr** %13, align 8
  %193 = getelementptr inbounds %struct.vattr, %struct.vattr* %192, i32 0, i32 7
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.stat*, %struct.stat** %8, align 8
  %197 = getelementptr inbounds %struct.stat, %struct.stat* %196, i32 0, i32 6
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 1
  store i64 %195, i64* %198, align 8
  %199 = load i32, i32* @PAGE_SIZE, align 4
  %200 = load %struct.vattr*, %struct.vattr** %13, align 8
  %201 = getelementptr inbounds %struct.vattr, %struct.vattr* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @max(i32 %199, i32 %202)
  %204 = load %struct.stat*, %struct.stat** %8, align 8
  %205 = getelementptr inbounds %struct.stat, %struct.stat* %204, i32 0, i32 5
  store i32 %203, i32* %205, align 4
  %206 = load %struct.vattr*, %struct.vattr** %13, align 8
  %207 = getelementptr inbounds %struct.vattr, %struct.vattr* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.stat*, %struct.stat** %8, align 8
  %210 = getelementptr inbounds %struct.stat, %struct.stat* %209, i32 0, i32 4
  store i32 %208, i32* %210, align 8
  %211 = load %struct.thread*, %struct.thread** %11, align 8
  %212 = load i32, i32* @PRIV_VFS_GENERATION, align 4
  %213 = call i64 @priv_check(%struct.thread* %211, i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %137
  %216 = load %struct.stat*, %struct.stat** %8, align 8
  %217 = getelementptr inbounds %struct.stat, %struct.stat* %216, i32 0, i32 3
  store i32 0, i32* %217, align 4
  br label %224

218:                                              ; preds = %137
  %219 = load %struct.vattr*, %struct.vattr** %13, align 8
  %220 = getelementptr inbounds %struct.vattr, %struct.vattr* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.stat*, %struct.stat** %8, align 8
  %223 = getelementptr inbounds %struct.stat, %struct.stat* %222, i32 0, i32 3
  store i32 %221, i32* %223, align 4
  br label %224

224:                                              ; preds = %218, %215
  %225 = load %struct.vattr*, %struct.vattr** %13, align 8
  %226 = getelementptr inbounds %struct.vattr, %struct.vattr* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @S_BLKSIZE, align 4
  %229 = sdiv i32 %227, %228
  %230 = load %struct.stat*, %struct.stat** %8, align 8
  %231 = getelementptr inbounds %struct.stat, %struct.stat* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 8
  store i32 0, i32* %6, align 4
  br label %232

232:                                              ; preds = %224, %135, %104, %36
  %233 = load i32, i32* %6, align 4
  ret i32 %233
}

declare dso_local i32 @AUDIT_ARG_VNODE1(%struct.vnode*) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, %struct.ucred*) #1

declare dso_local i32 @bzero(%struct.stat*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @priv_check(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
