; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_check_mode_consistency.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_check_mode_consistency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }

@IEEE80211_CHAN_ANYC = common dso_local global %struct.ieee80211_channel* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"oops, no channel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_channel*, i32)* @check_mode_consistency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_mode_consistency(%struct.ieee80211_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_channel* %0, %struct.ieee80211_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %7 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @IEEE80211_CHAN_ANYC, align 8
  %8 = icmp ne %struct.ieee80211_channel* %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %48 [
    i32 132, label %12
    i32 131, label %15
    i32 133, label %27
    i32 128, label %39
    i32 130, label %42
    i32 129, label %45
  ]

12:                                               ; preds = %2
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %14 = call i32 @IEEE80211_IS_CHAN_B(%struct.ieee80211_channel* %13)
  store i32 %14, i32* %3, align 4
  br label %49

15:                                               ; preds = %2
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %17 = call i32 @IEEE80211_IS_CHAN_ANYG(%struct.ieee80211_channel* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %21 = call i32 @IEEE80211_IS_CHAN_HT(%struct.ieee80211_channel* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %49

27:                                               ; preds = %2
  %28 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %29 = call i32 @IEEE80211_IS_CHAN_A(%struct.ieee80211_channel* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %33 = call i32 @IEEE80211_IS_CHAN_HT(%struct.ieee80211_channel* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %31, %27
  %37 = phi i1 [ false, %27 ], [ %35, %31 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %49

39:                                               ; preds = %2
  %40 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %41 = call i32 @IEEE80211_IS_CHAN_STURBO(%struct.ieee80211_channel* %40)
  store i32 %41, i32* %3, align 4
  br label %49

42:                                               ; preds = %2
  %43 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %44 = call i32 @IEEE80211_IS_CHAN_HTA(%struct.ieee80211_channel* %43)
  store i32 %44, i32* %3, align 4
  br label %49

45:                                               ; preds = %2
  %46 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %47 = call i32 @IEEE80211_IS_CHAN_HTG(%struct.ieee80211_channel* %46)
  store i32 %47, i32* %3, align 4
  br label %49

48:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %45, %42, %39, %36, %24, %12
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @IEEE80211_IS_CHAN_B(%struct.ieee80211_channel*) #1

declare dso_local i32 @IEEE80211_IS_CHAN_ANYG(%struct.ieee80211_channel*) #1

declare dso_local i32 @IEEE80211_IS_CHAN_HT(%struct.ieee80211_channel*) #1

declare dso_local i32 @IEEE80211_IS_CHAN_A(%struct.ieee80211_channel*) #1

declare dso_local i32 @IEEE80211_IS_CHAN_STURBO(%struct.ieee80211_channel*) #1

declare dso_local i32 @IEEE80211_IS_CHAN_HTA(%struct.ieee80211_channel*) #1

declare dso_local i32 @IEEE80211_IS_CHAN_HTG(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
