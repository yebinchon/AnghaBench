; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_iface_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_iface_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i64, i32 }

@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@RowStatus_active = common dso_local global i32 0, align 4
@wlanIfaceState_up = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlan_iface*)* @wlan_iface_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_iface_create(%struct.wlan_iface* %0) #0 {
  %2 = alloca %struct.wlan_iface*, align 8
  %3 = alloca i32, align 4
  store %struct.wlan_iface* %0, %struct.wlan_iface** %2, align 8
  %4 = load %struct.wlan_iface*, %struct.wlan_iface** %2, align 8
  %5 = call i32 @wlan_clone_create(%struct.wlan_iface* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load i32, i32* @RowStatus_active, align 4
  %10 = load %struct.wlan_iface*, %struct.wlan_iface** %2, align 8
  %11 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  %12 = load %struct.wlan_iface*, %struct.wlan_iface** %2, align 8
  %13 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @wlanIfaceState_up, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %8
  %18 = load %struct.wlan_iface*, %struct.wlan_iface** %2, align 8
  %19 = call i32 @wlan_config_state(%struct.wlan_iface* %18, i32 1)
  br label %20

20:                                               ; preds = %17, %8
  br label %21

21:                                               ; preds = %20, %1
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @wlan_clone_create(%struct.wlan_iface*) #1

declare dso_local i32 @wlan_config_state(%struct.wlan_iface*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
