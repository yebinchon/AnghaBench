; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_codel.c_fq_codel_free_sched.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_codel.c_fq_codel_free_sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dn_sch_inst = type { i32 }
%struct.fq_codel_si = type { i32* }

@M_DUMMYNET = common dso_local global i32 0, align 4
@fq_codel_desc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_sch_inst*)* @fq_codel_free_sched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fq_codel_free_sched(%struct.dn_sch_inst* %0) #0 {
  %2 = alloca %struct.dn_sch_inst*, align 8
  %3 = alloca %struct.fq_codel_si*, align 8
  store %struct.dn_sch_inst* %0, %struct.dn_sch_inst** %2, align 8
  %4 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %2, align 8
  %5 = bitcast %struct.dn_sch_inst* %4 to %struct.fq_codel_si*
  store %struct.fq_codel_si* %5, %struct.fq_codel_si** %3, align 8
  %6 = load %struct.fq_codel_si*, %struct.fq_codel_si** %3, align 8
  %7 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* @M_DUMMYNET, align 4
  %10 = call i32 @free(i32* %8, i32 %9)
  %11 = load %struct.fq_codel_si*, %struct.fq_codel_si** %3, align 8
  %12 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fq_codel_desc, i32 0, i32 0), align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fq_codel_desc, i32 0, i32 0), align 4
  ret i32 0
}

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
