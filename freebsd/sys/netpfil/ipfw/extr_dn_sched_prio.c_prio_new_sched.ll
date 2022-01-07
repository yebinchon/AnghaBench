; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_prio.c_prio_new_sched.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_prio.c_prio_new_sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_sch_inst = type { i32 }
%struct.prio_si = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_sch_inst*)* @prio_new_sched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prio_new_sched(%struct.dn_sch_inst* %0) #0 {
  %2 = alloca %struct.dn_sch_inst*, align 8
  %3 = alloca %struct.prio_si*, align 8
  store %struct.dn_sch_inst* %0, %struct.dn_sch_inst** %2, align 8
  %4 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %2, align 8
  %5 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %4, i64 1
  %6 = bitcast %struct.dn_sch_inst* %5 to %struct.prio_si*
  store %struct.prio_si* %6, %struct.prio_si** %3, align 8
  %7 = load %struct.prio_si*, %struct.prio_si** %3, align 8
  %8 = getelementptr inbounds %struct.prio_si, %struct.prio_si* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @bzero(i32 %9, i32 4)
  %11 = load %struct.prio_si*, %struct.prio_si** %3, align 8
  %12 = getelementptr inbounds %struct.prio_si, %struct.prio_si* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  ret i32 0
}

declare dso_local i32 @bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
