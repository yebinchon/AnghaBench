; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_register_aen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_register_aen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, %struct.mrsas_mfi_cmd*, i64, i8*, i32 }
%struct.mrsas_mfi_cmd = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.mrsas_dcmd_frame }
%struct.mrsas_dcmd_frame = type { i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_8__, i32, i64, i64, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i8* }
%struct.TYPE_8__ = type { i8**, i32 }
%union.mrsas_evt_class_locale = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }

@.str = private unnamed_addr constant [45 x i8] c"mrsas: Failed to abort previous AEN command\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MFI_MBOX_SIZE = common dso_local global i32 0, align 4
@MFI_CMD_DCMD = common dso_local global i32 0, align 4
@MFI_FRAME_DIR_READ = common dso_local global i32 0, align 4
@MR_DCMD_CTRL_EVENT_WAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Cannot issue AEN DCMD command.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mrsas_softc*, i8*, i8*)* @mrsas_register_aen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrsas_register_aen(%struct.mrsas_softc* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mrsas_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mrsas_mfi_cmd*, align 8
  %10 = alloca %struct.mrsas_dcmd_frame*, align 8
  %11 = alloca %union.mrsas_evt_class_locale, align 8
  %12 = alloca %union.mrsas_evt_class_locale, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast %union.mrsas_evt_class_locale* %11 to i8**
  store i8* %13, i8** %14, align 8
  %15 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %16 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %15, i32 0, i32 1
  %17 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %16, align 8
  %18 = icmp ne %struct.mrsas_mfi_cmd* %17, null
  br i1 %18, label %19, label %94

19:                                               ; preds = %3
  %20 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %21 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %20, i32 0, i32 1
  %22 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %21, align 8
  %23 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %22, i32 0, i32 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = bitcast %union.mrsas_evt_class_locale* %12 to i8**
  store i8* %30, i8** %31, align 8
  %32 = bitcast %union.mrsas_evt_class_locale* %12 to %struct.TYPE_6__*
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = bitcast %union.mrsas_evt_class_locale* %11 to %struct.TYPE_6__*
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %34, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %19
  %40 = bitcast %union.mrsas_evt_class_locale* %12 to %struct.TYPE_6__*
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = bitcast %union.mrsas_evt_class_locale* %11 to %struct.TYPE_6__*
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %42, %45
  %47 = bitcast %union.mrsas_evt_class_locale* %11 to %struct.TYPE_6__*
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = xor i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %188

53:                                               ; preds = %39, %19
  %54 = bitcast %union.mrsas_evt_class_locale* %12 to %struct.TYPE_6__*
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = bitcast %union.mrsas_evt_class_locale* %11 to %struct.TYPE_6__*
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = bitcast %union.mrsas_evt_class_locale* %12 to %struct.TYPE_6__*
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = bitcast %union.mrsas_evt_class_locale* %11 to %struct.TYPE_6__*
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %63, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %53
  %69 = bitcast %union.mrsas_evt_class_locale* %12 to %struct.TYPE_6__*
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = bitcast %union.mrsas_evt_class_locale* %11 to %struct.TYPE_6__*
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %68, %53
  %75 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %76 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %75, i32 0, i32 1
  %77 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %76, align 8
  %78 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %80 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %81 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %80, i32 0, i32 1
  %82 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %81, align 8
  %83 = call i32 @mrsas_issue_blocked_abort_cmd(%struct.mrsas_softc* %79, %struct.mrsas_mfi_cmd* %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %74
  %87 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %4, align 4
  br label %188

89:                                               ; preds = %74
  %90 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %91 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %90, i32 0, i32 1
  store %struct.mrsas_mfi_cmd* null, %struct.mrsas_mfi_cmd** %91, align 8
  br label %92

92:                                               ; preds = %89
  br label %93

93:                                               ; preds = %92
  br label %94

94:                                               ; preds = %93, %3
  %95 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %96 = call %struct.mrsas_mfi_cmd* @mrsas_get_mfi_cmd(%struct.mrsas_softc* %95)
  store %struct.mrsas_mfi_cmd* %96, %struct.mrsas_mfi_cmd** %9, align 8
  %97 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %9, align 8
  %98 = icmp ne %struct.mrsas_mfi_cmd* %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* @ENOMEM, align 4
  store i32 %100, i32* %4, align 4
  br label %188

101:                                              ; preds = %94
  %102 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %9, align 8
  %103 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %102, i32 0, i32 1
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  store %struct.mrsas_dcmd_frame* %105, %struct.mrsas_dcmd_frame** %10, align 8
  %106 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %107 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @memset(i32 %108, i32 0, i32 4)
  %110 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %10, align 8
  %111 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @MFI_MBOX_SIZE, align 4
  %115 = call i32 @memset(i32 %113, i32 0, i32 %114)
  %116 = load i32, i32* @MFI_CMD_DCMD, align 4
  %117 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %10, align 8
  %118 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %117, i32 0, i32 9
  store i32 %116, i32* %118, align 4
  %119 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %10, align 8
  %120 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %119, i32 0, i32 0
  store i32 0, i32* %120, align 8
  %121 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %10, align 8
  %122 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %121, i32 0, i32 1
  store i32 1, i32* %122, align 4
  %123 = load i32, i32* @MFI_FRAME_DIR_READ, align 4
  %124 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %10, align 8
  %125 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %124, i32 0, i32 8
  store i32 %123, i32* %125, align 8
  %126 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %10, align 8
  %127 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %126, i32 0, i32 7
  store i64 0, i64* %127, align 8
  %128 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %10, align 8
  %129 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %128, i32 0, i32 6
  store i64 0, i64* %129, align 8
  %130 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %10, align 8
  %131 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %130, i32 0, i32 2
  store i32 4, i32* %131, align 8
  %132 = load i32, i32* @MR_DCMD_CTRL_EVENT_WAIT, align 4
  %133 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %10, align 8
  %134 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 8
  %135 = load i8*, i8** %6, align 8
  %136 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %10, align 8
  %137 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i8**, i8*** %138, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 0
  store i8* %135, i8** %140, align 8
  %141 = load i8*, i8** %6, align 8
  %142 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %143 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %142, i32 0, i32 3
  store i8* %141, i8** %143, align 8
  %144 = bitcast %union.mrsas_evt_class_locale* %11 to i8**
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %10, align 8
  %147 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i8**, i8*** %148, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 1
  store i8* %145, i8** %150, align 8
  %151 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %152 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to i8*
  %155 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %10, align 8
  %156 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i64 0
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  store i8* %154, i8** %160, align 8
  %161 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %10, align 8
  %162 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i64 0
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  store i32 4, i32* %166, align 8
  %167 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %168 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %167, i32 0, i32 1
  %169 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %168, align 8
  %170 = icmp ne %struct.mrsas_mfi_cmd* %169, null
  br i1 %170, label %171, label %174

171:                                              ; preds = %101
  %172 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %9, align 8
  %173 = call i32 @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd* %172)
  store i32 0, i32* %4, align 4
  br label %188

174:                                              ; preds = %101
  %175 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %9, align 8
  %176 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %177 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %176, i32 0, i32 1
  store %struct.mrsas_mfi_cmd* %175, %struct.mrsas_mfi_cmd** %177, align 8
  %178 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %179 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %9, align 8
  %180 = call i64 @mrsas_issue_dcmd(%struct.mrsas_softc* %178, %struct.mrsas_mfi_cmd* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %174
  %183 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  %184 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @device_printf(i32 %185, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %188

187:                                              ; preds = %174
  store i32 0, i32* %4, align 4
  br label %188

188:                                              ; preds = %187, %182, %171, %99, %86, %52
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i32 @mrsas_issue_blocked_abort_cmd(%struct.mrsas_softc*, %struct.mrsas_mfi_cmd*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local %struct.mrsas_mfi_cmd* @mrsas_get_mfi_cmd(%struct.mrsas_softc*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd*) #1

declare dso_local i64 @mrsas_issue_dcmd(%struct.mrsas_softc*, %struct.mrsas_mfi_cmd*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
