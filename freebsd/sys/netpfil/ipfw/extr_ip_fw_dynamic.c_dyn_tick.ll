; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnet = type { i32 }

@V_layer3_chain = common dso_local global i32 0, align 4
@V_dyn_keepalive = common dso_local global i64 0, align 8
@V_dyn_keepalive_last = common dso_local global i64 0, align 8
@V_dyn_keepalive_period = common dso_local global i64 0, align 8
@time_uptime = common dso_local global i64 0, align 8
@V_curr_dyn_buckets = common dso_local global i32 0, align 4
@V_dyn_buckets_max = common dso_local global i32 0, align 4
@V_dyn_count = common dso_local global i32 0, align 4
@V_curr_max_length = common dso_local global i32 0, align 4
@V_dyn_timeout = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dyn_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dyn_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.vnet*
  %6 = call i32 @CURVNET_SET(%struct.vnet* %5)
  %7 = call i32 @dyn_free_states(i32* @V_layer3_chain)
  %8 = call i32 @IPFW_UH_WLOCK(i32* @V_layer3_chain)
  %9 = call i32 @dyn_expire_states(i32* @V_layer3_chain, i32* null)
  %10 = call i32 @IPFW_UH_WUNLOCK(i32* @V_layer3_chain)
  %11 = load i64, i64* @V_dyn_keepalive, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load i64, i64* @V_dyn_keepalive_last, align 8
  %15 = load i64, i64* @V_dyn_keepalive_period, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64, i64* @time_uptime, align 8
  %18 = icmp sle i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i64, i64* @time_uptime, align 8
  store i64 %20, i64* @V_dyn_keepalive_last, align 8
  %21 = call i32 @dyn_send_keepalive_ipv4(i32* @V_layer3_chain)
  br label %22

22:                                               ; preds = %19, %13, %1
  %23 = load i32, i32* @V_curr_dyn_buckets, align 4
  %24 = load i32, i32* @V_dyn_buckets_max, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = load i32, i32* @V_curr_dyn_buckets, align 4
  %28 = load i32, i32* @V_dyn_count, align 4
  %29 = sdiv i32 %28, 2
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @V_curr_dyn_buckets, align 4
  %33 = load i32, i32* @V_dyn_count, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load i32, i32* @V_curr_max_length, align 4
  %37 = icmp sgt i32 %36, 8
  br i1 %37, label %38, label %50

38:                                               ; preds = %35, %26
  %39 = load i32, i32* @V_dyn_count, align 4
  %40 = call i32 @fls(i32 %39)
  %41 = shl i32 1, %40
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @V_dyn_buckets_max, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @V_dyn_buckets_max, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %38
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @dyn_grow_hashtable(i32* @V_layer3_chain, i32 %48)
  br label %50

50:                                               ; preds = %47, %35, %31, %22
  %51 = load i32, i32* @hz, align 4
  %52 = load i8*, i8** %2, align 8
  %53 = call i32 @callout_reset_on(i32* @V_dyn_timeout, i32 %51, void (i8*)* @dyn_tick, i8* %52, i32 0)
  %54 = call i32 (...) @CURVNET_RESTORE()
  ret void
}

declare dso_local i32 @CURVNET_SET(%struct.vnet*) #1

declare dso_local i32 @dyn_free_states(i32*) #1

declare dso_local i32 @IPFW_UH_WLOCK(i32*) #1

declare dso_local i32 @dyn_expire_states(i32*, i32*) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(i32*) #1

declare dso_local i32 @dyn_send_keepalive_ipv4(i32*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @dyn_grow_hashtable(i32*, i32) #1

declare dso_local i32 @callout_reset_on(i32*, i32, void (i8*)*, i8*, i32) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
