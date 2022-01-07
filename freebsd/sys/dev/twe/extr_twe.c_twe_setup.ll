; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_softc = type { i32, %struct.twe_request**, i32 }
%struct.twe_request = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@TWE_Q_LENGTH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TWE_STATUS_MICROCONTROLLER_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"microcontroller not ready\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@TWE_MAX_RESET_TRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"reset %d failed, trying again\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"can't initialise controller, giving up\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @twe_setup(%struct.twe_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.twe_softc*, align 8
  %4 = alloca %struct.twe_request*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.twe_softc* %0, %struct.twe_softc** %3, align 8
  %8 = call i32 @debug_called(i32 4)
  %9 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %10 = call i32 @twe_initq_free(%struct.twe_softc* %9)
  %11 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %12 = call i32 @twe_initq_bio(%struct.twe_softc* %11)
  %13 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %14 = call i32 @twe_initq_ready(%struct.twe_softc* %13)
  %15 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %16 = call i32 @twe_initq_busy(%struct.twe_softc* %15)
  %17 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %18 = call i32 @twe_initq_complete(%struct.twe_softc* %17)
  %19 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %20 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %19, i32 0, i32 0
  store i32 -1, i32* %20, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %58, %1
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @TWE_Q_LENGTH, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %61

25:                                               ; preds = %21
  %26 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.twe_request* @twe_allocate_request(%struct.twe_softc* %26, i32 %27)
  store %struct.twe_request* %28, %struct.twe_request** %4, align 8
  %29 = icmp eq %struct.twe_request* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  store i32 %31, i32* %2, align 4
  br label %113

32:                                               ; preds = %25
  %33 = load %struct.twe_request*, %struct.twe_request** %4, align 8
  %34 = call %struct.TYPE_5__* @TWE_FIND_COMMAND(%struct.twe_request* %33)
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %5, align 8
  %35 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %36 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.twe_request*, %struct.twe_request** %4, align 8
  %46 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %47 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %46, i32 0, i32 1
  %48 = load %struct.twe_request**, %struct.twe_request*** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.twe_request*, %struct.twe_request** %48, i64 %50
  store %struct.twe_request* %45, %struct.twe_request** %51, align 8
  %52 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %53 = call i32 @TWE_IO_LOCK(%struct.twe_softc* %52)
  %54 = load %struct.twe_request*, %struct.twe_request** %4, align 8
  %55 = call i32 @twe_release_request(%struct.twe_request* %54)
  %56 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %57 = call i32 @TWE_IO_UNLOCK(%struct.twe_softc* %56)
  br label %58

58:                                               ; preds = %32
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %21

61:                                               ; preds = %21
  %62 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %63 = call i32 @TWE_IO_LOCK(%struct.twe_softc* %62)
  %64 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %65 = call i32 @TWE_STATUS(%struct.twe_softc* %64)
  store i32 %65, i32* %6, align 4
  %66 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @twe_check_bits(%struct.twe_softc* %66, i32 %67)
  %69 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %70 = load i32, i32* @TWE_STATUS_MICROCONTROLLER_READY, align 4
  %71 = call i64 @twe_wait_status(%struct.twe_softc* %69, i32 %70, i32 60)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %61
  %74 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %75 = call i32 @TWE_IO_UNLOCK(%struct.twe_softc* %74)
  %76 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %77 = call i32 (%struct.twe_softc*, i8*, ...) @twe_printf(%struct.twe_softc* %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @ENXIO, align 4
  store i32 %78, i32* %2, align 4
  br label %113

79:                                               ; preds = %61
  %80 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %81 = call i32 @twe_disable_interrupts(%struct.twe_softc* %80)
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %99, %79
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @TWE_MAX_RESET_TRIES, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  %87 = load i32, i32* %7, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 (%struct.twe_softc*, i8*, ...) @twe_printf(%struct.twe_softc* %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %89, %86
  %94 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %95 = call i32 @twe_soft_reset(%struct.twe_softc* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  br label %102

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %82

102:                                              ; preds = %97, %82
  %103 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %104 = call i32 @TWE_IO_UNLOCK(%struct.twe_softc* %103)
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @TWE_MAX_RESET_TRIES, align 4
  %107 = icmp sge i32 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %110 = call i32 (%struct.twe_softc*, i8*, ...) @twe_printf(%struct.twe_softc* %109, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %111 = load i32, i32* @ENXIO, align 4
  store i32 %111, i32* %2, align 4
  br label %113

112:                                              ; preds = %102
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %108, %73, %30
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @twe_initq_free(%struct.twe_softc*) #1

declare dso_local i32 @twe_initq_bio(%struct.twe_softc*) #1

declare dso_local i32 @twe_initq_ready(%struct.twe_softc*) #1

declare dso_local i32 @twe_initq_busy(%struct.twe_softc*) #1

declare dso_local i32 @twe_initq_complete(%struct.twe_softc*) #1

declare dso_local %struct.twe_request* @twe_allocate_request(%struct.twe_softc*, i32) #1

declare dso_local %struct.TYPE_5__* @TWE_FIND_COMMAND(%struct.twe_request*) #1

declare dso_local i32 @TWE_IO_LOCK(%struct.twe_softc*) #1

declare dso_local i32 @twe_release_request(%struct.twe_request*) #1

declare dso_local i32 @TWE_IO_UNLOCK(%struct.twe_softc*) #1

declare dso_local i32 @TWE_STATUS(%struct.twe_softc*) #1

declare dso_local i32 @twe_check_bits(%struct.twe_softc*, i32) #1

declare dso_local i64 @twe_wait_status(%struct.twe_softc*, i32, i32) #1

declare dso_local i32 @twe_printf(%struct.twe_softc*, i8*, ...) #1

declare dso_local i32 @twe_disable_interrupts(%struct.twe_softc*) #1

declare dso_local i32 @twe_soft_reset(%struct.twe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
