; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_rfb.c_rfb_wr_thr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_rfb.c_rfb_wr_thr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfb_softc = type { i32 }
%struct.timeval = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @rfb_wr_thr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rfb_wr_thr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rfb_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.rfb_softc*
  store %struct.rfb_softc* %12, %struct.rfb_softc** %4, align 8
  %13 = load %struct.rfb_softc*, %struct.rfb_softc** %4, align 8
  %14 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 0, i32* %17, align 8
  br label %18

18:                                               ; preds = %57, %1
  %19 = load %struct.rfb_softc*, %struct.rfb_softc** %4, align 8
  %20 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %18
  %24 = call i32 @FD_ZERO(i32* %5)
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @FD_SET(i32 %25, i32* %5)
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 10000, i32* %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i32 @select(i32 %30, i32* %5, i32* null, i32* null, %struct.timeval* %6)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  store i8* null, i8** %2, align 8
  br label %59

35:                                               ; preds = %23
  %36 = call i32 @gettimeofday(%struct.timeval* %6, i32* null)
  %37 = call i32 @timeval_delta(%struct.timeval* %7, %struct.timeval* %6)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp sgt i32 %38, 40000
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 %42, i64* %43, align 8
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = load %struct.rfb_softc*, %struct.rfb_softc** %4, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @rfb_send_screen(%struct.rfb_softc* %47, i32 %48, i32 0)
  %50 = icmp sle i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  store i8* null, i8** %2, align 8
  br label %59

52:                                               ; preds = %40
  br label %57

53:                                               ; preds = %35
  %54 = load i32, i32* %8, align 4
  %55 = sub nsw i32 40000, %54
  %56 = call i32 @usleep(i32 %55)
  br label %57

57:                                               ; preds = %53, %52
  br label %18

58:                                               ; preds = %18
  store i8* null, i8** %2, align 8
  br label %59

59:                                               ; preds = %58, %51, %34
  %60 = load i8*, i8** %2, align 8
  ret i8* %60
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @timeval_delta(%struct.timeval*, %struct.timeval*) #1

declare dso_local i64 @rfb_send_screen(%struct.rfb_softc*, i32, i32) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
