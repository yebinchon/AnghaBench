; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_tasks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i64, i32, %struct.bwn_softc* }
%struct.bwn_softc = type { i32 }

@BWN_MAC_STATUS_STARTED = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bwn_tasks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_tasks(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca %struct.bwn_softc*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.bwn_mac*
  store %struct.bwn_mac* %6, %struct.bwn_mac** %3, align 8
  %7 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %8 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %7, i32 0, i32 2
  %9 = load %struct.bwn_softc*, %struct.bwn_softc** %8, align 8
  store %struct.bwn_softc* %9, %struct.bwn_softc** %4, align 8
  %10 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %11 = call i32 @BWN_ASSERT_LOCKED(%struct.bwn_softc* %10)
  %12 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %13 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BWN_MAC_STATUS_STARTED, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %49

18:                                               ; preds = %1
  %19 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %20 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = srem i32 %21, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %26 = call i32 @bwn_task_60s(%struct.bwn_mac* %25)
  br label %27

27:                                               ; preds = %24, %18
  %28 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %29 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = srem i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %35 = call i32 @bwn_task_30s(%struct.bwn_mac* %34)
  br label %36

36:                                               ; preds = %33, %27
  %37 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %38 = call i32 @bwn_task_15s(%struct.bwn_mac* %37)
  %39 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %40 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %44 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %43, i32 0, i32 0
  %45 = load i32, i32* @hz, align 4
  %46 = mul nsw i32 %45, 15
  %47 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %48 = call i32 @callout_reset(i32* %44, i32 %46, void (i8*)* @bwn_tasks, %struct.bwn_mac* %47)
  br label %49

49:                                               ; preds = %36, %17
  ret void
}

declare dso_local i32 @BWN_ASSERT_LOCKED(%struct.bwn_softc*) #1

declare dso_local i32 @bwn_task_60s(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_task_30s(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_task_15s(%struct.bwn_mac*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.bwn_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
