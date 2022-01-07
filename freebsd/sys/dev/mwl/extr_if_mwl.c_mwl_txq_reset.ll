; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_txq_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_txq_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_softc = type { i32 }
%struct.mwl_txq = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mwl_txbuf* }
%struct.mwl_txbuf = type { i32 }

@mwl_txbuf = common dso_local global i32 0, align 4
@bf_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwl_softc*, %struct.mwl_txq*)* @mwl_txq_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl_txq_reset(%struct.mwl_softc* %0, %struct.mwl_txq* %1) #0 {
  %3 = alloca %struct.mwl_softc*, align 8
  %4 = alloca %struct.mwl_txq*, align 8
  %5 = alloca %struct.mwl_txbuf*, align 8
  %6 = alloca i32, align 4
  store %struct.mwl_softc* %0, %struct.mwl_softc** %3, align 8
  store %struct.mwl_txq* %1, %struct.mwl_txq** %4, align 8
  %7 = load %struct.mwl_txq*, %struct.mwl_txq** %4, align 8
  %8 = getelementptr inbounds %struct.mwl_txq, %struct.mwl_txq* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.mwl_txbuf*, %struct.mwl_txbuf** %9, align 8
  store %struct.mwl_txbuf* %10, %struct.mwl_txbuf** %5, align 8
  %11 = load %struct.mwl_txq*, %struct.mwl_txq** %4, align 8
  %12 = getelementptr inbounds %struct.mwl_txq, %struct.mwl_txq* %11, i32 0, i32 1
  %13 = call i32 @STAILQ_INIT(i32* %12)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %24, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @mwl_txbuf, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load %struct.mwl_txq*, %struct.mwl_txq** %4, align 8
  %20 = getelementptr inbounds %struct.mwl_txq, %struct.mwl_txq* %19, i32 0, i32 1
  %21 = load %struct.mwl_txbuf*, %struct.mwl_txbuf** %5, align 8
  %22 = load i32, i32* @bf_list, align 4
  %23 = call i32 @STAILQ_INSERT_TAIL(i32* %20, %struct.mwl_txbuf* %21, i32 %22)
  br label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  %27 = load %struct.mwl_txbuf*, %struct.mwl_txbuf** %5, align 8
  %28 = getelementptr inbounds %struct.mwl_txbuf, %struct.mwl_txbuf* %27, i32 1
  store %struct.mwl_txbuf* %28, %struct.mwl_txbuf** %5, align 8
  br label %14

29:                                               ; preds = %14
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.mwl_txq*, %struct.mwl_txq** %4, align 8
  %32 = getelementptr inbounds %struct.mwl_txq, %struct.mwl_txq* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  ret void
}

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.mwl_txbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
