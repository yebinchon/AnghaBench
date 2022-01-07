; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_perf_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_perf_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { i32*, i64, i32, i32, %struct.ciss_request* }
%struct.ciss_request = type { %struct.ciss_command* }
%struct.ciss_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CISS_CYCLE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"completed command %d%s\0A\00", align 1
@CISS_HDR_HOST_TAG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c" with error\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"completed invalid request %d (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ciss_softc*, i32*)* @ciss_perf_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ciss_perf_done(%struct.ciss_softc* %0, i32* %1) #0 {
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

10:                                               ; preds = %82, %2
  %11 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @CISS_CYCLE_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %10
  br label %83

27:                                               ; preds = %10
  %28 = load i32, i32* %7, align 4
  %29 = ashr i32 %28, 2
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @CISS_HDR_HOST_TAG_ERROR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %37 = call i32 @debug(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %30, i8* %36)
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %40 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %27
  %44 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %45 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %44, i32 0, i32 4
  %46 = load %struct.ciss_request*, %struct.ciss_request** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %46, i64 %48
  store %struct.ciss_request* %49, %struct.ciss_request** %5, align 8
  %50 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %51 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %50, i32 0, i32 0
  %52 = load %struct.ciss_command*, %struct.ciss_command** %51, align 8
  store %struct.ciss_command* %52, %struct.ciss_command** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.ciss_command*, %struct.ciss_command** %6, align 8
  %55 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  %57 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @ciss_enqueue_complete(%struct.ciss_request* %57, i32* %58)
  br label %65

60:                                               ; preds = %27
  %61 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @ciss_printf(%struct.ciss_softc* %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %43
  %66 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %67 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %67, align 8
  %70 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %71 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp eq i64 %69, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %65
  %76 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %77 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %79 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = xor i32 %80, 1
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %75, %65
  br label %10

83:                                               ; preds = %26
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @debug(i32, i8*, i32, i8*) #1

declare dso_local i32 @ciss_enqueue_complete(%struct.ciss_request*, i32*) #1

declare dso_local i32 @ciss_printf(%struct.ciss_softc*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
