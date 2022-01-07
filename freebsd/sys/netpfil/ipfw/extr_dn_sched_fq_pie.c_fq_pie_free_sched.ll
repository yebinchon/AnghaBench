; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_pie.c_fq_pie_free_sched.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_pie.c_fq_pie_free_sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_sch_inst = type { i64 }
%struct.fq_pie_si = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.fq_pie_flow* }
%struct.fq_pie_flow = type { i32 }
%struct.fq_pie_schk = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_sch_inst*)* @fq_pie_free_sched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fq_pie_free_sched(%struct.dn_sch_inst* %0) #0 {
  %2 = alloca %struct.dn_sch_inst*, align 8
  %3 = alloca %struct.fq_pie_si*, align 8
  %4 = alloca %struct.fq_pie_schk*, align 8
  %5 = alloca %struct.fq_pie_flow*, align 8
  %6 = alloca i32, align 4
  store %struct.dn_sch_inst* %0, %struct.dn_sch_inst** %2, align 8
  %7 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %2, align 8
  %8 = bitcast %struct.dn_sch_inst* %7 to %struct.fq_pie_si*
  store %struct.fq_pie_si* %8, %struct.fq_pie_si** %3, align 8
  %9 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %2, align 8
  %10 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1
  %13 = inttoptr i64 %12 to %struct.fq_pie_schk*
  store %struct.fq_pie_schk* %13, %struct.fq_pie_schk** %4, align 8
  %14 = load %struct.fq_pie_si*, %struct.fq_pie_si** %3, align 8
  %15 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %17, align 8
  store %struct.fq_pie_flow* %18, %struct.fq_pie_flow** %5, align 8
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %32, %1
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.fq_pie_schk*, %struct.fq_pie_schk** %4, align 8
  %22 = getelementptr inbounds %struct.fq_pie_schk, %struct.fq_pie_schk* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %27, i64 %29
  %31 = call i32 @pie_cleanup(%struct.fq_pie_flow* %30)
  br label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %19

35:                                               ; preds = %19
  %36 = load %struct.fq_pie_si*, %struct.fq_pie_si** %3, align 8
  %37 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %36, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %37, align 8
  ret i32 0
}

declare dso_local i32 @pie_cleanup(%struct.fq_pie_flow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
