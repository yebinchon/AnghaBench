; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_rx.c_r12a_rx_radiotap_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_rx.c_r12a_rx_radiotap_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r92c_rx_stat = type { i32, i32 }

@R12A_RXDW4_SPLCP = common dso_local global i32 0, align 4
@R12A_RXDW3_RATE = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_F_SHORTPRE = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_F_SHORTGI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r12a_rx_radiotap_flags(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.r92c_rx_stat*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.r92c_rx_stat*
  store %struct.r92c_rx_stat* %8, %struct.r92c_rx_stat** %4, align 8
  %9 = load %struct.r92c_rx_stat*, %struct.r92c_rx_stat** %4, align 8
  %10 = getelementptr inbounds %struct.r92c_rx_stat, %struct.r92c_rx_stat* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @R12A_RXDW4_SPLCP, align 4
  %13 = call i32 @htole32(i32 %12)
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

17:                                               ; preds = %1
  %18 = load %struct.r92c_rx_stat*, %struct.r92c_rx_stat** %4, align 8
  %19 = getelementptr inbounds %struct.r92c_rx_stat, %struct.r92c_rx_stat* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le32toh(i32 %20)
  %22 = load i32, i32* @R12A_RXDW3_RATE, align 4
  %23 = call i32 @MS(i32 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @RTWN_RATE_IS_CCK(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @IEEE80211_RADIOTAP_F_SHORTPRE, align 4
  store i32 %28, i32* %5, align 4
  br label %31

29:                                               ; preds = %17
  %30 = load i32, i32* @IEEE80211_RADIOTAP_F_SHORTGI, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %16
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i64 @RTWN_RATE_IS_CCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
