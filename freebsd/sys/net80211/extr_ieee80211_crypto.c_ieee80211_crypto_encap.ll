; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_crypto.c_ieee80211_crypto_encap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_crypto.c_ieee80211_crypto_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_key = type { %struct.ieee80211_cipher* }
%struct.ieee80211_cipher = type { i64 (%struct.ieee80211_key*, %struct.mbuf*)* }
%struct.ieee80211_node = type { i32 }
%struct.mbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee80211_key* @ieee80211_crypto_encap(%struct.ieee80211_node* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.ieee80211_key*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.ieee80211_key*, align 8
  %7 = alloca %struct.ieee80211_cipher*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %8 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %9 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %10 = call %struct.ieee80211_key* @ieee80211_crypto_get_txkey(%struct.ieee80211_node* %8, %struct.mbuf* %9)
  store %struct.ieee80211_key* %10, %struct.ieee80211_key** %6, align 8
  %11 = icmp ne %struct.ieee80211_key* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %13, i32 0, i32 0
  %15 = load %struct.ieee80211_cipher*, %struct.ieee80211_cipher** %14, align 8
  store %struct.ieee80211_cipher* %15, %struct.ieee80211_cipher** %7, align 8
  %16 = load %struct.ieee80211_cipher*, %struct.ieee80211_cipher** %7, align 8
  %17 = getelementptr inbounds %struct.ieee80211_cipher, %struct.ieee80211_cipher* %16, i32 0, i32 0
  %18 = load i64 (%struct.ieee80211_key*, %struct.mbuf*)*, i64 (%struct.ieee80211_key*, %struct.mbuf*)** %17, align 8
  %19 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %20 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %21 = call i64 %18(%struct.ieee80211_key* %19, %struct.mbuf* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  br label %26

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi %struct.ieee80211_key* [ %24, %23 ], [ null, %25 ]
  store %struct.ieee80211_key* %27, %struct.ieee80211_key** %3, align 8
  br label %29

28:                                               ; preds = %2
  store %struct.ieee80211_key* null, %struct.ieee80211_key** %3, align 8
  br label %29

29:                                               ; preds = %28, %26
  %30 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  ret %struct.ieee80211_key* %30
}

declare dso_local %struct.ieee80211_key* @ieee80211_crypto_get_txkey(%struct.ieee80211_node*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
