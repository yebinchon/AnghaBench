; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_mapcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_mapcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_command = type { i32, i32, i32*, i32, i32, i32, i32, %struct.amr_softc* }
%struct.amr_softc = type { i64 (%struct.amr_command.0*)*, i32, i32, i32 }
%struct.amr_command.0 = type opaque

@AMR_CMD_CCB = common dso_local global i32 0, align 4
@amr_setup_ccb = common dso_local global i32* null, align 8
@amr_setup_data = common dso_local global i32* null, align 8
@AMR_CMD_MAPPED = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i64 0, align 8
@AMR_STATE_QUEUE_FRZN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amr_command*)* @amr_mapcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amr_mapcmd(%struct.amr_command* %0) #0 {
  %2 = alloca %struct.amr_command*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.amr_softc*, align 8
  store %struct.amr_command* %0, %struct.amr_command** %2, align 8
  %5 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %6 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %5, i32 0, i32 7
  %7 = load %struct.amr_softc*, %struct.amr_softc** %6, align 8
  store %struct.amr_softc* %7, %struct.amr_softc** %4, align 8
  %8 = call i32 @debug_called(i32 3)
  %9 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %10 = call i64 @AC_IS_SG64(%struct.amr_command* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %14 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %17 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %19 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %22 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  br label %34

23:                                               ; preds = %1
  %24 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %25 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %28 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %30 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %33 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %23, %12
  %35 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %36 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @AMR_CMD_CCB, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32*, i32** @amr_setup_ccb, align 8
  store i32* %42, i32** %3, align 8
  br label %45

43:                                               ; preds = %34
  %44 = load i32*, i32** @amr_setup_data, align 8
  store i32* %44, i32** %3, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %47 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @AMR_CMD_MAPPED, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %82

52:                                               ; preds = %45
  %53 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %54 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %82

57:                                               ; preds = %52
  %58 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %59 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %62 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %65 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %68 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %3, align 8
  %71 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %72 = call i64 @bus_dmamap_load(i32 %60, i32 %63, i32* %66, i32 %69, i32* %70, %struct.amr_command* %71, i32 0)
  %73 = load i64, i64* @EINPROGRESS, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %57
  %76 = load i32, i32* @AMR_STATE_QUEUE_FRZN, align 4
  %77 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %78 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %75, %57
  br label %97

82:                                               ; preds = %52, %45
  %83 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %84 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %83, i32 0, i32 0
  %85 = load i64 (%struct.amr_command.0*)*, i64 (%struct.amr_command.0*)** %84, align 8
  %86 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %87 = bitcast %struct.amr_command* %86 to %struct.amr_command.0*
  %88 = call i64 %85(%struct.amr_command.0* %87)
  %89 = load i64, i64* @EBUSY, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %82
  %92 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %93 = call i32 @amr_freeslot(%struct.amr_command* %92)
  %94 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %95 = call i32 @amr_requeue_ready(%struct.amr_command* %94)
  br label %96

96:                                               ; preds = %91, %82
  br label %97

97:                                               ; preds = %96, %81
  ret i32 0
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i64 @AC_IS_SG64(%struct.amr_command*) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i32*, i32, i32*, %struct.amr_command*, i32) #1

declare dso_local i32 @amr_freeslot(%struct.amr_command*) #1

declare dso_local i32 @amr_requeue_ready(%struct.amr_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
