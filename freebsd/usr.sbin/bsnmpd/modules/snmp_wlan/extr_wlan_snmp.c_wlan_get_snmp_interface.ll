; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_get_snmp_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_get_snmp_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i32 }
%struct.asn_oid = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wlan_iface* (%struct.asn_oid*, i32)* @wlan_get_snmp_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wlan_iface* @wlan_get_snmp_interface(%struct.asn_oid* %0, i32 %1) #0 {
  %3 = alloca %struct.wlan_iface*, align 8
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wlan_iface*, align 8
  %9 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @IFNAMSIZ, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32* @wlan_get_ifname(%struct.asn_oid* %14, i32 %15, i32* %13)
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct.wlan_iface* null, %struct.wlan_iface** %3, align 8
  store i32 1, i32* %9, align 4
  br label %37

19:                                               ; preds = %2
  %20 = call %struct.wlan_iface* (...) @wlan_first_interface()
  store %struct.wlan_iface* %20, %struct.wlan_iface** %8, align 8
  br label %21

21:                                               ; preds = %32, %19
  %22 = load %struct.wlan_iface*, %struct.wlan_iface** %8, align 8
  %23 = icmp ne %struct.wlan_iface* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load %struct.wlan_iface*, %struct.wlan_iface** %8, align 8
  %26 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @strcmp(i32 %27, i32* %13)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %35

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.wlan_iface*, %struct.wlan_iface** %8, align 8
  %34 = call %struct.wlan_iface* @wlan_next_interface(%struct.wlan_iface* %33)
  store %struct.wlan_iface* %34, %struct.wlan_iface** %8, align 8
  br label %21

35:                                               ; preds = %30, %21
  %36 = load %struct.wlan_iface*, %struct.wlan_iface** %8, align 8
  store %struct.wlan_iface* %36, %struct.wlan_iface** %3, align 8
  store i32 1, i32* %9, align 4
  br label %37

37:                                               ; preds = %35, %18
  %38 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %38)
  %39 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  ret %struct.wlan_iface* %39
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @wlan_get_ifname(%struct.asn_oid*, i32, i32*) #2

declare dso_local %struct.wlan_iface* @wlan_first_interface(...) #2

declare dso_local i64 @strcmp(i32, i32*) #2

declare dso_local %struct.wlan_iface* @wlan_next_interface(%struct.wlan_iface*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
