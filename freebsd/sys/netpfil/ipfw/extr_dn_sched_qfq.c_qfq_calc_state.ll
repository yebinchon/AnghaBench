; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_qfq.c_qfq_calc_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_qfq.c_qfq_calc_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_sched = type { i32*, i32 }
%struct.qfq_group = type { i32, i32, i32 }

@ER = common dso_local global i64 0, align 8
@EB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qfq_sched*, %struct.qfq_group*)* @qfq_calc_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qfq_calc_state(%struct.qfq_sched* %0, %struct.qfq_group* %1) #0 {
  %3 = alloca %struct.qfq_sched*, align 8
  %4 = alloca %struct.qfq_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.qfq_group*, align 8
  store %struct.qfq_sched* %0, %struct.qfq_sched** %3, align 8
  store %struct.qfq_group* %1, %struct.qfq_group** %4, align 8
  %8 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %9 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %12 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @qfq_gt(i32 %10, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %16 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @ER, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %22 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @mask_from(i32 %20, i32 %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %2
  %28 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call %struct.qfq_group* @qfq_ffs(%struct.qfq_sched* %28, i64 %29)
  store %struct.qfq_group* %30, %struct.qfq_group** %7, align 8
  %31 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %32 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.qfq_group*, %struct.qfq_group** %7, align 8
  %35 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @qfq_gt(i32 %33, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load i32, i32* @EB, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %27
  br label %44

44:                                               ; preds = %43, %2
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @qfq_gt(i32, i32) #1

declare dso_local i64 @mask_from(i32, i32) #1

declare dso_local %struct.qfq_group* @qfq_ffs(%struct.qfq_sched*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
