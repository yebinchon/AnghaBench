; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_abort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32, i32 }
%struct.mfi_command = type { i32 (%struct.mfi_command*)*, i32, i32*, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.mfi_abort_frame }
%struct.TYPE_5__ = type { i8* }
%struct.mfi_abort_frame = type { i8*, i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32 }

@EBUSY = common dso_local global i32 0, align 4
@MFI_CMD_ABORT = common dso_local global i32 0, align 4
@MFI_CMD_POLLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to abort command\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"mfiabort\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mfi_softc*, %struct.mfi_command**)* @mfi_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfi_abort(%struct.mfi_softc* %0, %struct.mfi_command** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mfi_softc*, align 8
  %5 = alloca %struct.mfi_command**, align 8
  %6 = alloca %struct.mfi_command*, align 8
  %7 = alloca %struct.mfi_abort_frame*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.mfi_softc* %0, %struct.mfi_softc** %4, align 8
  store %struct.mfi_command** %1, %struct.mfi_command*** %5, align 8
  store i32 0, i32* %8, align 4
  store i8* null, i8** %10, align 8
  %11 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %12 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %11, i32 0, i32 0
  %13 = call i32 @mtx_lock(i32* %12)
  %14 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %15 = call %struct.mfi_command* @mfi_dequeue_free(%struct.mfi_softc* %14)
  store %struct.mfi_command* %15, %struct.mfi_command** %6, align 8
  %16 = icmp eq %struct.mfi_command* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %19 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %18, i32 0, i32 0
  %20 = call i32 @mtx_unlock(i32* %19)
  %21 = load i32, i32* @EBUSY, align 4
  store i32 %21, i32* %3, align 4
  br label %135

22:                                               ; preds = %2
  %23 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %24 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %23, i32 0, i32 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %10, align 8
  %29 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %30 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %29, i32 0, i32 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = call i32 @bzero(%struct.TYPE_6__* %31, i32 4)
  %33 = load i8*, i8** %10, align 8
  %34 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %35 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %34, i32 0, i32 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i8* %33, i8** %38, align 8
  %39 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %40 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %39, i32 0, i32 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store %struct.mfi_abort_frame* %42, %struct.mfi_abort_frame** %7, align 8
  %43 = load i32, i32* @MFI_CMD_ABORT, align 4
  %44 = load %struct.mfi_abort_frame*, %struct.mfi_abort_frame** %7, align 8
  %45 = getelementptr inbounds %struct.mfi_abort_frame, %struct.mfi_abort_frame* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 8
  %47 = load %struct.mfi_abort_frame*, %struct.mfi_abort_frame** %7, align 8
  %48 = getelementptr inbounds %struct.mfi_abort_frame, %struct.mfi_abort_frame* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.mfi_abort_frame*, %struct.mfi_abort_frame** %7, align 8
  %51 = getelementptr inbounds %struct.mfi_abort_frame, %struct.mfi_abort_frame* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.mfi_command**, %struct.mfi_command*** %5, align 8
  %54 = load %struct.mfi_command*, %struct.mfi_command** %53, align 8
  %55 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %54, i32 0, i32 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.mfi_abort_frame*, %struct.mfi_abort_frame** %7, align 8
  %61 = getelementptr inbounds %struct.mfi_abort_frame, %struct.mfi_abort_frame* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load %struct.mfi_command**, %struct.mfi_command*** %5, align 8
  %63 = load %struct.mfi_command*, %struct.mfi_command** %62, align 8
  %64 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.mfi_abort_frame*, %struct.mfi_abort_frame** %7, align 8
  %68 = getelementptr inbounds %struct.mfi_abort_frame, %struct.mfi_abort_frame* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.mfi_command**, %struct.mfi_command*** %5, align 8
  %70 = load %struct.mfi_command*, %struct.mfi_command** %69, align 8
  %71 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = ashr i32 %73, 32
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.mfi_abort_frame*, %struct.mfi_abort_frame** %7, align 8
  %78 = getelementptr inbounds %struct.mfi_abort_frame, %struct.mfi_abort_frame* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %80 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %79, i32 0, i32 2
  store i32* null, i32** %80, align 8
  %81 = load i32, i32* @MFI_CMD_POLLED, align 4
  %82 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %83 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %85 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %86 = call i32 @mfi_mapcmd(%struct.mfi_softc* %84, %struct.mfi_command* %85)
  store i32 %86, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %22
  %89 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %90 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @device_printf(i32 %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %88, %22
  %94 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %95 = call i32 @mfi_release_command(%struct.mfi_command* %94)
  %96 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %97 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %96, i32 0, i32 0
  %98 = call i32 @mtx_unlock(i32* %97)
  br label %99

99:                                               ; preds = %108, %93
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %100, 5
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load %struct.mfi_command**, %struct.mfi_command*** %5, align 8
  %104 = load %struct.mfi_command*, %struct.mfi_command** %103, align 8
  %105 = icmp ne %struct.mfi_command* %104, null
  br label %106

106:                                              ; preds = %102, %99
  %107 = phi i1 [ false, %99 ], [ %105, %102 ]
  br i1 %107, label %108, label %115

108:                                              ; preds = %106
  %109 = load %struct.mfi_command**, %struct.mfi_command*** %5, align 8
  %110 = load i32, i32* @hz, align 4
  %111 = mul nsw i32 5, %110
  %112 = call i32 @tsleep(%struct.mfi_command** %109, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %99

115:                                              ; preds = %106
  %116 = load %struct.mfi_command**, %struct.mfi_command*** %5, align 8
  %117 = load %struct.mfi_command*, %struct.mfi_command** %116, align 8
  %118 = icmp ne %struct.mfi_command* %117, null
  br i1 %118, label %119, label %133

119:                                              ; preds = %115
  %120 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %121 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %120, i32 0, i32 0
  %122 = call i32 @mtx_lock(i32* %121)
  %123 = load %struct.mfi_command**, %struct.mfi_command*** %5, align 8
  %124 = load %struct.mfi_command*, %struct.mfi_command** %123, align 8
  %125 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %124, i32 0, i32 0
  %126 = load i32 (%struct.mfi_command*)*, i32 (%struct.mfi_command*)** %125, align 8
  %127 = load %struct.mfi_command**, %struct.mfi_command*** %5, align 8
  %128 = load %struct.mfi_command*, %struct.mfi_command** %127, align 8
  %129 = call i32 %126(%struct.mfi_command* %128)
  %130 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %131 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %130, i32 0, i32 0
  %132 = call i32 @mtx_unlock(i32* %131)
  br label %133

133:                                              ; preds = %119, %115
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %133, %17
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.mfi_command* @mfi_dequeue_free(%struct.mfi_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @bzero(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @mfi_mapcmd(%struct.mfi_softc*, %struct.mfi_command*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mfi_release_command(%struct.mfi_command*) #1

declare dso_local i32 @tsleep(%struct.mfi_command**, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
