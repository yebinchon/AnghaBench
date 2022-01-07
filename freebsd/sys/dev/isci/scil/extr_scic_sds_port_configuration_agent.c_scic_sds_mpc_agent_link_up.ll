; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port_configuration_agent.c_scic_sds_mpc_agent_link_up.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port_configuration_agent.c_scic_sds_mpc_agent_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@SCIC_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_PORT = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"scic_sds_mpc_agent_link_up(0x%08x, 0x%08x, 0x%08x, 0x%08x) enter\0A\00", align 1
@SCI_INVALID_HANDLE = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, %struct.TYPE_7__*, i32*)* @scic_sds_mpc_agent_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scic_sds_mpc_agent_link_up(i32* %0, %struct.TYPE_8__* %1, %struct.TYPE_7__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @sci_base_object_get_logger(i32* %9)
  %11 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %12 = load i32, i32* @SCIC_LOG_OBJECT_PORT, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SCIC_LOG_OBJECT_PHY, align 4
  %15 = or i32 %13, %14
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = ptrtoint i32* %19 to i32
  %21 = call i32 @SCIC_LOG_TRACE(i32 %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SCI_INVALID_HANDLE, align 8
  %24 = icmp ne %struct.TYPE_7__* %22, %23
  br i1 %24, label %25, label %53

25:                                               ; preds = %4
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @scic_sds_phy_get_index(i32* %26)
  %28 = shl i32 1, %27
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @scic_sds_port_link_up(%struct.TYPE_7__* %33, i32* %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @scic_sds_phy_get_index(i32* %39)
  %41 = shl i32 1, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %25
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @scic_sds_phy_get_index(i32* %45)
  %47 = shl i32 1, %46
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %44, %25
  br label %53

53:                                               ; preds = %52, %4
  ret void
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i32*) #1

declare dso_local i32 @scic_sds_phy_get_index(i32*) #1

declare dso_local i32 @scic_sds_port_link_up(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
