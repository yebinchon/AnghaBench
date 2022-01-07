; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_attach_newif.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_attach_newif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mibif = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.wlan_iface = type { i32, i32 }

@IFT_ETHER = common dso_local global i64 0, align 8
@IFM_IEEE80211 = common dso_local global i64 0, align 8
@RowStatus_active = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mibif*)* @wlan_attach_newif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_attach_newif(%struct.mibif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mibif*, align 8
  %4 = alloca %struct.wlan_iface*, align 8
  store %struct.mibif* %0, %struct.mibif** %3, align 8
  %5 = load %struct.mibif*, %struct.mibif** %3, align 8
  %6 = getelementptr inbounds %struct.mibif, %struct.mibif* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IFT_ETHER, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.mibif*, %struct.mibif** %3, align 8
  %14 = getelementptr inbounds %struct.mibif, %struct.mibif* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @wlan_check_media(i32 %15)
  %17 = load i64, i64* @IFM_IEEE80211, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %40

20:                                               ; preds = %12
  %21 = load %struct.mibif*, %struct.mibif** %3, align 8
  %22 = getelementptr inbounds %struct.mibif, %struct.mibif* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.wlan_iface* @wlan_new_wif(i32 %23)
  store %struct.wlan_iface* %24, %struct.wlan_iface** %4, align 8
  %25 = icmp eq %struct.wlan_iface* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %40

27:                                               ; preds = %20
  %28 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %29 = call i32 @wlan_get_opmode(%struct.wlan_iface* %28)
  %30 = load %struct.mibif*, %struct.mibif** %3, align 8
  %31 = getelementptr inbounds %struct.mibif, %struct.mibif* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %34 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @RowStatus_active, align 4
  %36 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %37 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %39 = call i32 @wlan_update_interface(%struct.wlan_iface* %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %27, %26, %19
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @wlan_check_media(i32) #1

declare dso_local %struct.wlan_iface* @wlan_new_wif(i32) #1

declare dso_local i32 @wlan_get_opmode(%struct.wlan_iface*) #1

declare dso_local i32 @wlan_update_interface(%struct.wlan_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
