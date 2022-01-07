; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_ssif.c_ssif_driver_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_ssif.c_ssif_driver_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_softc = type { i32 }
%struct.ipmi_request = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"ipmireq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_softc*, %struct.ipmi_request*, i32)* @ssif_driver_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssif_driver_request(%struct.ipmi_softc* %0, %struct.ipmi_request* %1, i32 %2) #0 {
  %4 = alloca %struct.ipmi_softc*, align 8
  %5 = alloca %struct.ipmi_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ipmi_softc* %0, %struct.ipmi_softc** %4, align 8
  store %struct.ipmi_request* %1, %struct.ipmi_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %9 = call i32 @IPMI_LOCK(%struct.ipmi_softc* %8)
  %10 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %11 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %12 = call i32 @ipmi_polled_enqueue_request(%struct.ipmi_softc* %10, %struct.ipmi_request* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %17 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %18 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @msleep(%struct.ipmi_request* %16, i32* %18, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %15, %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %26 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %24, %21
  %29 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %30 = call i32 @IPMI_UNLOCK(%struct.ipmi_softc* %29)
  %31 = load i32, i32* %7, align 4
  ret i32 %31
}

declare dso_local i32 @IPMI_LOCK(%struct.ipmi_softc*) #1

declare dso_local i32 @ipmi_polled_enqueue_request(%struct.ipmi_softc*, %struct.ipmi_request*) #1

declare dso_local i32 @msleep(%struct.ipmi_request*, i32*, i32, i8*, i32) #1

declare dso_local i32 @IPMI_UNLOCK(%struct.ipmi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
