; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_cache_attrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_cache_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.fuse_attr = type { i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vattr = type { i64, i32, i64, i32, i64, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.mount = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.fuse_vnode_data = type { %struct.vattr, i32 }
%struct.fuse_data = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"fuse_internal_cache_attrs\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@S_BLKSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuse_internal_cache_attrs(%struct.vnode* %0, %struct.fuse_attr* %1, i64 %2, i64 %3, %struct.vattr* %4) #0 {
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.fuse_attr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vattr*, align 8
  %11 = alloca %struct.mount*, align 8
  %12 = alloca %struct.fuse_vnode_data*, align 8
  %13 = alloca %struct.fuse_data*, align 8
  %14 = alloca %struct.vattr*, align 8
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store %struct.fuse_attr* %1, %struct.fuse_attr** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.vattr* %4, %struct.vattr** %10, align 8
  %15 = load %struct.vnode*, %struct.vnode** %6, align 8
  %16 = call %struct.mount* @vnode_mount(%struct.vnode* %15)
  store %struct.mount* %16, %struct.mount** %11, align 8
  %17 = load %struct.vnode*, %struct.vnode** %6, align 8
  %18 = call %struct.fuse_vnode_data* @VTOFUD(%struct.vnode* %17)
  store %struct.fuse_vnode_data* %18, %struct.fuse_vnode_data** %12, align 8
  %19 = load %struct.mount*, %struct.mount** %11, align 8
  %20 = call %struct.fuse_data* @fuse_get_mpdata(%struct.mount* %19)
  store %struct.fuse_data* %20, %struct.fuse_data** %13, align 8
  %21 = load %struct.vnode*, %struct.vnode** %6, align 8
  %22 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %12, align 8
  %26 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %25, i32 0, i32 1
  %27 = call i32 @fuse_validity_2_bintime(i64 %23, i64 %24, i32* %26)
  %28 = load %struct.vnode*, %struct.vnode** %6, align 8
  %29 = call i64 @vnode_isreg(%struct.vnode* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %5
  %32 = load %struct.fuse_attr*, %struct.fuse_attr** %7, align 8
  %33 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %12, align 8
  %36 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.vattr, %struct.vattr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %34, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %31
  %41 = load %struct.vnode*, %struct.vnode** %6, align 8
  %42 = load %struct.fuse_attr*, %struct.fuse_attr** %7, align 8
  %43 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @fuse_vnode_setsize(%struct.vnode* %41, i64 %44)
  %46 = load %struct.fuse_attr*, %struct.fuse_attr** %7, align 8
  %47 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %12, align 8
  %50 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.vattr, %struct.vattr* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  br label %52

52:                                               ; preds = %40, %31, %5
  %53 = load i64, i64* %8, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* %9, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55, %52
  %59 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %12, align 8
  %60 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %59, i32 0, i32 0
  store %struct.vattr* %60, %struct.vattr** %14, align 8
  br label %68

61:                                               ; preds = %55
  %62 = load %struct.vattr*, %struct.vattr** %10, align 8
  %63 = icmp ne %struct.vattr* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load %struct.vattr*, %struct.vattr** %10, align 8
  store %struct.vattr* %65, %struct.vattr** %14, align 8
  br label %67

66:                                               ; preds = %61
  br label %198

67:                                               ; preds = %64
  br label %68

68:                                               ; preds = %67, %58
  %69 = load %struct.vattr*, %struct.vattr** %14, align 8
  %70 = call i32 @vattr_null(%struct.vattr* %69)
  %71 = load %struct.mount*, %struct.mount** %11, align 8
  %72 = getelementptr inbounds %struct.mount, %struct.mount* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.vattr*, %struct.vattr** %14, align 8
  %79 = getelementptr inbounds %struct.vattr, %struct.vattr* %78, i32 0, i32 14
  store i32 %77, i32* %79, align 8
  %80 = load %struct.fuse_attr*, %struct.fuse_attr** %7, align 8
  %81 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %80, i32 0, i32 14
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.vattr*, %struct.vattr** %14, align 8
  %84 = getelementptr inbounds %struct.vattr, %struct.vattr* %83, i32 0, i32 13
  store i32 %82, i32* %84, align 4
  %85 = load %struct.fuse_attr*, %struct.fuse_attr** %7, align 8
  %86 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @S_IFMT, align 4
  %89 = xor i32 %88, -1
  %90 = and i32 %87, %89
  %91 = load %struct.vattr*, %struct.vattr** %14, align 8
  %92 = getelementptr inbounds %struct.vattr, %struct.vattr* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load %struct.fuse_attr*, %struct.fuse_attr** %7, align 8
  %94 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %93, i32 0, i32 13
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.vattr*, %struct.vattr** %14, align 8
  %97 = getelementptr inbounds %struct.vattr, %struct.vattr* %96, i32 0, i32 12
  store i32 %95, i32* %97, align 8
  %98 = load %struct.fuse_attr*, %struct.fuse_attr** %7, align 8
  %99 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %98, i32 0, i32 12
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.vattr*, %struct.vattr** %14, align 8
  %102 = getelementptr inbounds %struct.vattr, %struct.vattr* %101, i32 0, i32 11
  store i32 %100, i32* %102, align 4
  %103 = load %struct.fuse_attr*, %struct.fuse_attr** %7, align 8
  %104 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %103, i32 0, i32 11
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.vattr*, %struct.vattr** %14, align 8
  %107 = getelementptr inbounds %struct.vattr, %struct.vattr* %106, i32 0, i32 10
  store i32 %105, i32* %107, align 8
  %108 = load %struct.fuse_attr*, %struct.fuse_attr** %7, align 8
  %109 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %108, i32 0, i32 10
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.vattr*, %struct.vattr** %14, align 8
  %112 = getelementptr inbounds %struct.vattr, %struct.vattr* %111, i32 0, i32 9
  store i32 %110, i32* %112, align 4
  %113 = load %struct.fuse_attr*, %struct.fuse_attr** %7, align 8
  %114 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.vattr*, %struct.vattr** %14, align 8
  %117 = getelementptr inbounds %struct.vattr, %struct.vattr* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load %struct.fuse_attr*, %struct.fuse_attr** %7, align 8
  %119 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %118, i32 0, i32 9
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.vattr*, %struct.vattr** %14, align 8
  %122 = getelementptr inbounds %struct.vattr, %struct.vattr* %121, i32 0, i32 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  store i32 %120, i32* %123, align 4
  %124 = load %struct.fuse_attr*, %struct.fuse_attr** %7, align 8
  %125 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.vattr*, %struct.vattr** %14, align 8
  %128 = getelementptr inbounds %struct.vattr, %struct.vattr* %127, i32 0, i32 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 4
  %130 = load %struct.fuse_attr*, %struct.fuse_attr** %7, align 8
  %131 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.vattr*, %struct.vattr** %14, align 8
  %134 = getelementptr inbounds %struct.vattr, %struct.vattr* %133, i32 0, i32 7
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  store i32 %132, i32* %135, align 4
  %136 = load %struct.fuse_attr*, %struct.fuse_attr** %7, align 8
  %137 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.vattr*, %struct.vattr** %14, align 8
  %140 = getelementptr inbounds %struct.vattr, %struct.vattr* %139, i32 0, i32 7
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  store i32 %138, i32* %141, align 4
  %142 = load %struct.fuse_attr*, %struct.fuse_attr** %7, align 8
  %143 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.vattr*, %struct.vattr** %14, align 8
  %146 = getelementptr inbounds %struct.vattr, %struct.vattr* %145, i32 0, i32 6
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  store i32 %144, i32* %147, align 4
  %148 = load %struct.fuse_attr*, %struct.fuse_attr** %7, align 8
  %149 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.vattr*, %struct.vattr** %14, align 8
  %152 = getelementptr inbounds %struct.vattr, %struct.vattr* %151, i32 0, i32 6
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  store i32 %150, i32* %153, align 4
  %154 = load %struct.fuse_data*, %struct.fuse_data** %13, align 8
  %155 = call i64 @fuse_libabi_geq(%struct.fuse_data* %154, i32 7, i32 9)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %68
  %158 = load %struct.fuse_attr*, %struct.fuse_attr** %7, align 8
  %159 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp sgt i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load %struct.fuse_attr*, %struct.fuse_attr** %7, align 8
  %164 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.vattr*, %struct.vattr** %14, align 8
  %167 = getelementptr inbounds %struct.vattr, %struct.vattr* %166, i32 0, i32 2
  store i64 %165, i64* %167, align 8
  br label %172

168:                                              ; preds = %157, %68
  %169 = load i64, i64* @PAGE_SIZE, align 8
  %170 = load %struct.vattr*, %struct.vattr** %14, align 8
  %171 = getelementptr inbounds %struct.vattr, %struct.vattr* %170, i32 0, i32 2
  store i64 %169, i64* %171, align 8
  br label %172

172:                                              ; preds = %168, %162
  %173 = load %struct.fuse_attr*, %struct.fuse_attr** %7, align 8
  %174 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @IFTOVT(i32 %175)
  %177 = load %struct.vattr*, %struct.vattr** %14, align 8
  %178 = getelementptr inbounds %struct.vattr, %struct.vattr* %177, i32 0, i32 5
  store i32 %176, i32* %178, align 8
  %179 = load %struct.fuse_attr*, %struct.fuse_attr** %7, align 8
  %180 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @S_BLKSIZE, align 4
  %183 = mul nsw i32 %181, %182
  %184 = load %struct.vattr*, %struct.vattr** %14, align 8
  %185 = getelementptr inbounds %struct.vattr, %struct.vattr* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 8
  %186 = load %struct.vattr*, %struct.vattr** %14, align 8
  %187 = getelementptr inbounds %struct.vattr, %struct.vattr* %186, i32 0, i32 4
  store i64 0, i64* %187, align 8
  %188 = load %struct.vattr*, %struct.vattr** %10, align 8
  %189 = load %struct.vattr*, %struct.vattr** %14, align 8
  %190 = icmp ne %struct.vattr* %188, %189
  br i1 %190, label %191, label %198

191:                                              ; preds = %172
  %192 = load %struct.vattr*, %struct.vattr** %10, align 8
  %193 = icmp ne %struct.vattr* %192, null
  br i1 %193, label %194, label %198

194:                                              ; preds = %191
  %195 = load %struct.vattr*, %struct.vattr** %10, align 8
  %196 = load %struct.vattr*, %struct.vattr** %14, align 8
  %197 = call i32 @memcpy(%struct.vattr* %195, %struct.vattr* %196, i32 96)
  br label %198

198:                                              ; preds = %66, %194, %191, %172
  ret void
}

declare dso_local %struct.mount* @vnode_mount(%struct.vnode*) #1

declare dso_local %struct.fuse_vnode_data* @VTOFUD(%struct.vnode*) #1

declare dso_local %struct.fuse_data* @fuse_get_mpdata(%struct.mount*) #1

declare dso_local i32 @ASSERT_VOP_ELOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @fuse_validity_2_bintime(i64, i64, i32*) #1

declare dso_local i64 @vnode_isreg(%struct.vnode*) #1

declare dso_local i32 @fuse_vnode_setsize(%struct.vnode*, i64) #1

declare dso_local i32 @vattr_null(%struct.vattr*) #1

declare dso_local i64 @fuse_libabi_geq(%struct.fuse_data*, i32, i32) #1

declare dso_local i32 @IFTOVT(i32) #1

declare dso_local i32 @memcpy(%struct.vattr*, %struct.vattr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
