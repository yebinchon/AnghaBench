; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_set_global_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_set_global_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211vap* }
%struct.ieee80211vap = type { %struct.ieee80211_key* }
%struct.ieee80211_key = type { i64 }

@IEEE80211_WEP_NKID = common dso_local global i64 0, align 8
@IEEE80211_KEYIX_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*)* @wpi_set_global_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpi_set_global_keys(%struct.ieee80211_node* %0) #0 {
  %2 = alloca %struct.ieee80211_node*, align 8
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca %struct.ieee80211_key*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %2, align 8
  %6 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %6, i32 0, i32 0
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  store %struct.ieee80211vap* %8, %struct.ieee80211vap** %3, align 8
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %9, i32 0, i32 0
  %11 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %12 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %11, i64 0
  store %struct.ieee80211_key* %12, %struct.ieee80211_key** %4, align 8
  store i32 1, i32* %5, align 4
  br label %13

13:                                               ; preds = %37, %1
  %14 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %15, i32 0, i32 0
  %17 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %18 = load i64, i64* @IEEE80211_WEP_NKID, align 8
  %19 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %17, i64 %18
  %20 = icmp ult %struct.ieee80211_key* %14, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %21, %13
  %25 = phi i1 [ false, %13 ], [ %23, %21 ]
  br i1 %25, label %26, label %40

26:                                               ; preds = %24
  %27 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IEEE80211_KEYIX_NONE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %34 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %35 = call i32 @wpi_load_key(%struct.ieee80211_node* %33, %struct.ieee80211_key* %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %26
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %38, i32 1
  store %struct.ieee80211_key* %39, %struct.ieee80211_key** %4, align 8
  br label %13

40:                                               ; preds = %24
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  ret i32 %44
}

declare dso_local i32 @wpi_load_key(%struct.ieee80211_node*, %struct.ieee80211_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
