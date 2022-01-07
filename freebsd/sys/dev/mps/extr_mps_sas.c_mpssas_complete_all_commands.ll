; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_sas.c_mpssas_complete_all_commands.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_sas.c_mpssas_complete_all_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { i32, i64, %struct.mps_command*, i32 }
%struct.mps_command = type { i64, i32, i32, i32 (%struct.mps_softc*, %struct.mps_command*)*, i32*, i32* }

@MA_OWNED = common dso_local global i32 0, align 4
@MPS_CM_STATE_FREE = common dso_local global i64 0, align 8
@MPS_CM_STATE_BUSY = common dso_local global i64 0, align 8
@MPS_CM_FLAGS_SATA_ID_TIMEOUT = common dso_local global i32 0, align 4
@M_MPT2 = common dso_local global i32 0, align 4
@MPS_CM_FLAGS_POLLED = common dso_local global i32 0, align 4
@MPS_CM_FLAGS_COMPLETE = common dso_local global i32 0, align 4
@MPS_RECOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"completing cm %p state %x ccb %p for diag reset\0A\00", align 1
@MPS_CM_FLAGS_WAKEUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"waking up cm %p state %x ccb %p for diag reset\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"cm %p state %x flags 0x%x ccb %p during diag reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mps_softc*)* @mpssas_complete_all_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpssas_complete_all_commands(%struct.mps_softc* %0) #0 {
  %2 = alloca %struct.mps_softc*, align 8
  %3 = alloca %struct.mps_command*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mps_softc* %0, %struct.mps_softc** %2, align 8
  %6 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %7 = call i32 @MPS_FUNCTRACE(%struct.mps_softc* %6)
  %8 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %9 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %8, i32 0, i32 3
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @mtx_assert(i32* %9, i32 %10)
  store i32 1, i32* %4, align 4
  br label %12

12:                                               ; preds = %135, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %15 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %138

18:                                               ; preds = %12
  %19 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %20 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %19, i32 0, i32 2
  %21 = load %struct.mps_command*, %struct.mps_command** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %21, i64 %23
  store %struct.mps_command* %24, %struct.mps_command** %3, align 8
  %25 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %26 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MPS_CM_STATE_FREE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %135

31:                                               ; preds = %18
  %32 = load i64, i64* @MPS_CM_STATE_BUSY, align 8
  %33 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %34 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %36 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %35, i32 0, i32 5
  store i32* null, i32** %36, align 8
  store i32 0, i32* %5, align 4
  %37 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %38 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MPS_CM_FLAGS_SATA_ID_TIMEOUT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %31
  %44 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %45 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @MPASS(i32* %46)
  %48 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %49 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @M_MPT2, align 4
  %52 = call i32 @free(i32* %50, i32 %51)
  %53 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %54 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %53, i32 0, i32 4
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %43, %31
  %56 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %57 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MPS_CM_FLAGS_POLLED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load i32, i32* @MPS_CM_FLAGS_COMPLETE, align 4
  %64 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %65 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %62, %55
  %69 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %70 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %69, i32 0, i32 3
  %71 = load i32 (%struct.mps_softc*, %struct.mps_command*)*, i32 (%struct.mps_softc*, %struct.mps_command*)** %70, align 8
  %72 = icmp ne i32 (%struct.mps_softc*, %struct.mps_command*)* %71, null
  br i1 %72, label %73, label %90

73:                                               ; preds = %68
  %74 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %75 = load i32, i32* @MPS_RECOVERY, align 4
  %76 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %77 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %78 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %81 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (%struct.mps_command*, i32, i8*, %struct.mps_command*, i64, i32, ...) @mpssas_log_command(%struct.mps_command* %74, i32 %75, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.mps_command* %76, i64 %79, i32 %82)
  %84 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %85 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %84, i32 0, i32 3
  %86 = load i32 (%struct.mps_softc*, %struct.mps_command*)*, i32 (%struct.mps_softc*, %struct.mps_command*)** %85, align 8
  %87 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %88 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %89 = call i32 %86(%struct.mps_softc* %87, %struct.mps_command* %88)
  store i32 1, i32* %5, align 4
  br label %111

90:                                               ; preds = %68
  %91 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %92 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @MPS_CM_FLAGS_WAKEUP, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %90
  %98 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %99 = load i32, i32* @MPS_RECOVERY, align 4
  %100 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %101 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %102 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %105 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (%struct.mps_command*, i32, i8*, %struct.mps_command*, i64, i32, ...) @mpssas_log_command(%struct.mps_command* %98, i32 %99, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), %struct.mps_command* %100, i64 %103, i32 %106)
  %108 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %109 = call i32 @wakeup(%struct.mps_command* %108)
  store i32 1, i32* %5, align 4
  br label %110

110:                                              ; preds = %97, %90
  br label %111

111:                                              ; preds = %110, %73
  %112 = load i32, i32* %5, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %111
  %115 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %116 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @MPS_CM_STATE_FREE, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %134

120:                                              ; preds = %114
  %121 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %122 = load i32, i32* @MPS_RECOVERY, align 4
  %123 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %124 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %125 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %128 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %131 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (%struct.mps_command*, i32, i8*, %struct.mps_command*, i64, i32, ...) @mpssas_log_command(%struct.mps_command* %121, i32 %122, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), %struct.mps_command* %123, i64 %126, i32 %129, i32 %132)
  br label %134

134:                                              ; preds = %120, %114, %111
  br label %135

135:                                              ; preds = %134, %30
  %136 = load i32, i32* %4, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %4, align 4
  br label %12

138:                                              ; preds = %12
  %139 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %140 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %139, i32 0, i32 1
  store i64 0, i64* %140, align 8
  ret void
}

declare dso_local i32 @MPS_FUNCTRACE(%struct.mps_softc*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @MPASS(i32*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @mpssas_log_command(%struct.mps_command*, i32, i8*, %struct.mps_command*, i64, i32, ...) #1

declare dso_local i32 @wakeup(%struct.mps_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
