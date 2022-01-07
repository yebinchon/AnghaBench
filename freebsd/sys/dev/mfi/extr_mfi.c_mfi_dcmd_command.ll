; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_dcmd_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_dcmd_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32 }
%struct.mfi_command = type { i64, i8*, i8*, i64, i32, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.mfi_dcmd_frame, %struct.TYPE_4__ }
%struct.mfi_dcmd_frame = type { i32, i8*, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i8* }

@MA_OWNED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@M_MFIBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MFI_MBOX_SIZE = common dso_local global i32 0, align 4
@MFI_CMD_DCMD = common dso_local global i32 0, align 4
@MFI_DCMD_FRAME_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mfi_dcmd_command(%struct.mfi_softc* %0, %struct.mfi_command** %1, i8* %2, i8** %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mfi_softc*, align 8
  %8 = alloca %struct.mfi_command**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mfi_command*, align 8
  %13 = alloca %struct.mfi_dcmd_frame*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.mfi_softc* %0, %struct.mfi_softc** %7, align 8
  store %struct.mfi_command** %1, %struct.mfi_command*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %16 = load %struct.mfi_softc*, %struct.mfi_softc** %7, align 8
  %17 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %16, i32 0, i32 0
  %18 = load i32, i32* @MA_OWNED, align 4
  %19 = call i32 @mtx_assert(i32* %17, i32 %18)
  %20 = load %struct.mfi_softc*, %struct.mfi_softc** %7, align 8
  %21 = call %struct.mfi_command* @mfi_dequeue_free(%struct.mfi_softc* %20)
  store %struct.mfi_command* %21, %struct.mfi_command** %12, align 8
  %22 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %23 = icmp eq %struct.mfi_command* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @EBUSY, align 4
  store i32 %25, i32* %6, align 4
  br label %135

26:                                               ; preds = %5
  %27 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %28 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %27, i32 0, i32 6
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %15, align 8
  %33 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %34 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %33, i32 0, i32 6
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = call i32 @bzero(%struct.TYPE_6__* %35, i32 4)
  %37 = load i8*, i8** %15, align 8
  %38 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %39 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %38, i32 0, i32 6
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i8* %37, i8** %42, align 8
  %43 = load i64, i64* %11, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %26
  %46 = load i8**, i8*** %10, align 8
  %47 = icmp ne i8** %46, null
  br i1 %47, label %48, label %72

48:                                               ; preds = %45
  %49 = load i8**, i8*** %10, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load i64, i64* %11, align 8
  %54 = load i32, i32* @M_MFIBUF, align 4
  %55 = load i32, i32* @M_NOWAIT, align 4
  %56 = load i32, i32* @M_ZERO, align 4
  %57 = or i32 %55, %56
  %58 = call i8* @malloc(i64 %53, i32 %54, i32 %57)
  store i8* %58, i8** %14, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %63 = call i32 @mfi_release_command(%struct.mfi_command* %62)
  %64 = load i32, i32* @ENOMEM, align 4
  store i32 %64, i32* %6, align 4
  br label %135

65:                                               ; preds = %52
  %66 = load i8*, i8** %14, align 8
  %67 = load i8**, i8*** %10, align 8
  store i8* %66, i8** %67, align 8
  br label %71

68:                                               ; preds = %48
  %69 = load i8**, i8*** %10, align 8
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %14, align 8
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71, %45, %26
  %73 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %74 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %73, i32 0, i32 6
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store %struct.mfi_dcmd_frame* %76, %struct.mfi_dcmd_frame** %13, align 8
  %77 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %13, align 8
  %78 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %77, i32 0, i32 3
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i32, i32* @MFI_MBOX_SIZE, align 4
  %81 = call i32 @bzero(%struct.TYPE_6__* %79, i32 %80)
  %82 = load i32, i32* @MFI_CMD_DCMD, align 4
  %83 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %13, align 8
  %84 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 4
  store i32 %82, i32* %85, align 8
  %86 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %13, align 8
  %87 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 3
  store i64 0, i64* %88, align 8
  %89 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %13, align 8
  %90 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  store i64 0, i64* %91, align 8
  %92 = load i64, i64* %11, align 8
  %93 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %13, align 8
  %94 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  store i64 %92, i64* %95, align 8
  %96 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %13, align 8
  %97 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %13, align 8
  %101 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  %102 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %13, align 8
  %103 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %102, i32 0, i32 0
  %104 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %105 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %104, i32 0, i32 5
  store i32* %103, i32** %105, align 8
  %106 = load i32, i32* @MFI_DCMD_FRAME_SIZE, align 4
  %107 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %108 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  %109 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %110 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %109, i32 0, i32 3
  store i64 0, i64* %110, align 8
  %111 = load i8*, i8** %14, align 8
  %112 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %113 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  %114 = load i8*, i8** %14, align 8
  %115 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %116 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  %117 = load i64, i64* %11, align 8
  %118 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %119 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  %120 = load %struct.mfi_command*, %struct.mfi_command** %12, align 8
  %121 = load %struct.mfi_command**, %struct.mfi_command*** %8, align 8
  store %struct.mfi_command* %120, %struct.mfi_command** %121, align 8
  %122 = load i8**, i8*** %10, align 8
  %123 = icmp ne i8** %122, null
  br i1 %123, label %124, label %134

124:                                              ; preds = %72
  %125 = load i8**, i8*** %10, align 8
  %126 = load i8*, i8** %125, align 8
  %127 = icmp eq i8* %126, null
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = load i8*, i8** %14, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i8*, i8** %14, align 8
  %133 = load i8**, i8*** %10, align 8
  store i8* %132, i8** %133, align 8
  br label %134

134:                                              ; preds = %131, %128, %124, %72
  store i32 0, i32* %6, align 4
  br label %135

135:                                              ; preds = %134, %61, %24
  %136 = load i32, i32* %6, align 4
  ret i32 %136
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.mfi_command* @mfi_dequeue_free(%struct.mfi_softc*) #1

declare dso_local i32 @bzero(%struct.TYPE_6__*, i32) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @mfi_release_command(%struct.mfi_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
