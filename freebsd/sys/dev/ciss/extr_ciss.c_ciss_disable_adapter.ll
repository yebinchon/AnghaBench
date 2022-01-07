; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_disable_adapter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_disable_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { i32, %struct.ciss_request*, i32, i32 }
%struct.ciss_request = type { i32, i32 (%struct.ciss_request*)*, %struct.ciss_command* }
%struct.ciss_command = type { i32* }
%struct.ciss_error_info = type { i32 }

@CISS_FLAG_RUNNING = common dso_local global i32 0, align 4
@CISS_REQ_BUSY = common dso_local global i32 0, align 4
@CISS_CMD_STATUS_HARDWARE_ERROR = common dso_local global i32 0, align 4
@CISS_REQ_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ciss_softc*)* @ciss_disable_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ciss_disable_adapter(%struct.ciss_softc* %0) #0 {
  %2 = alloca %struct.ciss_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ciss_request*, align 8
  %5 = alloca %struct.ciss_command*, align 8
  %6 = alloca %struct.ciss_error_info*, align 8
  %7 = alloca i32, align 4
  store %struct.ciss_softc* %0, %struct.ciss_softc** %2, align 8
  %8 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %9 = call i32 @CISS_TL_SIMPLE_DISABLE_INTERRUPTS(%struct.ciss_softc* %8)
  %10 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pci_disable_busmaster(i32 %12)
  %14 = load i32, i32* @CISS_FLAG_RUNNING, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %17 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  store i32 1, i32* %7, align 4
  br label %20

20:                                               ; preds = %54, %1
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %23 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %20
  %27 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %27, i32 0, i32 1
  %29 = load %struct.ciss_request*, %struct.ciss_request** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %29, i64 %31
  store %struct.ciss_request* %32, %struct.ciss_request** %4, align 8
  %33 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %34 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CISS_REQ_BUSY, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %54

40:                                               ; preds = %26
  %41 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %42 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %41, i32 0, i32 2
  %43 = load %struct.ciss_command*, %struct.ciss_command** %42, align 8
  store %struct.ciss_command* %43, %struct.ciss_command** %5, align 8
  %44 = load %struct.ciss_command*, %struct.ciss_command** %5, align 8
  %45 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = bitcast i32* %47 to %struct.ciss_error_info*
  store %struct.ciss_error_info* %48, %struct.ciss_error_info** %6, align 8
  %49 = load i32, i32* @CISS_CMD_STATUS_HARDWARE_ERROR, align 4
  %50 = load %struct.ciss_error_info*, %struct.ciss_error_info** %6, align 8
  %51 = getelementptr inbounds %struct.ciss_error_info, %struct.ciss_error_info* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %53 = call i32 @ciss_enqueue_complete(%struct.ciss_request* %52, i32* %3)
  br label %54

54:                                               ; preds = %40, %39
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %20

57:                                               ; preds = %20
  br label %58

58:                                               ; preds = %90, %81, %68, %57
  %59 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %60 = call %struct.ciss_request* @ciss_dequeue_complete(%struct.ciss_softc* %59, i32* %3)
  store %struct.ciss_request* %60, %struct.ciss_request** %4, align 8
  %61 = icmp eq %struct.ciss_request* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %91

63:                                               ; preds = %58
  %64 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %65 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %64, i32 0, i32 1
  %66 = load i32 (%struct.ciss_request*)*, i32 (%struct.ciss_request*)** %65, align 8
  %67 = icmp ne i32 (%struct.ciss_request*)* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %70 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %69, i32 0, i32 1
  %71 = load i32 (%struct.ciss_request*)*, i32 (%struct.ciss_request*)** %70, align 8
  %72 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %73 = call i32 %71(%struct.ciss_request* %72)
  br label %58

74:                                               ; preds = %63
  %75 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %76 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @CISS_REQ_SLEEP, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load i32, i32* @CISS_REQ_SLEEP, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %85 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %89 = call i32 @wakeup(%struct.ciss_request* %88)
  br label %58

90:                                               ; preds = %74
  br label %58

91:                                               ; preds = %62
  ret void
}

declare dso_local i32 @CISS_TL_SIMPLE_DISABLE_INTERRUPTS(%struct.ciss_softc*) #1

declare dso_local i32 @pci_disable_busmaster(i32) #1

declare dso_local i32 @ciss_enqueue_complete(%struct.ciss_request*, i32*) #1

declare dso_local %struct.ciss_request* @ciss_dequeue_complete(%struct.ciss_softc*, i32*) #1

declare dso_local i32 @wakeup(%struct.ciss_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
