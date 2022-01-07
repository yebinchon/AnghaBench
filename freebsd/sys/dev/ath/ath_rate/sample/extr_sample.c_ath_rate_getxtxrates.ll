; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/sample/extr_sample.c_ath_rate_getxtxrates.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/sample/extr_sample.c_ath_rate_getxtxrates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ath_node = type { i32 }
%struct.ath_rc_series = type { i64, i32, i64 }
%struct.sample_node = type { %struct.txschedule* }
%struct.txschedule = type { i64, i64, i64, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"rix0 (%x) != sched->r0 (%x)!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_rate_getxtxrates(%struct.ath_softc* %0, %struct.ath_node* %1, i64 %2, %struct.ath_rc_series* %3) #0 {
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca %struct.ath_node*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ath_rc_series*, align 8
  %9 = alloca %struct.sample_node*, align 8
  %10 = alloca %struct.txschedule*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %5, align 8
  store %struct.ath_node* %1, %struct.ath_node** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.ath_rc_series* %3, %struct.ath_rc_series** %8, align 8
  %11 = load %struct.ath_node*, %struct.ath_node** %6, align 8
  %12 = call %struct.sample_node* @ATH_NODE_SAMPLE(%struct.ath_node* %11)
  store %struct.sample_node* %12, %struct.sample_node** %9, align 8
  %13 = load %struct.sample_node*, %struct.sample_node** %9, align 8
  %14 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %13, i32 0, i32 0
  %15 = load %struct.txschedule*, %struct.txschedule** %14, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds %struct.txschedule, %struct.txschedule* %15, i64 %16
  store %struct.txschedule* %17, %struct.txschedule** %10, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.txschedule*, %struct.txschedule** %10, align 8
  %20 = getelementptr inbounds %struct.txschedule, %struct.txschedule* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.txschedule*, %struct.txschedule** %10, align 8
  %26 = getelementptr inbounds %struct.txschedule, %struct.txschedule* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @KASSERT(i32 %23, i8* %28)
  %30 = load %struct.ath_rc_series*, %struct.ath_rc_series** %8, align 8
  %31 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %30, i64 3
  %32 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.ath_rc_series*, %struct.ath_rc_series** %8, align 8
  %34 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %33, i64 2
  %35 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.ath_rc_series*, %struct.ath_rc_series** %8, align 8
  %37 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %36, i64 1
  %38 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.ath_rc_series*, %struct.ath_rc_series** %8, align 8
  %40 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %39, i64 0
  %41 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.txschedule*, %struct.txschedule** %10, align 8
  %43 = getelementptr inbounds %struct.txschedule, %struct.txschedule* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ath_rc_series*, %struct.ath_rc_series** %8, align 8
  %46 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %45, i64 0
  %47 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  %48 = load %struct.txschedule*, %struct.txschedule** %10, align 8
  %49 = getelementptr inbounds %struct.txschedule, %struct.txschedule* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ath_rc_series*, %struct.ath_rc_series** %8, align 8
  %52 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %51, i64 1
  %53 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %52, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  %54 = load %struct.txschedule*, %struct.txschedule** %10, align 8
  %55 = getelementptr inbounds %struct.txschedule, %struct.txschedule* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ath_rc_series*, %struct.ath_rc_series** %8, align 8
  %58 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %57, i64 2
  %59 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  %60 = load %struct.txschedule*, %struct.txschedule** %10, align 8
  %61 = getelementptr inbounds %struct.txschedule, %struct.txschedule* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ath_rc_series*, %struct.ath_rc_series** %8, align 8
  %64 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %63, i64 3
  %65 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %64, i32 0, i32 0
  store i64 %62, i64* %65, align 8
  %66 = load %struct.txschedule*, %struct.txschedule** %10, align 8
  %67 = getelementptr inbounds %struct.txschedule, %struct.txschedule* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ath_rc_series*, %struct.ath_rc_series** %8, align 8
  %70 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %69, i64 0
  %71 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 8
  %72 = load %struct.txschedule*, %struct.txschedule** %10, align 8
  %73 = getelementptr inbounds %struct.txschedule, %struct.txschedule* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ath_rc_series*, %struct.ath_rc_series** %8, align 8
  %76 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %75, i64 1
  %77 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 8
  %78 = load %struct.txschedule*, %struct.txschedule** %10, align 8
  %79 = getelementptr inbounds %struct.txschedule, %struct.txschedule* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ath_rc_series*, %struct.ath_rc_series** %8, align 8
  %82 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %81, i64 2
  %83 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 8
  %84 = load %struct.txschedule*, %struct.txschedule** %10, align 8
  %85 = getelementptr inbounds %struct.txschedule, %struct.txschedule* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ath_rc_series*, %struct.ath_rc_series** %8, align 8
  %88 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %87, i64 3
  %89 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 8
  ret void
}

declare dso_local %struct.sample_node* @ATH_NODE_SAMPLE(%struct.ath_node*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
