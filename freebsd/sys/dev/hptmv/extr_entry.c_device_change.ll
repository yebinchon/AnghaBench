; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptmv/extr_entry.c_device_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptmv/extr_entry.c_device_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_20__*, %struct.TYPE_21__, i64 }
%struct.TYPE_20__ = type { i64, i32, %struct.TYPE_19__*, i32, i32, %struct.TYPE_16__, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32** }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i64, i64 }
%struct.TYPE_21__ = type { i32, i32** }

@VD_ATAPI = common dso_local global i64 0, align 8
@VD_REMOVABLE = common dso_local global i64 0, align 8
@VD_SINGLE_DISK = common dso_local global i64 0, align 8
@SAVE_FOR_RAID_INFO = common dso_local global i64 0, align 8
@pfnSendCommand = common dso_local global i32* null, align 8
@pfnDeviceFailed = common dso_local global i32* null, align 8
@ET_DEVICE_PLUGGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, i64, i32)* @device_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_change(%struct.TYPE_22__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  store %struct.TYPE_21__* %11, %struct.TYPE_21__** %8, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  %14 = load i32**, i32*** %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i32*, i32** %14, i64 %15
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %113

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %105

24:                                               ; preds = %21
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i64 %28
  store %struct.TYPE_20__* %29, %struct.TYPE_20__** %7, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @init_vdev_params(%struct.TYPE_22__* %30, i64 %31)
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %24
  %40 = load i64, i64* @VD_ATAPI, align 8
  br label %54

41:                                               ; preds = %24
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i64, i64* @VD_REMOVABLE, align 8
  br label %52

50:                                               ; preds = %41
  %51 = load i64, i64* @VD_SINGLE_DISK, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i64 [ %49, %48 ], [ %51, %50 ]
  br label %54

54:                                               ; preds = %52, %39
  %55 = phi i64 [ %40, %39 ], [ %53, %52 ]
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SAVE_FOR_RAID_INFO, align 8
  %64 = sub nsw i64 %62, %63
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 6
  store i64 %64, i64* %66, align 8
  %67 = load i32*, i32** @pfnSendCommand, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = load i32*, i32** @pfnDeviceFailed, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 1
  store i32 1, i32* %84, align 8
  %85 = load i32, i32* @ET_DEVICE_PLUGGED, align 4
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %87 = call i32 @fNotifyGUI(i32 %85, %struct.TYPE_20__* %86)
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %89 = call i32 @fCheckBootable(%struct.TYPE_20__* %88)
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %91 = call i32 @RegisterVDevice(%struct.TYPE_20__* %90)
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %54
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 2
  store i64 0, i64* %98, align 8
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @BeepOff(i32 %102)
  br label %104

104:                                              ; preds = %96, %54
  br label %113

105:                                              ; preds = %21
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %107, align 8
  %109 = load i64, i64* %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i64 %109
  store %struct.TYPE_20__* %110, %struct.TYPE_20__** %7, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %112 = call i32 @failDevice(%struct.TYPE_20__* %111)
  br label %113

113:                                              ; preds = %20, %105, %104
  ret void
}

declare dso_local i32 @init_vdev_params(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @fNotifyGUI(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @fCheckBootable(%struct.TYPE_20__*) #1

declare dso_local i32 @RegisterVDevice(%struct.TYPE_20__*) #1

declare dso_local i32 @BeepOff(i32) #1

declare dso_local i32 @failDevice(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
