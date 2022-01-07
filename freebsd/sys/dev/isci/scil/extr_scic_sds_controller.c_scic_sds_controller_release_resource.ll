; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_release_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32*, i32, i32*, %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { i32* }

@SCIC_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_INITIALIZATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"scic_sds_controller_release_resource(0x%x) enter\0A\00", align 1
@SCI_MAX_PORTS = common dso_local global i64 0, align 8
@SCI_MAX_PHYS = common dso_local global i64 0, align 8
@SCI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @scic_sds_controller_release_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scic_sds_controller_release_resource(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = call i32 @sci_base_object_get_logger(%struct.TYPE_10__* %6)
  %8 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %9 = load i32, i32* @SCIC_LOG_OBJECT_INITIALIZATION, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = ptrtoint %struct.TYPE_10__* %11 to i32
  %13 = call i32 @SCIC_LOG_TRACE(i32 %12)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 5
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @scic_cb_timer_destroy(%struct.TYPE_10__* %19, i32* %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 5
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %18, %1
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @scic_cb_timer_destroy(%struct.TYPE_10__* %33, i32* %37)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %32, %26
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @scic_cb_timer_destroy(%struct.TYPE_10__* %48, i32* %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %47, %42
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = call i32 @scic_sds_port_configuration_agent_release_resource(%struct.TYPE_10__* %56, i32* %58)
  store i64 0, i64* %5, align 8
  br label %60

60:                                               ; preds = %74, %55
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* @SCI_MAX_PORTS, align 8
  %63 = add i64 %62, 1
  %64 = icmp ult i64 %61, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %60
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %5, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32* %70, i32** %3, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @scic_sds_port_release_resource(%struct.TYPE_10__* %71, i32* %72)
  br label %74

74:                                               ; preds = %65
  %75 = load i64, i64* %5, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %5, align 8
  br label %60

77:                                               ; preds = %60
  store i64 0, i64* %5, align 8
  br label %78

78:                                               ; preds = %91, %77
  %79 = load i64, i64* %5, align 8
  %80 = load i64, i64* @SCI_MAX_PHYS, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %78
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %5, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %4, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @scic_sds_phy_release_resource(%struct.TYPE_10__* %88, i32* %89)
  br label %91

91:                                               ; preds = %82
  %92 = load i64, i64* %5, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %5, align 8
  br label %78

94:                                               ; preds = %78
  %95 = load i32, i32* @SCI_SUCCESS, align 4
  ret i32 %95
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_10__*) #1

declare dso_local i32 @scic_cb_timer_destroy(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @scic_sds_port_configuration_agent_release_resource(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @scic_sds_port_release_resource(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @scic_sds_phy_release_resource(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
