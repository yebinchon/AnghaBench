; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_nat.c_ipfw_nat_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_nat.c_ipfw_nat_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ifaddr_event = common dso_local global i32 0, align 4
@ifaddr_event_tag = common dso_local global i32 0, align 4
@scodes = common dso_local global i32 0, align 4
@ipfw_nat_ptr = common dso_local global i32* null, align 8
@lookup_nat_ptr = common dso_local global i32* null, align 8
@ipfw_nat_cfg_ptr = common dso_local global i32* null, align 8
@ipfw_nat_del_ptr = common dso_local global i32* null, align 8
@ipfw_nat_get_cfg_ptr = common dso_local global i32* null, align 8
@ipfw_nat_get_log_ptr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ipfw_nat_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipfw_nat_destroy() #0 {
  %1 = load i32, i32* @ifaddr_event, align 4
  %2 = load i32, i32* @ifaddr_event_tag, align 4
  %3 = call i32 @EVENTHANDLER_DEREGISTER(i32 %1, i32 %2)
  %4 = load i32, i32* @scodes, align 4
  %5 = call i32 @IPFW_DEL_SOPT_HANDLER(i32 1, i32 %4)
  store i32* null, i32** @ipfw_nat_ptr, align 8
  store i32* null, i32** @lookup_nat_ptr, align 8
  store i32* null, i32** @ipfw_nat_cfg_ptr, align 8
  store i32* null, i32** @ipfw_nat_del_ptr, align 8
  store i32* null, i32** @ipfw_nat_get_cfg_ptr, align 8
  store i32* null, i32** @ipfw_nat_get_log_ptr, align 8
  ret void
}

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32) #1

declare dso_local i32 @IPFW_DEL_SOPT_HANDLER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
