; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_event_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_event_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_softc = type { i32, i32, i32, i32, i32, i64, i32, i64, i64 }

@apm_softc = common dso_local global %struct.apm_softc zeroinitializer, align 8
@apm_op_inprog = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @apm_event_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apm_event_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.apm_softc*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.apm_softc* @apm_softc, %struct.apm_softc** %3, align 8
  %4 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %5 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %4, i32 0, i32 0
  store i32 1, i32* %5, align 8
  br label %6

6:                                                ; preds = %49, %1
  %7 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %8 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %7, i32 0, i32 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %64

11:                                               ; preds = %6
  %12 = load i64, i64* @apm_op_inprog, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 (...) @apm_lastreq_notify()
  br label %16

16:                                               ; preds = %14, %11
  %17 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %18 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %23 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 8
  %26 = icmp sle i32 %24, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 (...) @apm_do_standby()
  br label %29

29:                                               ; preds = %27, %21, %16
  %30 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %31 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %36 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %36, align 8
  %39 = icmp sle i32 %37, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 (...) @apm_do_suspend()
  br label %42

42:                                               ; preds = %40, %34, %29
  %43 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %44 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = call i32 (...) @apm_processevent()
  br label %49

49:                                               ; preds = %47, %42
  %50 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %51 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %50, i32 0, i32 1
  %52 = call i32 @mtx_lock(i32* %51)
  %53 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %54 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %53, i32 0, i32 2
  %55 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %56 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %55, i32 0, i32 1
  %57 = load i32, i32* @hz, align 4
  %58 = mul nsw i32 10, %57
  %59 = sdiv i32 %58, 9
  %60 = call i32 @cv_timedwait(i32* %54, i32* %56, i32 %59)
  %61 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %62 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %61, i32 0, i32 1
  %63 = call i32 @mtx_unlock(i32* %62)
  br label %6

64:                                               ; preds = %6
  %65 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %66 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = call i32 @kproc_exit(i32 0)
  ret void
}

declare dso_local i32 @apm_lastreq_notify(...) #1

declare dso_local i32 @apm_do_standby(...) #1

declare dso_local i32 @apm_do_suspend(...) #1

declare dso_local i32 @apm_processevent(...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @cv_timedwait(i32*, i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @kproc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
