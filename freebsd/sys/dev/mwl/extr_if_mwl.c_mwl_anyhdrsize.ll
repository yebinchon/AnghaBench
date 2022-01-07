; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_anyhdrsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_anyhdrsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_frame = type { i32* }

@IEEE80211_FC0_TYPE_MASK = common dso_local global i32 0, align 4
@IEEE80211_FC0_TYPE_CTL = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mwl_anyhdrsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl_anyhdrsize(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ieee80211_frame*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.ieee80211_frame*
  store %struct.ieee80211_frame* %6, %struct.ieee80211_frame** %4, align 8
  %7 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IEEE80211_FC0_TYPE_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @IEEE80211_FC0_TYPE_CTL, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IEEE80211_FC0_SUBTYPE_MASK, align 4
  %23 = and i32 %21, %22
  switch i32 %23, label %26 [
    i32 128, label %24
    i32 130, label %24
    i32 129, label %25
  ]

24:                                               ; preds = %16, %16
  store i32 4, i32* %2, align 4
  br label %30

25:                                               ; preds = %16
  store i32 4, i32* %2, align 4
  br label %30

26:                                               ; preds = %16
  store i32 4, i32* %2, align 4
  br label %30

27:                                               ; preds = %1
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @ieee80211_hdrsize(i8* %28)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %27, %26, %25, %24
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @ieee80211_hdrsize(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
