; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_add_toperation_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_add_toperation_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.tableop_state = type { i32 }
%struct.tables_config = type { i32 }

@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_toperation_state(%struct.ip_fw_chain* %0, %struct.tableop_state* %1) #0 {
  %3 = alloca %struct.ip_fw_chain*, align 8
  %4 = alloca %struct.tableop_state*, align 8
  %5 = alloca %struct.tables_config*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %3, align 8
  store %struct.tableop_state* %1, %struct.tableop_state** %4, align 8
  %6 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %7 = call %struct.tables_config* @CHAIN_TO_TCFG(%struct.ip_fw_chain* %6)
  store %struct.tables_config* %7, %struct.tables_config** %5, align 8
  %8 = load %struct.tables_config*, %struct.tables_config** %5, align 8
  %9 = getelementptr inbounds %struct.tables_config, %struct.tables_config* %8, i32 0, i32 0
  %10 = load %struct.tableop_state*, %struct.tableop_state** %4, align 8
  %11 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %10, i32 0, i32 0
  %12 = load i32, i32* @next, align 4
  %13 = call i32 @TAILQ_INSERT_HEAD(i32* %9, i32* %11, i32 %12)
  ret void
}

declare dso_local %struct.tables_config* @CHAIN_TO_TCFG(%struct.ip_fw_chain*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
