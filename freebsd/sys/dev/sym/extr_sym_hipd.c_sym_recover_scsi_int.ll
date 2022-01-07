; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_recover_scsi_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_recover_scsi_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@nc_dsp = common dso_local global i32 0, align 4
@nc_dsa = common dso_local global i32 0, align 4
@getjob_begin = common dso_local global i32 0, align 4
@getjob_end = common dso_local global i32 0, align 4
@ungetjob = common dso_local global i32 0, align 4
@reselect = common dso_local global i32 0, align 4
@sel_for_abort = common dso_local global i32 0, align 4
@sel_for_abort_1 = common dso_local global i32 0, align 4
@done = common dso_local global i32 0, align 4
@done_end = common dso_local global i32 0, align 4
@nc_ctest3 = common dso_local global i32 0, align 4
@CLF = common dso_local global i32 0, align 4
@nc_stest3 = common dso_local global i32 0, align 4
@TE = common dso_local global i32 0, align 4
@CSF = common dso_local global i32 0, align 4
@complete_error = common dso_local global i32 0, align 4
@start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32)* @sym_recover_scsi_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_recover_scsi_int(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @nc_dsp, align 4
  %9 = call i64 @INL(i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i32, i32* @nc_dsa, align 4
  %11 = call i64 @INL(i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call %struct.TYPE_10__* @sym_ccb_from_dsa(%struct.TYPE_9__* %12, i64 %13)
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = load i32, i32* @getjob_begin, align 4
  %18 = call i64 @SCRIPTA_BA(%struct.TYPE_9__* %16, i32 %17)
  %19 = icmp sgt i64 %15, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = load i32, i32* @getjob_end, align 4
  %24 = call i64 @SCRIPTA_BA(%struct.TYPE_9__* %22, i32 %23)
  %25 = add nsw i64 %24, 1
  %26 = icmp slt i64 %21, %25
  br i1 %26, label %97, label %27

27:                                               ; preds = %20, %2
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = load i32, i32* @ungetjob, align 4
  %31 = call i64 @SCRIPTA_BA(%struct.TYPE_9__* %29, i32 %30)
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = load i32, i32* @reselect, align 4
  %37 = call i64 @SCRIPTA_BA(%struct.TYPE_9__* %35, i32 %36)
  %38 = add nsw i64 %37, 1
  %39 = icmp slt i64 %34, %38
  br i1 %39, label %97, label %40

40:                                               ; preds = %33, %27
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = load i32, i32* @sel_for_abort, align 4
  %44 = call i64 @SCRIPTB_BA(%struct.TYPE_9__* %42, i32 %43)
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = load i32, i32* @sel_for_abort_1, align 4
  %50 = call i64 @SCRIPTB_BA(%struct.TYPE_9__* %48, i32 %49)
  %51 = add nsw i64 %50, 1
  %52 = icmp slt i64 %47, %51
  br i1 %52, label %97, label %53

53:                                               ; preds = %46, %40
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = load i32, i32* @done, align 4
  %57 = call i64 @SCRIPTA_BA(%struct.TYPE_9__* %55, i32 %56)
  %58 = icmp sgt i64 %54, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = load i32, i32* @done_end, align 4
  %63 = call i64 @SCRIPTA_BA(%struct.TYPE_9__* %61, i32 %62)
  %64 = add nsw i64 %63, 1
  %65 = icmp slt i64 %60, %64
  br i1 %65, label %97, label %66

66:                                               ; preds = %59, %53
  %67 = load i32, i32* @nc_ctest3, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @CLF, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @OUTB(i32 %67, i32 %72)
  %74 = load i32, i32* @nc_stest3, align 4
  %75 = load i32, i32* @TE, align 4
  %76 = load i32, i32* @CSF, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @OUTB(i32 %74, i32 %77)
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %80 = icmp ne %struct.TYPE_10__* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %66
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %86 = load i32, i32* @complete_error, align 4
  %87 = call i64 @SCRIPTA_BA(%struct.TYPE_9__* %85, i32 %86)
  %88 = call i32 @OUTL_DSP(i64 %87)
  br label %96

89:                                               ; preds = %66
  %90 = load i32, i32* @nc_dsa, align 4
  %91 = call i32 @OUTL(i32 %90, i32 16777215)
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %93 = load i32, i32* @start, align 4
  %94 = call i64 @SCRIPTA_BA(%struct.TYPE_9__* %92, i32 %93)
  %95 = call i32 @OUTL_DSP(i64 %94)
  br label %96

96:                                               ; preds = %89, %81
  br label %98

97:                                               ; preds = %59, %46, %33, %20
  br label %99

98:                                               ; preds = %96
  br label %102

99:                                               ; preds = %97
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %101 = call i32 @sym_start_reset(%struct.TYPE_9__* %100)
  br label %102

102:                                              ; preds = %99, %98
  ret void
}

declare dso_local i64 @INL(i32) #1

declare dso_local %struct.TYPE_10__* @sym_ccb_from_dsa(%struct.TYPE_9__*, i64) #1

declare dso_local i64 @SCRIPTA_BA(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @SCRIPTB_BA(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @OUTB(i32, i32) #1

declare dso_local i32 @OUTL_DSP(i64) #1

declare dso_local i32 @OUTL(i32, i32) #1

declare dso_local i32 @sym_start_reset(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
