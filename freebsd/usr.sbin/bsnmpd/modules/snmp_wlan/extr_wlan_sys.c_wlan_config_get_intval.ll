; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_config_get_intval.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_config_get_intval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlan_iface*, i32)* @wlan_config_get_intval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_config_get_intval(%struct.wlan_iface* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wlan_iface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.wlan_iface* %0, %struct.wlan_iface** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %8 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @wlan_config_check(%struct.wlan_iface* %8, i32 %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

13:                                               ; preds = %2
  %14 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %15 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @wlan_ioctl(i32 %16, i32 %17, i32* %6, i32* null, i64* %7, i32 0)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %26

21:                                               ; preds = %13
  %22 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @wlan_config_set_snmp_intval(%struct.wlan_iface* %22, i32 %23, i32 %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %21, %20, %12
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @wlan_config_check(%struct.wlan_iface*, i32) #1

declare dso_local i64 @wlan_ioctl(i32, i32, i32*, i32*, i64*, i32) #1

declare dso_local i32 @wlan_config_set_snmp_intval(%struct.wlan_iface*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
