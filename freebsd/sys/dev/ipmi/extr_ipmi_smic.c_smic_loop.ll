; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_smic.c_smic_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_smic.c_smic_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_softc = type { i32 }
%struct.ipmi_request = type { i64 }

@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @smic_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smic_loop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ipmi_softc*, align 8
  %4 = alloca %struct.ipmi_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.ipmi_softc*
  store %struct.ipmi_softc* %8, %struct.ipmi_softc** %3, align 8
  %9 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %10 = call i32 @IPMI_LOCK(%struct.ipmi_softc* %9)
  br label %11

11:                                               ; preds = %48, %1
  %12 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %13 = call %struct.ipmi_request* @ipmi_dequeue_request(%struct.ipmi_softc* %12)
  store %struct.ipmi_request* %13, %struct.ipmi_request** %4, align 8
  %14 = icmp ne %struct.ipmi_request* %13, null
  br i1 %14, label %15, label %54

15:                                               ; preds = %11
  %16 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %17 = call i32 @IPMI_UNLOCK(%struct.ipmi_softc* %16)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %35, %15
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 3
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i1 [ false, %18 ], [ %24, %21 ]
  br i1 %26, label %27, label %38

27:                                               ; preds = %25
  %28 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %29 = call i32 @IPMI_IO_LOCK(%struct.ipmi_softc* %28)
  %30 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %31 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %32 = call i32 @smic_polled_request(%struct.ipmi_softc* %30, %struct.ipmi_request* %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %34 = call i32 @IPMI_IO_UNLOCK(%struct.ipmi_softc* %33)
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %18

38:                                               ; preds = %25
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %43 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %48

44:                                               ; preds = %38
  %45 = load i64, i64* @EIO, align 8
  %46 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %47 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %44, %41
  %49 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %50 = call i32 @IPMI_LOCK(%struct.ipmi_softc* %49)
  %51 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %52 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %53 = call i32 @ipmi_complete_request(%struct.ipmi_softc* %51, %struct.ipmi_request* %52)
  br label %11

54:                                               ; preds = %11
  %55 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %56 = call i32 @IPMI_UNLOCK(%struct.ipmi_softc* %55)
  %57 = call i32 @kproc_exit(i32 0)
  ret void
}

declare dso_local i32 @IPMI_LOCK(%struct.ipmi_softc*) #1

declare dso_local %struct.ipmi_request* @ipmi_dequeue_request(%struct.ipmi_softc*) #1

declare dso_local i32 @IPMI_UNLOCK(%struct.ipmi_softc*) #1

declare dso_local i32 @IPMI_IO_LOCK(%struct.ipmi_softc*) #1

declare dso_local i32 @smic_polled_request(%struct.ipmi_softc*, %struct.ipmi_request*) #1

declare dso_local i32 @IPMI_IO_UNLOCK(%struct.ipmi_softc*) #1

declare dso_local i32 @ipmi_complete_request(%struct.ipmi_softc*, %struct.ipmi_request*) #1

declare dso_local i32 @kproc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
