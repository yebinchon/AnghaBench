; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptmv/extr_gui_lib.c_hpt_get_logical_devices.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptmv/extr_gui_lib.c_hpt_get_logical_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_5__* }

@INVALID_DEVICEID = common dso_local global i64 0, align 8
@gIal_Adapter = common dso_local global %struct.TYPE_6__* null, align 8
@MV_SATA_CHANNELS_NUM = common dso_local global i32 0, align 4
@VD_SPARE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpt_get_logical_devices(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %21, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load i64, i64* @INVALID_DEVICEID, align 8
  %17 = load i64*, i64** %3, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  store i64 %16, i64* %20, align 8
  br label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %11

24:                                               ; preds = %11
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gIal_Adapter, align 8
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %10, align 8
  br label %26

26:                                               ; preds = %95, %24
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %99

29:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %91, %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @MV_SATA_CHANNELS_NUM, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %94

34:                                               ; preds = %30
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %8, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %9, align 8
  br label %42

42:                                               ; preds = %47, %34
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = icmp ne %struct.TYPE_5__* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %9, align 8
  br label %42

51:                                               ; preds = %42
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @VD_SPARE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %91

58:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %74, %58
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %59
  %64 = load i64*, i64** %3, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %70 = call i64 @VDEV_TO_ID(%struct.TYPE_5__* %69)
  %71 = icmp eq i64 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %90

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %59

77:                                               ; preds = %59
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %79 = call i64 @VDEV_TO_ID(%struct.TYPE_5__* %78)
  %80 = load i64*, i64** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i64, i64* %80, i64 %83
  store i64 %79, i64* %84, align 8
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  br label %100

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %72
  br label %91

91:                                               ; preds = %90, %57
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %30

94:                                               ; preds = %30
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  store %struct.TYPE_6__* %98, %struct.TYPE_6__** %10, align 8
  br label %26

99:                                               ; preds = %26
  br label %100

100:                                              ; preds = %99, %88
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i64 @VDEV_TO_ID(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
