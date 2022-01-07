; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi.c_ipmi_complete_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi.c_ipmi_complete_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_softc = type { i32 }
%struct.ipmi_request = type { %struct.ipmi_device* }
%struct.ipmi_device = type { %struct.ipmi_request, i64, i32, i32 }

@ir_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipmi_complete_request(%struct.ipmi_softc* %0, %struct.ipmi_request* %1) #0 {
  %3 = alloca %struct.ipmi_softc*, align 8
  %4 = alloca %struct.ipmi_request*, align 8
  %5 = alloca %struct.ipmi_device*, align 8
  store %struct.ipmi_softc* %0, %struct.ipmi_softc** %3, align 8
  store %struct.ipmi_request* %1, %struct.ipmi_request** %4, align 8
  %6 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %7 = call i32 @IPMI_LOCK_ASSERT(%struct.ipmi_softc* %6)
  %8 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %9 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %8, i32 0, i32 0
  %10 = load %struct.ipmi_device*, %struct.ipmi_device** %9, align 8
  %11 = icmp eq %struct.ipmi_device* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %14 = call i32 @wakeup(%struct.ipmi_request* %13)
  br label %36

15:                                               ; preds = %2
  %16 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %17 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %16, i32 0, i32 0
  %18 = load %struct.ipmi_device*, %struct.ipmi_device** %17, align 8
  store %struct.ipmi_device* %18, %struct.ipmi_device** %5, align 8
  %19 = load %struct.ipmi_device*, %struct.ipmi_device** %5, align 8
  %20 = getelementptr inbounds %struct.ipmi_device, %struct.ipmi_device* %19, i32 0, i32 3
  %21 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %22 = load i32, i32* @ir_link, align 4
  %23 = call i32 @TAILQ_INSERT_TAIL(i32* %20, %struct.ipmi_request* %21, i32 %22)
  %24 = load %struct.ipmi_device*, %struct.ipmi_device** %5, align 8
  %25 = getelementptr inbounds %struct.ipmi_device, %struct.ipmi_device* %24, i32 0, i32 2
  %26 = call i32 @selwakeup(i32* %25)
  %27 = load %struct.ipmi_device*, %struct.ipmi_device** %5, align 8
  %28 = getelementptr inbounds %struct.ipmi_device, %struct.ipmi_device* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %15
  %32 = load %struct.ipmi_device*, %struct.ipmi_device** %5, align 8
  %33 = getelementptr inbounds %struct.ipmi_device, %struct.ipmi_device* %32, i32 0, i32 0
  %34 = call i32 @wakeup(%struct.ipmi_request* %33)
  br label %35

35:                                               ; preds = %31, %15
  br label %36

36:                                               ; preds = %35, %12
  ret void
}

declare dso_local i32 @IPMI_LOCK_ASSERT(%struct.ipmi_softc*) #1

declare dso_local i32 @wakeup(%struct.ipmi_request*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.ipmi_request*, i32) #1

declare dso_local i32 @selwakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
