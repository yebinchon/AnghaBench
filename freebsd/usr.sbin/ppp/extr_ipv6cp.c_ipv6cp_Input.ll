; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipv6cp.c_ipv6cp_Input.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipv6cp.c_ipv6cp_Input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.link = type { i32 }
%struct.mbuf = type { i32 }

@MB_IPV6CPIN = common dso_local global i32 0, align 4
@PHASE_NETWORK = common dso_local global i64 0, align 8
@LogIPV6CP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%s: Error: Unexpected IPV6CP in phase %s (ignored)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @ipv6cp_Input(%struct.bundle* %0, %struct.link* %1, %struct.mbuf* %2) #0 {
  %4 = alloca %struct.bundle*, align 8
  %5 = alloca %struct.link*, align 8
  %6 = alloca %struct.mbuf*, align 8
  store %struct.bundle* %0, %struct.bundle** %4, align 8
  store %struct.link* %1, %struct.link** %5, align 8
  store %struct.mbuf* %2, %struct.mbuf** %6, align 8
  %7 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %8 = load i32, i32* @MB_IPV6CPIN, align 4
  %9 = call i32 @m_settype(%struct.mbuf* %7, i32 %8)
  %10 = load %struct.bundle*, %struct.bundle** %4, align 8
  %11 = call i64 @bundle_Phase(%struct.bundle* %10)
  %12 = load i64, i64* @PHASE_NETWORK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.bundle*, %struct.bundle** %4, align 8
  %16 = getelementptr inbounds %struct.bundle, %struct.bundle* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %20 = call i32 @fsm_Input(i32* %18, %struct.mbuf* %19)
  br label %37

21:                                               ; preds = %3
  %22 = load %struct.bundle*, %struct.bundle** %4, align 8
  %23 = call i64 @bundle_Phase(%struct.bundle* %22)
  %24 = load i64, i64* @PHASE_NETWORK, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i32, i32* @LogIPV6CP, align 4
  %28 = load %struct.link*, %struct.link** %5, align 8
  %29 = getelementptr inbounds %struct.link, %struct.link* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.bundle*, %struct.bundle** %4, align 8
  %32 = call i32 @bundle_PhaseName(%struct.bundle* %31)
  %33 = call i32 @log_Printf(i32 %27, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %32)
  br label %34

34:                                               ; preds = %26, %21
  %35 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %36 = call i32 @m_freem(%struct.mbuf* %35)
  br label %37

37:                                               ; preds = %34, %14
  ret %struct.mbuf* null
}

declare dso_local i32 @m_settype(%struct.mbuf*, i32) #1

declare dso_local i64 @bundle_Phase(%struct.bundle*) #1

declare dso_local i32 @fsm_Input(i32*, %struct.mbuf*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i32) #1

declare dso_local i32 @bundle_PhaseName(%struct.bundle*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
