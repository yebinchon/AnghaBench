; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_send_port_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_send_port_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i64, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@MPI_FUNCTION_PORT_ENABLE = common dso_local global i32 0, align 4
@MPT_REPLY_HANDLER_CONFIG = common dso_local global i32 0, align 4
@MPT_PRT_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"enabling port %d\0A\00", align 1
@REQ_STATE_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"port %d enable timed out\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"enabled port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*, i32)* @mpt_send_port_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_send_port_enable(%struct.mpt_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpt_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %10 = load i32, i32* @FALSE, align 4
  %11 = call %struct.TYPE_8__* @mpt_get_request(%struct.mpt_softc* %9, i32 %10)
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %6, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = icmp eq %struct.TYPE_8__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %79

15:                                               ; preds = %2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %7, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %21 = call i32 @MPT_RQSL(%struct.mpt_softc* %20)
  %22 = call i32 @memset(%struct.TYPE_9__* %19, i32 0, i32 %21)
  %23 = load i32, i32* @MPI_FUNCTION_PORT_ENABLE, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MPT_REPLY_HANDLER_CONFIG, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @htole32(i32 %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %38 = call i32 @mpt_check_doorbell(%struct.mpt_softc* %37)
  %39 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %40 = load i32, i32* @MPT_PRT_DEBUG, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @mpt_lprt(%struct.mpt_softc* %39, i32 %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = call i32 @mpt_send_cmd(%struct.mpt_softc* %43, %struct.TYPE_8__* %44)
  %46 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = load i32, i32* @REQ_STATE_DONE, align 4
  %49 = load i32, i32* @REQ_STATE_DONE, align 4
  %50 = load i32, i32* @FALSE, align 4
  %51 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %52 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %15
  %56 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %57 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %55, %15
  %61 = phi i1 [ true, %15 ], [ %59, %55 ]
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 300000, i32 30000
  %64 = call i32 @mpt_wait_req(%struct.mpt_softc* %46, %struct.TYPE_8__* %47, i32 %48, i32 %49, i32 %50, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @mpt_prt(%struct.mpt_softc* %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  store i32 -1, i32* %3, align 4
  br label %79

71:                                               ; preds = %60
  %72 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %74 = call i32 @mpt_free_request(%struct.mpt_softc* %72, %struct.TYPE_8__* %73)
  %75 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %76 = load i32, i32* @MPT_PRT_DEBUG, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @mpt_lprt(%struct.mpt_softc* %75, i32 %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %71, %67, %14
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.TYPE_8__* @mpt_get_request(%struct.mpt_softc*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @MPT_RQSL(%struct.mpt_softc*) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @mpt_check_doorbell(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_lprt(%struct.mpt_softc*, i32, i8*, i32) #1

declare dso_local i32 @mpt_send_cmd(%struct.mpt_softc*, %struct.TYPE_8__*) #1

declare dso_local i32 @mpt_wait_req(%struct.mpt_softc*, %struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*, i32) #1

declare dso_local i32 @mpt_free_request(%struct.mpt_softc*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
