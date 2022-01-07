; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/onoe/extr_onoe.c_ath_rate_tx_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/onoe/extr_onoe.c_ath_rate_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ath_node = type { i32 }
%struct.ath_rc_series = type { i32 }
%struct.ath_tx_status = type { i64, i64, i64 }
%struct.onoe_node = type { i64, i64, i32, i32, i32 }

@ticks = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_rate_tx_complete(%struct.ath_softc* %0, %struct.ath_node* %1, %struct.ath_rc_series* %2, %struct.ath_tx_status* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ath_softc*, align 8
  %9 = alloca %struct.ath_node*, align 8
  %10 = alloca %struct.ath_rc_series*, align 8
  %11 = alloca %struct.ath_tx_status*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.onoe_node*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %8, align 8
  store %struct.ath_node* %1, %struct.ath_node** %9, align 8
  store %struct.ath_rc_series* %2, %struct.ath_rc_series** %10, align 8
  store %struct.ath_tx_status* %3, %struct.ath_tx_status** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load %struct.ath_node*, %struct.ath_node** %9, align 8
  %17 = call %struct.onoe_node* @ATH_NODE_ONOE(%struct.ath_node* %16)
  store %struct.onoe_node* %17, %struct.onoe_node** %15, align 8
  %18 = load %struct.ath_tx_status*, %struct.ath_tx_status** %11, align 8
  %19 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %7
  %23 = load %struct.onoe_node*, %struct.onoe_node** %15, align 8
  %24 = getelementptr inbounds %struct.onoe_node, %struct.onoe_node* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  br label %32

27:                                               ; preds = %7
  %28 = load %struct.onoe_node*, %struct.onoe_node** %15, align 8
  %29 = getelementptr inbounds %struct.onoe_node, %struct.onoe_node* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.ath_tx_status*, %struct.ath_tx_status** %11, align 8
  %34 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ath_tx_status*, %struct.ath_tx_status** %11, align 8
  %37 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = load %struct.onoe_node*, %struct.onoe_node** %15, align 8
  %41 = getelementptr inbounds %struct.onoe_node, %struct.onoe_node* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %39
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 8
  %46 = load %struct.onoe_node*, %struct.onoe_node** %15, align 8
  %47 = getelementptr inbounds %struct.onoe_node, %struct.onoe_node* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %32
  %51 = load i64, i64* @ticks, align 8
  %52 = load %struct.onoe_node*, %struct.onoe_node** %15, align 8
  %53 = getelementptr inbounds %struct.onoe_node, %struct.onoe_node* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  %56 = load %struct.onoe_node*, %struct.onoe_node** %15, align 8
  %57 = getelementptr inbounds %struct.onoe_node, %struct.onoe_node* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %55, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %50
  %61 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %62 = load %struct.ath_node*, %struct.ath_node** %9, align 8
  %63 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %62, i32 0, i32 0
  %64 = call i32 @ath_rate_ctl(%struct.ath_softc* %61, i32* %63)
  %65 = load i64, i64* @ticks, align 8
  %66 = load %struct.onoe_node*, %struct.onoe_node** %15, align 8
  %67 = getelementptr inbounds %struct.onoe_node, %struct.onoe_node* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %60, %50, %32
  ret void
}

declare dso_local %struct.onoe_node* @ATH_NODE_ONOE(%struct.ath_node*) #1

declare dso_local i32 @ath_rate_ctl(%struct.ath_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
