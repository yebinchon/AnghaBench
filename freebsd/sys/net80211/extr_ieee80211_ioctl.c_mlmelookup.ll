; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_mlmelookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_mlmelookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_scan_entry = type { i64*, i32 }
%struct.scanlookup = type { i64, %struct.ieee80211_scan_entry*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_scan_entry*)* @mlmelookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlmelookup(i8* %0, %struct.ieee80211_scan_entry* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ieee80211_scan_entry*, align 8
  %5 = alloca %struct.scanlookup*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ieee80211_scan_entry* %1, %struct.ieee80211_scan_entry** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.scanlookup*
  store %struct.scanlookup* %7, %struct.scanlookup** %5, align 8
  %8 = load %struct.scanlookup*, %struct.scanlookup** %5, align 8
  %9 = getelementptr inbounds %struct.scanlookup, %struct.scanlookup* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @IEEE80211_ADDR_EQ(i32 %10, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %52

17:                                               ; preds = %2
  %18 = load %struct.scanlookup*, %struct.scanlookup** %5, align 8
  %19 = getelementptr inbounds %struct.scanlookup, %struct.scanlookup* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %17
  %23 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.scanlookup*, %struct.scanlookup** %5, align 8
  %29 = getelementptr inbounds %struct.scanlookup, %struct.scanlookup* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %52

33:                                               ; preds = %22
  %34 = load %struct.scanlookup*, %struct.scanlookup** %5, align 8
  %35 = getelementptr inbounds %struct.scanlookup, %struct.scanlookup* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %4, align 8
  %38 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 2
  %41 = load %struct.scanlookup*, %struct.scanlookup** %5, align 8
  %42 = getelementptr inbounds %struct.scanlookup, %struct.scanlookup* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @memcmp(i32 %36, i64* %40, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %52

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %17
  %49 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %4, align 8
  %50 = load %struct.scanlookup*, %struct.scanlookup** %5, align 8
  %51 = getelementptr inbounds %struct.scanlookup, %struct.scanlookup* %50, i32 0, i32 1
  store %struct.ieee80211_scan_entry* %49, %struct.ieee80211_scan_entry** %51, align 8
  br label %52

52:                                               ; preds = %48, %46, %32, %16
  ret void
}

declare dso_local i32 @IEEE80211_ADDR_EQ(i32, i32) #1

declare dso_local i64 @memcmp(i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
