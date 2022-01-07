; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_dequeue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.ifnet = type { i32 }
%struct.sppp = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@IFF_CISCO = common dso_local global i64 0, align 8
@PP_FR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @sppp_dequeue(%struct.ifnet* %0) #0 {
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
  %10 = getelementptr inbounds %struct.sppp, %struct.sppp* %9, i32 0, i32 2
  %11 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %12 = call i32 @IF_DEQUEUE(i32* %10, %struct.mbuf* %11)
  %13 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %14 = icmp eq %struct.mbuf* %13, null
  br i1 %14, label %15, label %45

15:                                               ; preds = %1
  %16 = load %struct.sppp*, %struct.sppp** %3, align 8
  %17 = call i64 @sppp_ncp_check(%struct.sppp* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = load %struct.sppp*, %struct.sppp** %3, align 8
  %21 = getelementptr inbounds %struct.sppp, %struct.sppp* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IFF_CISCO, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.sppp*, %struct.sppp** %3, align 8
  %27 = getelementptr inbounds %struct.sppp, %struct.sppp* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PP_FR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %25, %19, %15
  %32 = load %struct.sppp*, %struct.sppp** %3, align 8
  %33 = getelementptr inbounds %struct.sppp, %struct.sppp* %32, i32 0, i32 1
  %34 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %35 = call i32 @IF_DEQUEUE(i32* %33, %struct.mbuf* %34)
  %36 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %37 = icmp eq %struct.mbuf* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.sppp*, %struct.sppp** %3, align 8
  %40 = call %struct.TYPE_2__* @SP2IFP(%struct.sppp* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %43 = call i32 @IF_DEQUEUE(i32* %41, %struct.mbuf* %42)
  br label %44

44:                                               ; preds = %38, %31
  br label %45

45:                                               ; preds = %44, %25, %1
  %46 = load %struct.sppp*, %struct.sppp** %3, align 8
  %47 = call i32 @SPPP_UNLOCK(%struct.sppp* %46)
  %48 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  ret %struct.mbuf* %48
}

declare dso_local %struct.sppp* @IFP2SP(%struct.ifnet*) #1

declare dso_local i32 @SPPP_LOCK(%struct.sppp*) #1

declare dso_local i32 @IF_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i64 @sppp_ncp_check(%struct.sppp*) #1

declare dso_local %struct.TYPE_2__* @SP2IFP(%struct.sppp*) #1

declare dso_local i32 @SPPP_UNLOCK(%struct.sppp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
