; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_concat.c_g_raid_tr_kerneldump_concat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_concat.c_g_raid_tr_kerneldump_concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { %struct.g_raid_volume* }
%struct.g_raid_volume = type { i64, i32, %struct.g_raid_subdisk* }
%struct.g_raid_subdisk = type { i64 }

@G_RAID_VOLUME_S_OPTIMAL = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Request starts after volume end (%ju)\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Request ends after volume end (%ju, %zu)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_tr_object*, i8*, i32, i64, i64)* @g_raid_tr_kerneldump_concat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_tr_kerneldump_concat(%struct.g_raid_tr_object* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.g_raid_tr_object*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.g_raid_volume*, align 8
  %13 = alloca %struct.g_raid_subdisk*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.g_raid_tr_object* %0, %struct.g_raid_tr_object** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %20 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %7, align 8
  %21 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %20, i32 0, i32 0
  %22 = load %struct.g_raid_volume*, %struct.g_raid_volume** %21, align 8
  store %struct.g_raid_volume* %22, %struct.g_raid_volume** %12, align 8
  %23 = load %struct.g_raid_volume*, %struct.g_raid_volume** %12, align 8
  %24 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @G_RAID_VOLUME_S_OPTIMAL, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %6, align 4
  br label %132

30:                                               ; preds = %5
  %31 = load i64, i64* %10, align 8
  store i64 %31, i64* %15, align 8
  %32 = load i64, i64* %11, align 8
  store i64 %32, i64* %17, align 8
  %33 = load i8*, i8** %8, align 8
  store i8* %33, i8** %14, align 8
  store i32 0, i32* %19, align 4
  br label %34

34:                                               ; preds = %53, %30
  %35 = load i32, i32* %19, align 4
  %36 = load %struct.g_raid_volume*, %struct.g_raid_volume** %12, align 8
  %37 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load i64, i64* %15, align 8
  %42 = load %struct.g_raid_volume*, %struct.g_raid_volume** %12, align 8
  %43 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %42, i32 0, i32 2
  %44 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %43, align 8
  %45 = load i32, i32* %19, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %44, i64 %46
  %48 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %41, %49
  br label %51

51:                                               ; preds = %40, %34
  %52 = phi i1 [ false, %34 ], [ %50, %40 ]
  br i1 %52, label %53, label %66

53:                                               ; preds = %51
  %54 = load %struct.g_raid_volume*, %struct.g_raid_volume** %12, align 8
  %55 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %54, i32 0, i32 2
  %56 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %55, align 8
  %57 = load i32, i32* %19, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %56, i64 %58
  %60 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %15, align 8
  %63 = sub nsw i64 %62, %61
  store i64 %63, i64* %15, align 8
  %64 = load i32, i32* %19, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %19, align 4
  br label %34

66:                                               ; preds = %51
  %67 = load i32, i32* %19, align 4
  %68 = load %struct.g_raid_volume*, %struct.g_raid_volume** %12, align 8
  %69 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  %72 = zext i1 %71 to i32
  %73 = load i64, i64* %10, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = call i32 @KASSERT(i32 %72, i8* %74)
  br label %76

76:                                               ; preds = %128, %66
  %77 = load %struct.g_raid_volume*, %struct.g_raid_volume** %12, align 8
  %78 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %77, i32 0, i32 2
  %79 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %78, align 8
  %80 = load i32, i32* %19, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %79, i64 %81
  store %struct.g_raid_subdisk* %82, %struct.g_raid_subdisk** %13, align 8
  %83 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %13, align 8
  %84 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %15, align 8
  %87 = sub nsw i64 %85, %86
  %88 = load i64, i64* %17, align 8
  %89 = call i64 @MIN(i64 %87, i64 %88)
  store i64 %89, i64* %16, align 8
  %90 = load %struct.g_raid_volume*, %struct.g_raid_volume** %12, align 8
  %91 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %90, i32 0, i32 2
  %92 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %91, align 8
  %93 = load i32, i32* %19, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %92, i64 %94
  %96 = load i8*, i8** %14, align 8
  %97 = load i64, i64* %15, align 8
  %98 = load i64, i64* %16, align 8
  %99 = call i32 @g_raid_subdisk_kerneldump(%struct.g_raid_subdisk* %95, i8* %96, i32 0, i64 %97, i64 %98)
  store i32 %99, i32* %18, align 4
  %100 = load i32, i32* %18, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %76
  %103 = load i32, i32* %18, align 4
  store i32 %103, i32* %6, align 4
  br label %132

104:                                              ; preds = %76
  %105 = load i64, i64* %16, align 8
  %106 = load i64, i64* %17, align 8
  %107 = sub nsw i64 %106, %105
  store i64 %107, i64* %17, align 8
  %108 = load i64, i64* %16, align 8
  %109 = load i8*, i8** %14, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 %108
  store i8* %110, i8** %14, align 8
  store i64 0, i64* %15, align 8
  %111 = load i32, i32* %19, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %19, align 4
  %113 = load i32, i32* %19, align 4
  %114 = load %struct.g_raid_volume*, %struct.g_raid_volume** %12, align 8
  %115 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %121, label %118

118:                                              ; preds = %104
  %119 = load i64, i64* %17, align 8
  %120 = icmp eq i64 %119, 0
  br label %121

121:                                              ; preds = %118, %104
  %122 = phi i1 [ true, %104 ], [ %120, %118 ]
  %123 = zext i1 %122 to i32
  %124 = load i64, i64* %10, align 8
  %125 = load i64, i64* %11, align 8
  %126 = inttoptr i64 %125 to i8*
  %127 = call i32 @KASSERT(i32 %123, i8* %126)
  br label %128

128:                                              ; preds = %121
  %129 = load i64, i64* %17, align 8
  %130 = icmp sgt i64 %129, 0
  br i1 %130, label %76, label %131

131:                                              ; preds = %128
  store i32 0, i32* %6, align 4
  br label %132

132:                                              ; preds = %131, %102, %28
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @g_raid_subdisk_kerneldump(%struct.g_raid_subdisk*, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
