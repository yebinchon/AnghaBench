; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_get_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_get_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_softc = type { i32 }
%struct.twe_request = type { i32*, i64, i32, i32*, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@dumping = common dso_local global i32 0, align 4
@TWE_CMD_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twe_softc*, %struct.twe_request**)* @twe_get_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twe_get_request(%struct.twe_softc* %0, %struct.twe_request** %1) #0 {
  %3 = alloca %struct.twe_softc*, align 8
  %4 = alloca %struct.twe_request**, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.twe_softc* %0, %struct.twe_softc** %3, align 8
  store %struct.twe_request** %1, %struct.twe_request*** %4, align 8
  %6 = call i32 @debug_called(i32 4)
  %7 = load i32, i32* @dumping, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %11 = call i32 @TWE_IO_ASSERT_LOCKED(%struct.twe_softc* %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %14 = call %struct.twe_request* @twe_dequeue_free(%struct.twe_softc* %13)
  %15 = load %struct.twe_request**, %struct.twe_request*** %4, align 8
  store %struct.twe_request* %14, %struct.twe_request** %15, align 8
  %16 = load %struct.twe_request**, %struct.twe_request*** %4, align 8
  %17 = load %struct.twe_request*, %struct.twe_request** %16, align 8
  %18 = icmp ne %struct.twe_request* %17, null
  br i1 %18, label %19, label %45

19:                                               ; preds = %12
  %20 = load %struct.twe_request**, %struct.twe_request*** %4, align 8
  %21 = load %struct.twe_request*, %struct.twe_request** %20, align 8
  %22 = call %struct.TYPE_5__* @TWE_FIND_COMMAND(%struct.twe_request* %21)
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %5, align 8
  %23 = load %struct.twe_request**, %struct.twe_request*** %4, align 8
  %24 = load %struct.twe_request*, %struct.twe_request** %23, align 8
  %25 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %24, i32 0, i32 4
  store i32* null, i32** %25, align 8
  %26 = load %struct.twe_request**, %struct.twe_request*** %4, align 8
  %27 = load %struct.twe_request*, %struct.twe_request** %26, align 8
  %28 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %27, i32 0, i32 3
  store i32* null, i32** %28, align 8
  %29 = load i32, i32* @TWE_CMD_SETUP, align 4
  %30 = load %struct.twe_request**, %struct.twe_request*** %4, align 8
  %31 = load %struct.twe_request*, %struct.twe_request** %30, align 8
  %32 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 8
  %33 = load %struct.twe_request**, %struct.twe_request*** %4, align 8
  %34 = load %struct.twe_request*, %struct.twe_request** %33, align 8
  %35 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.twe_request**, %struct.twe_request*** %4, align 8
  %37 = load %struct.twe_request*, %struct.twe_request** %36, align 8
  %38 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %19, %12
  %46 = load %struct.twe_request**, %struct.twe_request*** %4, align 8
  %47 = load %struct.twe_request*, %struct.twe_request** %46, align 8
  %48 = icmp eq %struct.twe_request* %47, null
  %49 = zext i1 %48 to i32
  ret i32 %49
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @TWE_IO_ASSERT_LOCKED(%struct.twe_softc*) #1

declare dso_local %struct.twe_request* @twe_dequeue_free(%struct.twe_softc*) #1

declare dso_local %struct.TYPE_5__* @TWE_FIND_COMMAND(%struct.twe_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
