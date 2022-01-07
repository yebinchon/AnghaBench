; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { i32 }
%struct.ciss_request = type { i32, i32 (%struct.ciss_request*)* }

@CISS_REQ_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"WARNING: completing non-busy request\0A\00", align 1
@CISS_REQ_SLEEP = common dso_local global i32 0, align 4
@CISS_REQ_POLL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"WARNING: completed command with no submitter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ciss_softc*, i32*)* @ciss_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ciss_complete(%struct.ciss_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.ciss_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ciss_request*, align 8
  store %struct.ciss_softc* %0, %struct.ciss_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = call i32 @debug_called(i32 2)
  br label %7

7:                                                ; preds = %72, %65, %49, %36, %2
  %8 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call %struct.ciss_request* @ciss_dequeue_complete(%struct.ciss_softc* %8, i32* %9)
  store %struct.ciss_request* %10, %struct.ciss_request** %5, align 8
  %11 = icmp eq %struct.ciss_request* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %77

13:                                               ; preds = %7
  %14 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %15 = call i32 @ciss_unmap_request(%struct.ciss_request* %14)
  %16 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %17 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CISS_REQ_BUSY, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %24 = call i32 @ciss_printf(%struct.ciss_softc* %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %13
  %26 = load i32, i32* @CISS_REQ_BUSY, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %29 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %33 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %32, i32 0, i32 1
  %34 = load i32 (%struct.ciss_request*)*, i32 (%struct.ciss_request*)** %33, align 8
  %35 = icmp ne i32 (%struct.ciss_request*)* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %38 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %37, i32 0, i32 1
  %39 = load i32 (%struct.ciss_request*)*, i32 (%struct.ciss_request*)** %38, align 8
  %40 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %41 = call i32 %39(%struct.ciss_request* %40)
  br label %7

42:                                               ; preds = %25
  %43 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %44 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CISS_REQ_SLEEP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %42
  %50 = load i32, i32* @CISS_REQ_SLEEP, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %53 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %57 = call i32 @wakeup(%struct.ciss_request* %56)
  br label %7

58:                                               ; preds = %42
  %59 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %60 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @CISS_REQ_POLL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load i32, i32* @CISS_REQ_POLL, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %69 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %7

72:                                               ; preds = %58
  %73 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %74 = call i32 @ciss_printf(%struct.ciss_softc* %73, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %76 = call i32 @ciss_enqueue_free(%struct.ciss_request* %75)
  br label %7

77:                                               ; preds = %12
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local %struct.ciss_request* @ciss_dequeue_complete(%struct.ciss_softc*, i32*) #1

declare dso_local i32 @ciss_unmap_request(%struct.ciss_request*) #1

declare dso_local i32 @ciss_printf(%struct.ciss_softc*, i8*) #1

declare dso_local i32 @wakeup(%struct.ciss_request*) #1

declare dso_local i32 @ciss_enqueue_free(%struct.ciss_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
