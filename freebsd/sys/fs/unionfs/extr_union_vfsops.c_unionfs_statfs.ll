; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vfsops.c_unionfs_statfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vfsops.c_unionfs_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.statfs = type { i32, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.unionfs_mount = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"unionfs_statfs(mp = %p, lvp = %p, uvp = %p)\0A\00", align 1
@M_STATFS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, %struct.statfs*)* @unionfs_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_statfs(%struct.mount* %0, %struct.statfs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mount*, align 8
  %5 = alloca %struct.statfs*, align 8
  %6 = alloca %struct.unionfs_mount*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.statfs*, align 8
  %9 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %4, align 8
  store %struct.statfs* %1, %struct.statfs** %5, align 8
  %10 = load %struct.mount*, %struct.mount** %4, align 8
  %11 = call %struct.unionfs_mount* @MOUNTTOUNIONFSMOUNT(%struct.mount* %10)
  store %struct.unionfs_mount* %11, %struct.unionfs_mount** %6, align 8
  %12 = load %struct.mount*, %struct.mount** %4, align 8
  %13 = bitcast %struct.mount* %12 to i8*
  %14 = load %struct.unionfs_mount*, %struct.unionfs_mount** %6, align 8
  %15 = getelementptr inbounds %struct.unionfs_mount, %struct.unionfs_mount* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = bitcast %struct.TYPE_3__* %16 to i8*
  %18 = load %struct.unionfs_mount*, %struct.unionfs_mount** %6, align 8
  %19 = getelementptr inbounds %struct.unionfs_mount, %struct.unionfs_mount* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = bitcast %struct.TYPE_4__* %20 to i8*
  %22 = call i32 @UNIONFSDEBUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %17, i8* %21)
  %23 = load i32, i32* @M_STATFS, align 4
  %24 = load i32, i32* @M_WAITOK, align 4
  %25 = load i32, i32* @M_ZERO, align 4
  %26 = or i32 %24, %25
  %27 = call %struct.statfs* @malloc(i32 48, i32 %23, i32 %26)
  store %struct.statfs* %27, %struct.statfs** %8, align 8
  %28 = load %struct.unionfs_mount*, %struct.unionfs_mount** %6, align 8
  %29 = getelementptr inbounds %struct.unionfs_mount, %struct.unionfs_mount* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.statfs*, %struct.statfs** %8, align 8
  %34 = call i32 @VFS_STATFS(i32 %32, %struct.statfs* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %2
  %38 = load %struct.statfs*, %struct.statfs** %8, align 8
  %39 = load i32, i32* @M_STATFS, align 4
  %40 = call i32 @free(%struct.statfs* %38, i32 %39)
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %141

42:                                               ; preds = %2
  %43 = load %struct.statfs*, %struct.statfs** %8, align 8
  %44 = getelementptr inbounds %struct.statfs, %struct.statfs* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.statfs*, %struct.statfs** %5, align 8
  %47 = getelementptr inbounds %struct.statfs, %struct.statfs* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.statfs*, %struct.statfs** %8, align 8
  %49 = getelementptr inbounds %struct.statfs, %struct.statfs* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.statfs*, %struct.statfs** %5, align 8
  %52 = getelementptr inbounds %struct.statfs, %struct.statfs* %51, i32 0, i32 3
  store i64 %50, i64* %52, align 8
  %53 = load %struct.statfs*, %struct.statfs** %8, align 8
  %54 = getelementptr inbounds %struct.statfs, %struct.statfs* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  %56 = load %struct.unionfs_mount*, %struct.unionfs_mount** %6, align 8
  %57 = getelementptr inbounds %struct.unionfs_mount, %struct.unionfs_mount* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.statfs*, %struct.statfs** %8, align 8
  %62 = call i32 @VFS_STATFS(i32 %60, %struct.statfs* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %42
  %66 = load %struct.statfs*, %struct.statfs** %8, align 8
  %67 = load i32, i32* @M_STATFS, align 4
  %68 = call i32 @free(%struct.statfs* %66, i32 %67)
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %141

70:                                               ; preds = %42
  %71 = load %struct.statfs*, %struct.statfs** %8, align 8
  %72 = getelementptr inbounds %struct.statfs, %struct.statfs* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.statfs*, %struct.statfs** %5, align 8
  %75 = getelementptr inbounds %struct.statfs, %struct.statfs* %74, i32 0, i32 8
  store i32 %73, i32* %75, align 8
  %76 = load %struct.statfs*, %struct.statfs** %8, align 8
  %77 = getelementptr inbounds %struct.statfs, %struct.statfs* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.statfs*, %struct.statfs** %5, align 8
  %80 = getelementptr inbounds %struct.statfs, %struct.statfs* %79, i32 0, i32 7
  store i32 %78, i32* %80, align 4
  %81 = load %struct.statfs*, %struct.statfs** %8, align 8
  %82 = getelementptr inbounds %struct.statfs, %struct.statfs* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.statfs*, %struct.statfs** %5, align 8
  %85 = getelementptr inbounds %struct.statfs, %struct.statfs* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.statfs*, %struct.statfs** %8, align 8
  %87 = getelementptr inbounds %struct.statfs, %struct.statfs* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.statfs*, %struct.statfs** %5, align 8
  %90 = getelementptr inbounds %struct.statfs, %struct.statfs* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 8
  %91 = load %struct.statfs*, %struct.statfs** %8, align 8
  %92 = getelementptr inbounds %struct.statfs, %struct.statfs* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %70
  %97 = load %struct.statfs*, %struct.statfs** %5, align 8
  %98 = getelementptr inbounds %struct.statfs, %struct.statfs* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load %struct.statfs*, %struct.statfs** %8, align 8
  %103 = getelementptr inbounds %struct.statfs, %struct.statfs* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sdiv i32 %101, %104
  %106 = load %struct.statfs*, %struct.statfs** %5, align 8
  %107 = getelementptr inbounds %struct.statfs, %struct.statfs* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %96, %70
  %109 = load %struct.statfs*, %struct.statfs** %8, align 8
  %110 = getelementptr inbounds %struct.statfs, %struct.statfs* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.statfs*, %struct.statfs** %5, align 8
  %113 = getelementptr inbounds %struct.statfs, %struct.statfs* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load %struct.statfs*, %struct.statfs** %8, align 8
  %117 = getelementptr inbounds %struct.statfs, %struct.statfs* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.statfs*, %struct.statfs** %5, align 8
  %120 = getelementptr inbounds %struct.statfs, %struct.statfs* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 4
  %121 = load %struct.statfs*, %struct.statfs** %8, align 8
  %122 = getelementptr inbounds %struct.statfs, %struct.statfs* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.statfs*, %struct.statfs** %5, align 8
  %125 = getelementptr inbounds %struct.statfs, %struct.statfs* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 8
  %126 = load %struct.statfs*, %struct.statfs** %8, align 8
  %127 = getelementptr inbounds %struct.statfs, %struct.statfs* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.statfs*, %struct.statfs** %5, align 8
  %130 = getelementptr inbounds %struct.statfs, %struct.statfs* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, %128
  store i64 %132, i64* %130, align 8
  %133 = load %struct.statfs*, %struct.statfs** %8, align 8
  %134 = getelementptr inbounds %struct.statfs, %struct.statfs* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.statfs*, %struct.statfs** %5, align 8
  %137 = getelementptr inbounds %struct.statfs, %struct.statfs* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load %struct.statfs*, %struct.statfs** %8, align 8
  %139 = load i32, i32* @M_STATFS, align 4
  %140 = call i32 @free(%struct.statfs* %138, i32 %139)
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %108, %65, %37
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.unionfs_mount* @MOUNTTOUNIONFSMOUNT(%struct.mount*) #1

declare dso_local i32 @UNIONFSDEBUG(i8*, i8*, i8*, i8*) #1

declare dso_local %struct.statfs* @malloc(i32, i32, i32) #1

declare dso_local i32 @VFS_STATFS(i32, %struct.statfs*) #1

declare dso_local i32 @free(%struct.statfs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
