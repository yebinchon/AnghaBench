; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_std_send_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_std_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32, i32 (%struct.mfi_softc*, i32, i32)* }
%struct.mfi_command = type { i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.mfi_frame_header }
%struct.TYPE_3__ = type { i32 }
%struct.mfi_frame_header = type { i64, i32 }

@mfi_polled_cmd_timeout = common dso_local global i32 0, align 4
@MFI_CMD_POLLED = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4
@MFI_STAT_INVALID_STATUS = common dso_local global i64 0, align 8
@MFI_FRAME_DONT_POST_IN_REPLY_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Frame %p timed out command 0x%X\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mfi_softc*, %struct.mfi_command*)* @mfi_std_send_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfi_std_send_frame(%struct.mfi_softc* %0, %struct.mfi_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mfi_softc*, align 8
  %5 = alloca %struct.mfi_command*, align 8
  %6 = alloca %struct.mfi_frame_header*, align 8
  %7 = alloca i32, align 4
  store %struct.mfi_softc* %0, %struct.mfi_softc** %4, align 8
  store %struct.mfi_command* %1, %struct.mfi_command** %5, align 8
  %8 = load i32, i32* @mfi_polled_cmd_timeout, align 4
  %9 = mul nsw i32 %8, 1000
  store i32 %9, i32* %7, align 4
  %10 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %11 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store %struct.mfi_frame_header* %13, %struct.mfi_frame_header** %6, align 8
  %14 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %15 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MFI_CMD_POLLED, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @time_uptime, align 4
  %22 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %23 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %25 = call i32 @mfi_enqueue_busy(%struct.mfi_command* %24)
  br label %35

26:                                               ; preds = %2
  %27 = load i64, i64* @MFI_STAT_INVALID_STATUS, align 8
  %28 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %6, align 8
  %29 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* @MFI_FRAME_DONT_POST_IN_REPLY_QUEUE, align 4
  %31 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %6, align 8
  %32 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %26, %20
  %36 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %37 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 7
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %42 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %41, i32 0, i32 1
  store i32 7, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %45 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %44, i32 0, i32 1
  %46 = load i32 (%struct.mfi_softc*, i32, i32)*, i32 (%struct.mfi_softc*, i32, i32)** %45, align 8
  %47 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %48 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %49 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %52 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 %46(%struct.mfi_softc* %47, i32 %50, i32 %53)
  %55 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %56 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @MFI_CMD_POLLED, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %97

62:                                               ; preds = %43
  br label %63

63:                                               ; preds = %76, %62
  %64 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %6, align 8
  %65 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @MFI_STAT_INVALID_STATUS, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = call i32 @DELAY(i32 1000)
  %71 = load i32, i32* %7, align 4
  %72 = sub nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %77

76:                                               ; preds = %69
  br label %63

77:                                               ; preds = %75, %63
  %78 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %6, align 8
  %79 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @MFI_STAT_INVALID_STATUS, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %77
  %84 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %85 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %6, align 8
  %88 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %89 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @device_printf(i32 %86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.mfi_frame_header* %87, i32 %93)
  %95 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %95, i32* %3, align 4
  br label %97

96:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %83, %61
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @mfi_enqueue_busy(%struct.mfi_command*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, %struct.mfi_frame_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
