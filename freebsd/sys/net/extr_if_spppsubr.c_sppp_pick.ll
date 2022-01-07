; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_pick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_pick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.ifnet = type { i32 }
%struct.sppp = type { i64, i64, %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { %struct.mbuf* }
%struct.TYPE_7__ = type { %struct.mbuf* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.mbuf* }

@PHASE_NETWORK = common dso_local global i64 0, align 8
@IFF_CISCO = common dso_local global i64 0, align 8
@PP_FR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @sppp_pick(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.sppp*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %5 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %6 = call %struct.sppp* @IFP2SP(%struct.ifnet* %5)
  store %struct.sppp* %6, %struct.sppp** %3, align 8
  %7 = load %struct.sppp*, %struct.sppp** %3, align 8
  %8 = call i32 @SPPP_LOCK(%struct.sppp* %7)
  %9 = load %struct.sppp*, %struct.sppp** %3, align 8
  %10 = getelementptr inbounds %struct.sppp, %struct.sppp* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  store %struct.mbuf* %12, %struct.mbuf** %4, align 8
  %13 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %14 = icmp eq %struct.mbuf* %13, null
  br i1 %14, label %15, label %46

15:                                               ; preds = %1
  %16 = load %struct.sppp*, %struct.sppp** %3, align 8
  %17 = getelementptr inbounds %struct.sppp, %struct.sppp* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PHASE_NETWORK, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = load %struct.sppp*, %struct.sppp** %3, align 8
  %23 = getelementptr inbounds %struct.sppp, %struct.sppp* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IFF_CISCO, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.sppp*, %struct.sppp** %3, align 8
  %29 = getelementptr inbounds %struct.sppp, %struct.sppp* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PP_FR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %27, %21, %15
  %34 = load %struct.sppp*, %struct.sppp** %3, align 8
  %35 = getelementptr inbounds %struct.sppp, %struct.sppp* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.mbuf*, %struct.mbuf** %36, align 8
  store %struct.mbuf* %37, %struct.mbuf** %4, align 8
  %38 = icmp eq %struct.mbuf* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.sppp*, %struct.sppp** %3, align 8
  %41 = call %struct.TYPE_8__* @SP2IFP(%struct.sppp* %40)
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.mbuf*, %struct.mbuf** %43, align 8
  store %struct.mbuf* %44, %struct.mbuf** %4, align 8
  br label %45

45:                                               ; preds = %39, %33
  br label %46

46:                                               ; preds = %45, %27, %1
  %47 = load %struct.sppp*, %struct.sppp** %3, align 8
  %48 = call i32 @SPPP_UNLOCK(%struct.sppp* %47)
  %49 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  ret %struct.mbuf* %49
}

declare dso_local %struct.sppp* @IFP2SP(%struct.ifnet*) #1

declare dso_local i32 @SPPP_LOCK(%struct.sppp*) #1

declare dso_local %struct.TYPE_8__* @SP2IFP(%struct.sppp*) #1

declare dso_local i32 @SPPP_UNLOCK(%struct.sppp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
