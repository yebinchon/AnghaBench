; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_destroy_kentry_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_destroy_kentry_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_kcounters = type { i32**, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pfr_kcounters*, i32, i32)* @pfr_destroy_kentry_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfr_destroy_kentry_counter(%struct.pfr_kcounters* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pfr_kcounters*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pfr_kcounters* %0, %struct.pfr_kcounters** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.pfr_kcounters*, %struct.pfr_kcounters** %4, align 8
  %8 = getelementptr inbounds %struct.pfr_kcounters, %struct.pfr_kcounters* %7, i32 0, i32 1
  %9 = load i32**, i32*** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32*, i32** %9, i64 %11
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @counter_u64_free(i32 %17)
  %19 = load %struct.pfr_kcounters*, %struct.pfr_kcounters** %4, align 8
  %20 = getelementptr inbounds %struct.pfr_kcounters, %struct.pfr_kcounters* %19, i32 0, i32 0
  %21 = load i32**, i32*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @counter_u64_free(i32 %29)
  ret void
}

declare dso_local i32 @counter_u64_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
