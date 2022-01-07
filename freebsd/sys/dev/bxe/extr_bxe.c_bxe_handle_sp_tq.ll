; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_handle_sp_tq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_handle_sp_tq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i32, i32 }

@DBG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"---> SP TASK <---\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"dsb status 0x%04x\0A\00", align 1
@BXE_DEF_SB_ATT_IDX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"---> ATTN INTR <---\0A\00", align 1
@BXE_DEF_SB_IDX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"---> EQ INTR <---\0A\00", align 1
@USTORM_ID = common dso_local global i32 0, align 4
@IGU_INT_NOP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Got an unknown SP interrupt! (0x%04x)\0A\00", align 1
@ATTENTION_ID = common dso_local global i32 0, align 4
@IGU_INT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @bxe_handle_sp_tq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_handle_sp_tq(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.bxe_softc*
  store %struct.bxe_softc* %8, %struct.bxe_softc** %5, align 8
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %10 = load i32, i32* @DBG_SP, align 4
  %11 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %9, i32 %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %13 = call i32 @bxe_update_dsb_idx(%struct.bxe_softc* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %15 = load i32, i32* @DBG_SP, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %14, i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @BXE_DEF_SB_ATT_IDX, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %24 = load i32, i32* @DBG_SP, align 4
  %25 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %23, i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %27 = call i32 @bxe_attn_int(%struct.bxe_softc* %26)
  %28 = load i32, i32* @BXE_DEF_SB_ATT_IDX, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %22, %2
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @BXE_DEF_SB_IDX, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %32
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %39 = load i32, i32* @DBG_SP, align 4
  %40 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %38, i32 %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %41 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %42 = call i32 @bxe_eq_int(%struct.bxe_softc* %41)
  %43 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %44 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %45 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @USTORM_ID, align 4
  %48 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %49 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le16toh(i32 %50)
  %52 = load i32, i32* @IGU_INT_NOP, align 4
  %53 = call i32 @bxe_ack_sb(%struct.bxe_softc* %43, i32 %46, i32 %47, i32 %51, i32 %52, i32 1)
  %54 = load i32, i32* @BXE_DEF_SB_IDX, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %37, %32
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @__predict_false(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @BLOGE(%struct.bxe_softc* %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %62, %58
  %67 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %68 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %69 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ATTENTION_ID, align 4
  %72 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %73 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le16toh(i32 %74)
  %76 = load i32, i32* @IGU_INT_ENABLE, align 4
  %77 = call i32 @bxe_ack_sb(%struct.bxe_softc* %67, i32 %70, i32 %71, i32 %75, i32 %76, i32 1)
  ret void
}

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, ...) #1

declare dso_local i32 @bxe_update_dsb_idx(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_attn_int(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_eq_int(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_ack_sb(%struct.bxe_softc*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
