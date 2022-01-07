; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida.c_ida_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida.c_ida_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ida_softc = type { %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.ida_softc.0*, %struct.ida_qcb*)*, i64 (%struct.ida_softc.1*)* }
%struct.ida_softc.0 = type opaque
%struct.ida_qcb = type opaque
%struct.ida_softc.1 = type opaque
%struct.ida_qcb.2 = type { i32 }

@dumping = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@link = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@hz = common dso_local global i32 0, align 4
@ida_timeout = common dso_local global i32 0, align 4
@QCB_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ida_softc*)* @ida_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ida_start(%struct.ida_softc* %0) #0 {
  %2 = alloca %struct.ida_softc*, align 8
  %3 = alloca %struct.ida_qcb.2*, align 8
  store %struct.ida_softc* %0, %struct.ida_softc** %2, align 8
  %4 = load i32, i32* @dumping, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %7, i32 0, i32 4
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @mtx_assert(i32* %8, i32 %9)
  br label %11

11:                                               ; preds = %6, %1
  br label %12

12:                                               ; preds = %47, %11
  %13 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %14 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %13, i32 0, i32 3
  %15 = call %struct.ida_qcb.2* @STAILQ_FIRST(i32* %14)
  store %struct.ida_qcb.2* %15, %struct.ida_qcb.2** %3, align 8
  %16 = icmp ne %struct.ida_qcb.2* %15, null
  br i1 %16, label %17, label %64

17:                                               ; preds = %12
  %18 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %19 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64 (%struct.ida_softc.1*)*, i64 (%struct.ida_softc.1*)** %20, align 8
  %22 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %23 = bitcast %struct.ida_softc* %22 to %struct.ida_softc.1*
  %24 = call i64 %21(%struct.ida_softc.1* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %64

27:                                               ; preds = %17
  %28 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %29 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %28, i32 0, i32 3
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @link, i32 0, i32 0), align 4
  %31 = call i32 @STAILQ_REMOVE_HEAD(i32* %29, i32 %30)
  %32 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %33 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* @dumping, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %36
  %40 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %41 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %40, i32 0, i32 2
  %42 = load i32, i32* @hz, align 4
  %43 = mul nsw i32 %42, 5
  %44 = load i32, i32* @ida_timeout, align 4
  %45 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %46 = call i32 @callout_reset(i32* %41, i32 %43, i32 %44, %struct.ida_softc* %45)
  br label %47

47:                                               ; preds = %39, %36, %27
  %48 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %49 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  %52 = load i32, i32* @QCB_ACTIVE, align 4
  %53 = load %struct.ida_qcb.2*, %struct.ida_qcb.2** %3, align 8
  %54 = getelementptr inbounds %struct.ida_qcb.2, %struct.ida_qcb.2* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %56 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32 (%struct.ida_softc.0*, %struct.ida_qcb*)*, i32 (%struct.ida_softc.0*, %struct.ida_qcb*)** %57, align 8
  %59 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %60 = bitcast %struct.ida_softc* %59 to %struct.ida_softc.0*
  %61 = load %struct.ida_qcb.2*, %struct.ida_qcb.2** %3, align 8
  %62 = bitcast %struct.ida_qcb.2* %61 to %struct.ida_qcb*
  %63 = call i32 %58(%struct.ida_softc.0* %60, %struct.ida_qcb* %62)
  br label %12

64:                                               ; preds = %26, %12
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.ida_qcb.2* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.ida_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
