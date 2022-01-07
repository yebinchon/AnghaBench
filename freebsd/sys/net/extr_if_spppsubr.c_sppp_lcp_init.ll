; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_lcp_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_lcp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sppp = type { i32*, %struct.TYPE_2__, i64*, i64*, i64*, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@LCP_OPT_MAGIC = common dso_local global i32 0, align 4
@STATE_INITIAL = common dso_local global i32 0, align 4
@IDX_LCP = common dso_local global i64 0, align 8
@PP_MTU = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sppp*)* @sppp_lcp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sppp_lcp_init(%struct.sppp* %0) #0 {
  %2 = alloca %struct.sppp*, align 8
  store %struct.sppp* %0, %struct.sppp** %2, align 8
  %3 = load i32, i32* @LCP_OPT_MAGIC, align 4
  %4 = shl i32 1, %3
  %5 = load %struct.sppp*, %struct.sppp** %2, align 8
  %6 = getelementptr inbounds %struct.sppp, %struct.sppp* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i32 %4, i32* %7, align 8
  %8 = load %struct.sppp*, %struct.sppp** %2, align 8
  %9 = getelementptr inbounds %struct.sppp, %struct.sppp* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 8
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @STATE_INITIAL, align 4
  %12 = load %struct.sppp*, %struct.sppp** %2, align 8
  %13 = getelementptr inbounds %struct.sppp, %struct.sppp* %12, i32 0, i32 5
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @IDX_LCP, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32 %11, i32* %16, align 4
  %17 = load %struct.sppp*, %struct.sppp** %2, align 8
  %18 = getelementptr inbounds %struct.sppp, %struct.sppp* %17, i32 0, i32 4
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @IDX_LCP, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  store i64 0, i64* %21, align 8
  %22 = load %struct.sppp*, %struct.sppp** %2, align 8
  %23 = getelementptr inbounds %struct.sppp, %struct.sppp* %22, i32 0, i32 3
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* @IDX_LCP, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  store i64 0, i64* %26, align 8
  %27 = load %struct.sppp*, %struct.sppp** %2, align 8
  %28 = getelementptr inbounds %struct.sppp, %struct.sppp* %27, i32 0, i32 2
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* @IDX_LCP, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  store i64 0, i64* %31, align 8
  %32 = load %struct.sppp*, %struct.sppp** %2, align 8
  %33 = getelementptr inbounds %struct.sppp, %struct.sppp* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 7
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @PP_MTU, align 4
  %36 = load %struct.sppp*, %struct.sppp** %2, align 8
  %37 = getelementptr inbounds %struct.sppp, %struct.sppp* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 5
  store i32 %35, i32* %38, align 4
  %39 = load %struct.sppp*, %struct.sppp** %2, align 8
  %40 = getelementptr inbounds %struct.sppp, %struct.sppp* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 6
  store i32 %35, i32* %41, align 8
  %42 = load i32, i32* @hz, align 4
  %43 = mul nsw i32 3, %42
  %44 = load %struct.sppp*, %struct.sppp** %2, align 8
  %45 = getelementptr inbounds %struct.sppp, %struct.sppp* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.sppp*, %struct.sppp** %2, align 8
  %48 = getelementptr inbounds %struct.sppp, %struct.sppp* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i32 2, i32* %49, align 8
  %50 = load %struct.sppp*, %struct.sppp** %2, align 8
  %51 = getelementptr inbounds %struct.sppp, %struct.sppp* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  store i32 10, i32* %52, align 4
  %53 = load %struct.sppp*, %struct.sppp** %2, align 8
  %54 = getelementptr inbounds %struct.sppp, %struct.sppp* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 4
  store i32 10, i32* %55, align 8
  %56 = load %struct.sppp*, %struct.sppp** %2, align 8
  %57 = getelementptr inbounds %struct.sppp, %struct.sppp* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @IDX_LCP, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = call i32 @callout_init(i32* %60, i32 1)
  ret void
}

declare dso_local i32 @callout_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
