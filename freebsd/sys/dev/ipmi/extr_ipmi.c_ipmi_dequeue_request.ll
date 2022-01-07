; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi.c_ipmi_dequeue_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi.c_ipmi_dequeue_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_request = type { i32 }
%struct.ipmi_softc = type { i32, i64, i32, i32 }

@ir_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ipmi_request* @ipmi_dequeue_request(%struct.ipmi_softc* %0) #0 {
  %2 = alloca %struct.ipmi_request*, align 8
  %3 = alloca %struct.ipmi_softc*, align 8
  %4 = alloca %struct.ipmi_request*, align 8
  store %struct.ipmi_softc* %0, %struct.ipmi_softc** %3, align 8
  %5 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %6 = call i32 @IPMI_LOCK_ASSERT(%struct.ipmi_softc* %5)
  br label %7

7:                                                ; preds = %19, %1
  %8 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %13, i32 0, i32 0
  %15 = call i64 @TAILQ_EMPTY(i32* %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %12, %7
  %18 = phi i1 [ false, %7 ], [ %16, %12 ]
  br i1 %18, label %19, label %25

19:                                               ; preds = %17
  %20 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %20, i32 0, i32 3
  %22 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %22, i32 0, i32 2
  %24 = call i32 @cv_wait(i32* %21, i32* %23)
  br label %7

25:                                               ; preds = %17
  %26 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store %struct.ipmi_request* null, %struct.ipmi_request** %2, align 8
  br label %41

31:                                               ; preds = %25
  %32 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %33 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %32, i32 0, i32 0
  %34 = call %struct.ipmi_request* @TAILQ_FIRST(i32* %33)
  store %struct.ipmi_request* %34, %struct.ipmi_request** %4, align 8
  %35 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %36 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %35, i32 0, i32 0
  %37 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %38 = load i32, i32* @ir_link, align 4
  %39 = call i32 @TAILQ_REMOVE(i32* %36, %struct.ipmi_request* %37, i32 %38)
  %40 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  store %struct.ipmi_request* %40, %struct.ipmi_request** %2, align 8
  br label %41

41:                                               ; preds = %31, %30
  %42 = load %struct.ipmi_request*, %struct.ipmi_request** %2, align 8
  ret %struct.ipmi_request* %42
}

declare dso_local i32 @IPMI_LOCK_ASSERT(%struct.ipmi_softc*) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local %struct.ipmi_request* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ipmi_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
