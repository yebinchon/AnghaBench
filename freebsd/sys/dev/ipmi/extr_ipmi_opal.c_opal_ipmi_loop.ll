; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_opal.c_opal_ipmi_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_opal.c_opal_ipmi_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_ipmi_softc = type { i32 }
%struct.ipmi_request = type { i64 }

@MAX_TIMEOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @opal_ipmi_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opal_ipmi_loop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.opal_ipmi_softc*, align 8
  %4 = alloca %struct.ipmi_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.opal_ipmi_softc*
  store %struct.opal_ipmi_softc* %8, %struct.opal_ipmi_softc** %3, align 8
  %9 = load %struct.opal_ipmi_softc*, %struct.opal_ipmi_softc** %3, align 8
  %10 = getelementptr inbounds %struct.opal_ipmi_softc, %struct.opal_ipmi_softc* %9, i32 0, i32 0
  %11 = call i32 @IPMI_LOCK(i32* %10)
  br label %12

12:                                               ; preds = %54, %1
  %13 = load %struct.opal_ipmi_softc*, %struct.opal_ipmi_softc** %3, align 8
  %14 = getelementptr inbounds %struct.opal_ipmi_softc, %struct.opal_ipmi_softc* %13, i32 0, i32 0
  %15 = call %struct.ipmi_request* @ipmi_dequeue_request(i32* %14)
  store %struct.ipmi_request* %15, %struct.ipmi_request** %4, align 8
  %16 = icmp ne %struct.ipmi_request* %15, null
  br i1 %16, label %17, label %62

17:                                               ; preds = %12
  %18 = load %struct.opal_ipmi_softc*, %struct.opal_ipmi_softc** %3, align 8
  %19 = getelementptr inbounds %struct.opal_ipmi_softc, %struct.opal_ipmi_softc* %18, i32 0, i32 0
  %20 = call i32 @IPMI_UNLOCK(i32* %19)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %41, %17
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 3
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br i1 %29, label %30, label %44

30:                                               ; preds = %28
  %31 = load %struct.opal_ipmi_softc*, %struct.opal_ipmi_softc** %3, align 8
  %32 = getelementptr inbounds %struct.opal_ipmi_softc, %struct.opal_ipmi_softc* %31, i32 0, i32 0
  %33 = call i32 @IPMI_IO_LOCK(i32* %32)
  %34 = load %struct.opal_ipmi_softc*, %struct.opal_ipmi_softc** %3, align 8
  %35 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %36 = load i32, i32* @MAX_TIMEOUT, align 4
  %37 = call i32 @opal_ipmi_polled_request(%struct.opal_ipmi_softc* %34, %struct.ipmi_request* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.opal_ipmi_softc*, %struct.opal_ipmi_softc** %3, align 8
  %39 = getelementptr inbounds %struct.opal_ipmi_softc, %struct.opal_ipmi_softc* %38, i32 0, i32 0
  %40 = call i32 @IPMI_IO_UNLOCK(i32* %39)
  br label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %21

44:                                               ; preds = %28
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %49 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  br label %54

50:                                               ; preds = %44
  %51 = load i64, i64* @EIO, align 8
  %52 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %53 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %50, %47
  %55 = load %struct.opal_ipmi_softc*, %struct.opal_ipmi_softc** %3, align 8
  %56 = getelementptr inbounds %struct.opal_ipmi_softc, %struct.opal_ipmi_softc* %55, i32 0, i32 0
  %57 = call i32 @IPMI_LOCK(i32* %56)
  %58 = load %struct.opal_ipmi_softc*, %struct.opal_ipmi_softc** %3, align 8
  %59 = getelementptr inbounds %struct.opal_ipmi_softc, %struct.opal_ipmi_softc* %58, i32 0, i32 0
  %60 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %61 = call i32 @ipmi_complete_request(i32* %59, %struct.ipmi_request* %60)
  br label %12

62:                                               ; preds = %12
  %63 = load %struct.opal_ipmi_softc*, %struct.opal_ipmi_softc** %3, align 8
  %64 = getelementptr inbounds %struct.opal_ipmi_softc, %struct.opal_ipmi_softc* %63, i32 0, i32 0
  %65 = call i32 @IPMI_UNLOCK(i32* %64)
  %66 = call i32 @kproc_exit(i32 0)
  ret void
}

declare dso_local i32 @IPMI_LOCK(i32*) #1

declare dso_local %struct.ipmi_request* @ipmi_dequeue_request(i32*) #1

declare dso_local i32 @IPMI_UNLOCK(i32*) #1

declare dso_local i32 @IPMI_IO_LOCK(i32*) #1

declare dso_local i32 @opal_ipmi_polled_request(%struct.opal_ipmi_softc*, %struct.ipmi_request*, i32) #1

declare dso_local i32 @IPMI_IO_UNLOCK(i32*) #1

declare dso_local i32 @ipmi_complete_request(i32*, %struct.ipmi_request*) #1

declare dso_local i32 @kproc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
