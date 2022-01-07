; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/amrr/extr_amrr.c_ath_rate_setupxtxdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/amrr/extr_amrr.c_ath_rate_setupxtxdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ath_node = type { i32 }
%struct.ath_desc = type { i32 }
%struct.amrr_node = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_rate_setupxtxdesc(%struct.ath_softc* %0, %struct.ath_node* %1, %struct.ath_desc* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ath_softc*, align 8
  %7 = alloca %struct.ath_node*, align 8
  %8 = alloca %struct.ath_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.amrr_node*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %6, align 8
  store %struct.ath_node* %1, %struct.ath_node** %7, align 8
  store %struct.ath_desc* %2, %struct.ath_desc** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.ath_node*, %struct.ath_node** %7, align 8
  %13 = call %struct.amrr_node* @ATH_NODE_AMRR(%struct.ath_node* %12)
  store %struct.amrr_node* %13, %struct.amrr_node** %11, align 8
  %14 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ath_desc*, %struct.ath_desc** %8, align 8
  %18 = load %struct.amrr_node*, %struct.amrr_node** %11, align 8
  %19 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.amrr_node*, %struct.amrr_node** %11, align 8
  %22 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.amrr_node*, %struct.amrr_node** %11, align 8
  %25 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.amrr_node*, %struct.amrr_node** %11, align 8
  %28 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.amrr_node*, %struct.amrr_node** %11, align 8
  %31 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.amrr_node*, %struct.amrr_node** %11, align 8
  %34 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ath_hal_setupxtxdesc(i32 %16, %struct.ath_desc* %17, i32 %20, i32 %23, i32 %26, i32 %29, i32 %32, i32 %35)
  ret void
}

declare dso_local %struct.amrr_node* @ATH_NODE_AMRR(%struct.ath_node*) #1

declare dso_local i32 @ath_hal_setupxtxdesc(i32, %struct.ath_desc*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
