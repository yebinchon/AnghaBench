; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_addrs.c_bridge_addrs_bif_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_addrs.c_bridge_addrs_bif_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tp_entry = type { i64 }

@tp_e = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tp_entry* @bridge_addrs_bif_next(%struct.tp_entry* %0) #0 {
  %2 = alloca %struct.tp_entry*, align 8
  %3 = alloca %struct.tp_entry*, align 8
  %4 = alloca %struct.tp_entry*, align 8
  store %struct.tp_entry* %0, %struct.tp_entry** %3, align 8
  %5 = load %struct.tp_entry*, %struct.tp_entry** %3, align 8
  %6 = load i32, i32* @tp_e, align 4
  %7 = call %struct.tp_entry* @TAILQ_NEXT(%struct.tp_entry* %5, i32 %6)
  store %struct.tp_entry* %7, %struct.tp_entry** %4, align 8
  %8 = icmp eq %struct.tp_entry* %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = load %struct.tp_entry*, %struct.tp_entry** %4, align 8
  %11 = getelementptr inbounds %struct.tp_entry, %struct.tp_entry* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.tp_entry*, %struct.tp_entry** %3, align 8
  %14 = getelementptr inbounds %struct.tp_entry, %struct.tp_entry* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %9, %1
  store %struct.tp_entry* null, %struct.tp_entry** %2, align 8
  br label %20

18:                                               ; preds = %9
  %19 = load %struct.tp_entry*, %struct.tp_entry** %4, align 8
  store %struct.tp_entry* %19, %struct.tp_entry** %2, align 8
  br label %20

20:                                               ; preds = %18, %17
  %21 = load %struct.tp_entry*, %struct.tp_entry** %2, align 8
  ret %struct.tp_entry* %21
}

declare dso_local %struct.tp_entry* @TAILQ_NEXT(%struct.tp_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
