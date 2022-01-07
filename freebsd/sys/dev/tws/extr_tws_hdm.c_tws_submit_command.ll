; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_hdm.c_tws_submit_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_hdm.c_tws_submit_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32, %struct.TYPE_4__, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.tws_request = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@TWS_I2O0_HIBQPH = common dso_local global i32 0, align 4
@TWS_I2O0_HIBQPL = common dso_local global i32 0, align 4
@TWS_FIFO_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"inbound fifo empty\00", align 1
@TWS_REQ_RET_PEND_NOMFA = common dso_local global i32 0, align 4
@TWS_REQ_TYPE_SCSI_IO = common dso_local global i64 0, align 8
@TWS_BUSY_Q = common dso_local global i32 0, align 4
@TWS_REQ_RET_SUBMIT_SUCCESS = common dso_local global i32 0, align 4
@TWS_BIT0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tws_submit_command(%struct.tws_softc* %0, %struct.tws_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tws_softc*, align 8
  %5 = alloca %struct.tws_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tws_softc* %0, %struct.tws_softc** %4, align 8
  store %struct.tws_request* %1, %struct.tws_request** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %11 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %10, i32 0, i32 0
  %12 = call i32 @mtx_lock(i32* %11)
  %13 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %14 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %19 = call i32 @tws_init_obfl_q(%struct.tws_softc* %18)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %22 = load i32, i32* @TWS_I2O0_HIBQPH, align 4
  %23 = call i32 @tws_read_reg(%struct.tws_softc* %21, i32 %22, i32 4)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = shl i32 %25, 32
  store i32 %26, i32* %8, align 4
  %27 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %28 = load i32, i32* @TWS_I2O0_HIBQPL, align 4
  %29 = call i32 @tws_read_reg(%struct.tws_softc* %27, i32 %28, i32 4)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %8, align 4
  %33 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %34 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %33, i32 0, i32 0
  %35 = call i32 @mtx_unlock(i32* %34)
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @TWS_FIFO_EMPTY, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %20
  %40 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %41, i32 0)
  %43 = load i32, i32* @TWS_REQ_RET_PEND_NOMFA, align 4
  store i32 %43, i32* %3, align 4
  br label %114

44:                                               ; preds = %20
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %73, %44
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = add i64 4, %50
  %52 = sub i64 %51, 4
  %53 = icmp ult i64 %48, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %46
  %55 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %56 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %59 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.tws_request*, %struct.tws_request** %5, align 8
  %63 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %62, i32 0, i32 2
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @bus_space_write_1(i32 %57, i32 %60, i32 %61, i32 %71)
  br label %73

73:                                               ; preds = %54
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %46

76:                                               ; preds = %46
  %77 = load %struct.tws_request*, %struct.tws_request** %5, align 8
  %78 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @TWS_REQ_TYPE_SCSI_IO, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %76
  %83 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %84 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %83, i32 0, i32 2
  %85 = call i32 @mtx_lock(i32* %84)
  %86 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %87 = load %struct.tws_request*, %struct.tws_request** %5, align 8
  %88 = load i32, i32* @TWS_BUSY_Q, align 4
  %89 = call i32 @tws_q_insert_tail(%struct.tws_softc* %86, %struct.tws_request* %87, i32 %88)
  %90 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %91 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %90, i32 0, i32 2
  %92 = call i32 @mtx_unlock(i32* %91)
  br label %93

93:                                               ; preds = %82, %76
  %94 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %95 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %94, i32 0, i32 0
  %96 = call i32 @mtx_lock(i32* %95)
  %97 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %98 = load i32, i32* @TWS_I2O0_HIBQPH, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @tws_write_reg(%struct.tws_softc* %97, i32 %98, i32 %99, i32 4)
  %101 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %102 = load i32, i32* @TWS_I2O0_HIBQPL, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @tws_write_reg(%struct.tws_softc* %101, i32 %102, i32 %103, i32 4)
  %105 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %106 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %111 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %110, i32 0, i32 0
  %112 = call i32 @mtx_unlock(i32* %111)
  %113 = load i32, i32* @TWS_REQ_RET_SUBMIT_SUCCESS, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %93, %39
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @tws_init_obfl_q(%struct.tws_softc*) #1

declare dso_local i32 @tws_read_reg(%struct.tws_softc*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, i32, i32) #1

declare dso_local i32 @bus_space_write_1(i32, i32, i32, i32) #1

declare dso_local i32 @tws_q_insert_tail(%struct.tws_softc*, %struct.tws_request*, i32) #1

declare dso_local i32 @tws_write_reg(%struct.tws_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
