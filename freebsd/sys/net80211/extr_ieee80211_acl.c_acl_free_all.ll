; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_acl.c_acl_free_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_acl.c_acl_free_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.aclstate* }
%struct.aclstate = type { i32 }
%struct.acl = type { i32 }

@IEEE80211_MSG_ACL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ACL: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"free all\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*)* @acl_free_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acl_free_all(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  %3 = alloca %struct.aclstate*, align 8
  %4 = alloca %struct.acl*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %5 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %5, i32 0, i32 0
  %7 = load %struct.aclstate*, %struct.aclstate** %6, align 8
  store %struct.aclstate* %7, %struct.aclstate** %3, align 8
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %9 = load i32, i32* @IEEE80211_MSG_ACL, align 4
  %10 = call i32 @IEEE80211_DPRINTF(%struct.ieee80211vap* %8, i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %11 = load %struct.aclstate*, %struct.aclstate** %3, align 8
  %12 = call i32 @ACL_LOCK(%struct.aclstate* %11)
  br label %13

13:                                               ; preds = %18, %1
  %14 = load %struct.aclstate*, %struct.aclstate** %3, align 8
  %15 = getelementptr inbounds %struct.aclstate, %struct.aclstate* %14, i32 0, i32 0
  %16 = call %struct.acl* @TAILQ_FIRST(i32* %15)
  store %struct.acl* %16, %struct.acl** %4, align 8
  %17 = icmp ne %struct.acl* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.aclstate*, %struct.aclstate** %3, align 8
  %20 = load %struct.acl*, %struct.acl** %4, align 8
  %21 = call i32 @_acl_free(%struct.aclstate* %19, %struct.acl* %20)
  br label %13

22:                                               ; preds = %13
  %23 = load %struct.aclstate*, %struct.aclstate** %3, align 8
  %24 = call i32 @ACL_UNLOCK(%struct.aclstate* %23)
  ret i32 0
}

declare dso_local i32 @IEEE80211_DPRINTF(%struct.ieee80211vap*, i32, i8*, i8*) #1

declare dso_local i32 @ACL_LOCK(%struct.aclstate*) #1

declare dso_local %struct.acl* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @_acl_free(%struct.aclstate*, %struct.acl*) #1

declare dso_local i32 @ACL_UNLOCK(%struct.aclstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
