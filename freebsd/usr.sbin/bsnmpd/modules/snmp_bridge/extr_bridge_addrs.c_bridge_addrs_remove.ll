; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_addrs.c_bridge_addrs_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_addrs.c_bridge_addrs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tp_entry = type { i32 }
%struct.bridge_if = type { %struct.tp_entry* }

@tp_entries = common dso_local global i32 0, align 4
@tp_e = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bridge_addrs_remove(%struct.tp_entry* %0, %struct.bridge_if* %1) #0 {
  %3 = alloca %struct.tp_entry*, align 8
  %4 = alloca %struct.bridge_if*, align 8
  store %struct.tp_entry* %0, %struct.tp_entry** %3, align 8
  store %struct.bridge_if* %1, %struct.bridge_if** %4, align 8
  %5 = load %struct.bridge_if*, %struct.bridge_if** %4, align 8
  %6 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %5, i32 0, i32 0
  %7 = load %struct.tp_entry*, %struct.tp_entry** %6, align 8
  %8 = load %struct.tp_entry*, %struct.tp_entry** %3, align 8
  %9 = icmp eq %struct.tp_entry* %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.tp_entry*, %struct.tp_entry** %3, align 8
  %12 = call %struct.tp_entry* @bridge_addrs_bif_next(%struct.tp_entry* %11)
  %13 = load %struct.bridge_if*, %struct.bridge_if** %4, align 8
  %14 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %13, i32 0, i32 0
  store %struct.tp_entry* %12, %struct.tp_entry** %14, align 8
  br label %15

15:                                               ; preds = %10, %2
  %16 = load %struct.tp_entry*, %struct.tp_entry** %3, align 8
  %17 = load i32, i32* @tp_e, align 4
  %18 = call i32 @TAILQ_REMOVE(i32* @tp_entries, %struct.tp_entry* %16, i32 %17)
  %19 = load %struct.tp_entry*, %struct.tp_entry** %3, align 8
  %20 = call i32 @free(%struct.tp_entry* %19)
  ret void
}

declare dso_local %struct.tp_entry* @bridge_addrs_bif_next(%struct.tp_entry*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.tp_entry*, i32) #1

declare dso_local i32 @free(%struct.tp_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
