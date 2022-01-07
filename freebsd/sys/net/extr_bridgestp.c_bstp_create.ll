; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_state = type { i32 }
%struct.bstp_port = type { i32, i32, i32, i32, i32, i32, i32, %struct.bstp_state*, %struct.ifnet* }
%struct.ifnet = type { i32 }

@BSTP_DEFAULT_PORT_PRIORITY = common dso_local global i32 0, align 4
@bstp_notify_state = common dso_local global i32 0, align 4
@bstp_notify_rtage = common dso_local global i32 0, align 4
@bstp_ifupdstatus = common dso_local global i32 0, align 4
@BSTP_INFO_DISABLED = common dso_local global i32 0, align 4
@BSTP_PORT_AUTOEDGE = common dso_local global i32 0, align 4
@BSTP_PORT_AUTOPTP = common dso_local global i32 0, align 4
@BSTP_IFSTATE_DISCARDING = common dso_local global i32 0, align 4
@BSTP_ROLE_DISABLED = common dso_local global i32 0, align 4
@BSTP_TCSTATE_INACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bstp_create(%struct.bstp_state* %0, %struct.bstp_port* %1, %struct.ifnet* %2) #0 {
  %4 = alloca %struct.bstp_state*, align 8
  %5 = alloca %struct.bstp_port*, align 8
  %6 = alloca %struct.ifnet*, align 8
  store %struct.bstp_state* %0, %struct.bstp_state** %4, align 8
  store %struct.bstp_port* %1, %struct.bstp_port** %5, align 8
  store %struct.ifnet* %2, %struct.ifnet** %6, align 8
  %7 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %8 = call i32 @bzero(%struct.bstp_port* %7, i32 48)
  %9 = load %struct.bstp_state*, %struct.bstp_state** %4, align 8
  %10 = call i32 @BSTP_LOCK(%struct.bstp_state* %9)
  %11 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %12 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %13 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %12, i32 0, i32 8
  store %struct.ifnet* %11, %struct.ifnet** %13, align 8
  %14 = load %struct.bstp_state*, %struct.bstp_state** %4, align 8
  %15 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %16 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %15, i32 0, i32 7
  store %struct.bstp_state* %14, %struct.bstp_state** %16, align 8
  %17 = load i32, i32* @BSTP_DEFAULT_PORT_PRIORITY, align 4
  %18 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %19 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 8
  %20 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %21 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %20, i32 0, i32 5
  %22 = load i32, i32* @bstp_notify_state, align 4
  %23 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %24 = call i32 @TASK_INIT(i32* %21, i32 0, i32 %22, %struct.bstp_port* %23)
  %25 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %26 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %25, i32 0, i32 4
  %27 = load i32, i32* @bstp_notify_rtage, align 4
  %28 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %29 = call i32 @TASK_INIT(i32* %26, i32 0, i32 %27, %struct.bstp_port* %28)
  %30 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %31 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %30, i32 0, i32 3
  %32 = load i32, i32* @bstp_ifupdstatus, align 4
  %33 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %34 = call i32 @TASK_INIT(i32* %31, i32 0, i32 %32, %struct.bstp_port* %33)
  %35 = load i32, i32* @BSTP_INFO_DISABLED, align 4
  %36 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %37 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @BSTP_PORT_AUTOEDGE, align 4
  %39 = load i32, i32* @BSTP_PORT_AUTOPTP, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %42 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %44 = load i32, i32* @BSTP_IFSTATE_DISCARDING, align 4
  %45 = call i32 @bstp_set_port_state(%struct.bstp_port* %43, i32 %44)
  %46 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %47 = load %struct.bstp_state*, %struct.bstp_state** %4, align 8
  %48 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @bstp_set_port_proto(%struct.bstp_port* %46, i32 %49)
  %51 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %52 = load i32, i32* @BSTP_ROLE_DISABLED, align 4
  %53 = call i32 @bstp_set_port_role(%struct.bstp_port* %51, i32 %52)
  %54 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %55 = load i32, i32* @BSTP_TCSTATE_INACTIVE, align 4
  %56 = call i32 @bstp_set_port_tc(%struct.bstp_port* %54, i32 %55)
  %57 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %58 = call i32 @bstp_calc_path_cost(%struct.bstp_port* %57)
  %59 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %60 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.bstp_state*, %struct.bstp_state** %4, align 8
  %62 = call i32 @BSTP_UNLOCK(%struct.bstp_state* %61)
  ret i32 0
}

declare dso_local i32 @bzero(%struct.bstp_port*, i32) #1

declare dso_local i32 @BSTP_LOCK(%struct.bstp_state*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.bstp_port*) #1

declare dso_local i32 @bstp_set_port_state(%struct.bstp_port*, i32) #1

declare dso_local i32 @bstp_set_port_proto(%struct.bstp_port*, i32) #1

declare dso_local i32 @bstp_set_port_role(%struct.bstp_port*, i32) #1

declare dso_local i32 @bstp_set_port_tc(%struct.bstp_port*, i32) #1

declare dso_local i32 @bstp_calc_path_cost(%struct.bstp_port*) #1

declare dso_local i32 @BSTP_UNLOCK(%struct.bstp_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
