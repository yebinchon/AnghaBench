; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_acl.c_acl_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_acl.c_acl_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.aclstate* }
%struct.aclstate = type { %struct.ieee80211vap*, i32, i32 }

@M_80211_ACL = common dso_local global i32 0, align 4
@IEEE80211_M_NOWAIT = common dso_local global i32 0, align 4
@IEEE80211_M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"acl\00", align 1
@ACL_POLICY_OPEN = common dso_local global i32 0, align 4
@nrefs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*)* @acl_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acl_attach(%struct.ieee80211vap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca %struct.aclstate*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %3, align 8
  %5 = load i32, i32* @M_80211_ACL, align 4
  %6 = load i32, i32* @IEEE80211_M_NOWAIT, align 4
  %7 = load i32, i32* @IEEE80211_M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call i64 @IEEE80211_MALLOC(i32 16, i32 %5, i32 %8)
  %10 = inttoptr i64 %9 to %struct.aclstate*
  store %struct.aclstate* %10, %struct.aclstate** %4, align 8
  %11 = load %struct.aclstate*, %struct.aclstate** %4, align 8
  %12 = icmp eq %struct.aclstate* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

14:                                               ; preds = %1
  %15 = load %struct.aclstate*, %struct.aclstate** %4, align 8
  %16 = call i32 @ACL_LOCK_INIT(%struct.aclstate* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.aclstate*, %struct.aclstate** %4, align 8
  %18 = getelementptr inbounds %struct.aclstate, %struct.aclstate* %17, i32 0, i32 2
  %19 = call i32 @TAILQ_INIT(i32* %18)
  %20 = load i32, i32* @ACL_POLICY_OPEN, align 4
  %21 = load %struct.aclstate*, %struct.aclstate** %4, align 8
  %22 = getelementptr inbounds %struct.aclstate, %struct.aclstate* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %24 = load %struct.aclstate*, %struct.aclstate** %4, align 8
  %25 = getelementptr inbounds %struct.aclstate, %struct.aclstate* %24, i32 0, i32 0
  store %struct.ieee80211vap* %23, %struct.ieee80211vap** %25, align 8
  %26 = load %struct.aclstate*, %struct.aclstate** %4, align 8
  %27 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %28 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %27, i32 0, i32 0
  store %struct.aclstate* %26, %struct.aclstate** %28, align 8
  %29 = load i32, i32* @nrefs, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @nrefs, align 4
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %14, %13
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @IEEE80211_MALLOC(i32, i32, i32) #1

declare dso_local i32 @ACL_LOCK_INIT(%struct.aclstate*, i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
