; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_snmp.c_bridge_get_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_snmp.c_bridge_get_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_if = type { i32 }
%struct.mibif = type { i32 }

@bif_default = common dso_local global %struct.bridge_if* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bridge_if* @bridge_get_default() #0 {
  %1 = alloca %struct.mibif*, align 8
  %2 = load %struct.bridge_if*, %struct.bridge_if** @bif_default, align 8
  %3 = icmp ne %struct.bridge_if* %2, null
  br i1 %3, label %4, label %28

4:                                                ; preds = %0
  %5 = call %struct.mibif* (...) @mib_first_if()
  store %struct.mibif* %5, %struct.mibif** %1, align 8
  br label %6

6:                                                ; preds = %20, %4
  %7 = load %struct.mibif*, %struct.mibif** %1, align 8
  %8 = icmp ne %struct.mibif* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = load %struct.mibif*, %struct.mibif** %1, align 8
  %11 = getelementptr inbounds %struct.mibif, %struct.mibif* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.bridge_if*, %struct.bridge_if** @bif_default, align 8
  %14 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @strcmp(i32 %12, i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  br label %23

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.mibif*, %struct.mibif** %1, align 8
  %22 = call %struct.mibif* @mib_next_if(%struct.mibif* %21)
  store %struct.mibif* %22, %struct.mibif** %1, align 8
  br label %6

23:                                               ; preds = %18, %6
  %24 = load %struct.mibif*, %struct.mibif** %1, align 8
  %25 = icmp eq %struct.mibif* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store %struct.bridge_if* null, %struct.bridge_if** @bif_default, align 8
  br label %27

27:                                               ; preds = %26, %23
  br label %28

28:                                               ; preds = %27, %0
  %29 = load %struct.bridge_if*, %struct.bridge_if** @bif_default, align 8
  ret %struct.bridge_if* %29
}

declare dso_local %struct.mibif* @mib_first_if(...) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local %struct.mibif* @mib_next_if(%struct.mibif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
