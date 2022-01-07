; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_phy.c_scic_phy_get_properties.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_phy.c_scic_phy_get_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, %struct.TYPE_29__, i32, i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__, i32 }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_27__ }
%struct.TYPE_20__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64 }

@SCIC_LOG_OBJECT_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"scic_phy_get_properties(0x%x, 0x%x) enter\0A\00", align 1
@SCI_INVALID_HANDLE = common dso_local global i64 0, align 8
@SCI_FAILURE_INVALID_PHY = common dso_local global i32 0, align 4
@SCIC_SDS_PARM_GEN3_SPEED = common dso_local global i64 0, align 8
@SCI_SAS_600_GB = common dso_local global i32 0, align 4
@SCIC_SDS_PARM_GEN2_SPEED = common dso_local global i64 0, align 8
@SCI_SAS_300_GB = common dso_local global i32 0, align 4
@SCI_SAS_150_GB = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scic_phy_get_properties(i64 %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %9, %struct.TYPE_23__** %6, align 8
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %11 = call i32 @sci_base_object_get_logger(%struct.TYPE_23__* %10)
  %12 = load i32, i32* @SCIC_LOG_OBJECT_PHY, align 4
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %15 = ptrtoint %struct.TYPE_24__* %14 to i32
  %16 = call i32 @SCIC_LOG_TRACE(i32 %15)
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @SCI_INVALID_HANDLE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @SCI_FAILURE_INVALID_PHY, align 4
  store i32 %21, i32* %3, align 4
  br label %123

22:                                               ; preds = %2
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %24 = call i32 @memset(%struct.TYPE_24__* %23, i32 0, i32 32)
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %32, align 8
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %7, align 8
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @SCIC_SDS_PARM_GEN3_SPEED, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %22
  %49 = load i32, i32* @SCI_SAS_600_GB, align 4
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  br label %65

52:                                               ; preds = %22
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @SCIC_SDS_PARM_GEN2_SPEED, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* @SCI_SAS_300_GB, align 4
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  br label %64

60:                                               ; preds = %52
  %61 = load i32, i32* @SCI_SAS_150_GB, align 4
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %60, %56
  br label %65

65:                                               ; preds = %64, %48
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %72 = call i32 @scic_sds_phy_get_port(%struct.TYPE_23__* %71)
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %77, i32 0, i32 1
  %79 = call i32 @scic_sds_phy_get_protocols(%struct.TYPE_23__* %75, i32* %78)
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_32__*, %struct.TYPE_32__** %87, align 8
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %88, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 1
  store i32 %96, i32* %100, align 4
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_32__*, %struct.TYPE_32__** %108, align 8
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %109, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 0
  store i32 %117, i32* %121, align 8
  %122 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %65, %20
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_23__*) #1

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @scic_sds_phy_get_port(%struct.TYPE_23__*) #1

declare dso_local i32 @scic_sds_phy_get_protocols(%struct.TYPE_23__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
