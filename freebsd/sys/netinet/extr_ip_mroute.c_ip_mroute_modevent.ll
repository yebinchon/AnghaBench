; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_mroute.c_ip_mroute_modevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_mroute.c_ip_mroute_modevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ifnet_departure_event = common dso_local global i32 0, align 4
@if_detached_event = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_ANY = common dso_local global i32 0, align 4
@if_detach_event_tag = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [61 x i8] c"ip_mroute: unable to register ifnet_departure_event handler\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MFCHASHSIZE = common dso_local global i32 0, align 4
@mfchashsize = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"net.inet.ip.mfchashsize\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"WARNING: %s not a power of 2; using default\0A\00", align 1
@pim_squelch_wholepkt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"net.inet.pim.squelch_wholepkt\00", align 1
@ipv4_encap_cfg = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@pim_encap_cookie = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"ip_mroute: unable to attach pim encap\0A\00", align 1
@X_ip_mcast_src = common dso_local global i32* null, align 8
@ip_mcast_src = common dso_local global i32* null, align 8
@X_ip_mforward = common dso_local global i32* null, align 8
@ip_mforward = common dso_local global i32* null, align 8
@X_ip_mrouter_done = common dso_local global i32* null, align 8
@ip_mrouter_done = common dso_local global i32* null, align 8
@X_ip_mrouter_get = common dso_local global i32* null, align 8
@ip_mrouter_get = common dso_local global i32* null, align 8
@X_ip_mrouter_set = common dso_local global i32* null, align 8
@ip_mrouter_set = common dso_local global i32* null, align 8
@X_ip_rsvp_force_done = common dso_local global i32* null, align 8
@ip_rsvp_force_done = common dso_local global i32* null, align 8
@X_ip_rsvp_vif = common dso_local global i32* null, align 8
@ip_rsvp_vif = common dso_local global i32* null, align 8
@X_legal_vif_num = common dso_local global i32* null, align 8
@legal_vif_num = common dso_local global i32* null, align 8
@X_mrt_ioctl = common dso_local global i32* null, align 8
@mrt_ioctl = common dso_local global i32* null, align 8
@X_rsvp_input = common dso_local global i32* null, align 8
@rsvp_input_p = common dso_local global i32* null, align 8
@ip_mrouter_cnt = common dso_local global i32 0, align 4
@ip_mrouter_unloading = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @ip_mroute_modevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_mroute_modevent(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %78 [
    i32 129, label %9
    i32 128, label %57
  ]

9:                                                ; preds = %3
  %10 = call i32 (...) @MROUTER_LOCK_INIT()
  %11 = load i32, i32* @ifnet_departure_event, align 4
  %12 = load i32, i32* @if_detached_event, align 4
  %13 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %14 = call i32* @EVENTHANDLER_REGISTER(i32 %11, i32 %12, i32* null, i32 %13)
  store i32* %14, i32** @if_detach_event_tag, align 8
  %15 = load i32*, i32** @if_detach_event_tag, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 (...) @MROUTER_LOCK_DESTROY()
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %81

21:                                               ; preds = %9
  %22 = call i32 (...) @MFC_LOCK_INIT()
  %23 = call i32 (...) @VIF_LOCK_INIT()
  %24 = load i32, i32* @MFCHASHSIZE, align 4
  store i32 %24, i32* @mfchashsize, align 4
  %25 = call i32 @TUNABLE_ULONG_FETCH(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* @mfchashsize)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load i32, i32* @mfchashsize, align 4
  %29 = call i32 @powerof2(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @MFCHASHSIZE, align 4
  store i32 %33, i32* @mfchashsize, align 4
  br label %34

34:                                               ; preds = %31, %27, %21
  store i32 0, i32* @pim_squelch_wholepkt, align 4
  %35 = call i32 @TUNABLE_ULONG_FETCH(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32* @pim_squelch_wholepkt)
  %36 = load i32, i32* @M_WAITOK, align 4
  %37 = call i32* @ip_encap_attach(i32* @ipv4_encap_cfg, i32* null, i32 %36)
  store i32* %37, i32** @pim_encap_cookie, align 8
  %38 = load i32*, i32** @pim_encap_cookie, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %42 = call i32 (...) @VIF_LOCK_DESTROY()
  %43 = call i32 (...) @MFC_LOCK_DESTROY()
  %44 = call i32 (...) @MROUTER_LOCK_DESTROY()
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %4, align 4
  br label %81

46:                                               ; preds = %34
  %47 = load i32*, i32** @X_ip_mcast_src, align 8
  store i32* %47, i32** @ip_mcast_src, align 8
  %48 = load i32*, i32** @X_ip_mforward, align 8
  store i32* %48, i32** @ip_mforward, align 8
  %49 = load i32*, i32** @X_ip_mrouter_done, align 8
  store i32* %49, i32** @ip_mrouter_done, align 8
  %50 = load i32*, i32** @X_ip_mrouter_get, align 8
  store i32* %50, i32** @ip_mrouter_get, align 8
  %51 = load i32*, i32** @X_ip_mrouter_set, align 8
  store i32* %51, i32** @ip_mrouter_set, align 8
  %52 = load i32*, i32** @X_ip_rsvp_force_done, align 8
  store i32* %52, i32** @ip_rsvp_force_done, align 8
  %53 = load i32*, i32** @X_ip_rsvp_vif, align 8
  store i32* %53, i32** @ip_rsvp_vif, align 8
  %54 = load i32*, i32** @X_legal_vif_num, align 8
  store i32* %54, i32** @legal_vif_num, align 8
  %55 = load i32*, i32** @X_mrt_ioctl, align 8
  store i32* %55, i32** @mrt_ioctl, align 8
  %56 = load i32*, i32** @X_rsvp_input, align 8
  store i32* %56, i32** @rsvp_input_p, align 8
  br label %80

57:                                               ; preds = %3
  %58 = call i32 (...) @MROUTER_LOCK()
  %59 = load i32, i32* @ip_mrouter_cnt, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = call i32 (...) @MROUTER_UNLOCK()
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* %4, align 4
  br label %81

64:                                               ; preds = %57
  store i32 1, i32* @ip_mrouter_unloading, align 4
  %65 = call i32 (...) @MROUTER_UNLOCK()
  %66 = load i32, i32* @ifnet_departure_event, align 4
  %67 = load i32*, i32** @if_detach_event_tag, align 8
  %68 = call i32 @EVENTHANDLER_DEREGISTER(i32 %66, i32* %67)
  %69 = load i32*, i32** @pim_encap_cookie, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i32*, i32** @pim_encap_cookie, align 8
  %73 = call i32 @ip_encap_detach(i32* %72)
  store i32* null, i32** @pim_encap_cookie, align 8
  br label %74

74:                                               ; preds = %71, %64
  store i32* null, i32** @ip_mcast_src, align 8
  store i32* null, i32** @ip_mforward, align 8
  store i32* null, i32** @ip_mrouter_done, align 8
  store i32* null, i32** @ip_mrouter_get, align 8
  store i32* null, i32** @ip_mrouter_set, align 8
  store i32* null, i32** @ip_rsvp_force_done, align 8
  store i32* null, i32** @ip_rsvp_vif, align 8
  store i32* null, i32** @legal_vif_num, align 8
  store i32* null, i32** @mrt_ioctl, align 8
  store i32* null, i32** @rsvp_input_p, align 8
  %75 = call i32 (...) @VIF_LOCK_DESTROY()
  %76 = call i32 (...) @MFC_LOCK_DESTROY()
  %77 = call i32 (...) @MROUTER_LOCK_DESTROY()
  br label %80

78:                                               ; preds = %3
  %79 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %79, i32* %4, align 4
  br label %81

80:                                               ; preds = %74, %46
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %78, %61, %40, %17
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @MROUTER_LOCK_INIT(...) #1

declare dso_local i32* @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @MROUTER_LOCK_DESTROY(...) #1

declare dso_local i32 @MFC_LOCK_INIT(...) #1

declare dso_local i32 @VIF_LOCK_INIT(...) #1

declare dso_local i32 @TUNABLE_ULONG_FETCH(i8*, i32*) #1

declare dso_local i32 @powerof2(i32) #1

declare dso_local i32* @ip_encap_attach(i32*, i32*, i32) #1

declare dso_local i32 @VIF_LOCK_DESTROY(...) #1

declare dso_local i32 @MFC_LOCK_DESTROY(...) #1

declare dso_local i32 @MROUTER_LOCK(...) #1

declare dso_local i32 @MROUTER_UNLOCK(...) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32*) #1

declare dso_local i32 @ip_encap_detach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
