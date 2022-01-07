; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_iface.c_ng_iface_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_iface.c_ng_iface_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rm_priotracker = type { i32 }

@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: can't handle af%d\0A\00", align 1
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@IFCOUNTER_OBYTES = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.mbuf*, i32)* @ng_iface_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_iface_send(%struct.ifnet* %0, %struct.mbuf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rm_priotracker, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %15 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32* @get_iffam_from_af(i32 %17)
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %23 = call i32 @m_freem(%struct.mbuf* %22)
  %24 = load i32, i32* @LOG_WARNING, align 4
  %25 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @log(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %30, i32* %4, align 4
  br label %75

31:                                               ; preds = %3
  %32 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %33 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @PRIV_RLOCK(i32 %36, %struct.rm_priotracker* %8)
  %38 = load i32, i32* %9, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = call i32** @get_hook_from_iffam(i32 %38, i32* %39)
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %11, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %31
  %45 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %46 = call i32 @NG_FREE_M(%struct.mbuf* %45)
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @PRIV_RUNLOCK(i32 %47, %struct.rm_priotracker* %8)
  %49 = load i32, i32* @ENETDOWN, align 4
  store i32 %49, i32* %4, align 4
  br label %75

50:                                               ; preds = %31
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @NG_HOOK_REF(i32* %51)
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @PRIV_RUNLOCK(i32 %53, %struct.rm_priotracker* %8)
  %55 = call i32 (...) @NG_OUTBOUND_THREAD_REF()
  %56 = load i32, i32* %12, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %59 = call i32 @NG_SEND_DATA_ONLY(i32 %56, i32* %57, %struct.mbuf* %58)
  %60 = call i32 (...) @NG_OUTBOUND_THREAD_UNREF()
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @NG_HOOK_UNREF(i32* %61)
  %63 = load i32, i32* %12, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %50
  %66 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %67 = load i32, i32* @IFCOUNTER_OBYTES, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @if_inc_counter(%struct.ifnet* %66, i32 %67, i32 %68)
  %70 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %71 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %72 = call i32 @if_inc_counter(%struct.ifnet* %70, i32 %71, i32 1)
  br label %73

73:                                               ; preds = %65, %50
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %44, %21
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32* @get_iffam_from_af(i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @log(i32, i8*, i32, i32) #1

declare dso_local i32 @PRIV_RLOCK(i32, %struct.rm_priotracker*) #1

declare dso_local i32** @get_hook_from_iffam(i32, i32*) #1

declare dso_local i32 @NG_FREE_M(%struct.mbuf*) #1

declare dso_local i32 @PRIV_RUNLOCK(i32, %struct.rm_priotracker*) #1

declare dso_local i32 @NG_HOOK_REF(i32*) #1

declare dso_local i32 @NG_OUTBOUND_THREAD_REF(...) #1

declare dso_local i32 @NG_SEND_DATA_ONLY(i32, i32*, %struct.mbuf*) #1

declare dso_local i32 @NG_OUTBOUND_THREAD_UNREF(...) #1

declare dso_local i32 @NG_HOOK_UNREF(i32*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
