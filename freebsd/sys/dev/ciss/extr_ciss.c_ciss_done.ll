; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { i32, %struct.ciss_request* }
%struct.ciss_request = type { %struct.ciss_command* }
%struct.ciss_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CISS_TL_SIMPLE_OPQ_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"completed command %d%s\00", align 1
@CISS_HDR_HOST_TAG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c" with error\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"completed invalid request %d (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ciss_softc*, i32*)* @ciss_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ciss_done(%struct.ciss_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.ciss_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ciss_request*, align 8
  %6 = alloca %struct.ciss_command*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ciss_softc* %0, %struct.ciss_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = call i32 @debug_called(i32 3)
  br label %10

10:                                               ; preds = %38, %33, %2
  %11 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %12 = call i32 @CISS_TL_SIMPLE_FETCH_CMD(%struct.ciss_softc* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @CISS_TL_SIMPLE_OPQ_EMPTY, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %55

17:                                               ; preds = %10
  %18 = load i32, i32* %7, align 4
  %19 = ashr i32 %18, 2
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @CISS_HDR_HOST_TAG_ERROR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %27 = call i32 @debug(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %20, i8* %26)
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %30 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sge i32 %28, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %17
  %34 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @ciss_printf(%struct.ciss_softc* %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %35, i32 %36)
  br label %10

38:                                               ; preds = %17
  %39 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %40 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %39, i32 0, i32 1
  %41 = load %struct.ciss_request*, %struct.ciss_request** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %41, i64 %43
  store %struct.ciss_request* %44, %struct.ciss_request** %5, align 8
  %45 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %46 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %45, i32 0, i32 0
  %47 = load %struct.ciss_command*, %struct.ciss_command** %46, align 8
  store %struct.ciss_command* %47, %struct.ciss_command** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.ciss_command*, %struct.ciss_command** %6, align 8
  %50 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @ciss_enqueue_complete(%struct.ciss_request* %52, i32* %53)
  br label %10

55:                                               ; preds = %16
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @CISS_TL_SIMPLE_FETCH_CMD(%struct.ciss_softc*) #1

declare dso_local i32 @debug(i32, i8*, i32, i8*) #1

declare dso_local i32 @ciss_printf(%struct.ciss_softc*, i8*, i32, i32) #1

declare dso_local i32 @ciss_enqueue_complete(%struct.ciss_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
