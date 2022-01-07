; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_tx.c_r92c_tx_radiotap_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_tx.c_r92c_tx_radiotap_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r92c_tx_desc = type { i32, i32 }

@R92C_TXDW4_DATA_SHPRE = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_F_SHORTPRE = common dso_local global i32 0, align 4
@R92C_TXDW5_SGI = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_F_SHORTGI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r92c_tx_radiotap_flags(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.r92c_tx_desc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.r92c_tx_desc*
  store %struct.r92c_tx_desc* %6, %struct.r92c_tx_desc** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.r92c_tx_desc*, %struct.r92c_tx_desc** %3, align 8
  %8 = getelementptr inbounds %struct.r92c_tx_desc, %struct.r92c_tx_desc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @R92C_TXDW4_DATA_SHPRE, align 4
  %11 = call i32 @htole32(i32 %10)
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @IEEE80211_RADIOTAP_F_SHORTPRE, align 4
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.r92c_tx_desc*, %struct.r92c_tx_desc** %3, align 8
  %20 = getelementptr inbounds %struct.r92c_tx_desc, %struct.r92c_tx_desc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @R92C_TXDW5_SGI, align 4
  %23 = call i32 @htole32(i32 %22)
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load i32, i32* @IEEE80211_RADIOTAP_F_SHORTGI, align 4
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %26, %18
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @htole32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
