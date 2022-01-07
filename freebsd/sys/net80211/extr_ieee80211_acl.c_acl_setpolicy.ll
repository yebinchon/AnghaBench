; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_acl.c_acl_setpolicy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_acl.c_acl_setpolicy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.aclstate* }
%struct.aclstate = type { i32 }

@IEEE80211_MSG_ACL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ACL: set policy to %u\0A\00", align 1
@ACL_POLICY_OPEN = common dso_local global i32 0, align 4
@ACL_POLICY_ALLOW = common dso_local global i32 0, align 4
@ACL_POLICY_DENY = common dso_local global i32 0, align 4
@ACL_POLICY_RADIUS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, i32)* @acl_setpolicy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acl_setpolicy(%struct.ieee80211vap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aclstate*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %7, i32 0, i32 0
  %9 = load %struct.aclstate*, %struct.aclstate** %8, align 8
  store %struct.aclstate* %9, %struct.aclstate** %6, align 8
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %11 = load i32, i32* @IEEE80211_MSG_ACL, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @IEEE80211_DPRINTF(%struct.ieee80211vap* %10, i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %31 [
    i32 129, label %15
    i32 131, label %19
    i32 130, label %23
    i32 128, label %27
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @ACL_POLICY_OPEN, align 4
  %17 = load %struct.aclstate*, %struct.aclstate** %6, align 8
  %18 = getelementptr inbounds %struct.aclstate, %struct.aclstate* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %33

19:                                               ; preds = %2
  %20 = load i32, i32* @ACL_POLICY_ALLOW, align 4
  %21 = load %struct.aclstate*, %struct.aclstate** %6, align 8
  %22 = getelementptr inbounds %struct.aclstate, %struct.aclstate* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %33

23:                                               ; preds = %2
  %24 = load i32, i32* @ACL_POLICY_DENY, align 4
  %25 = load %struct.aclstate*, %struct.aclstate** %6, align 8
  %26 = getelementptr inbounds %struct.aclstate, %struct.aclstate* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %33

27:                                               ; preds = %2
  %28 = load i32, i32* @ACL_POLICY_RADIUS, align 4
  %29 = load %struct.aclstate*, %struct.aclstate** %6, align 8
  %30 = getelementptr inbounds %struct.aclstate, %struct.aclstate* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %27, %23, %19, %15
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %31
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @IEEE80211_DPRINTF(%struct.ieee80211vap*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
