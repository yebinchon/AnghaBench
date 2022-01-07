; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_opal.c_opal_ipmi_driver_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_opal.c_opal_ipmi_driver_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_softc = type { i32 }
%struct.ipmi_request = type { i32 }
%struct.opal_ipmi_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_softc*, %struct.ipmi_request*, i32)* @opal_ipmi_driver_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_ipmi_driver_request(%struct.ipmi_softc* %0, %struct.ipmi_request* %1, i32 %2) #0 {
  %4 = alloca %struct.ipmi_softc*, align 8
  %5 = alloca %struct.ipmi_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.opal_ipmi_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ipmi_softc* %0, %struct.ipmi_softc** %4, align 8
  store %struct.ipmi_request* %1, %struct.ipmi_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %11 = bitcast %struct.ipmi_softc* %10 to %struct.opal_ipmi_softc*
  store %struct.opal_ipmi_softc* %11, %struct.opal_ipmi_softc** %7, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %30, %3
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 3
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = load %struct.opal_ipmi_softc*, %struct.opal_ipmi_softc** %7, align 8
  %17 = getelementptr inbounds %struct.opal_ipmi_softc, %struct.opal_ipmi_softc* %16, i32 0, i32 0
  %18 = call i32 @IPMI_LOCK(i32* %17)
  %19 = load %struct.opal_ipmi_softc*, %struct.opal_ipmi_softc** %7, align 8
  %20 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @opal_ipmi_polled_request(%struct.opal_ipmi_softc* %19, %struct.ipmi_request* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.opal_ipmi_softc*, %struct.opal_ipmi_softc** %7, align 8
  %24 = getelementptr inbounds %struct.opal_ipmi_softc, %struct.opal_ipmi_softc* %23, i32 0, i32 0
  %25 = call i32 @IPMI_UNLOCK(i32* %24)
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  br label %33

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %12

33:                                               ; preds = %28, %12
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %36 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %9, align 4
  ret i32 %37
}

declare dso_local i32 @IPMI_LOCK(i32*) #1

declare dso_local i32 @opal_ipmi_polled_request(%struct.opal_ipmi_softc*, %struct.ipmi_request*, i32) #1

declare dso_local i32 @IPMI_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
