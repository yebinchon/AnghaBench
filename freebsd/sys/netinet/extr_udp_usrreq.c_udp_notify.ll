; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_udp_usrreq.c_udp_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_udp_usrreq.c_udp_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.rtentry* }
%struct.rtentry = type { i32 }

@EHOSTUNREACH = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@EHOSTDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inpcb* @udp_notify(%struct.inpcb* %0, i32 %1) #0 {
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %6 = call i32 @INP_WLOCK_ASSERT(%struct.inpcb* %5)
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @EHOSTUNREACH, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @ENETUNREACH, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @EHOSTDOWN, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %14, %10, %2
  %19 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %20 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.rtentry*, %struct.rtentry** %21, align 8
  %23 = icmp ne %struct.rtentry* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %26 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.rtentry*, %struct.rtentry** %27, align 8
  %29 = call i32 @RTFREE(%struct.rtentry* %28)
  %30 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %31 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store %struct.rtentry* null, %struct.rtentry** %32, align 8
  br label %33

33:                                               ; preds = %24, %18, %14
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %36 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 4
  %39 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %40 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = call i32 @sorwakeup(%struct.TYPE_5__* %41)
  %43 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %44 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = call i32 @sowwakeup(%struct.TYPE_5__* %45)
  %47 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  ret %struct.inpcb* %47
}

declare dso_local i32 @INP_WLOCK_ASSERT(%struct.inpcb*) #1

declare dso_local i32 @RTFREE(%struct.rtentry*) #1

declare dso_local i32 @sorwakeup(%struct.TYPE_5__*) #1

declare dso_local i32 @sowwakeup(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
