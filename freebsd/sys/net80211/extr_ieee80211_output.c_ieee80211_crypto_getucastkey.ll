; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_output.c_ieee80211_crypto_getucastkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_output.c_ieee80211_crypto_getucastkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_key = type { i32 }
%struct.ieee80211vap = type { i64, %struct.ieee80211_key* }
%struct.ieee80211_node = type { %struct.ieee80211_key }

@IEEE80211_KEYIX_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_key* (%struct.ieee80211vap*, %struct.ieee80211_node*)* @ieee80211_crypto_getucastkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_key* @ieee80211_crypto_getucastkey(%struct.ieee80211vap* %0, %struct.ieee80211_node* %1) #0 {
  %3 = alloca %struct.ieee80211_key*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211_node*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %5, align 8
  %6 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %7 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %6, i32 0, i32 0
  %8 = call i64 @IEEE80211_KEY_UNDEFINED(%struct.ieee80211_key* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  %11 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IEEE80211_KEYIX_NONE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %26, label %16

16:                                               ; preds = %10
  %17 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %17, i32 0, i32 1
  %19 = load %struct.ieee80211_key*, %struct.ieee80211_key** %18, align 8
  %20 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %19, i64 %22
  %24 = call i64 @IEEE80211_KEY_UNDEFINED(%struct.ieee80211_key* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16, %10
  store %struct.ieee80211_key* null, %struct.ieee80211_key** %3, align 8
  br label %38

27:                                               ; preds = %16
  %28 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %29 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %28, i32 0, i32 1
  %30 = load %struct.ieee80211_key*, %struct.ieee80211_key** %29, align 8
  %31 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %32 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %30, i64 %33
  store %struct.ieee80211_key* %34, %struct.ieee80211_key** %3, align 8
  br label %38

35:                                               ; preds = %2
  %36 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %37 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %36, i32 0, i32 0
  store %struct.ieee80211_key* %37, %struct.ieee80211_key** %3, align 8
  br label %38

38:                                               ; preds = %35, %27, %26
  %39 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  ret %struct.ieee80211_key* %39
}

declare dso_local i64 @IEEE80211_KEY_UNDEFINED(%struct.ieee80211_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
