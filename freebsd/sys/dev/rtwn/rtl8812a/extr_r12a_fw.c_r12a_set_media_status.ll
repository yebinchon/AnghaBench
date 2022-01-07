; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_fw.c_r12a_set_media_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_fw.c_r12a_set_media_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.r12a_fw_cmd_msrrpt = type { i32, i64, i32 }

@RTWN_MACID_VALID = common dso_local global i32 0, align 4
@R12A_MSRRPT_B0_ASSOC = common dso_local global i32 0, align 4
@R12A_MSRRPT_B0_DISASSOC = common dso_local global i32 0, align 4
@R12A_CMD_MSR_RPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cannot change media status!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r12a_set_media_status(%struct.rtwn_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r12a_fw_cmd_msrrpt, align 8
  %6 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @RTWN_MACID_VALID, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @R12A_MSRRPT_B0_ASSOC, align 4
  %13 = getelementptr inbounds %struct.r12a_fw_cmd_msrrpt, %struct.r12a_fw_cmd_msrrpt* %5, i32 0, i32 2
  store i32 %12, i32* %13, align 8
  br label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @R12A_MSRRPT_B0_DISASSOC, align 4
  %16 = getelementptr inbounds %struct.r12a_fw_cmd_msrrpt, %struct.r12a_fw_cmd_msrrpt* %5, i32 0, i32 2
  store i32 %15, i32* %16, align 8
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @RTWN_MACID_VALID, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = getelementptr inbounds %struct.r12a_fw_cmd_msrrpt, %struct.r12a_fw_cmd_msrrpt* %5, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.r12a_fw_cmd_msrrpt, %struct.r12a_fw_cmd_msrrpt* %5, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %25 = load i32, i32* @R12A_CMD_MSR_RPT, align 4
  %26 = call i32 @r88e_fw_cmd(%struct.rtwn_softc* %24, i32 %25, %struct.r12a_fw_cmd_msrrpt* %5, i32 24)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %17
  %30 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %31 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %29, %17
  ret void
}

declare dso_local i32 @r88e_fw_cmd(%struct.rtwn_softc*, i32, %struct.r12a_fw_cmd_msrrpt*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
