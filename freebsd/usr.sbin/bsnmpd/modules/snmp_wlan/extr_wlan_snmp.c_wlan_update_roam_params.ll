; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_update_roam_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_update_roam_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i64 }

@wlan_roamlist_age = common dso_local global i64 0, align 8
@WLAN_LIST_MAXAGE = common dso_local global i64 0, align 8
@RowStatus_active = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wlan_update_roam_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlan_update_roam_params() #0 {
  %1 = alloca %struct.wlan_iface*, align 8
  %2 = call i64 @time(i32* null)
  %3 = load i64, i64* @wlan_roamlist_age, align 8
  %4 = sub nsw i64 %2, %3
  %5 = load i64, i64* @WLAN_LIST_MAXAGE, align 8
  %6 = icmp sle i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %28

8:                                                ; preds = %0
  %9 = call %struct.wlan_iface* (...) @wlan_first_interface()
  store %struct.wlan_iface* %9, %struct.wlan_iface** %1, align 8
  br label %10

10:                                               ; preds = %23, %8
  %11 = load %struct.wlan_iface*, %struct.wlan_iface** %1, align 8
  %12 = icmp ne %struct.wlan_iface* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load %struct.wlan_iface*, %struct.wlan_iface** %1, align 8
  %15 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RowStatus_active, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %23

20:                                               ; preds = %13
  %21 = load %struct.wlan_iface*, %struct.wlan_iface** %1, align 8
  %22 = call i32 @wlan_get_roam_params(%struct.wlan_iface* %21)
  br label %23

23:                                               ; preds = %20, %19
  %24 = load %struct.wlan_iface*, %struct.wlan_iface** %1, align 8
  %25 = call %struct.wlan_iface* @wlan_next_interface(%struct.wlan_iface* %24)
  store %struct.wlan_iface* %25, %struct.wlan_iface** %1, align 8
  br label %10

26:                                               ; preds = %10
  %27 = call i64 @time(i32* null)
  store i64 %27, i64* @wlan_roamlist_age, align 8
  br label %28

28:                                               ; preds = %26, %7
  ret void
}

declare dso_local i64 @time(i32*) #1

declare dso_local %struct.wlan_iface* @wlan_first_interface(...) #1

declare dso_local i32 @wlan_get_roam_params(%struct.wlan_iface*) #1

declare dso_local %struct.wlan_iface* @wlan_next_interface(%struct.wlan_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
