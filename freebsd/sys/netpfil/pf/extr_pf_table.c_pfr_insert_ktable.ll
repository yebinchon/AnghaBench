; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_insert_ktable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_insert_ktable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_ktable = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@pfr_ktablehead = common dso_local global i32 0, align 4
@V_pfr_ktables = common dso_local global i32 0, align 4
@V_pfr_ktable_cnt = common dso_local global i32 0, align 4
@PFR_REFCNT_ANCHOR = common dso_local global i64 0, align 8
@PFR_TFLAG_REFDANCHOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pfr_ktable*)* @pfr_insert_ktable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfr_insert_ktable(%struct.pfr_ktable* %0) #0 {
  %2 = alloca %struct.pfr_ktable*, align 8
  store %struct.pfr_ktable* %0, %struct.pfr_ktable** %2, align 8
  %3 = call i32 (...) @PF_RULES_WASSERT()
  %4 = load i32, i32* @pfr_ktablehead, align 4
  %5 = load %struct.pfr_ktable*, %struct.pfr_ktable** %2, align 8
  %6 = call i32 @RB_INSERT(i32 %4, i32* @V_pfr_ktables, %struct.pfr_ktable* %5)
  %7 = load i32, i32* @V_pfr_ktable_cnt, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @V_pfr_ktable_cnt, align 4
  %9 = load %struct.pfr_ktable*, %struct.pfr_ktable** %2, align 8
  %10 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %37

13:                                               ; preds = %1
  %14 = load %struct.pfr_ktable*, %struct.pfr_ktable** %2, align 8
  %15 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @PFR_REFCNT_ANCHOR, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %13
  %25 = load %struct.pfr_ktable*, %struct.pfr_ktable** %2, align 8
  %26 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load %struct.pfr_ktable*, %struct.pfr_ktable** %2, align 8
  %29 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PFR_TFLAG_REFDANCHOR, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @pfr_setflags_ktable(%struct.TYPE_2__* %27, i32 %34)
  br label %36

36:                                               ; preds = %24, %13
  br label %37

37:                                               ; preds = %36, %1
  ret void
}

declare dso_local i32 @PF_RULES_WASSERT(...) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.pfr_ktable*) #1

declare dso_local i32 @pfr_setflags_ktable(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
