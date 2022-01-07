; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_set_ackrates.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_set_ackrates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { i32 }
%struct.ieee80211_rate_table = type { i32 }
%struct.ieee80211_rateset = type { i32, i32* }

@IEEE80211_RATE_VAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unsupported modtype %u\0A\00", align 1
@BWI_COMM_MOBJ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_mac*, %struct.ieee80211_rate_table*, %struct.ieee80211_rateset*)* @bwi_mac_set_ackrates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_mac_set_ackrates(%struct.bwi_mac* %0, %struct.ieee80211_rate_table* %1, %struct.ieee80211_rateset* %2) #0 {
  %4 = alloca %struct.bwi_mac*, align 8
  %5 = alloca %struct.ieee80211_rate_table*, align 8
  %6 = alloca %struct.ieee80211_rateset*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %4, align 8
  store %struct.ieee80211_rate_table* %1, %struct.ieee80211_rate_table** %5, align 8
  store %struct.ieee80211_rateset* %2, %struct.ieee80211_rateset** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %59, %3
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %62

16:                                               ; preds = %10
  %17 = load %struct.ieee80211_rate_table*, %struct.ieee80211_rate_table** %5, align 8
  %18 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IEEE80211_RATE_VAL, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @ieee80211_rate2phytype(%struct.ieee80211_rate_table* %17, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %31 [
    i32 129, label %29
    i32 128, label %30
  ]

29:                                               ; preds = %16
  store i32 1216, i32* %9, align 4
  br label %34

30:                                               ; preds = %16
  store i32 1152, i32* %9, align 4
  br label %34

31:                                               ; preds = %16
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %31, %30, %29
  %35 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %6, align 8
  %36 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IEEE80211_RATE_VAL, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @ieee80211_rate2plcp(i32 %43, i32 %44)
  %46 = and i32 %45, 15
  %47 = mul nsw i32 2, %46
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %51 = load i32, i32* @BWI_COMM_MOBJ, align 4
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 32
  %54 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %55 = load i32, i32* @BWI_COMM_MOBJ, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @MOBJ_READ_2(%struct.bwi_mac* %54, i32 %55, i32 %56)
  %58 = call i32 @MOBJ_WRITE_2(%struct.bwi_mac* %50, i32 %51, i32 %53, i32 %57)
  br label %59

59:                                               ; preds = %34
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %10

62:                                               ; preds = %10
  ret void
}

declare dso_local i32 @ieee80211_rate2phytype(%struct.ieee80211_rate_table*, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @ieee80211_rate2plcp(i32, i32) #1

declare dso_local i32 @MOBJ_WRITE_2(%struct.bwi_mac*, i32, i32, i32) #1

declare dso_local i32 @MOBJ_READ_2(%struct.bwi_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
