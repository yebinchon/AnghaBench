; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_set_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_softc = type { i32 }
%struct.twe_request = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@TWE_SECTOR_SIZE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@TWE_CMD_DATAIN = common dso_local global i32 0, align 4
@TWE_CMD_DATAOUT = common dso_local global i32 0, align 4
@TWE_OP_SET_PARAM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twe_softc*, i32, i32, i32, i8*)* @twe_set_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twe_set_param(%struct.twe_softc* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.twe_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.twe_request*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32, align 4
  store %struct.twe_softc* %0, %struct.twe_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %15 = call i32 @debug_called(i32 4)
  %16 = load %struct.twe_softc*, %struct.twe_softc** %6, align 8
  %17 = call i32 @TWE_IO_ASSERT_LOCKED(%struct.twe_softc* %16)
  store %struct.twe_request* null, %struct.twe_request** %11, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %13, align 8
  %18 = load i32, i32* @ENOMEM, align 4
  store i32 %18, i32* %14, align 4
  %19 = load %struct.twe_softc*, %struct.twe_softc** %6, align 8
  %20 = call i64 @twe_get_request(%struct.twe_softc* %19, %struct.twe_request** %11)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %85

23:                                               ; preds = %5
  %24 = load i32, i32* @TWE_SECTOR_SIZE, align 4
  %25 = load i32, i32* @M_DEVBUF, align 4
  %26 = load i32, i32* @M_NOWAIT, align 4
  %27 = call i64 @malloc(i32 %24, i32 %25, i32 %26)
  %28 = inttoptr i64 %27 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %13, align 8
  %29 = icmp eq %struct.TYPE_7__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %85

31:                                               ; preds = %23
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %33 = load %struct.twe_request*, %struct.twe_request** %11, align 8
  %34 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %33, i32 0, i32 2
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %34, align 8
  %35 = load i32, i32* @TWE_SECTOR_SIZE, align 4
  %36 = load %struct.twe_request*, %struct.twe_request** %11, align 8
  %37 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @TWE_CMD_DATAIN, align 4
  %39 = load i32, i32* @TWE_CMD_DATAOUT, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.twe_request*, %struct.twe_request** %11, align 8
  %42 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.twe_request*, %struct.twe_request** %11, align 8
  %44 = call %struct.TYPE_8__* @TWE_FIND_COMMAND(%struct.twe_request* %43)
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %12, align 8
  %45 = load i32, i32* @TWE_OP_SET_PARAM, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 2, i32* %51, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load i8*, i8** %10, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @bcopy(i8* %67, i32 %70, i32 %71)
  %73 = load %struct.twe_request*, %struct.twe_request** %11, align 8
  %74 = call i32 @twe_immediate_request(%struct.twe_request* %73, i32 1)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %31
  %78 = load %struct.twe_request*, %struct.twe_request** %11, align 8
  %79 = call i64 @twe_report_request(%struct.twe_request* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* @EIO, align 4
  store i32 %82, i32* %14, align 4
  br label %83

83:                                               ; preds = %81, %77
  br label %84

84:                                               ; preds = %83, %31
  br label %85

85:                                               ; preds = %84, %30, %22
  %86 = load %struct.twe_request*, %struct.twe_request** %11, align 8
  %87 = icmp ne %struct.twe_request* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.twe_request*, %struct.twe_request** %11, align 8
  %90 = call i32 @twe_release_request(%struct.twe_request* %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %93 = icmp ne %struct.TYPE_7__* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %96 = load i32, i32* @M_DEVBUF, align 4
  %97 = call i32 @free(%struct.TYPE_7__* %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %91
  %99 = load i32, i32* %14, align 4
  ret i32 %99
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @TWE_IO_ASSERT_LOCKED(%struct.twe_softc*) #1

declare dso_local i64 @twe_get_request(%struct.twe_softc*, %struct.twe_request**) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @TWE_FIND_COMMAND(%struct.twe_request*) #1

declare dso_local i32 @bcopy(i8*, i32, i32) #1

declare dso_local i32 @twe_immediate_request(%struct.twe_request*, i32) #1

declare dso_local i64 @twe_report_request(%struct.twe_request*) #1

declare dso_local i32 @twe_release_request(%struct.twe_request*) #1

declare dso_local i32 @free(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
