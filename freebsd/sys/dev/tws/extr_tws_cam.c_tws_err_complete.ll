; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_err_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_err_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32, i32, i32, %struct.tws_request* }
%struct.tws_request = type { i64, i32 }
%struct.tws_command_header = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.tws_sense = type { %struct.tws_command_header* }

@.str = private unnamed_addr constant [9 x i8] c"null mfa\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"found null req\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"sen, hdr\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"req, id\00", align 1
@TWS_REQ_RET_SUBMIT_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"submit failure?\00", align 1
@TWS_I2O0_HOBQPH = common dso_local global i32 0, align 4
@TWS_I2O0_HOBQPL = common dso_local global i32 0, align 4
@TWS_I2O0_STATUS = common dso_local global i32 0, align 4
@TWS_BIT13 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"OBFL Overrun\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tws_softc*, i32)* @tws_err_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tws_err_complete(%struct.tws_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.tws_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tws_command_header*, align 8
  %6 = alloca %struct.tws_sense*, align 8
  %7 = alloca %struct.tws_request*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tws_softc* %0, %struct.tws_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (%struct.tws_softc*, i8*, ...) @TWS_TRACE_DEBUG(%struct.tws_softc* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32 %15)
  br label %111

17:                                               ; preds = %2
  %18 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.tws_sense* @tws_find_sense_from_mfa(%struct.tws_softc* %18, i32 %19)
  store %struct.tws_sense* %20, %struct.tws_sense** %6, align 8
  %21 = load %struct.tws_sense*, %struct.tws_sense** %6, align 8
  %22 = icmp eq %struct.tws_sense* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 (%struct.tws_softc*, i8*, ...) @TWS_TRACE_DEBUG(%struct.tws_softc* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %25)
  br label %111

27:                                               ; preds = %17
  %28 = load %struct.tws_sense*, %struct.tws_sense** %6, align 8
  %29 = getelementptr inbounds %struct.tws_sense, %struct.tws_sense* %28, i32 0, i32 0
  %30 = load %struct.tws_command_header*, %struct.tws_command_header** %29, align 8
  store %struct.tws_command_header* %30, %struct.tws_command_header** %5, align 8
  %31 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %32 = load %struct.tws_sense*, %struct.tws_sense** %6, align 8
  %33 = load %struct.tws_command_header*, %struct.tws_command_header** %5, align 8
  %34 = call i32 (%struct.tws_softc*, i8*, ...) @TWS_TRACE_DEBUG(%struct.tws_softc* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.tws_sense* %32, %struct.tws_command_header* %33)
  %35 = load %struct.tws_command_header*, %struct.tws_command_header** %5, align 8
  %36 = getelementptr inbounds %struct.tws_command_header, %struct.tws_command_header* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %8, align 8
  %39 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %40 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %39, i32 0, i32 3
  %41 = load %struct.tws_request*, %struct.tws_request** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %41, i64 %42
  store %struct.tws_request* %43, %struct.tws_request** %7, align 8
  %44 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %45 = load %struct.tws_request*, %struct.tws_request** %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 (%struct.tws_softc*, i8*, ...) @TWS_TRACE_DEBUG(%struct.tws_softc* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct.tws_request* %45, i64 %46)
  %48 = load %struct.tws_request*, %struct.tws_request** %7, align 8
  %49 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TWS_REQ_RET_SUBMIT_SUCCESS, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %27
  %54 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %55 = load %struct.tws_request*, %struct.tws_request** %7, align 8
  %56 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (%struct.tws_softc*, i8*, ...) @TWS_TRACE_DEBUG(%struct.tws_softc* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 0, i64 %57)
  br label %59

59:                                               ; preds = %53, %27
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.tws_request*, %struct.tws_request** %7, align 8
  %62 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  switch i32 %63, label %75 [
    i32 129, label %64
    i32 130, label %68
    i32 128, label %71
  ]

64:                                               ; preds = %60
  %65 = load %struct.tws_request*, %struct.tws_request** %7, align 8
  %66 = load %struct.tws_command_header*, %struct.tws_command_header** %5, align 8
  %67 = call i32 @tws_passthru_err_complete(%struct.tws_request* %65, %struct.tws_command_header* %66)
  br label %75

68:                                               ; preds = %60
  %69 = load %struct.tws_request*, %struct.tws_request** %7, align 8
  %70 = call i32 @tws_getset_param_complete(%struct.tws_request* %69)
  br label %75

71:                                               ; preds = %60
  %72 = load %struct.tws_request*, %struct.tws_request** %7, align 8
  %73 = load %struct.tws_command_header*, %struct.tws_command_header** %5, align 8
  %74 = call i32 @tws_scsi_err_complete(%struct.tws_request* %72, %struct.tws_command_header* %73)
  br label %75

75:                                               ; preds = %60, %71, %68, %64
  %76 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %77 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %76, i32 0, i32 1
  %78 = call i32 @mtx_lock(i32* %77)
  %79 = load %struct.tws_command_header*, %struct.tws_command_header** %5, align 8
  %80 = getelementptr inbounds %struct.tws_command_header, %struct.tws_command_header* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 128, i32* %81, align 8
  %82 = load i32, i32* %4, align 4
  %83 = ashr i32 %82, 32
  store i32 %83, i32* %9, align 4
  %84 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %85 = load i32, i32* @TWS_I2O0_HOBQPH, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @tws_write_reg(%struct.tws_softc* %84, i32 %85, i32 %86, i32 4)
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %9, align 4
  %89 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %90 = load i32, i32* @TWS_I2O0_HOBQPL, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @tws_write_reg(%struct.tws_softc* %89, i32 %90, i32 %91, i32 4)
  %93 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %94 = load i32, i32* @TWS_I2O0_STATUS, align 4
  %95 = call i32 @tws_read_reg(%struct.tws_softc* %93, i32 %94, i32 4)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @TWS_BIT13, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %75
  %101 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %102 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @device_printf(i32 %103, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %105 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %106 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  br label %107

107:                                              ; preds = %100, %75
  %108 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %109 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %108, i32 0, i32 1
  %110 = call i32 @mtx_unlock(i32* %109)
  br label %111

111:                                              ; preds = %107, %23, %13
  ret void
}

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, ...) #1

declare dso_local %struct.tws_sense* @tws_find_sense_from_mfa(%struct.tws_softc*, i32) #1

declare dso_local i32 @tws_passthru_err_complete(%struct.tws_request*, %struct.tws_command_header*) #1

declare dso_local i32 @tws_getset_param_complete(%struct.tws_request*) #1

declare dso_local i32 @tws_scsi_err_complete(%struct.tws_request*, %struct.tws_command_header*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @tws_write_reg(%struct.tws_softc*, i32, i32, i32) #1

declare dso_local i32 @tws_read_reg(%struct.tws_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
