; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/amrr/extr_amrr.c_ath_rate_tx_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/amrr/extr_amrr.c_ath_rate_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ath_node = type { i32 }
%struct.ath_rc_series = type { i32 }
%struct.ath_tx_status = type { i32, i32 }
%struct.amrr_node = type { i64, i64, i32, i32, i32, i32, i32 }

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
  %15 = alloca %struct.amrr_node*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %8, align 8
  store %struct.ath_node* %1, %struct.ath_node** %9, align 8
  store %struct.ath_rc_series* %2, %struct.ath_rc_series** %10, align 8
  store %struct.ath_tx_status* %3, %struct.ath_tx_status** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load %struct.ath_node*, %struct.ath_node** %9, align 8
  %20 = call %struct.amrr_node* @ATH_NODE_AMRR(%struct.ath_node* %19)
  store %struct.amrr_node* %20, %struct.amrr_node** %15, align 8
  %21 = load %struct.ath_tx_status*, %struct.ath_tx_status** %11, align 8
  %22 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %16, align 4
  %24 = load %struct.ath_tx_status*, %struct.ath_tx_status** %11, align 8
  %25 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %17, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %18, align 4
  %30 = load %struct.amrr_node*, %struct.amrr_node** %15, align 8
  %31 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* %18, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %41

36:                                               ; preds = %7
  %37 = load %struct.amrr_node*, %struct.amrr_node** %15, align 8
  %38 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %92

41:                                               ; preds = %7
  %42 = load i32, i32* %18, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load %struct.amrr_node*, %struct.amrr_node** %15, align 8
  %46 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.amrr_node*, %struct.amrr_node** %15, align 8
  %50 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  br label %91

53:                                               ; preds = %41
  %54 = load i32, i32* %18, align 4
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load %struct.amrr_node*, %struct.amrr_node** %15, align 8
  %58 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.amrr_node*, %struct.amrr_node** %15, align 8
  %62 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  %65 = load %struct.amrr_node*, %struct.amrr_node** %15, align 8
  %66 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %90

69:                                               ; preds = %53
  %70 = load i32, i32* %18, align 4
  %71 = icmp sgt i32 %70, 3
  br i1 %71, label %72, label %89

72:                                               ; preds = %69
  %73 = load %struct.amrr_node*, %struct.amrr_node** %15, align 8
  %74 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load %struct.amrr_node*, %struct.amrr_node** %15, align 8
  %78 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  %81 = load %struct.amrr_node*, %struct.amrr_node** %15, align 8
  %82 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = load %struct.amrr_node*, %struct.amrr_node** %15, align 8
  %86 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %72, %69
  br label %90

90:                                               ; preds = %89, %56
  br label %91

91:                                               ; preds = %90, %44
  br label %92

92:                                               ; preds = %91, %36
  %93 = load %struct.amrr_node*, %struct.amrr_node** %15, align 8
  %94 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %115

97:                                               ; preds = %92
  %98 = load i64, i64* @ticks, align 8
  %99 = load %struct.amrr_node*, %struct.amrr_node** %15, align 8
  %100 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %98, %101
  %103 = load %struct.amrr_node*, %struct.amrr_node** %15, align 8
  %104 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %102, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %97
  %108 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %109 = load %struct.ath_node*, %struct.ath_node** %9, align 8
  %110 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %109, i32 0, i32 0
  %111 = call i32 @ath_rate_ctl(%struct.ath_softc* %108, i32* %110)
  %112 = load i64, i64* @ticks, align 8
  %113 = load %struct.amrr_node*, %struct.amrr_node** %15, align 8
  %114 = getelementptr inbounds %struct.amrr_node, %struct.amrr_node* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  br label %115

115:                                              ; preds = %107, %97, %92
  ret void
}

declare dso_local %struct.amrr_node* @ATH_NODE_AMRR(%struct.ath_node*) #1

declare dso_local i32 @ath_rate_ctl(%struct.ath_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
