; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_unsolicited_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_unsolicited_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32**, i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@SCI_FAILURE = common dso_local global i64 0, align 8
@UNSOLICITED_FRAME_IN_USE = common dso_local global i32 0, align 4
@SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX = common dso_local global i64 0, align 8
@SCI_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i64)* @scic_sds_controller_unsolicited_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scic_sds_controller_unsolicited_frame(%struct.TYPE_12__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i64, i64* @SCI_FAILURE, align 8
  store i64 %11, i64* %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @SCU_GET_FRAME_INDEX(i64 %12)
  store i64 %13, i64* %6, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %7, align 8
  %23 = load i32, i32* @UNSOLICITED_FRAME_IN_USE, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 %23, i32* %31, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @SCU_GET_FRAME_ERROR(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @scic_sds_controller_release_frame(%struct.TYPE_12__* %36, i64 %37)
  br label %108

39:                                               ; preds = %2
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load i64, i64* %4, align 8
  %46 = call i64 @SCU_GET_PROTOCOL_ENGINE_INDEX(i64 %45)
  store i64 %46, i64* %5, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %8, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load i32*, i32** %8, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i64 @scic_sds_phy_frame_handler(i32* %55, i64 %56)
  store i64 %57, i64* %10, align 8
  br label %58

58:                                               ; preds = %54, %44
  br label %103

59:                                               ; preds = %39
  %60 = load i64, i64* %4, align 8
  %61 = call i64 @SCU_GET_COMPLETION_INDEX(i64 %60)
  store i64 %61, i64* %5, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* @SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  %66 = load i64, i64* %4, align 8
  %67 = call i64 @SCU_GET_PROTOCOL_ENGINE_INDEX(i64 %66)
  store i64 %67, i64* %5, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %5, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %8, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i64 @scic_sds_phy_frame_handler(i32* %73, i64 %74)
  store i64 %75, i64* %10, align 8
  br label %102

76:                                               ; preds = %59
  %77 = load i64, i64* %5, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ult i64 %77, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32**, i32*** %84, align 8
  %86 = load i64, i64* %5, align 8
  %87 = getelementptr inbounds i32*, i32** %85, i64 %86
  %88 = load i32*, i32** %87, align 8
  store i32* %88, i32** %9, align 8
  br label %90

89:                                               ; preds = %76
  store i32* null, i32** %9, align 8
  br label %90

90:                                               ; preds = %89, %82
  %91 = load i32*, i32** %9, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i32*, i32** %9, align 8
  %95 = load i64, i64* %6, align 8
  %96 = call i64 @scic_sds_remote_device_frame_handler(i32* %94, i64 %95)
  store i64 %96, i64* %10, align 8
  br label %101

97:                                               ; preds = %90
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @scic_sds_controller_release_frame(%struct.TYPE_12__* %98, i64 %99)
  br label %101

101:                                              ; preds = %97, %93
  br label %102

102:                                              ; preds = %101, %65
  br label %103

103:                                              ; preds = %102, %58
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* @SCI_SUCCESS, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %108

108:                                              ; preds = %35, %107, %103
  ret void
}

declare dso_local i64 @SCU_GET_FRAME_INDEX(i64) #1

declare dso_local i64 @SCU_GET_FRAME_ERROR(i64) #1

declare dso_local i32 @scic_sds_controller_release_frame(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @SCU_GET_PROTOCOL_ENGINE_INDEX(i64) #1

declare dso_local i64 @scic_sds_phy_frame_handler(i32*, i64) #1

declare dso_local i64 @SCU_GET_COMPLETION_INDEX(i64) #1

declare dso_local i64 @scic_sds_remote_device_frame_handler(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
