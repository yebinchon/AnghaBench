; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_gntdev_map_grant_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_gntdev_map_grant_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioctl_gntdev_map_grant_ref = type { i32, i32, i32* }
%struct.gntdev_gmap = type { i32, i32, i32, %struct.gntdev_gmap*, i32, i32, i32 }
%struct.per_user_data = type { i32, i32 }
%struct.ioctl_gntdev_grant_ref = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@M_GNTDEV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@GNTMAP_host_map = common dso_local global i32 0, align 4
@gmap_tree_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioctl_gntdev_map_grant_ref*)* @gntdev_map_grant_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gntdev_map_grant_ref(%struct.ioctl_gntdev_map_grant_ref* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ioctl_gntdev_map_grant_ref*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gntdev_gmap*, align 8
  %7 = alloca %struct.per_user_data*, align 8
  %8 = alloca %struct.ioctl_gntdev_grant_ref, align 4
  store %struct.ioctl_gntdev_map_grant_ref* %0, %struct.ioctl_gntdev_map_grant_ref** %3, align 8
  %9 = bitcast %struct.per_user_data** %7 to i8**
  %10 = call i32 @devfs_get_cdevpriv(i8** %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %2, align 4
  br label %139

15:                                               ; preds = %1
  %16 = load i32, i32* @M_GNTDEV, align 4
  %17 = load i32, i32* @M_WAITOK, align 4
  %18 = load i32, i32* @M_ZERO, align 4
  %19 = or i32 %17, %18
  %20 = call i8* @malloc(i32 40, i32 %16, i32 %19)
  %21 = bitcast i8* %20 to %struct.gntdev_gmap*
  store %struct.gntdev_gmap* %21, %struct.gntdev_gmap** %6, align 8
  %22 = load %struct.ioctl_gntdev_map_grant_ref*, %struct.ioctl_gntdev_map_grant_ref** %3, align 8
  %23 = getelementptr inbounds %struct.ioctl_gntdev_map_grant_ref, %struct.ioctl_gntdev_map_grant_ref* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %6, align 8
  %26 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ioctl_gntdev_map_grant_ref*, %struct.ioctl_gntdev_map_grant_ref** %3, align 8
  %28 = getelementptr inbounds %struct.ioctl_gntdev_map_grant_ref, %struct.ioctl_gntdev_map_grant_ref* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @M_GNTDEV, align 4
  %34 = load i32, i32* @M_WAITOK, align 4
  %35 = load i32, i32* @M_ZERO, align 4
  %36 = or i32 %34, %35
  %37 = call i8* @malloc(i32 %32, i32 %33, i32 %36)
  %38 = bitcast i8* %37 to %struct.gntdev_gmap*
  %39 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %6, align 8
  %40 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %39, i32 0, i32 3
  store %struct.gntdev_gmap* %38, %struct.gntdev_gmap** %40, align 8
  store i64 0, i64* %4, align 8
  br label %41

41:                                               ; preds = %97, %15
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.ioctl_gntdev_map_grant_ref*, %struct.ioctl_gntdev_map_grant_ref** %3, align 8
  %44 = getelementptr inbounds %struct.ioctl_gntdev_map_grant_ref, %struct.ioctl_gntdev_map_grant_ref* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %42, %46
  br i1 %47, label %48, label %100

48:                                               ; preds = %41
  %49 = load %struct.ioctl_gntdev_map_grant_ref*, %struct.ioctl_gntdev_map_grant_ref** %3, align 8
  %50 = getelementptr inbounds %struct.ioctl_gntdev_map_grant_ref, %struct.ioctl_gntdev_map_grant_ref* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %4, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = call i32 @copyin(i32* %53, %struct.ioctl_gntdev_grant_ref* %8, i32 8)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %48
  %58 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %6, align 8
  %59 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %58, i32 0, i32 3
  %60 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %59, align 8
  %61 = load i32, i32* @M_GNTDEV, align 4
  %62 = call i32 @free(%struct.gntdev_gmap* %60, i32 %61)
  %63 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %6, align 8
  %64 = load i32, i32* @M_GNTDEV, align 4
  %65 = call i32 @free(%struct.gntdev_gmap* %63, i32 %64)
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %139

67:                                               ; preds = %48
  %68 = getelementptr inbounds %struct.ioctl_gntdev_grant_ref, %struct.ioctl_gntdev_grant_ref* %8, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %6, align 8
  %71 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %70, i32 0, i32 3
  %72 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %71, align 8
  %73 = load i64, i64* %4, align 8
  %74 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %72, i64 %73
  %75 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %74, i32 0, i32 6
  store i32 %69, i32* %75, align 8
  %76 = getelementptr inbounds %struct.ioctl_gntdev_grant_ref, %struct.ioctl_gntdev_grant_ref* %8, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %6, align 8
  %79 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %78, i32 0, i32 3
  %80 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %79, align 8
  %81 = load i64, i64* %4, align 8
  %82 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %80, i64 %81
  %83 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %82, i32 0, i32 5
  store i32 %77, i32* %83, align 4
  %84 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %6, align 8
  %85 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %84, i32 0, i32 3
  %86 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %85, align 8
  %87 = load i64, i64* %4, align 8
  %88 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %86, i64 %87
  %89 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %88, i32 0, i32 1
  store i32 -1, i32* %89, align 4
  %90 = load i32, i32* @GNTMAP_host_map, align 4
  %91 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %6, align 8
  %92 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %91, i32 0, i32 3
  %93 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %92, align 8
  %94 = load i64, i64* %4, align 8
  %95 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %93, i64 %94
  %96 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %95, i32 0, i32 4
  store i32 %90, i32* %96, align 8
  br label %97

97:                                               ; preds = %67
  %98 = load i64, i64* %4, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %4, align 8
  br label %41

100:                                              ; preds = %41
  %101 = load %struct.per_user_data*, %struct.per_user_data** %7, align 8
  %102 = load %struct.ioctl_gntdev_map_grant_ref*, %struct.ioctl_gntdev_map_grant_ref** %3, align 8
  %103 = getelementptr inbounds %struct.ioctl_gntdev_map_grant_ref, %struct.ioctl_gntdev_map_grant_ref* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %6, align 8
  %107 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %106, i32 0, i32 2
  %108 = call i32 @get_file_offset(%struct.per_user_data* %101, i64 %105, i32* %107)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %100
  %112 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %6, align 8
  %113 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %112, i32 0, i32 3
  %114 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %113, align 8
  %115 = load i32, i32* @M_GNTDEV, align 4
  %116 = call i32 @free(%struct.gntdev_gmap* %114, i32 %115)
  %117 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %6, align 8
  %118 = load i32, i32* @M_GNTDEV, align 4
  %119 = call i32 @free(%struct.gntdev_gmap* %117, i32 %118)
  %120 = load i32, i32* %5, align 4
  store i32 %120, i32* %2, align 4
  br label %139

121:                                              ; preds = %100
  %122 = load %struct.per_user_data*, %struct.per_user_data** %7, align 8
  %123 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %122, i32 0, i32 0
  %124 = call i32 @mtx_lock(i32* %123)
  %125 = load i32, i32* @gmap_tree_head, align 4
  %126 = load %struct.per_user_data*, %struct.per_user_data** %7, align 8
  %127 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %126, i32 0, i32 1
  %128 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %6, align 8
  %129 = call i32 @RB_INSERT(i32 %125, i32* %127, %struct.gntdev_gmap* %128)
  %130 = load %struct.per_user_data*, %struct.per_user_data** %7, align 8
  %131 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %130, i32 0, i32 0
  %132 = call i32 @mtx_unlock(i32* %131)
  %133 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %6, align 8
  %134 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.ioctl_gntdev_map_grant_ref*, %struct.ioctl_gntdev_map_grant_ref** %3, align 8
  %137 = getelementptr inbounds %struct.ioctl_gntdev_map_grant_ref, %struct.ioctl_gntdev_map_grant_ref* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* %5, align 4
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %121, %111, %57, %13
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyin(i32*, %struct.ioctl_gntdev_grant_ref*, i32) #1

declare dso_local i32 @free(%struct.gntdev_gmap*, i32) #1

declare dso_local i32 @get_file_offset(%struct.per_user_data*, i64, i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.gntdev_gmap*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
