; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_acl.c_acl_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_acl.c_acl_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.aclstate* }
%struct.aclstate = type { i32 }
%struct.ieee80211_frame = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211_frame*)* @acl_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acl_check(%struct.ieee80211vap* %0, %struct.ieee80211_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211_frame*, align 8
  %6 = alloca %struct.aclstate*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %5, align 8
  %7 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %7, i32 0, i32 0
  %9 = load %struct.aclstate*, %struct.aclstate** %8, align 8
  store %struct.aclstate* %9, %struct.aclstate** %6, align 8
  %10 = load %struct.aclstate*, %struct.aclstate** %6, align 8
  %11 = getelementptr inbounds %struct.aclstate, %struct.aclstate* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %30 [
    i32 129, label %13
    i32 128, label %13
    i32 131, label %14
    i32 130, label %22
  ]

13:                                               ; preds = %2, %2
  store i32 1, i32* %3, align 4
  br label %31

14:                                               ; preds = %2
  %15 = load %struct.aclstate*, %struct.aclstate** %6, align 8
  %16 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @_find_acl(%struct.aclstate* %15, i32 %18)
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %3, align 4
  br label %31

22:                                               ; preds = %2
  %23 = load %struct.aclstate*, %struct.aclstate** %6, align 8
  %24 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %25 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @_find_acl(%struct.aclstate* %23, i32 %26)
  %28 = icmp eq i32* %27, null
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %22, %14, %13
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32* @_find_acl(%struct.aclstate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
