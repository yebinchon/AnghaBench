; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid0.c_g_raid_tr_kerneldump_raid0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid0.c_g_raid_tr_kerneldump_raid0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { %struct.g_raid_volume* }
%struct.g_raid_volume = type { i64, i64, i64, i32* }

@G_RAID_VOLUME_S_OPTIMAL = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_tr_object*, i8*, i32, i64, i64)* @g_raid_tr_kerneldump_raid0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_tr_kerneldump_raid0(%struct.g_raid_tr_object* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.g_raid_tr_object*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.g_raid_volume*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.g_raid_tr_object* %0, %struct.g_raid_tr_object** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %22 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %7, align 8
  %23 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %22, i32 0, i32 0
  %24 = load %struct.g_raid_volume*, %struct.g_raid_volume** %23, align 8
  store %struct.g_raid_volume* %24, %struct.g_raid_volume** %12, align 8
  %25 = load %struct.g_raid_volume*, %struct.g_raid_volume** %12, align 8
  %26 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @G_RAID_VOLUME_S_OPTIMAL, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %6, align 4
  br label %99

32:                                               ; preds = %5
  %33 = load i8*, i8** %8, align 8
  store i8* %33, i8** %13, align 8
  %34 = load %struct.g_raid_volume*, %struct.g_raid_volume** %12, align 8
  %35 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %20, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %20, align 8
  %39 = udiv i64 %37, %38
  store i64 %39, i64* %17, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %20, align 8
  %42 = urem i64 %40, %41
  store i64 %42, i64* %15, align 8
  %43 = load i64, i64* %17, align 8
  %44 = load %struct.g_raid_volume*, %struct.g_raid_volume** %12, align 8
  %45 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = urem i64 %43, %46
  store i64 %47, i64* %19, align 8
  %48 = load i64, i64* %17, align 8
  %49 = load %struct.g_raid_volume*, %struct.g_raid_volume** %12, align 8
  %50 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = udiv i64 %48, %51
  %53 = load i64, i64* %20, align 8
  %54 = mul i64 %52, %53
  store i64 %54, i64* %14, align 8
  %55 = load i64, i64* %11, align 8
  store i64 %55, i64* %18, align 8
  br label %56

56:                                               ; preds = %95, %32
  %57 = load i64, i64* %20, align 8
  %58 = load i64, i64* %15, align 8
  %59 = sub i64 %57, %58
  %60 = load i64, i64* %18, align 8
  %61 = call i64 @MIN(i64 %59, i64 %60)
  store i64 %61, i64* %16, align 8
  %62 = load %struct.g_raid_volume*, %struct.g_raid_volume** %12, align 8
  %63 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* %19, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i8*, i8** %13, align 8
  %68 = load i64, i64* %14, align 8
  %69 = load i64, i64* %15, align 8
  %70 = add i64 %68, %69
  %71 = load i64, i64* %16, align 8
  %72 = call i32 @g_raid_subdisk_kerneldump(i32* %66, i8* %67, i32 0, i64 %70, i64 %71)
  store i32 %72, i32* %21, align 4
  %73 = load i32, i32* %21, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %56
  %76 = load i32, i32* %21, align 4
  store i32 %76, i32* %6, align 4
  br label %99

77:                                               ; preds = %56
  %78 = load i64, i64* %19, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %19, align 8
  %80 = load %struct.g_raid_volume*, %struct.g_raid_volume** %12, align 8
  %81 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp uge i64 %79, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  store i64 0, i64* %19, align 8
  %85 = load i64, i64* %20, align 8
  %86 = load i64, i64* %14, align 8
  %87 = add i64 %86, %85
  store i64 %87, i64* %14, align 8
  br label %88

88:                                               ; preds = %84, %77
  %89 = load i64, i64* %16, align 8
  %90 = load i64, i64* %18, align 8
  %91 = sub i64 %90, %89
  store i64 %91, i64* %18, align 8
  %92 = load i64, i64* %16, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 %92
  store i8* %94, i8** %13, align 8
  store i64 0, i64* %15, align 8
  br label %95

95:                                               ; preds = %88
  %96 = load i64, i64* %18, align 8
  %97 = icmp ugt i64 %96, 0
  br i1 %97, label %56, label %98

98:                                               ; preds = %95
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %98, %75, %30
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @g_raid_subdisk_kerneldump(i32*, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
