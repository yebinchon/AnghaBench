; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_chap_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_chap_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.sppp*)* }
%struct.sppp = type { %struct.TYPE_6__, i32*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@PPP_CHAP = common dso_local global i64 0, align 8
@LCP_OPT_AUTH_PROTO = common dso_local global i32 0, align 4
@chap = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@IDX_CHAP = common dso_local global i64 0, align 8
@STATE_REQ_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sppp*)* @sppp_chap_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sppp_chap_open(%struct.sppp* %0) #0 {
  %2 = alloca %struct.sppp*, align 8
  store %struct.sppp* %0, %struct.sppp** %2, align 8
  %3 = load %struct.sppp*, %struct.sppp** %2, align 8
  %4 = getelementptr inbounds %struct.sppp, %struct.sppp* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PPP_CHAP, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %34

9:                                                ; preds = %1
  %10 = load %struct.sppp*, %struct.sppp** %2, align 8
  %11 = getelementptr inbounds %struct.sppp, %struct.sppp* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @LCP_OPT_AUTH_PROTO, align 4
  %15 = shl i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %9
  %19 = load i32 (%struct.sppp*)*, i32 (%struct.sppp*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @chap, i32 0, i32 0), align 8
  %20 = load %struct.sppp*, %struct.sppp** %2, align 8
  %21 = call i32 %19(%struct.sppp* %20)
  %22 = load %struct.sppp*, %struct.sppp** %2, align 8
  %23 = getelementptr inbounds %struct.sppp, %struct.sppp* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sppp*, %struct.sppp** %2, align 8
  %27 = getelementptr inbounds %struct.sppp, %struct.sppp* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @IDX_CHAP, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %25, i32* %30, align 4
  %31 = load %struct.sppp*, %struct.sppp** %2, align 8
  %32 = load i32, i32* @STATE_REQ_SENT, align 4
  %33 = call i32 @sppp_cp_change_state(%struct.TYPE_7__* @chap, %struct.sppp* %31, i32 %32)
  br label %34

34:                                               ; preds = %18, %9, %1
  ret void
}

declare dso_local i32 @sppp_cp_change_state(%struct.TYPE_7__*, %struct.sppp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
