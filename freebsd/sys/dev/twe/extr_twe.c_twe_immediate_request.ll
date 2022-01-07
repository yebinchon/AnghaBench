; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_immediate_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_immediate_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_request = type { i64, i32, i32*, i32, %struct.twe_softc* }
%struct.twe_softc = type { i32* }

@TWE_CMD_IMMEDIATE = common dso_local global i32 0, align 4
@DFLTPHYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TWE_CMD_BUSY = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@TWE_CMD_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twe_request*, i32)* @twe_immediate_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twe_immediate_request(%struct.twe_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.twe_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.twe_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.twe_request* %0, %struct.twe_request** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = call i32 @debug_called(i32 4)
  %10 = load %struct.twe_request*, %struct.twe_request** %4, align 8
  %11 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %10, i32 0, i32 4
  %12 = load %struct.twe_softc*, %struct.twe_softc** %11, align 8
  store %struct.twe_softc* %12, %struct.twe_softc** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %2
  %16 = load %struct.twe_request*, %struct.twe_request** %4, align 8
  %17 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %15
  %21 = load i32, i32* @TWE_CMD_IMMEDIATE, align 4
  %22 = load %struct.twe_request*, %struct.twe_request** %4, align 8
  %23 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.twe_request*, %struct.twe_request** %4, align 8
  %27 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @DFLTPHYS, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %3, align 4
  br label %101

33:                                               ; preds = %20
  %34 = load %struct.twe_request*, %struct.twe_request** %4, align 8
  %35 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.twe_softc*, %struct.twe_softc** %6, align 8
  %38 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.twe_request*, %struct.twe_request** %4, align 8
  %41 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @bcopy(i32* %36, i32* %39, i32 %42)
  br label %44

44:                                               ; preds = %33, %15, %2
  %45 = load i64, i64* @TWE_CMD_BUSY, align 8
  %46 = load %struct.twe_request*, %struct.twe_request** %4, align 8
  %47 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.twe_request*, %struct.twe_request** %4, align 8
  %49 = call i32 @twe_map_request(%struct.twe_request* %48)
  store i32 %49, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @EBUSY, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %101

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %44
  br label %59

59:                                               ; preds = %71, %58
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  %62 = icmp slt i32 %60, 5000
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load %struct.twe_request*, %struct.twe_request** %4, align 8
  %65 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @TWE_CMD_BUSY, align 8
  %68 = icmp eq i64 %66, %67
  br label %69

69:                                               ; preds = %63, %59
  %70 = phi i1 [ false, %59 ], [ %68, %63 ]
  br i1 %70, label %71, label %75

71:                                               ; preds = %69
  %72 = call i32 @DELAY(i32 1000)
  %73 = load %struct.twe_softc*, %struct.twe_softc** %6, align 8
  %74 = call i32 @twe_done(%struct.twe_softc* %73, i32 1)
  br label %59

75:                                               ; preds = %69
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %75
  %79 = load %struct.twe_request*, %struct.twe_request** %4, align 8
  %80 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %94

83:                                               ; preds = %78
  %84 = load %struct.twe_softc*, %struct.twe_softc** %6, align 8
  %85 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.twe_request*, %struct.twe_request** %4, align 8
  %88 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.twe_request*, %struct.twe_request** %4, align 8
  %91 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @bcopy(i32* %86, i32* %89, i32 %92)
  br label %94

94:                                               ; preds = %83, %78, %75
  %95 = load %struct.twe_request*, %struct.twe_request** %4, align 8
  %96 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @TWE_CMD_COMPLETE, align 8
  %99 = icmp ne i64 %97, %98
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %94, %55, %31
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @twe_map_request(%struct.twe_request*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @twe_done(%struct.twe_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
