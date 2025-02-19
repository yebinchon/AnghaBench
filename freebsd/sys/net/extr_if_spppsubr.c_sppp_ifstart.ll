; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_ifstart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_ifstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.sppp = type { i32 (%struct.ifnet.0*)*, i32 }
%struct.ifnet.0 = type opaque

@sppp_ifstart_sched = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @sppp_ifstart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sppp_ifstart(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.sppp*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %5 = call %struct.sppp* @IFP2SP(%struct.ifnet* %4)
  store %struct.sppp* %5, %struct.sppp** %3, align 8
  %6 = load %struct.sppp*, %struct.sppp** %3, align 8
  %7 = call i64 @SPPP_LOCK_OWNED(%struct.sppp* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.sppp*, %struct.sppp** %3, align 8
  %11 = getelementptr inbounds %struct.sppp, %struct.sppp* %10, i32 0, i32 1
  %12 = call i64 @callout_pending(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %29

15:                                               ; preds = %9
  %16 = load %struct.sppp*, %struct.sppp** %3, align 8
  %17 = getelementptr inbounds %struct.sppp, %struct.sppp* %16, i32 0, i32 1
  %18 = load i32, i32* @sppp_ifstart_sched, align 4
  %19 = load %struct.sppp*, %struct.sppp** %3, align 8
  %20 = bitcast %struct.sppp* %19 to i8*
  %21 = call i32 @callout_reset(i32* %17, i32 1, i32 %18, i8* %20)
  br label %29

22:                                               ; preds = %1
  %23 = load %struct.sppp*, %struct.sppp** %3, align 8
  %24 = getelementptr inbounds %struct.sppp, %struct.sppp* %23, i32 0, i32 0
  %25 = load i32 (%struct.ifnet.0*)*, i32 (%struct.ifnet.0*)** %24, align 8
  %26 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %27 = bitcast %struct.ifnet* %26 to %struct.ifnet.0*
  %28 = call i32 %25(%struct.ifnet.0* %27)
  br label %29

29:                                               ; preds = %14, %22, %15
  ret void
}

declare dso_local %struct.sppp* @IFP2SP(%struct.ifnet*) #1

declare dso_local i64 @SPPP_LOCK_OWNED(%struct.sppp*) #1

declare dso_local i64 @callout_pending(i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
