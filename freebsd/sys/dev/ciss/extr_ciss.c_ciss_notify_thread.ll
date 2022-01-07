; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_notify_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_notify_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { i32, i32, i32*, i32 }
%struct.ciss_request = type { i64 }
%struct.ciss_notify = type { i32 }

@CISS_FLAG_THREAD_SHUT = common dso_local global i32 0, align 4
@PUSER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"cr null\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ciss_notify_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ciss_notify_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ciss_softc*, align 8
  %4 = alloca %struct.ciss_request*, align 8
  %5 = alloca %struct.ciss_notify*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ciss_softc*
  store %struct.ciss_softc* %7, %struct.ciss_softc** %3, align 8
  %8 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %8, i32 0, i32 1
  %10 = call i32 @mtx_lock(i32* %9)
  br label %11

11:                                               ; preds = %65, %1
  %12 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %12, i32 0, i32 3
  %14 = call i64 @STAILQ_EMPTY(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %11
  %17 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CISS_FLAG_THREAD_SHUT, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %24, i32 0, i32 3
  %26 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %26, i32 0, i32 1
  %28 = load i32, i32* @PUSER, align 4
  %29 = call i32 @msleep(i32* %25, i32* %27, i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %30

30:                                               ; preds = %23, %16, %11
  %31 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %32 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CISS_FLAG_THREAD_SHUT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %68

38:                                               ; preds = %30
  %39 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %40 = call %struct.ciss_request* @ciss_dequeue_notify(%struct.ciss_softc* %39)
  store %struct.ciss_request* %40, %struct.ciss_request** %4, align 8
  %41 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %42 = icmp eq %struct.ciss_request* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 @panic(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %38
  %46 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %47 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.ciss_notify*
  store %struct.ciss_notify* %49, %struct.ciss_notify** %5, align 8
  %50 = load %struct.ciss_notify*, %struct.ciss_notify** %5, align 8
  %51 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %65 [
    i32 130, label %53
    i32 129, label %57
    i32 128, label %61
  ]

53:                                               ; preds = %45
  %54 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %55 = load %struct.ciss_notify*, %struct.ciss_notify** %5, align 8
  %56 = call i32 @ciss_notify_hotplug(%struct.ciss_softc* %54, %struct.ciss_notify* %55)
  br label %65

57:                                               ; preds = %45
  %58 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %59 = load %struct.ciss_notify*, %struct.ciss_notify** %5, align 8
  %60 = call i32 @ciss_notify_logical(%struct.ciss_softc* %58, %struct.ciss_notify* %59)
  br label %65

61:                                               ; preds = %45
  %62 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %63 = load %struct.ciss_notify*, %struct.ciss_notify** %5, align 8
  %64 = call i32 @ciss_notify_physical(%struct.ciss_softc* %62, %struct.ciss_notify* %63)
  br label %65

65:                                               ; preds = %45, %61, %57, %53
  %66 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %67 = call i32 @ciss_release_request(%struct.ciss_request* %66)
  br label %11

68:                                               ; preds = %37
  %69 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %70 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %69, i32 0, i32 2
  store i32* null, i32** %70, align 8
  %71 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %72 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %71, i32 0, i32 2
  %73 = call i32 @wakeup(i32** %72)
  %74 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %75 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %74, i32 0, i32 1
  %76 = call i32 @mtx_unlock(i32* %75)
  %77 = call i32 @kproc_exit(i32 0)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local %struct.ciss_request* @ciss_dequeue_notify(%struct.ciss_softc*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ciss_notify_hotplug(%struct.ciss_softc*, %struct.ciss_notify*) #1

declare dso_local i32 @ciss_notify_logical(%struct.ciss_softc*, %struct.ciss_notify*) #1

declare dso_local i32 @ciss_notify_physical(%struct.ciss_softc*, %struct.ciss_notify*) #1

declare dso_local i32 @ciss_release_request(%struct.ciss_request*) #1

declare dso_local i32 @wakeup(i32**) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @kproc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
