; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_set_retry_lim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_set_retry_lim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { i32 }
%struct.bwi_retry_lim = type { i32, i32, i32, i32 }

@BWI_80211_MOBJ = common dso_local global i32 0, align 4
@BWI_80211_MOBJ_SHRETRY = common dso_local global i32 0, align 4
@BWI_80211_MOBJ_LGRETRY = common dso_local global i32 0, align 4
@BWI_COMM_MOBJ = common dso_local global i32 0, align 4
@BWI_COMM_MOBJ_SHRETRY_FB = common dso_local global i32 0, align 4
@BWI_COMM_MOBJ_LGRETEY_FB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_mac*, %struct.bwi_retry_lim*)* @bwi_mac_set_retry_lim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_mac_set_retry_lim(%struct.bwi_mac* %0, %struct.bwi_retry_lim* %1) #0 {
  %3 = alloca %struct.bwi_mac*, align 8
  %4 = alloca %struct.bwi_retry_lim*, align 8
  store %struct.bwi_mac* %0, %struct.bwi_mac** %3, align 8
  store %struct.bwi_retry_lim* %1, %struct.bwi_retry_lim** %4, align 8
  %5 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %6 = load i32, i32* @BWI_80211_MOBJ, align 4
  %7 = load i32, i32* @BWI_80211_MOBJ_SHRETRY, align 4
  %8 = load %struct.bwi_retry_lim*, %struct.bwi_retry_lim** %4, align 8
  %9 = getelementptr inbounds %struct.bwi_retry_lim, %struct.bwi_retry_lim* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @MOBJ_WRITE_2(%struct.bwi_mac* %5, i32 %6, i32 %7, i32 %10)
  %12 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %13 = load i32, i32* @BWI_80211_MOBJ, align 4
  %14 = load i32, i32* @BWI_80211_MOBJ_LGRETRY, align 4
  %15 = load %struct.bwi_retry_lim*, %struct.bwi_retry_lim** %4, align 8
  %16 = getelementptr inbounds %struct.bwi_retry_lim, %struct.bwi_retry_lim* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @MOBJ_WRITE_2(%struct.bwi_mac* %12, i32 %13, i32 %14, i32 %17)
  %19 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %20 = load i32, i32* @BWI_COMM_MOBJ, align 4
  %21 = load i32, i32* @BWI_COMM_MOBJ_SHRETRY_FB, align 4
  %22 = load %struct.bwi_retry_lim*, %struct.bwi_retry_lim** %4, align 8
  %23 = getelementptr inbounds %struct.bwi_retry_lim, %struct.bwi_retry_lim* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @MOBJ_WRITE_2(%struct.bwi_mac* %19, i32 %20, i32 %21, i32 %24)
  %26 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %27 = load i32, i32* @BWI_COMM_MOBJ, align 4
  %28 = load i32, i32* @BWI_COMM_MOBJ_LGRETEY_FB, align 4
  %29 = load %struct.bwi_retry_lim*, %struct.bwi_retry_lim** %4, align 8
  %30 = getelementptr inbounds %struct.bwi_retry_lim, %struct.bwi_retry_lim* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @MOBJ_WRITE_2(%struct.bwi_mac* %26, i32 %27, i32 %28, i32 %31)
  ret void
}

declare dso_local i32 @MOBJ_WRITE_2(%struct.bwi_mac*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
