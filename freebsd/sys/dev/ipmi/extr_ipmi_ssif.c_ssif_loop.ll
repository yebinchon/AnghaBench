; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_ssif.c_ssif_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_ssif.c_ssif_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_softc = type { i32 }
%struct.ipmi_request = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"retry\00", align 1
@hz = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ssif_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssif_loop(i8* %0) #0 {
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

11:                                               ; preds = %46, %1
  %12 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %13 = call %struct.ipmi_request* @ipmi_dequeue_request(%struct.ipmi_softc* %12)
  store %struct.ipmi_request* %13, %struct.ipmi_request** %4, align 8
  %14 = icmp ne %struct.ipmi_request* %13, null
  br i1 %14, label %15, label %59

15:                                               ; preds = %11
  %16 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %17 = call i32 @IPMI_UNLOCK(%struct.ipmi_softc* %16)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %33, %15
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 5
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %23 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %24 = call i32 @ssif_polled_request(%struct.ipmi_softc* %22, %struct.ipmi_request* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %36

28:                                               ; preds = %21
  %29 = load i32, i32* @hz, align 4
  %30 = mul nsw i32 60, %29
  %31 = sdiv i32 %30, 1000
  %32 = call i32 @pause(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %18

36:                                               ; preds = %27, %18
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %41 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %46

42:                                               ; preds = %36
  %43 = load i64, i64* @EIO, align 8
  %44 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %45 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %42, %39
  %47 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %48 = call i32 @IPMI_LOCK(%struct.ipmi_softc* %47)
  %49 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %50 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %51 = call i32 @ipmi_complete_request(%struct.ipmi_softc* %49, %struct.ipmi_request* %50)
  %52 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %53 = call i32 @IPMI_UNLOCK(%struct.ipmi_softc* %52)
  %54 = load i32, i32* @hz, align 4
  %55 = sdiv i32 %54, 100
  %56 = call i32 @pause(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %58 = call i32 @IPMI_LOCK(%struct.ipmi_softc* %57)
  br label %11

59:                                               ; preds = %11
  %60 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %61 = call i32 @IPMI_UNLOCK(%struct.ipmi_softc* %60)
  %62 = call i32 @kproc_exit(i32 0)
  ret void
}

declare dso_local i32 @IPMI_LOCK(%struct.ipmi_softc*) #1

declare dso_local %struct.ipmi_request* @ipmi_dequeue_request(%struct.ipmi_softc*) #1

declare dso_local i32 @IPMI_UNLOCK(%struct.ipmi_softc*) #1

declare dso_local i32 @ssif_polled_request(%struct.ipmi_softc*, %struct.ipmi_request*) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @ipmi_complete_request(%struct.ipmi_softc*, %struct.ipmi_request*) #1

declare dso_local i32 @kproc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
