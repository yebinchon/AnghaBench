; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_phy.c_scic_sas_phy_get_properties.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_phy.c_scic_sas_phy_get_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@SCIC_LOG_OBJECT_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"scic_sas_phy_get_properties(0x%x, 0x%x) enter\0A\00", align 1
@SCIC_SDS_PHY_PROTOCOL_SAS = common dso_local global i64 0, align 8
@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCI_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scic_sas_phy_get_properties(i64 %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %8, %struct.TYPE_14__** %6, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %10 = call i32 @sci_base_object_get_logger(%struct.TYPE_14__* %9)
  %11 = load i32, i32* @SCIC_LOG_OBJECT_PHY, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = ptrtoint %struct.TYPE_15__* %13 to i32
  %15 = call i32 @SCIC_LOG_TRACE(i32 %14)
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SCIC_SDS_PHY_PROTOCOL_SAS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %2
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = call i32 @memcpy(i32* %23, i32* %27, i32 4)
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %30 = call i32 @SCU_SAS_RECPHYCAP_READ(%struct.TYPE_14__* %29)
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  %35 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %35, i32* %3, align 4
  br label %38

36:                                               ; preds = %2
  %37 = load i32, i32* @SCI_FAILURE, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %21
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_14__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @SCU_SAS_RECPHYCAP_READ(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
