; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_rfb.c_rfb_thr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_rfb.c_rfb_thr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfb_softc = type { i32, i32, i32, i64, i32, i32, i32 }

@SIGPIPE = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"pthread_sigmask\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @rfb_thr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rfb_thr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rfb_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.rfb_softc*
  store %struct.rfb_softc* %7, %struct.rfb_softc** %3, align 8
  %8 = call i32 @sigemptyset(i32* %4)
  %9 = load i32, i32* @SIGPIPE, align 4
  %10 = call i32 @sigaddset(i32* %4, i32 %9)
  %11 = load i32, i32* @SIG_BLOCK, align 4
  %12 = call i64 @pthread_sigmask(i32 %11, i32* %4, i32* null)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  ret i8* null

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %44, %16
  %18 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %19 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %21 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %23 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %22, i32 0, i32 2
  store i32 0, i32* %23, align 8
  %24 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %25 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @accept(i32 %26, i32* null, i32* null)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %29 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %17
  %33 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %34 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %33, i32 0, i32 4
  %35 = call i32 @pthread_mutex_lock(i32* %34)
  %36 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %37 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %36, i32 0, i32 5
  %38 = call i32 @pthread_cond_signal(i32* %37)
  %39 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %40 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %39, i32 0, i32 4
  %41 = call i32 @pthread_mutex_unlock(i32* %40)
  %42 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %43 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %32, %17
  %45 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @rfb_handle(%struct.rfb_softc* %45, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @close(i32 %48)
  br label %17
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i64 @pthread_sigmask(i32, i32*, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @accept(i32, i32*, i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @rfb_handle(%struct.rfb_softc*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
