; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_delete_wif.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_delete_wif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i32 }

@wlan_ifaces = common dso_local global i32 0, align 4
@wlan_iface = common dso_local global i32 0, align 4
@w_if = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wlan_iface*)* @wlan_delete_wif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlan_delete_wif(%struct.wlan_iface* %0) #0 {
  %2 = alloca %struct.wlan_iface*, align 8
  store %struct.wlan_iface* %0, %struct.wlan_iface** %2, align 8
  %3 = load %struct.wlan_iface*, %struct.wlan_iface** %2, align 8
  %4 = load i32, i32* @wlan_iface, align 4
  %5 = load i32, i32* @w_if, align 4
  %6 = call i32 @SLIST_REMOVE(i32* @wlan_ifaces, %struct.wlan_iface* %3, i32 %4, i32 %5)
  %7 = load %struct.wlan_iface*, %struct.wlan_iface** %2, align 8
  %8 = call i32 @wlan_free_interface(%struct.wlan_iface* %7)
  ret void
}

declare dso_local i32 @SLIST_REMOVE(i32*, %struct.wlan_iface*, i32, i32) #1

declare dso_local i32 @wlan_free_interface(%struct.wlan_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
