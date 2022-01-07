; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port_configuration_agent.c_scic_sds_apc_agent_timeout_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port_configuration_agent.c_scic_sds_apc_agent_timeout_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64 }
%struct.TYPE_11__ = type { i32, i64, i32* }

@SCIC_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"scic_sds_apc_agent_timeout_handler(0x%08x) enter\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@SCI_MAX_PHYS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @scic_sds_apc_agent_timeout_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scic_sds_apc_agent_timeout_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %5, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %10 = call %struct.TYPE_10__* @scic_sds_controller_get_port_configuration_agent(%struct.TYPE_11__* %9)
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %4, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = call i32 @sci_base_object_get_logger(%struct.TYPE_11__* %11)
  %13 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %14 = load i32, i32* @SCIC_LOG_OBJECT_PORT, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = ptrtoint %struct.TYPE_11__* %16 to i32
  %18 = call i32 @SCIC_LOG_TRACE(i32 %17)
  %19 = load i64, i64* @FALSE, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  store i64 %19, i64* %21, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = xor i32 %24, -1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %25, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %88

32:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %55, %32
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @SCI_MAX_PHYS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %3, align 4
  %40 = shl i32 1, %39
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i64, i64* @FALSE, align 8
  %53 = call i32 @scic_sds_apc_agent_configure_ports(%struct.TYPE_11__* %44, %struct.TYPE_10__* %45, i32* %51, i64 %52)
  br label %54

54:                                               ; preds = %43, %37
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %33

58:                                               ; preds = %33
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %87

66:                                               ; preds = %58
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @SCI_MAX_PHYS, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %66
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @FALSE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %80 = call i64 @scic_sds_controller_is_start_complete(%struct.TYPE_11__* %79)
  %81 = load i64, i64* @TRUE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %85 = call i32 @scic_sds_controller_port_agent_configured_ports(%struct.TYPE_11__* %84)
  br label %86

86:                                               ; preds = %83, %78
  br label %87

87:                                               ; preds = %86, %72, %66, %58
  br label %88

88:                                               ; preds = %87, %1
  ret void
}

declare dso_local %struct.TYPE_10__* @scic_sds_controller_get_port_configuration_agent(%struct.TYPE_11__*) #1

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_11__*) #1

declare dso_local i32 @scic_sds_apc_agent_configure_ports(%struct.TYPE_11__*, %struct.TYPE_10__*, i32*, i64) #1

declare dso_local i64 @scic_sds_controller_is_start_complete(%struct.TYPE_11__*) #1

declare dso_local i32 @scic_sds_controller_port_agent_configured_ports(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
