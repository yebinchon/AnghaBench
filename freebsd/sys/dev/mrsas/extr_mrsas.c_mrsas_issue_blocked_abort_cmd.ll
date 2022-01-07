; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_issue_blocked_abort_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_issue_blocked_abort_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i8* }
%struct.mrsas_mfi_cmd = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mrsas_abort_frame }
%struct.mrsas_abort_frame = type { i32, i64, i32, i32, i64, i32 }

@MRSAS_INTERNAL_CMD_WAIT_TIME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Cannot alloc for abort cmd\0A\00", align 1
@MFI_CMD_ABORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Fail to send abort command.\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"mrsas_sleep\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Abort cmd timed out after %d sec.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mrsas_softc*, %struct.mrsas_mfi_cmd*)* @mrsas_issue_blocked_abort_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrsas_issue_blocked_abort_cmd(%struct.mrsas_softc* %0, %struct.mrsas_mfi_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mrsas_softc*, align 8
  %5 = alloca %struct.mrsas_mfi_cmd*, align 8
  %6 = alloca %struct.mrsas_mfi_cmd*, align 8
  %7 = alloca %struct.mrsas_abort_frame*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %4, align 8
  store %struct.mrsas_mfi_cmd* %1, %struct.mrsas_mfi_cmd** %5, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %11 = load i64, i64* @MRSAS_INTERNAL_CMD_WAIT_TIME, align 8
  store i64 %11, i64* %10, align 8
  %12 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %13 = call %struct.mrsas_mfi_cmd* @mrsas_get_mfi_cmd(%struct.mrsas_softc* %12)
  store %struct.mrsas_mfi_cmd* %13, %struct.mrsas_mfi_cmd** %6, align 8
  %14 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %6, align 8
  %15 = icmp ne %struct.mrsas_mfi_cmd* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %18 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i32, i8*, ...) @device_printf(i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %94

21:                                               ; preds = %2
  %22 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %6, align 8
  %23 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %22, i32 0, i32 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store %struct.mrsas_abort_frame* %25, %struct.mrsas_abort_frame** %7, align 8
  %26 = load i32, i32* @MFI_CMD_ABORT, align 4
  %27 = load %struct.mrsas_abort_frame*, %struct.mrsas_abort_frame** %7, align 8
  %28 = getelementptr inbounds %struct.mrsas_abort_frame, %struct.mrsas_abort_frame* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load %struct.mrsas_abort_frame*, %struct.mrsas_abort_frame** %7, align 8
  %30 = getelementptr inbounds %struct.mrsas_abort_frame, %struct.mrsas_abort_frame* %29, i32 0, i32 0
  store i32 255, i32* %30, align 8
  %31 = load %struct.mrsas_abort_frame*, %struct.mrsas_abort_frame** %7, align 8
  %32 = getelementptr inbounds %struct.mrsas_abort_frame, %struct.mrsas_abort_frame* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %34 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mrsas_abort_frame*, %struct.mrsas_abort_frame** %7, align 8
  %37 = getelementptr inbounds %struct.mrsas_abort_frame, %struct.mrsas_abort_frame* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %39 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mrsas_abort_frame*, %struct.mrsas_abort_frame** %7, align 8
  %42 = getelementptr inbounds %struct.mrsas_abort_frame, %struct.mrsas_abort_frame* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.mrsas_abort_frame*, %struct.mrsas_abort_frame** %7, align 8
  %44 = getelementptr inbounds %struct.mrsas_abort_frame, %struct.mrsas_abort_frame* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %6, align 8
  %46 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %6, align 8
  %48 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %47, i32 0, i32 1
  store i32 255, i32* %48, align 4
  %49 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %50 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %6, align 8
  %51 = call i64 @mrsas_issue_dcmd(%struct.mrsas_softc* %49, %struct.mrsas_mfi_cmd* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %21
  %54 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %55 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i32, i8*, ...) @device_printf(i32 %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %94

58:                                               ; preds = %21
  %59 = bitcast %struct.mrsas_mfi_cmd** %6 to i8*
  %60 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %61 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %58, %86
  %63 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %6, align 8
  %64 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 255
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %69 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %68, i32 0, i32 1
  %70 = bitcast i8** %69 to i8*
  %71 = load i32, i32* @hz, align 4
  %72 = call i32 @tsleep(i8* %70, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  br label %74

73:                                               ; preds = %62
  br label %87

74:                                               ; preds = %67
  %75 = load i64, i64* %9, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %9, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %10, align 8
  %79 = icmp uge i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %82 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i64, i64* %10, align 8
  %85 = call i32 (i32, i8*, ...) @device_printf(i32 %83, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %84)
  store i64 1, i64* %8, align 8
  br label %87

86:                                               ; preds = %74
  br label %62

87:                                               ; preds = %80, %73
  %88 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %6, align 8
  %89 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  %90 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %6, align 8
  %91 = call i32 @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd* %90)
  %92 = load i64, i64* %8, align 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %87, %53, %16
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.mrsas_mfi_cmd* @mrsas_get_mfi_cmd(%struct.mrsas_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @mrsas_issue_dcmd(%struct.mrsas_softc*, %struct.mrsas_mfi_cmd*) #1

declare dso_local i32 @tsleep(i8*, i32, i8*, i32) #1

declare dso_local i32 @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
