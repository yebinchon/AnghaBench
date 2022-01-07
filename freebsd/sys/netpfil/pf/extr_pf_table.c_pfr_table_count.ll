; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_table_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_table_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pfr_table = type { i64* }
%struct.pf_ruleset = type { i32 }

@PFR_FLAG_ALLRSETS = common dso_local global i32 0, align 4
@V_pfr_ktable_cnt = common dso_local global i32 0, align 4
@pf_main_ruleset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_table_count(%struct.pfr_table* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pfr_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pf_ruleset*, align 8
  store %struct.pfr_table* %0, %struct.pfr_table** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i32 (...) @PF_RULES_ASSERT()
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @PFR_FLAG_ALLRSETS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @V_pfr_ktable_cnt, align 4
  store i32 %13, i32* %3, align 4
  br label %37

14:                                               ; preds = %2
  %15 = load %struct.pfr_table*, %struct.pfr_table** %4, align 8
  %16 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %14
  %22 = load %struct.pfr_table*, %struct.pfr_table** %4, align 8
  %23 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = call %struct.pf_ruleset* @pf_find_ruleset(i64* %24)
  store %struct.pf_ruleset* %25, %struct.pf_ruleset** %6, align 8
  %26 = load %struct.pf_ruleset*, %struct.pf_ruleset** %6, align 8
  %27 = icmp ne %struct.pf_ruleset* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load %struct.pf_ruleset*, %struct.pf_ruleset** %6, align 8
  %30 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  br label %33

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i32 [ %31, %28 ], [ -1, %32 ]
  store i32 %34, i32* %3, align 4
  br label %37

35:                                               ; preds = %14
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pf_main_ruleset, i32 0, i32 0), align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %33, %12
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @PF_RULES_ASSERT(...) #1

declare dso_local %struct.pf_ruleset* @pf_find_ruleset(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
