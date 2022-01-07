; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_smic.c_smic_driver_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_smic.c_smic_driver_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_softc = type { i32 }
%struct.ipmi_request = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_softc*, %struct.ipmi_request*, i32)* @smic_driver_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smic_driver_request(%struct.ipmi_softc* %0, %struct.ipmi_request* %1, i32 %2) #0 {
  %4 = alloca %struct.ipmi_softc*, align 8
  %5 = alloca %struct.ipmi_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ipmi_softc* %0, %struct.ipmi_softc** %4, align 8
  store %struct.ipmi_request* %1, %struct.ipmi_request** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %26, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi i1 [ false, %9 ], [ %15, %12 ]
  br i1 %17, label %18, label %29

18:                                               ; preds = %16
  %19 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %20 = call i32 @IPMI_IO_LOCK(%struct.ipmi_softc* %19)
  %21 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %22 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %23 = call i32 @smic_polled_request(%struct.ipmi_softc* %21, %struct.ipmi_request* %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %25 = call i32 @IPMI_IO_UNLOCK(%struct.ipmi_softc* %24)
  br label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %9

29:                                               ; preds = %16
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %34 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  br label %39

35:                                               ; preds = %29
  %36 = load i32, i32* @EIO, align 4
  %37 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %38 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %32
  %40 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %41 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  ret i32 %42
}

declare dso_local i32 @IPMI_IO_LOCK(%struct.ipmi_softc*) #1

declare dso_local i32 @smic_polled_request(%struct.ipmi_softc*, %struct.ipmi_request*) #1

declare dso_local i32 @IPMI_IO_UNLOCK(%struct.ipmi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
