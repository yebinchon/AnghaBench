; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_pap_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_pap_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (%struct.sppp*)* }
%struct.sppp = type { %struct.TYPE_8__, i32, %struct.TYPE_6__, i32*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@PPP_PAP = common dso_local global i64 0, align 8
@LCP_OPT_AUTH_PROTO = common dso_local global i32 0, align 4
@IDX_PAP = common dso_local global i64 0, align 8
@pap = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@STATE_REQ_SENT = common dso_local global i32 0, align 4
@sppp_pap_my_TO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sppp*)* @sppp_pap_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sppp_pap_open(%struct.sppp* %0) #0 {
  %2 = alloca %struct.sppp*, align 8
  store %struct.sppp* %0, %struct.sppp** %2, align 8
  %3 = load %struct.sppp*, %struct.sppp** %2, align 8
  %4 = getelementptr inbounds %struct.sppp, %struct.sppp* %3, i32 0, i32 4
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PPP_PAP, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %31

9:                                                ; preds = %1
  %10 = load %struct.sppp*, %struct.sppp** %2, align 8
  %11 = getelementptr inbounds %struct.sppp, %struct.sppp* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @LCP_OPT_AUTH_PROTO, align 4
  %15 = shl i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %9
  %19 = load %struct.sppp*, %struct.sppp** %2, align 8
  %20 = getelementptr inbounds %struct.sppp, %struct.sppp* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.sppp*, %struct.sppp** %2, align 8
  %24 = getelementptr inbounds %struct.sppp, %struct.sppp* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @IDX_PAP, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 %22, i32* %27, align 4
  %28 = load %struct.sppp*, %struct.sppp** %2, align 8
  %29 = load i32, i32* @STATE_REQ_SENT, align 4
  %30 = call i32 @sppp_cp_change_state(%struct.TYPE_9__* @pap, %struct.sppp* %28, i32 %29)
  br label %31

31:                                               ; preds = %18, %9, %1
  %32 = load %struct.sppp*, %struct.sppp** %2, align 8
  %33 = getelementptr inbounds %struct.sppp, %struct.sppp* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PPP_PAP, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = load i32 (%struct.sppp*)*, i32 (%struct.sppp*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pap, i32 0, i32 0), align 8
  %40 = load %struct.sppp*, %struct.sppp** %2, align 8
  %41 = call i32 %39(%struct.sppp* %40)
  %42 = load %struct.sppp*, %struct.sppp** %2, align 8
  %43 = getelementptr inbounds %struct.sppp, %struct.sppp* %42, i32 0, i32 1
  %44 = load %struct.sppp*, %struct.sppp** %2, align 8
  %45 = getelementptr inbounds %struct.sppp, %struct.sppp* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @sppp_pap_my_TO, align 4
  %49 = load %struct.sppp*, %struct.sppp** %2, align 8
  %50 = bitcast %struct.sppp* %49 to i8*
  %51 = call i32 @callout_reset(i32* %43, i32 %47, i32 %48, i8* %50)
  br label %52

52:                                               ; preds = %38, %31
  ret void
}

declare dso_local i32 @sppp_cp_change_state(%struct.TYPE_9__*, %struct.sppp*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
