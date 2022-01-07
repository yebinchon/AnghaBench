; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1e.c_g_raid_tr_kerneldump_raid1e.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1e.c_g_raid_tr_kerneldump_raid1e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { %struct.g_raid_volume* }
%struct.g_raid_volume = type { i64, i64, %struct.g_raid_subdisk* }
%struct.g_raid_subdisk = type { i32, i64 }
%struct.bio_queue_head = type { i32 }

@N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_tr_object*, i8*, i32, i64, i64)* @g_raid_tr_kerneldump_raid1e to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_tr_kerneldump_raid1e(%struct.g_raid_tr_object* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.g_raid_tr_object*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.g_raid_volume*, align 8
  %13 = alloca %struct.g_raid_subdisk*, align 8
  %14 = alloca %struct.bio_queue_head, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.g_raid_tr_object* %0, %struct.g_raid_tr_object** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %24 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %7, align 8
  %25 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %24, i32 0, i32 0
  %26 = load %struct.g_raid_volume*, %struct.g_raid_volume** %25, align 8
  store %struct.g_raid_volume* %26, %struct.g_raid_volume** %12, align 8
  %27 = load i8*, i8** %8, align 8
  store i8* %27, i8** %15, align 8
  %28 = load %struct.g_raid_volume*, %struct.g_raid_volume** %12, align 8
  %29 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %21, align 8
  %31 = load %struct.g_raid_volume*, %struct.g_raid_volume** %12, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @V2P(%struct.g_raid_volume* %31, i64 %32, i64* %20, i64* %16, i64* %17)
  %34 = load i64, i64* %11, align 8
  store i64 %34, i64* %19, align 8
  %35 = call i32 @bioq_init(%struct.bio_queue_head* %14)
  br label %36

36:                                               ; preds = %98, %5
  %37 = load i64, i64* %19, align 8
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %39, label %105

39:                                               ; preds = %36
  %40 = load i64, i64* %21, align 8
  %41 = load i64, i64* %17, align 8
  %42 = sub i64 %40, %41
  %43 = load i64, i64* %19, align 8
  %44 = call i64 @MIN(i64 %42, i64 %43)
  store i64 %44, i64* %18, align 8
  store i32 0, i32* %22, align 4
  br label %45

45:                                               ; preds = %95, %39
  %46 = load i32, i32* %22, align 4
  %47 = load i32, i32* @N, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %98

49:                                               ; preds = %45
  %50 = load %struct.g_raid_volume*, %struct.g_raid_volume** %12, align 8
  %51 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %50, i32 0, i32 2
  %52 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %51, align 8
  %53 = load i64, i64* %20, align 8
  %54 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %52, i64 %53
  store %struct.g_raid_subdisk* %54, %struct.g_raid_subdisk** %13, align 8
  %55 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %13, align 8
  %56 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %69 [
    i32 131, label %58
    i32 128, label %58
    i32 129, label %58
    i32 130, label %59
  ]

58:                                               ; preds = %49, %49, %49
  br label %70

59:                                               ; preds = %49
  %60 = load i64, i64* %16, align 8
  %61 = load i64, i64* %17, align 8
  %62 = add i64 %60, %61
  %63 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %13, align 8
  %64 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp uge i64 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %83

68:                                               ; preds = %59
  br label %70

69:                                               ; preds = %49
  br label %83

70:                                               ; preds = %68, %58
  %71 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %13, align 8
  %72 = load i8*, i8** %15, align 8
  %73 = load i64, i64* %16, align 8
  %74 = load i64, i64* %17, align 8
  %75 = add i64 %73, %74
  %76 = load i64, i64* %18, align 8
  %77 = call i32 @g_raid_subdisk_kerneldump(%struct.g_raid_subdisk* %71, i8* %72, i32 0, i64 %75, i64 %76)
  store i32 %77, i32* %23, align 4
  %78 = load i32, i32* %23, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = load i32, i32* %23, align 4
  store i32 %81, i32* %6, align 4
  br label %106

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82, %69, %67
  %84 = load i64, i64* %20, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %20, align 8
  %86 = load %struct.g_raid_volume*, %struct.g_raid_volume** %12, align 8
  %87 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp uge i64 %85, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  store i64 0, i64* %20, align 8
  %91 = load i64, i64* %21, align 8
  %92 = load i64, i64* %16, align 8
  %93 = add i64 %92, %91
  store i64 %93, i64* %16, align 8
  br label %94

94:                                               ; preds = %90, %83
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %22, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %22, align 4
  br label %45

98:                                               ; preds = %45
  %99 = load i64, i64* %18, align 8
  %100 = load i64, i64* %19, align 8
  %101 = sub i64 %100, %99
  store i64 %101, i64* %19, align 8
  %102 = load i64, i64* %18, align 8
  %103 = load i8*, i8** %15, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 %102
  store i8* %104, i8** %15, align 8
  store i64 0, i64* %17, align 8
  br label %36

105:                                              ; preds = %36
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %105, %80
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32 @V2P(%struct.g_raid_volume*, i64, i64*, i64*, i64*) #1

declare dso_local i32 @bioq_init(%struct.bio_queue_head*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @g_raid_subdisk_kerneldump(%struct.g_raid_subdisk*, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
