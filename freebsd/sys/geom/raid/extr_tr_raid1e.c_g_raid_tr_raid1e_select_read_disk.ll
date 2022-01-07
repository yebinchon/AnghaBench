; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1e.c_g_raid_tr_raid1e_select_read_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1e.c_g_raid_tr_raid1e_select_read_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_volume = type { i32, i64, %struct.g_raid_subdisk* }
%struct.g_raid_subdisk = type { i32, i32, i64, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@N = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_LOAD_SCALE = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_TRACK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_volume*, i32, i64, i64, i32)* @g_raid_tr_raid1e_select_read_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_tr_raid1e_select_read_disk(%struct.g_raid_volume* %0, i32 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.g_raid_volume*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.g_raid_subdisk*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.g_raid_volume* %0, %struct.g_raid_volume** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 -1, i32* %14, align 4
  %17 = load i32, i32* @INT_MAX, align 4
  store i32 %17, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %130, %5
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @N, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %133

22:                                               ; preds = %18
  %23 = load %struct.g_raid_volume*, %struct.g_raid_volume** %6, align 8
  %24 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %23, i32 0, i32 2
  %25 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %13, align 4
  %28 = add nsw i32 %26, %27
  %29 = load %struct.g_raid_volume*, %struct.g_raid_volume** %6, align 8
  %30 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = srem i32 %28, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %25, i64 %33
  store %struct.g_raid_subdisk* %34, %struct.g_raid_subdisk** %11, align 8
  %35 = load i64, i64* %8, align 8
  store i64 %35, i64* %12, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %36, %37
  %39 = load %struct.g_raid_volume*, %struct.g_raid_volume** %6, align 8
  %40 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sge i32 %38, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %22
  %44 = load %struct.g_raid_volume*, %struct.g_raid_volume** %6, align 8
  %45 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %12, align 8
  %48 = add nsw i64 %47, %46
  store i64 %48, i64* %12, align 8
  br label %49

49:                                               ; preds = %43, %22
  %50 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %11, align 8
  %51 = call i32 @G_RAID_SUBDISK_LOAD(%struct.g_raid_subdisk* %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %11, align 8
  %54 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = shl i32 1, %55
  %57 = and i32 %52, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %130

60:                                               ; preds = %49
  %61 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %11, align 8
  %62 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %90 [
    i32 131, label %64
    i32 129, label %65
    i32 128, label %75
    i32 130, label %80
  ]

64:                                               ; preds = %60
  br label %91

65:                                               ; preds = %60
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* %8, align 8
  %68 = add nsw i64 %66, %67
  %69 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %11, align 8
  %70 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %91

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %60, %74
  %76 = load i32, i32* %13, align 4
  %77 = shl i32 %76, 24
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %15, align 4
  br label %91

80:                                               ; preds = %60
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* %8, align 8
  %83 = add nsw i64 %81, %82
  %84 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %11, align 8
  %85 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %91

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %60, %89
  br label %130

91:                                               ; preds = %88, %75, %73, %64
  %92 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %11, align 8
  %93 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @min(i32 %94, i32 255)
  %96 = shl i32 %95, 16
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %15, align 4
  %99 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %11, align 8
  %100 = call i64 @G_RAID_SUBDISK_POS(%struct.g_raid_subdisk* %99)
  %101 = load i64, i64* %12, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %91
  %104 = load i32, i32* @G_RAID_SUBDISK_LOAD_SCALE, align 4
  %105 = mul nsw i32 2, %104
  %106 = load i32, i32* %15, align 4
  %107 = sub nsw i32 %106, %105
  store i32 %107, i32* %15, align 4
  br label %122

108:                                              ; preds = %91
  %109 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %11, align 8
  %110 = call i64 @G_RAID_SUBDISK_POS(%struct.g_raid_subdisk* %109)
  %111 = load i64, i64* %12, align 8
  %112 = sub nsw i64 %110, %111
  %113 = call i64 @ABS(i64 %112)
  %114 = load i64, i64* @G_RAID_SUBDISK_TRACK_SIZE, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %108
  %117 = load i32, i32* @G_RAID_SUBDISK_LOAD_SCALE, align 4
  %118 = mul nsw i32 1, %117
  %119 = load i32, i32* %15, align 4
  %120 = sub nsw i32 %119, %118
  store i32 %120, i32* %15, align 4
  br label %121

121:                                              ; preds = %116, %108
  br label %122

122:                                              ; preds = %121, %103
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %16, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i32, i32* %15, align 4
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* %13, align 4
  store i32 %128, i32* %14, align 4
  br label %129

129:                                              ; preds = %126, %122
  br label %130

130:                                              ; preds = %129, %90, %59
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %13, align 4
  br label %18

133:                                              ; preds = %18
  %134 = load i32, i32* %14, align 4
  ret i32 %134
}

declare dso_local i32 @G_RAID_SUBDISK_LOAD(%struct.g_raid_subdisk*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @G_RAID_SUBDISK_POS(%struct.g_raid_subdisk*) #1

declare dso_local i64 @ABS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
