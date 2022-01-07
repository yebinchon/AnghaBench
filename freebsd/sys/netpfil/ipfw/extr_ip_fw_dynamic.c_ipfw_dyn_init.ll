; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_ipfw_dyn_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_ipfw_dyn_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }

@V_dyn_max = common dso_local global i32 0, align 4
@V_dyn_parent_max = common dso_local global i32 0, align 4
@V_dyn_buckets_max = common dso_local global i32 0, align 4
@V_dyn_ack_lifetime = common dso_local global i32 0, align 4
@V_dyn_syn_lifetime = common dso_local global i32 0, align 4
@V_dyn_fin_lifetime = common dso_local global i32 0, align 4
@V_dyn_rst_lifetime = common dso_local global i32 0, align 4
@V_dyn_udp_lifetime = common dso_local global i32 0, align 4
@V_dyn_short_lifetime = common dso_local global i32 0, align 4
@V_dyn_keepalive_interval = common dso_local global i32 0, align 4
@V_dyn_keepalive_period = common dso_local global i32 0, align 4
@V_dyn_keepalive = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4
@V_dyn_keepalive_last = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"IPFW dynamic states data\00", align 1
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@V_dyn_data_zone = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"IPFW parent dynamic states\00", align 1
@V_dyn_parent_zone = common dso_local global i8* null, align 8
@V_dyn_expired_ipv4 = common dso_local global i32 0, align 4
@V_dyn_ipv4 = common dso_local global i32* null, align 8
@V_dyn_ipv4_parent = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"IPFW IPv4 dynamic states\00", align 1
@V_dyn_ipv4_zone = common dso_local global i8* null, align 8
@V_curr_dyn_buckets = common dso_local global i64 0, align 8
@V_dyn_bucket_lock = common dso_local global i32* null, align 8
@curvnet = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@M_IPFW = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@dyn_hp_cache = common dso_local global i32 0, align 4
@V_dyn_timeout = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@dyn_tick = common dso_local global i32 0, align 4
@dyn_opcodes = common dso_local global i32 0, align 4
@V_dyn_expired_ipv6 = common dso_local global i32 0, align 4
@V_dyn_hashseed = common dso_local global i32 0, align 4
@V_dyn_ipv6 = common dso_local global i32* null, align 8
@V_dyn_ipv6_parent = common dso_local global i32* null, align 8
@V_dyn_ipv6_zone = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipfw_dyn_init(%struct.ip_fw_chain* %0) #0 {
  %2 = alloca %struct.ip_fw_chain*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %2, align 8
  store i32 16384, i32* @V_dyn_max, align 4
  store i32 4096, i32* @V_dyn_parent_max, align 4
  store i32 8192, i32* @V_dyn_buckets_max, align 4
  store i32 300, i32* @V_dyn_ack_lifetime, align 4
  store i32 20, i32* @V_dyn_syn_lifetime, align 4
  store i32 1, i32* @V_dyn_fin_lifetime, align 4
  store i32 1, i32* @V_dyn_rst_lifetime, align 4
  store i32 10, i32* @V_dyn_udp_lifetime, align 4
  store i32 5, i32* @V_dyn_short_lifetime, align 4
  store i32 20, i32* @V_dyn_keepalive_interval, align 4
  store i32 5, i32* @V_dyn_keepalive_period, align 4
  store i32 1, i32* @V_dyn_keepalive, align 4
  %3 = load i32, i32* @time_uptime, align 4
  store i32 %3, i32* @V_dyn_keepalive_last, align 4
  %4 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %5 = call i8* @uma_zcreate(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %4, i32 0)
  store i8* %5, i8** @V_dyn_data_zone, align 8
  %6 = load i8*, i8** @V_dyn_data_zone, align 8
  %7 = load i32, i32* @V_dyn_max, align 4
  %8 = call i32 @uma_zone_set_max(i8* %6, i32 %7)
  %9 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %10 = call i8* @uma_zcreate(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %9, i32 0)
  store i8* %10, i8** @V_dyn_parent_zone, align 8
  %11 = load i8*, i8** @V_dyn_parent_zone, align 8
  %12 = load i32, i32* @V_dyn_parent_max, align 4
  %13 = call i32 @uma_zone_set_max(i8* %11, i32 %12)
  %14 = call i32 @SLIST_INIT(i32* @V_dyn_expired_ipv4)
  store i32* null, i32** @V_dyn_ipv4, align 8
  store i32* null, i32** @V_dyn_ipv4_parent, align 8
  %15 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %16 = call i8* @uma_zcreate(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %15, i32 0)
  store i8* %16, i8** @V_dyn_ipv4_zone, align 8
  store i64 0, i64* @V_curr_dyn_buckets, align 8
  store i32* null, i32** @V_dyn_bucket_lock, align 8
  %17 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %18 = call i32 @dyn_grow_hashtable(%struct.ip_fw_chain* %17, i32 256)
  %19 = load i32, i32* @curvnet, align 4
  %20 = call i64 @IS_DEFAULT_VNET(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load i32, i32* @mp_ncpus, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @M_IPFW, align 4
  %28 = load i32, i32* @M_WAITOK, align 4
  %29 = load i32, i32* @M_ZERO, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @malloc(i32 %26, i32 %27, i32 %30)
  store i32 %31, i32* @dyn_hp_cache, align 4
  br label %32

32:                                               ; preds = %22, %1
  %33 = call i32 (...) @DYN_EXPIRED_LOCK_INIT()
  %34 = call i32 @callout_init(i32* @V_dyn_timeout, i32 1)
  %35 = load i32, i32* @hz, align 4
  %36 = load i32, i32* @dyn_tick, align 4
  %37 = load i32, i32* @curvnet, align 4
  %38 = call i32 @callout_reset(i32* @V_dyn_timeout, i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* @curvnet, align 4
  %40 = call i64 @IS_DEFAULT_VNET(i32 %39)
  %41 = load i32, i32* @dyn_opcodes, align 4
  %42 = call i32 @IPFW_ADD_OBJ_REWRITER(i64 %40, i32 %41)
  ret void
}

declare dso_local i8* @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @uma_zone_set_max(i8*, i32) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @dyn_grow_hashtable(%struct.ip_fw_chain*, i32) #1

declare dso_local i64 @IS_DEFAULT_VNET(i32) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @DYN_EXPIRED_LOCK_INIT(...) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, i32) #1

declare dso_local i32 @IPFW_ADD_OBJ_REWRITER(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
