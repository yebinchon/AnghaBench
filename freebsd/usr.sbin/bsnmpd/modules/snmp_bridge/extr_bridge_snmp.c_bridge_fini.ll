; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_snmp.c_bridge_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_snmp.c_bridge_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bridge_module = common dso_local global i32 0, align 4
@reg_bridge = common dso_local global i32 0, align 4
@bridge_data_timer = common dso_local global i32* null, align 8
@bridge_tc_timer = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @bridge_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_fini() #0 {
  %1 = load i32, i32* @bridge_module, align 4
  %2 = call i32 @mib_unregister_newif(i32 %1)
  %3 = load i32, i32* @reg_bridge, align 4
  %4 = call i32 @or_unregister(i32 %3)
  %5 = load i32*, i32** @bridge_data_timer, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32*, i32** @bridge_data_timer, align 8
  %9 = call i32 @timer_stop(i32* %8)
  store i32* null, i32** @bridge_data_timer, align 8
  br label %10

10:                                               ; preds = %7, %0
  %11 = load i32*, i32** @bridge_tc_timer, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32*, i32** @bridge_tc_timer, align 8
  %15 = call i32 @timer_stop(i32* %14)
  store i32* null, i32** @bridge_tc_timer, align 8
  br label %16

16:                                               ; preds = %13, %10
  %17 = call i32 (...) @bridge_ifs_fini()
  %18 = call i32 (...) @bridge_ports_fini()
  %19 = call i32 (...) @bridge_addrs_fini()
  ret i32 0
}

declare dso_local i32 @mib_unregister_newif(i32) #1

declare dso_local i32 @or_unregister(i32) #1

declare dso_local i32 @timer_stop(i32*) #1

declare dso_local i32 @bridge_ifs_fini(...) #1

declare dso_local i32 @bridge_ports_fini(...) #1

declare dso_local i32 @bridge_addrs_fini(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
