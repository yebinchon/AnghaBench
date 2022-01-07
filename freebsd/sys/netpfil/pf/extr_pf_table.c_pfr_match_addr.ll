; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_match_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_match_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_ktable = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.pfr_ktable* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.pf_addr = type { i32* }
%struct.pfr_kentry = type { i32 }

@PFR_TFLAG_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_match_addr(%struct.pfr_ktable* %0, %struct.pf_addr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pfr_ktable*, align 8
  %6 = alloca %struct.pf_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pfr_kentry*, align 8
  %9 = alloca i32, align 4
  store %struct.pfr_ktable* %0, %struct.pfr_ktable** %5, align 8
  store %struct.pf_addr* %1, %struct.pf_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.pfr_kentry* null, %struct.pfr_kentry** %8, align 8
  %10 = call i32 (...) @PF_RULES_RASSERT()
  %11 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %12 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %3
  %18 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %19 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %18, i32 0, i32 5
  %20 = load %struct.pfr_ktable*, %struct.pfr_ktable** %19, align 8
  %21 = icmp ne %struct.pfr_ktable* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %24 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %23, i32 0, i32 5
  %25 = load %struct.pfr_ktable*, %struct.pfr_ktable** %24, align 8
  store %struct.pfr_ktable* %25, %struct.pfr_ktable** %5, align 8
  br label %26

26:                                               ; preds = %22, %17, %3
  %27 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %28 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %62

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  switch i32 %35, label %36 [
  ]

36:                                               ; preds = %34
  %37 = load %struct.pfr_kentry*, %struct.pfr_kentry** %8, align 8
  %38 = icmp ne %struct.pfr_kentry* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load %struct.pfr_kentry*, %struct.pfr_kentry** %8, align 8
  %41 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %39, %36
  %46 = phi i1 [ false, %36 ], [ %44, %39 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %52 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @counter_u64_add(i32 %53, i32 1)
  br label %60

55:                                               ; preds = %45
  %56 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %57 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @counter_u64_add(i32 %58, i32 1)
  br label %60

60:                                               ; preds = %55, %50
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %33
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @PF_RULES_RASSERT(...) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
