; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_tbolt.c_mfi_process_fw_state_chg_isr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_tbolt.c_mfi_process_fw_state_chg_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32, i32, i32, i32, i32, %struct.TYPE_3__*, %struct.TYPE_3__*, i32 (%struct.mfi_softc*)*, i64, i64, i32 (%struct.mfi_softc*)*, i32 (%struct.mfi_softc*)* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"First stage of FW reset initiated...\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"First stage of reset complete, second stage initiated...\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Second stage of FW reset initiated...\0A\00", align 1
@MFI_RSR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"controller is not in ready state\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to initialise MFI queue\0A\00", align 1
@MFI_RFPI = common dso_local global i32 0, align 4
@MFI_RPI = common dso_local global i32 0, align 4
@M_MFIBUF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"second stage of reset complete, FW is ready now.\0A\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"second stage of reset never completed, hba was marked offline.\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"mfi_process_fw_state_chg_isr called with unhandled value:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mfi_process_fw_state_chg_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mfi_process_fw_state_chg_isr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mfi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.mfi_softc*
  store %struct.mfi_softc* %8, %struct.mfi_softc** %3, align 8
  %9 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %10 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %171

13:                                               ; preds = %1
  %14 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %15 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i32, i8*, ...) @device_printf(i32 %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %19 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %18, i32 0, i32 11
  %20 = load i32 (%struct.mfi_softc*)*, i32 (%struct.mfi_softc*)** %19, align 8
  %21 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %22 = call i32 %20(%struct.mfi_softc* %21)
  %23 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %24 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %23, i32 0, i32 7
  %25 = load i32 (%struct.mfi_softc*)*, i32 (%struct.mfi_softc*)** %24, align 8
  %26 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %27 = call i32 %25(%struct.mfi_softc* %26)
  %28 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %29 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, ...) @device_printf(i32 %30, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %33 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %32, i32 0, i32 0
  store i32 2, i32* %33, align 8
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %39, %13
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 20000
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = call i32 @DELAY(i32 1000)
  br label %39

39:                                               ; preds = %37
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %34

42:                                               ; preds = %34
  %43 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %44 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @device_printf(i32 %45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %53, %42
  %48 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %49 = load i32, i32* @MFI_RSR, align 4
  %50 = call i32 @MFI_READ4(%struct.mfi_softc* %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = and i32 %50, 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %47

54:                                               ; preds = %47
  %55 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %56 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %55, i32 0, i32 10
  %57 = load i32 (%struct.mfi_softc*)*, i32 (%struct.mfi_softc*)** %56, align 8
  %58 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %59 = call i32 %57(%struct.mfi_softc* %58)
  %60 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %61 = call i64 @mfi_transition_firmware(%struct.mfi_softc* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %54
  %64 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %65 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i8*, ...) @device_printf(i32 %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %69 = call i32 @mfi_kill_hba(%struct.mfi_softc* %68)
  %70 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %71 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  br label %179

72:                                               ; preds = %54
  %73 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %74 = call i32 @mfi_tbolt_init_MFI_queue(%struct.mfi_softc* %73)
  store i32 %74, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %78 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, i8*, ...) @device_printf(i32 %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %81 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %82 = call i32 @mfi_kill_hba(%struct.mfi_softc* %81)
  %83 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %84 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  br label %179

85:                                               ; preds = %72
  %86 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %87 = load i32, i32* @MFI_RFPI, align 4
  %88 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %89 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %88, i32 0, i32 9
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %90, 1
  %92 = call i32 @MFI_WRITE4(%struct.mfi_softc* %86, i32 %87, i64 %91)
  %93 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %94 = load i32, i32* @MFI_RPI, align 4
  %95 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %96 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %95, i32 0, i32 8
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @MFI_WRITE4(%struct.mfi_softc* %93, i32 %94, i64 %97)
  %99 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %100 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %99, i32 0, i32 7
  %101 = load i32 (%struct.mfi_softc*)*, i32 (%struct.mfi_softc*)** %100, align 8
  %102 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %103 = call i32 %101(%struct.mfi_softc* %102)
  %104 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %105 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %104, i32 0, i32 0
  store i32 0, i32* %105, align 8
  %106 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %107 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %106, i32 0, i32 6
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = icmp ne %struct.TYPE_3__* %108, null
  br i1 %109, label %110, label %128

110:                                              ; preds = %85
  %111 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %112 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %111, i32 0, i32 6
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @M_MFIBUF, align 4
  %117 = call i32 @free(i32 %115, i32 %116)
  %118 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %119 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %118, i32 0, i32 6
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = call i32 @mfi_remove_busy(%struct.TYPE_3__* %120)
  %122 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %123 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %122, i32 0, i32 6
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = call i32 @mfi_release_command(%struct.TYPE_3__* %124)
  %126 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %127 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %126, i32 0, i32 6
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %127, align 8
  br label %128

128:                                              ; preds = %110, %85
  %129 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %130 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %129, i32 0, i32 5
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = icmp ne %struct.TYPE_3__* %131, null
  br i1 %132, label %133, label %144

133:                                              ; preds = %128
  %134 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %135 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %134, i32 0, i32 5
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = call i32 @mfi_remove_busy(%struct.TYPE_3__* %136)
  %138 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %139 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %138, i32 0, i32 5
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = call i32 @mfi_release_command(%struct.TYPE_3__* %140)
  %142 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %143 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %142, i32 0, i32 5
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %143, align 8
  br label %144

144:                                              ; preds = %133, %128
  %145 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %146 = call i32 @mfi_issue_pending_cmds_again(%struct.mfi_softc* %145)
  %147 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %148 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %165, label %151

151:                                              ; preds = %144
  %152 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %153 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %154 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @mfi_aen_setup(%struct.mfi_softc* %152, i32 %155)
  %157 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %158 = call i32 @mfi_tbolt_sync_map_info(%struct.mfi_softc* %157)
  %159 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %160 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %159, i32 0, i32 2
  store i32 1, i32* %160, align 8
  %161 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %162 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i32, i8*, ...) @device_printf(i32 %163, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  br label %170

165:                                              ; preds = %144
  %166 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %167 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i32, i8*, ...) @device_printf(i32 %168, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0))
  br label %170

170:                                              ; preds = %165, %151
  br label %179

171:                                              ; preds = %1
  %172 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %173 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %176 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 (i32, i8*, ...) @device_printf(i32 %174, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 %177)
  br label %179

179:                                              ; preds = %63, %76, %171, %170
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @MFI_READ4(%struct.mfi_softc*, i32) #1

declare dso_local i64 @mfi_transition_firmware(%struct.mfi_softc*) #1

declare dso_local i32 @mfi_kill_hba(%struct.mfi_softc*) #1

declare dso_local i32 @mfi_tbolt_init_MFI_queue(%struct.mfi_softc*) #1

declare dso_local i32 @MFI_WRITE4(%struct.mfi_softc*, i32, i64) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @mfi_remove_busy(%struct.TYPE_3__*) #1

declare dso_local i32 @mfi_release_command(%struct.TYPE_3__*) #1

declare dso_local i32 @mfi_issue_pending_cmds_again(%struct.mfi_softc*) #1

declare dso_local i32 @mfi_aen_setup(%struct.mfi_softc*, i32) #1

declare dso_local i32 @mfi_tbolt_sync_map_info(%struct.mfi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
