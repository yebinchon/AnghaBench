; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_crypto_ccmp.c_ccmp_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_crypto_ccmp.c_ccmp_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_key = type { %struct.ccmp_ctx* }
%struct.ccmp_ctx = type { i32 }

@M_80211_CRYPTO = common dso_local global i32 0, align 4
@nrefs = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"imbalanced attach/detach\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_key*)* @ccmp_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccmp_detach(%struct.ieee80211_key* %0) #0 {
  %2 = alloca %struct.ieee80211_key*, align 8
  %3 = alloca %struct.ccmp_ctx*, align 8
  store %struct.ieee80211_key* %0, %struct.ieee80211_key** %2, align 8
  %4 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %4, i32 0, i32 0
  %6 = load %struct.ccmp_ctx*, %struct.ccmp_ctx** %5, align 8
  store %struct.ccmp_ctx* %6, %struct.ccmp_ctx** %3, align 8
  %7 = load %struct.ccmp_ctx*, %struct.ccmp_ctx** %3, align 8
  %8 = load i32, i32* @M_80211_CRYPTO, align 4
  %9 = call i32 @IEEE80211_FREE(%struct.ccmp_ctx* %7, i32 %8)
  %10 = load i64, i64* @nrefs, align 8
  %11 = icmp sgt i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* @nrefs, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* @nrefs, align 8
  ret void
}

declare dso_local i32 @IEEE80211_FREE(%struct.ccmp_ctx*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
