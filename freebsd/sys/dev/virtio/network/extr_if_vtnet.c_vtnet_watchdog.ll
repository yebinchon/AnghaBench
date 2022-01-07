; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_txq = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"watchdog timeout on queue %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtnet_txq*)* @vtnet_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtnet_watchdog(%struct.vtnet_txq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtnet_txq*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store %struct.vtnet_txq* %0, %struct.vtnet_txq** %3, align 8
  %5 = load %struct.vtnet_txq*, %struct.vtnet_txq** %3, align 8
  %6 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load %struct.vtnet_txq*, %struct.vtnet_txq** %3, align 8
  %11 = call i32 @VTNET_TXQ_LOCK(%struct.vtnet_txq* %10)
  %12 = load %struct.vtnet_txq*, %struct.vtnet_txq** %3, align 8
  %13 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.vtnet_txq*, %struct.vtnet_txq** %3, align 8
  %18 = call i64 @vtnet_txq_eof(%struct.vtnet_txq* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.vtnet_txq*, %struct.vtnet_txq** %3, align 8
  %22 = call i32 @vtnet_txq_start(%struct.vtnet_txq* %21)
  br label %23

23:                                               ; preds = %20, %16
  br label %24

24:                                               ; preds = %23, %1
  %25 = load %struct.vtnet_txq*, %struct.vtnet_txq** %3, align 8
  %26 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load %struct.vtnet_txq*, %struct.vtnet_txq** %3, align 8
  %31 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29, %24
  %36 = load %struct.vtnet_txq*, %struct.vtnet_txq** %3, align 8
  %37 = call i32 @VTNET_TXQ_UNLOCK(%struct.vtnet_txq* %36)
  store i32 0, i32* %2, align 4
  br label %46

38:                                               ; preds = %29
  %39 = load %struct.vtnet_txq*, %struct.vtnet_txq** %3, align 8
  %40 = call i32 @VTNET_TXQ_UNLOCK(%struct.vtnet_txq* %39)
  %41 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %42 = load %struct.vtnet_txq*, %struct.vtnet_txq** %3, align 8
  %43 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @if_printf(%struct.ifnet* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %44)
  store i32 1, i32* %2, align 4
  br label %46

46:                                               ; preds = %38, %35
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @VTNET_TXQ_LOCK(%struct.vtnet_txq*) #1

declare dso_local i64 @vtnet_txq_eof(%struct.vtnet_txq*) #1

declare dso_local i32 @vtnet_txq_start(%struct.vtnet_txq*) #1

declare dso_local i32 @VTNET_TXQ_UNLOCK(%struct.vtnet_txq*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
