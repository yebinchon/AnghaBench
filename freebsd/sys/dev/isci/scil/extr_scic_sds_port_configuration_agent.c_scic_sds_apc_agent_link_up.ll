; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port_configuration_agent.c_scic_sds_apc_agent_link_up.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port_configuration_agent.c_scic_sds_apc_agent_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@SCIC_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_PORT = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"scic_sds_apc_agent_link_up(0x%08x, 0x%08x, 0x%08x, 0x%08x) enter\0A\00", align 1
@SCI_INVALID_HANDLE = common dso_local global %struct.TYPE_12__* null, align 8
@SCIC_SDS_APC_WAIT_LINK_UP_NOTIFICATION = common dso_local global i32 0, align 4
@SCI_BASE_PORT_STATE_RESETTING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*, %struct.TYPE_12__*, i32*)* @scic_sds_apc_agent_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scic_sds_apc_agent_link_up(i32* %0, %struct.TYPE_13__* %1, %struct.TYPE_12__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @sci_base_object_get_logger(i32* %9)
  %11 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %12 = load i32, i32* @SCIC_LOG_OBJECT_PORT, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SCIC_LOG_OBJECT_PHY, align 4
  %15 = or i32 %13, %14
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = ptrtoint i32* %19 to i32
  %21 = call i32 @SCIC_LOG_TRACE(i32 %20)
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** @SCI_INVALID_HANDLE, align 8
  %24 = icmp eq %struct.TYPE_12__* %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %4
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @scic_sds_phy_get_index(i32* %26)
  %28 = shl i32 1, %27
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* @SCIC_SDS_APC_WAIT_LINK_UP_NOTIFICATION, align 4
  %37 = call i32 @scic_sds_apc_agent_start_timer(i32* %33, %struct.TYPE_13__* %34, i32* %35, i32 %36)
  br label %60

38:                                               ; preds = %4
  %39 = load i64, i64* @SCI_BASE_PORT_STATE_RESETTING, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %39, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %38
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @scic_sds_phy_get_index(i32* %47)
  %49 = shl i32 1, %48
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @scic_sds_port_link_up(%struct.TYPE_12__* %54, i32* %55)
  br label %59

57:                                               ; preds = %38
  %58 = call i32 @ASSERT(i32 0)
  br label %59

59:                                               ; preds = %57, %46
  br label %60

60:                                               ; preds = %59, %25
  ret void
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i32*) #1

declare dso_local i32 @scic_sds_phy_get_index(i32*) #1

declare dso_local i32 @scic_sds_apc_agent_start_timer(i32*, %struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @scic_sds_port_link_up(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
