; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_addht40channels.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_addht40channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.mwl_hal_channel* }
%struct.mwl_hal_channel = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_channel*, i32, i32*, %struct.TYPE_3__*, i32)* @addht40channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addht40channels(%struct.ieee80211_channel* %0, i32 %1, i32* %2, %struct.TYPE_3__* %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mwl_hal_channel*, align 8
  store %struct.ieee80211_channel* %0, %struct.ieee80211_channel** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %46, %5
  %15 = load i32, i32* %11, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %14
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load %struct.mwl_hal_channel*, %struct.mwl_hal_channel** %22, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mwl_hal_channel, %struct.mwl_hal_channel* %23, i64 %25
  store %struct.mwl_hal_channel* %26, %struct.mwl_hal_channel** %13, align 8
  %27 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load %struct.mwl_hal_channel*, %struct.mwl_hal_channel** %13, align 8
  %31 = getelementptr inbounds %struct.mwl_hal_channel, %struct.mwl_hal_channel* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mwl_hal_channel*, %struct.mwl_hal_channel** %13, align 8
  %34 = getelementptr inbounds %struct.mwl_hal_channel, %struct.mwl_hal_channel* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @ieee80211_add_channel_ht40(%struct.ieee80211_channel* %27, i32 %28, i32* %29, i32 %32, i32 %35, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %20
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @ENOENT, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %49

45:                                               ; preds = %40, %20
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %14

49:                                               ; preds = %44, %14
  ret void
}

declare dso_local i32 @ieee80211_add_channel_ht40(%struct.ieee80211_channel*, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
