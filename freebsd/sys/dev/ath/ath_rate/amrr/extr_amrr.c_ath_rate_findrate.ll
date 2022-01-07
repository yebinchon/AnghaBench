; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/amrr/extr_amrr.c_ath_rate_findrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/amrr/extr_amrr.c_ath_rate_findrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ath_node = type { i32 }
%struct.amrr_node = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_rate_findrate(%struct.ath_softc* %0, %struct.ath_node* %1, i32 %2, i64 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.ath_softc*, align 8
  %9 = alloca %struct.ath_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.amrr_node*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %8, align 8
  store %struct.ath_node* %1, %struct.ath_node** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load %struct.ath_node*, %struct.ath_node** %9, align 8
  %17 = call %struct.amrr_node* @ATH_NODE_AMRR(%struct.ath_node* %16)
  store %struct.amrr_node* %17, %struct.amrr_node** %15, align 8
  %18 = load %struct.amrr_node*, %struct.amrr_node** %15, align 8
  %19 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %12, align 8
  store i32 %20, i32* %21, align 4
  %22 = load %struct.amrr_node*, %struct.amrr_node** %15, align 8
  %23 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %13, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %7
  %29 = load %struct.amrr_node*, %struct.amrr_node** %15, align 8
  %30 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %14, align 8
  store i32 %31, i32* %32, align 4
  br label %38

33:                                               ; preds = %7
  %34 = load %struct.amrr_node*, %struct.amrr_node** %15, align 8
  %35 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %14, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %33, %28
  ret void
}

declare dso_local %struct.amrr_node* @ATH_NODE_AMRR(%struct.ath_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
