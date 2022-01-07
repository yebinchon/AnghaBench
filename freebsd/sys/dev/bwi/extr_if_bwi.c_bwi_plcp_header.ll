; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_plcp_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_plcp_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rate_table = type { i32 }

@IEEE80211_T_OFDM = common dso_local global i32 0, align 4
@IEEE80211_T_DS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unsupport modulation type %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_rate_table*, i8*, i32, i32)* @bwi_plcp_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_plcp_header(%struct.ieee80211_rate_table* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_rate_table*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_rate_table* %0, %struct.ieee80211_rate_table** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ieee80211_rate_table*, %struct.ieee80211_rate_table** %5, align 8
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @ieee80211_rate2phytype(%struct.ieee80211_rate_table* %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @IEEE80211_T_OFDM, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @bwi_ofdm_plcp_header(i8* %17, i32 %18, i32 %19)
  br label %34

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @IEEE80211_T_DS, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @bwi_ds_plcp_header(i8* %26, i32 %27, i32 %28)
  br label %33

30:                                               ; preds = %21
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %30, %25
  br label %34

34:                                               ; preds = %33, %16
  ret void
}

declare dso_local i32 @ieee80211_rate2phytype(%struct.ieee80211_rate_table*, i32) #1

declare dso_local i32 @bwi_ofdm_plcp_header(i8*, i32, i32) #1

declare dso_local i32 @bwi_ds_plcp_header(i8*, i32, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
