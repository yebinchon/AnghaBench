; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/onoe/extr_onoe.c_ath_rate_getxtxrates.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/onoe/extr_onoe.c_ath_rate_getxtxrates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ath_node = type { i32 }
%struct.ath_rc_series = type { i32, i32, i64 }
%struct.onoe_node = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_rate_getxtxrates(%struct.ath_softc* %0, %struct.ath_node* %1, i32 %2, %struct.ath_rc_series* %3) #0 {
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca %struct.ath_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath_rc_series*, align 8
  %9 = alloca %struct.onoe_node*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %5, align 8
  store %struct.ath_node* %1, %struct.ath_node** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ath_rc_series* %3, %struct.ath_rc_series** %8, align 8
  %10 = load %struct.ath_node*, %struct.ath_node** %6, align 8
  %11 = call %struct.onoe_node* @ATH_NODE_ONOE(%struct.ath_node* %10)
  store %struct.onoe_node* %11, %struct.onoe_node** %9, align 8
  %12 = load %struct.ath_rc_series*, %struct.ath_rc_series** %8, align 8
  %13 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %12, i64 3
  %14 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.ath_rc_series*, %struct.ath_rc_series** %8, align 8
  %16 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %15, i64 2
  %17 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.ath_rc_series*, %struct.ath_rc_series** %8, align 8
  %19 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %18, i64 1
  %20 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.ath_rc_series*, %struct.ath_rc_series** %8, align 8
  %22 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %21, i64 0
  %23 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.onoe_node*, %struct.onoe_node** %9, align 8
  %25 = getelementptr inbounds %struct.onoe_node, %struct.onoe_node* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ath_rc_series*, %struct.ath_rc_series** %8, align 8
  %28 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %27, i64 0
  %29 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load %struct.onoe_node*, %struct.onoe_node** %9, align 8
  %31 = getelementptr inbounds %struct.onoe_node, %struct.onoe_node* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ath_rc_series*, %struct.ath_rc_series** %8, align 8
  %34 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %33, i64 1
  %35 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.onoe_node*, %struct.onoe_node** %9, align 8
  %37 = getelementptr inbounds %struct.onoe_node, %struct.onoe_node* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ath_rc_series*, %struct.ath_rc_series** %8, align 8
  %40 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %39, i64 2
  %41 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.onoe_node*, %struct.onoe_node** %9, align 8
  %43 = getelementptr inbounds %struct.onoe_node, %struct.onoe_node* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ath_rc_series*, %struct.ath_rc_series** %8, align 8
  %46 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %45, i64 3
  %47 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.onoe_node*, %struct.onoe_node** %9, align 8
  %49 = getelementptr inbounds %struct.onoe_node, %struct.onoe_node* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ath_rc_series*, %struct.ath_rc_series** %8, align 8
  %52 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %51, i64 0
  %53 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load %struct.ath_rc_series*, %struct.ath_rc_series** %8, align 8
  %55 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %54, i64 1
  %56 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %55, i32 0, i32 0
  store i32 2, i32* %56, align 8
  %57 = load %struct.ath_rc_series*, %struct.ath_rc_series** %8, align 8
  %58 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %57, i64 2
  %59 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %58, i32 0, i32 0
  store i32 2, i32* %59, align 8
  %60 = load %struct.ath_rc_series*, %struct.ath_rc_series** %8, align 8
  %61 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %60, i64 3
  %62 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %61, i32 0, i32 0
  store i32 2, i32* %62, align 8
  ret void
}

declare dso_local %struct.onoe_node* @ATH_NODE_ONOE(%struct.ath_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
