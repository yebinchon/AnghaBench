; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_if_ether.c_arp_mark_lle_reachable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_if_ether.c_arp_mark_lle_reachable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llentry = type { i32, i32, i64, i32, i64, i32 }

@ARP_LLINFO_REACHABLE = common dso_local global i32 0, align 4
@lle_event = common dso_local global i32 0, align 4
@LLENTRY_RESOLVED = common dso_local global i32 0, align 4
@LLE_STATIC = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i64 0, align 8
@V_arpt_keep = common dso_local global i32 0, align 4
@V_arp_maxtries = common dso_local global i32 0, align 4
@V_arpt_rexmit = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@arptimer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.llentry*)* @arp_mark_lle_reachable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arp_mark_lle_reachable(%struct.llentry* %0) #0 {
  %2 = alloca %struct.llentry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.llentry* %0, %struct.llentry** %2, align 8
  %5 = load %struct.llentry*, %struct.llentry** %2, align 8
  %6 = call i32 @LLE_WLOCK_ASSERT(%struct.llentry* %5)
  %7 = load i32, i32* @ARP_LLINFO_REACHABLE, align 4
  %8 = load %struct.llentry*, %struct.llentry** %2, align 8
  %9 = getelementptr inbounds %struct.llentry, %struct.llentry* %8, i32 0, i32 5
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* @lle_event, align 4
  %11 = load %struct.llentry*, %struct.llentry** %2, align 8
  %12 = load i32, i32* @LLENTRY_RESOLVED, align 4
  %13 = call i32 @EVENTHANDLER_INVOKE(i32 %10, %struct.llentry* %11, i32 %12)
  %14 = load %struct.llentry*, %struct.llentry** %2, align 8
  %15 = getelementptr inbounds %struct.llentry, %struct.llentry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @LLE_STATIC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %53, label %20

20:                                               ; preds = %1
  %21 = load %struct.llentry*, %struct.llentry** %2, align 8
  %22 = call i32 @LLE_ADDREF(%struct.llentry* %21)
  %23 = load i64, i64* @time_uptime, align 8
  %24 = load i32, i32* @V_arpt_keep, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = load %struct.llentry*, %struct.llentry** %2, align 8
  %28 = getelementptr inbounds %struct.llentry, %struct.llentry* %27, i32 0, i32 4
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* @V_arpt_keep, align 4
  %30 = load i32, i32* @V_arp_maxtries, align 4
  %31 = load i32, i32* @V_arpt_rexmit, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sub nsw i32 %29, %32
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %20
  %37 = load i32, i32* @V_arpt_keep, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %20
  %39 = load %struct.llentry*, %struct.llentry** %2, align 8
  %40 = getelementptr inbounds %struct.llentry, %struct.llentry* %39, i32 0, i32 3
  %41 = load i32, i32* @hz, align 4
  %42 = load i32, i32* %4, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* @arptimer, align 4
  %45 = load %struct.llentry*, %struct.llentry** %2, align 8
  %46 = call i32 @callout_reset(i32* %40, i32 %43, i32 %44, %struct.llentry* %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load %struct.llentry*, %struct.llentry** %2, align 8
  %51 = call i32 @LLE_REMREF(%struct.llentry* %50)
  br label %52

52:                                               ; preds = %49, %38
  br label %53

53:                                               ; preds = %52, %1
  %54 = load %struct.llentry*, %struct.llentry** %2, align 8
  %55 = getelementptr inbounds %struct.llentry, %struct.llentry* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @V_arp_maxtries, align 4
  %57 = load %struct.llentry*, %struct.llentry** %2, align 8
  %58 = getelementptr inbounds %struct.llentry, %struct.llentry* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  ret void
}

declare dso_local i32 @LLE_WLOCK_ASSERT(%struct.llentry*) #1

declare dso_local i32 @EVENTHANDLER_INVOKE(i32, %struct.llentry*, i32) #1

declare dso_local i32 @LLE_ADDREF(%struct.llentry*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.llentry*) #1

declare dso_local i32 @LLE_REMREF(%struct.llentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
