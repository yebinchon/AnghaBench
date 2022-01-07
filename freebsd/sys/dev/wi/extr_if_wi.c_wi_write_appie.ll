; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_write_appie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_write_appie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wi_softc = type { i32 }
%struct.ieee80211_appie = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wi_softc*, i32, %struct.ieee80211_appie*)* @wi_write_appie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wi_write_appie(%struct.wi_softc* %0, i32 %1, %struct.ieee80211_appie* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wi_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_appie*, align 8
  %8 = alloca [44 x i8], align 16
  store %struct.wi_softc* %0, %struct.wi_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ieee80211_appie* %2, %struct.ieee80211_appie** %7, align 8
  %9 = load %struct.ieee80211_appie*, %struct.ieee80211_appie** %7, align 8
  %10 = getelementptr inbounds %struct.ieee80211_appie, %struct.ieee80211_appie* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %11, 40
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %4, align 4
  br label %41

15:                                               ; preds = %3
  %16 = load %struct.ieee80211_appie*, %struct.ieee80211_appie** %7, align 8
  %17 = getelementptr inbounds %struct.ieee80211_appie, %struct.ieee80211_appie* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @htole16(i32 %18)
  %20 = getelementptr inbounds [44 x i8], [44 x i8]* %8, i64 0, i64 0
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 16
  %22 = getelementptr inbounds [44 x i8], [44 x i8]* %8, i64 0, i64 0
  %23 = getelementptr inbounds i8, i8* %22, i64 4
  %24 = load %struct.ieee80211_appie*, %struct.ieee80211_appie** %7, align 8
  %25 = getelementptr inbounds %struct.ieee80211_appie, %struct.ieee80211_appie* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ieee80211_appie*, %struct.ieee80211_appie** %7, align 8
  %28 = getelementptr inbounds %struct.ieee80211_appie, %struct.ieee80211_appie* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memcpy(i8* %23, i32 %26, i32 %29)
  %31 = load %struct.wi_softc*, %struct.wi_softc** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = getelementptr inbounds [44 x i8], [44 x i8]* %8, i64 0, i64 0
  %34 = load %struct.ieee80211_appie*, %struct.ieee80211_appie** %7, align 8
  %35 = getelementptr inbounds %struct.ieee80211_appie, %struct.ieee80211_appie* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i32 @wi_write_rid(%struct.wi_softc* %31, i32 %32, i8* %33, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %15, %13
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @wi_write_rid(%struct.wi_softc*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
