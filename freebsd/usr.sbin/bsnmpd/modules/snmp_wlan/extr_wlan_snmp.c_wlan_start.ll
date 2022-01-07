; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mibif = type { i32 }

@oid_wlan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"The MIB module for managing wireless networking.\00", align 1
@wlan_module = common dso_local global i32 0, align 4
@reg_wlan = common dso_local global i32 0, align 4
@wlan_poll_ticks = common dso_local global i32 0, align 4
@wlan_update_data = common dso_local global i32 0, align 4
@wlan_data_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wlan_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlan_start() #0 {
  %1 = alloca %struct.mibif*, align 8
  %2 = load i32, i32* @wlan_module, align 4
  %3 = call i32 @or_register(i32* @oid_wlan, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %2)
  store i32 %3, i32* @reg_wlan, align 4
  %4 = call %struct.mibif* (...) @mib_first_if()
  store %struct.mibif* %4, %struct.mibif** %1, align 8
  br label %5

5:                                                ; preds = %11, %0
  %6 = load %struct.mibif*, %struct.mibif** %1, align 8
  %7 = icmp ne %struct.mibif* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load %struct.mibif*, %struct.mibif** %1, align 8
  %10 = call i32 @wlan_attach_newif(%struct.mibif* %9)
  br label %11

11:                                               ; preds = %8
  %12 = load %struct.mibif*, %struct.mibif** %1, align 8
  %13 = call %struct.mibif* @mib_next_if(%struct.mibif* %12)
  store %struct.mibif* %13, %struct.mibif** %1, align 8
  br label %5

14:                                               ; preds = %5
  %15 = load i32, i32* @wlan_poll_ticks, align 4
  %16 = load i32, i32* @wlan_poll_ticks, align 4
  %17 = load i32, i32* @wlan_update_data, align 4
  %18 = load i32, i32* @wlan_module, align 4
  %19 = call i32 @timer_start_repeat(i32 %15, i32 %16, i32 %17, i32* null, i32 %18)
  store i32 %19, i32* @wlan_data_timer, align 4
  ret void
}

declare dso_local i32 @or_register(i32*, i8*, i32) #1

declare dso_local %struct.mibif* @mib_first_if(...) #1

declare dso_local i32 @wlan_attach_newif(%struct.mibif*) #1

declare dso_local %struct.mibif* @mib_next_if(%struct.mibif*) #1

declare dso_local i32 @timer_start_repeat(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
