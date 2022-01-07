; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_ds_plcp_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_ds_plcp_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_ds_plcp_hdr = type { i32, i32, i32 }

@NBBY = common dso_local global i32 0, align 4
@IEEE80211_PLCP_SERVICE_LOCKED = common dso_local global i32 0, align 4
@IEEE80211_PLCP_SERVICE_LENEXT7 = common dso_local global i32 0, align 4
@IEEE80211_T_CCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_ds_plcp_hdr*, i32, i32)* @bwi_ds_plcp_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_ds_plcp_header(%struct.ieee80211_ds_plcp_hdr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_ds_plcp_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_ds_plcp_hdr* %0, %struct.ieee80211_ds_plcp_hdr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @NBBY, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = mul nsw i32 %14, 2
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @howmany(i32 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @IEEE80211_PLCP_SERVICE_LOCKED, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 22
  br i1 %20, label %21, label %34

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 %22, 11
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = sub nsw i32 %24, %25
  %27 = load i32, i32* @NBBY, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i32, i32* @IEEE80211_PLCP_SERVICE_LENEXT7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %29, %21
  br label %34

34:                                               ; preds = %33, %3
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @IEEE80211_T_CCK, align 4
  %37 = call i32 @ieee80211_rate2plcp(i32 %35, i32 %36)
  %38 = load %struct.ieee80211_ds_plcp_hdr*, %struct.ieee80211_ds_plcp_hdr** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_ds_plcp_hdr, %struct.ieee80211_ds_plcp_hdr* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.ieee80211_ds_plcp_hdr*, %struct.ieee80211_ds_plcp_hdr** %4, align 8
  %42 = getelementptr inbounds %struct.ieee80211_ds_plcp_hdr, %struct.ieee80211_ds_plcp_hdr* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @htole16(i32 %43)
  %45 = load %struct.ieee80211_ds_plcp_hdr*, %struct.ieee80211_ds_plcp_hdr** %4, align 8
  %46 = getelementptr inbounds %struct.ieee80211_ds_plcp_hdr, %struct.ieee80211_ds_plcp_hdr* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  ret void
}

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @ieee80211_rate2plcp(i32, i32) #1

declare dso_local i32 @htole16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
