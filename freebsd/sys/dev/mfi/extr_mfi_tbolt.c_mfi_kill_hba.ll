; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_tbolt.c_mfi_kill_hba.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_tbolt.c_mfi_kill_hba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32 }

@MFI_FLAGS_TBOLT = common dso_local global i32 0, align 4
@MFI_STOP_ADP = common dso_local global i32 0, align 4
@MFI_IDB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mfi_softc*)* @mfi_kill_hba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mfi_kill_hba(%struct.mfi_softc* %0) #0 {
  %2 = alloca %struct.mfi_softc*, align 8
  store %struct.mfi_softc* %0, %struct.mfi_softc** %2, align 8
  %3 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %4 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @MFI_FLAGS_TBOLT, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %11 = load i32, i32* @MFI_STOP_ADP, align 4
  %12 = call i32 @MFI_WRITE4(%struct.mfi_softc* %10, i32 0, i32 %11)
  br label %18

13:                                               ; preds = %1
  %14 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %15 = load i32, i32* @MFI_IDB, align 4
  %16 = load i32, i32* @MFI_STOP_ADP, align 4
  %17 = call i32 @MFI_WRITE4(%struct.mfi_softc* %14, i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %13, %9
  ret void
}

declare dso_local i32 @MFI_WRITE4(%struct.mfi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
