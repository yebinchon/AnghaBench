; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_acl.c__acl_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_acl.c__acl_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aclstate = type { i32, i32 }
%struct.acl = type { i32 }

@acl_list = common dso_local global i32 0, align 4
@acl_hash = common dso_local global i32 0, align 4
@M_80211_ACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aclstate*, %struct.acl*)* @_acl_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_acl_free(%struct.aclstate* %0, %struct.acl* %1) #0 {
  %3 = alloca %struct.aclstate*, align 8
  %4 = alloca %struct.acl*, align 8
  store %struct.aclstate* %0, %struct.aclstate** %3, align 8
  store %struct.acl* %1, %struct.acl** %4, align 8
  %5 = load %struct.aclstate*, %struct.aclstate** %3, align 8
  %6 = call i32 @ACL_LOCK_ASSERT(%struct.aclstate* %5)
  %7 = load %struct.aclstate*, %struct.aclstate** %3, align 8
  %8 = getelementptr inbounds %struct.aclstate, %struct.aclstate* %7, i32 0, i32 1
  %9 = load %struct.acl*, %struct.acl** %4, align 8
  %10 = load i32, i32* @acl_list, align 4
  %11 = call i32 @TAILQ_REMOVE(i32* %8, %struct.acl* %9, i32 %10)
  %12 = load %struct.acl*, %struct.acl** %4, align 8
  %13 = load i32, i32* @acl_hash, align 4
  %14 = call i32 @LIST_REMOVE(%struct.acl* %12, i32 %13)
  %15 = load %struct.acl*, %struct.acl** %4, align 8
  %16 = load i32, i32* @M_80211_ACL, align 4
  %17 = call i32 @IEEE80211_FREE(%struct.acl* %15, i32 %16)
  %18 = load %struct.aclstate*, %struct.aclstate** %3, align 8
  %19 = getelementptr inbounds %struct.aclstate, %struct.aclstate* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %19, align 4
  ret void
}

declare dso_local i32 @ACL_LOCK_ASSERT(%struct.aclstate*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.acl*, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.acl*, i32) #1

declare dso_local i32 @IEEE80211_FREE(%struct.acl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
