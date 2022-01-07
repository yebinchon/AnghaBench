; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_acl.c_acl_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_acl.c_acl_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.aclstate* }
%struct.aclstate = type { i32 }

@nrefs = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"imbalanced attach/detach\00", align 1
@M_80211_ACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*)* @acl_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acl_detach(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  %3 = alloca %struct.aclstate*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %4 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %4, i32 0, i32 0
  %6 = load %struct.aclstate*, %struct.aclstate** %5, align 8
  store %struct.aclstate* %6, %struct.aclstate** %3, align 8
  %7 = load i64, i64* @nrefs, align 8
  %8 = icmp sgt i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* @nrefs, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* @nrefs, align 8
  %13 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %14 = call i32 @acl_free_all(%struct.ieee80211vap* %13)
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %16 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %15, i32 0, i32 0
  store %struct.aclstate* null, %struct.aclstate** %16, align 8
  %17 = load %struct.aclstate*, %struct.aclstate** %3, align 8
  %18 = call i32 @ACL_LOCK_DESTROY(%struct.aclstate* %17)
  %19 = load %struct.aclstate*, %struct.aclstate** %3, align 8
  %20 = load i32, i32* @M_80211_ACL, align 4
  %21 = call i32 @IEEE80211_FREE(%struct.aclstate* %19, i32 %20)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @acl_free_all(%struct.ieee80211vap*) #1

declare dso_local i32 @ACL_LOCK_DESTROY(%struct.aclstate*) #1

declare dso_local i32 @IEEE80211_FREE(%struct.aclstate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
