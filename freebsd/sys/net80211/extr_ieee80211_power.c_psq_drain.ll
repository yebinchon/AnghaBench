; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_power.c_psq_drain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_power.c_psq_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_psq = type { i32, %struct.ieee80211_psq_head* }
%struct.ieee80211_psq_head = type { i64, i32*, %struct.mbuf* }
%struct.mbuf = type { %struct.mbuf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_psq*)* @psq_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psq_drain(%struct.ieee80211_psq* %0) #0 {
  %2 = alloca %struct.ieee80211_psq*, align 8
  %3 = alloca %struct.ieee80211_psq_head*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_psq* %0, %struct.ieee80211_psq** %2, align 8
  %6 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %2, align 8
  %7 = call i32 @IEEE80211_PSQ_LOCK(%struct.ieee80211_psq* %6)
  %8 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211_psq, %struct.ieee80211_psq* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %2, align 8
  %12 = getelementptr inbounds %struct.ieee80211_psq, %struct.ieee80211_psq* %11, i32 0, i32 1
  %13 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %12, align 8
  %14 = getelementptr inbounds %struct.ieee80211_psq_head, %struct.ieee80211_psq_head* %13, i64 0
  store %struct.ieee80211_psq_head* %14, %struct.ieee80211_psq_head** %3, align 8
  br label %15

15:                                               ; preds = %40, %1
  br label %16

16:                                               ; preds = %21, %15
  %17 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_psq_head, %struct.ieee80211_psq_head* %17, i32 0, i32 2
  %19 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  store %struct.mbuf* %19, %struct.mbuf** %4, align 8
  %20 = icmp ne %struct.mbuf* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %23 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %22, i32 0, i32 0
  %24 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %25 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %3, align 8
  %26 = getelementptr inbounds %struct.ieee80211_psq_head, %struct.ieee80211_psq_head* %25, i32 0, i32 2
  store %struct.mbuf* %24, %struct.mbuf** %26, align 8
  %27 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %28 = call i32 @psq_mfree(%struct.mbuf* %27)
  br label %16

29:                                               ; preds = %16
  %30 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %3, align 8
  %31 = getelementptr inbounds %struct.ieee80211_psq_head, %struct.ieee80211_psq_head* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211_psq_head, %struct.ieee80211_psq_head* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %3, align 8
  %35 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %2, align 8
  %36 = getelementptr inbounds %struct.ieee80211_psq, %struct.ieee80211_psq* %35, i32 0, i32 1
  %37 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %36, align 8
  %38 = getelementptr inbounds %struct.ieee80211_psq_head, %struct.ieee80211_psq_head* %37, i64 0
  %39 = icmp eq %struct.ieee80211_psq_head* %34, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %29
  %41 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %2, align 8
  %42 = getelementptr inbounds %struct.ieee80211_psq, %struct.ieee80211_psq* %41, i32 0, i32 1
  %43 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %42, align 8
  %44 = getelementptr inbounds %struct.ieee80211_psq_head, %struct.ieee80211_psq_head* %43, i64 1
  store %struct.ieee80211_psq_head* %44, %struct.ieee80211_psq_head** %3, align 8
  br label %15

45:                                               ; preds = %29
  %46 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %2, align 8
  %47 = getelementptr inbounds %struct.ieee80211_psq, %struct.ieee80211_psq* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %2, align 8
  %49 = call i32 @IEEE80211_PSQ_UNLOCK(%struct.ieee80211_psq* %48)
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @IEEE80211_PSQ_LOCK(%struct.ieee80211_psq*) #1

declare dso_local i32 @psq_mfree(%struct.mbuf*) #1

declare dso_local i32 @IEEE80211_PSQ_UNLOCK(%struct.ieee80211_psq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
