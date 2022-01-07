; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_qfq.c_qfq_new_fsk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_qfq.c_qfq_new_fsk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_fsk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@QFQ_MAX_WEIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"qfq weight\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"qfq maxlen\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"weight %d len %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_fsk*)* @qfq_new_fsk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qfq_new_fsk(%struct.dn_fsk* %0) #0 {
  %2 = alloca %struct.dn_fsk*, align 8
  store %struct.dn_fsk* %0, %struct.dn_fsk** %2, align 8
  %3 = load %struct.dn_fsk*, %struct.dn_fsk** %2, align 8
  %4 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* @QFQ_MAX_WEIGHT, align 4
  %9 = call i32 @ipdn_bound_var(i32* %7, i32 1, i32 1, i32 %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.dn_fsk*, %struct.dn_fsk** %2, align 8
  %11 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = call i32 @ipdn_bound_var(i32* %14, i32 1500, i32 1, i32 2000, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.dn_fsk*, %struct.dn_fsk** %2, align 8
  %17 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dn_fsk*, %struct.dn_fsk** %2, align 8
  %23 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ND(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %21, i32 %27)
  ret i32 0
}

declare dso_local i32 @ipdn_bound_var(i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @ND(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
