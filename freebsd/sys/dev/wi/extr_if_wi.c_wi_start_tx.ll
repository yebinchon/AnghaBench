; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_start_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wi_softc = type { i32, i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.wi_frame = type { i32 }
%struct.mbuf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@WI_CMD_TX = common dso_local global i32 0, align 4
@WI_RECLAIM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"xmit failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wi_softc*, %struct.wi_frame*, %struct.mbuf*)* @wi_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wi_start_tx(%struct.wi_softc* %0, %struct.wi_frame* %1, %struct.mbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wi_softc*, align 8
  %6 = alloca %struct.wi_frame*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wi_softc* %0, %struct.wi_softc** %5, align 8
  store %struct.wi_frame* %1, %struct.wi_frame** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  %12 = load %struct.wi_softc*, %struct.wi_softc** %5, align 8
  %13 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load %struct.wi_softc*, %struct.wi_softc** %5, align 8
  %16 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %15, i32 0, i32 3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  store i32 4, i32* %10, align 4
  %23 = load %struct.wi_softc*, %struct.wi_softc** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.wi_frame*, %struct.wi_frame** %6, align 8
  %26 = call i64 @wi_write_bap(%struct.wi_softc* %23, i32 %24, i32 0, %struct.wi_frame* %25, i32 4)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %3
  %29 = load %struct.wi_softc*, %struct.wi_softc** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %33 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %34 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @wi_mwrite_bap(%struct.wi_softc* %29, i32 %30, i32 %31, %struct.mbuf* %32, i32 %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %28, %3
  %40 = phi i1 [ true, %3 ], [ %38, %28 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %11, align 4
  %42 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %43 = call i32 @m_freem(%struct.mbuf* %42)
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load %struct.wi_softc*, %struct.wi_softc** %5, align 8
  %48 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @counter_u64_add(i32 %50, i32 1)
  store i32 -1, i32* %4, align 4
  br label %90

52:                                               ; preds = %39
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.wi_softc*, %struct.wi_softc** %5, align 8
  %55 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %54, i32 0, i32 3
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i32 %53, i32* %60, align 4
  %61 = load %struct.wi_softc*, %struct.wi_softc** %5, align 8
  %62 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %89

66:                                               ; preds = %52
  %67 = load %struct.wi_softc*, %struct.wi_softc** %5, align 8
  %68 = load i32, i32* @WI_CMD_TX, align 4
  %69 = load i32, i32* @WI_RECLAIM, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %9, align 4
  %72 = call i64 @wi_cmd(%struct.wi_softc* %67, i32 %70, i32 %71, i32 0, i32 0)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %66
  %75 = load %struct.wi_softc*, %struct.wi_softc** %5, align 8
  %76 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @device_printf(i32 %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %79 = load %struct.wi_softc*, %struct.wi_softc** %5, align 8
  %80 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %79, i32 0, i32 3
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  store i32 0, i32* %85, align 4
  store i32 -1, i32* %4, align 4
  br label %90

86:                                               ; preds = %66
  %87 = load %struct.wi_softc*, %struct.wi_softc** %5, align 8
  %88 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %87, i32 0, i32 2
  store i32 5, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %52
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %74, %46
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i64 @wi_write_bap(%struct.wi_softc*, i32, i32, %struct.wi_frame*, i32) #1

declare dso_local i64 @wi_mwrite_bap(%struct.wi_softc*, i32, i32, %struct.mbuf*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i64 @wi_cmd(%struct.wi_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
