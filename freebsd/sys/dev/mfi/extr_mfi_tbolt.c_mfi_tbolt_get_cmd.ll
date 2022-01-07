; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_tbolt.c_mfi_tbolt_get_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_tbolt.c_mfi_tbolt_get_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_cmd_tbolt = type { i32, i32, i64, i64 }
%struct.mfi_softc = type { i32, i32 }
%struct.mfi_command = type { i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@MEGASAS_MAX_SZ_CHAIN_FRAME = common dso_local global i32 0, align 4
@MEGASAS_THUNDERBOLT_NEW_MSG_SIZE = common dso_local global i32 0, align 4
@MFI_CMD_TBOLT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mfi_cmd_tbolt* @mfi_tbolt_get_cmd(%struct.mfi_softc* %0, %struct.mfi_command* %1) #0 {
  %3 = alloca %struct.mfi_cmd_tbolt*, align 8
  %4 = alloca %struct.mfi_softc*, align 8
  %5 = alloca %struct.mfi_command*, align 8
  %6 = alloca %struct.mfi_cmd_tbolt*, align 8
  store %struct.mfi_softc* %0, %struct.mfi_softc** %4, align 8
  store %struct.mfi_command* %1, %struct.mfi_command** %5, align 8
  store %struct.mfi_cmd_tbolt* null, %struct.mfi_cmd_tbolt** %6, align 8
  %7 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %8 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %7, i32 0, i32 1
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @mtx_assert(i32* %8, i32 %9)
  %11 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %12 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %11, i32 0, i32 0
  %13 = call %struct.mfi_cmd_tbolt* @TAILQ_FIRST(i32* %12)
  store %struct.mfi_cmd_tbolt* %13, %struct.mfi_cmd_tbolt** %6, align 8
  %14 = icmp eq %struct.mfi_cmd_tbolt* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.mfi_cmd_tbolt* null, %struct.mfi_cmd_tbolt** %3, align 8
  br label %50

16:                                               ; preds = %2
  %17 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %18 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %17, i32 0, i32 0
  %19 = load %struct.mfi_cmd_tbolt*, %struct.mfi_cmd_tbolt** %6, align 8
  %20 = load i32, i32* @next, align 4
  %21 = call i32 @TAILQ_REMOVE(i32* %18, %struct.mfi_cmd_tbolt* %19, i32 %20)
  %22 = load %struct.mfi_cmd_tbolt*, %struct.mfi_cmd_tbolt** %6, align 8
  %23 = getelementptr inbounds %struct.mfi_cmd_tbolt, %struct.mfi_cmd_tbolt* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = load i32, i32* @MEGASAS_MAX_SZ_CHAIN_FRAME, align 4
  %27 = call i32 @memset(i32* %25, i32 0, i32 %26)
  %28 = load %struct.mfi_cmd_tbolt*, %struct.mfi_cmd_tbolt** %6, align 8
  %29 = getelementptr inbounds %struct.mfi_cmd_tbolt, %struct.mfi_cmd_tbolt* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = load i32, i32* @MEGASAS_THUNDERBOLT_NEW_MSG_SIZE, align 4
  %33 = call i32 @memset(i32* %31, i32 0, i32 %32)
  %34 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %35 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mfi_cmd_tbolt*, %struct.mfi_cmd_tbolt** %6, align 8
  %38 = getelementptr inbounds %struct.mfi_cmd_tbolt, %struct.mfi_cmd_tbolt* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.mfi_cmd_tbolt*, %struct.mfi_cmd_tbolt** %6, align 8
  %40 = getelementptr inbounds %struct.mfi_cmd_tbolt, %struct.mfi_cmd_tbolt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %43 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @MFI_CMD_TBOLT, align 4
  %45 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %46 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.mfi_cmd_tbolt*, %struct.mfi_cmd_tbolt** %6, align 8
  store %struct.mfi_cmd_tbolt* %49, %struct.mfi_cmd_tbolt** %3, align 8
  br label %50

50:                                               ; preds = %16, %15
  %51 = load %struct.mfi_cmd_tbolt*, %struct.mfi_cmd_tbolt** %3, align 8
  ret %struct.mfi_cmd_tbolt* %51
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.mfi_cmd_tbolt* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.mfi_cmd_tbolt*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
