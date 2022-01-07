; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"wlan iface %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wlan_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlan_dump() #0 {
  %1 = alloca %struct.wlan_iface*, align 8
  %2 = call %struct.wlan_iface* (...) @wlan_first_interface()
  store %struct.wlan_iface* %2, %struct.wlan_iface** %1, align 8
  br label %3

3:                                                ; preds = %12, %0
  %4 = load %struct.wlan_iface*, %struct.wlan_iface** %1, align 8
  %5 = icmp ne %struct.wlan_iface* %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = load i32, i32* @LOG_ERR, align 4
  %8 = load %struct.wlan_iface*, %struct.wlan_iface** %1, align 8
  %9 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @syslog(i32 %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %6
  %13 = load %struct.wlan_iface*, %struct.wlan_iface** %1, align 8
  %14 = call %struct.wlan_iface* @wlan_next_interface(%struct.wlan_iface* %13)
  store %struct.wlan_iface* %14, %struct.wlan_iface** %1, align 8
  br label %3

15:                                               ; preds = %3
  ret void
}

declare dso_local %struct.wlan_iface* @wlan_first_interface(...) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local %struct.wlan_iface* @wlan_next_interface(%struct.wlan_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
