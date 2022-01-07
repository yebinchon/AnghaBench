; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_issue_dmae_with_comp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_issue_dmae_with_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i64 }
%struct.dmae_cmd = type { i32 }

@DMAE_PCI_ERR_FLAG = common dso_local global i32 0, align 4
@DMAE_COMP_VAL = common dso_local global i32 0, align 4
@BXE_RECOVERY_DONE = common dso_local global i64 0, align 8
@BXE_RECOVERY_NIC_LOADING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"DMAE timeout! *wb_comp 0x%x recovery_state 0x%x\0A\00", align 1
@DMAE_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"DMAE PCI error! *wb_comp 0x%x recovery_state 0x%x\0A\00", align 1
@DMAE_PCI_ERROR = common dso_local global i32 0, align 4
@wb_comp = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.dmae_cmd*)* @bxe_issue_dmae_with_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_issue_dmae_with_comp(%struct.bxe_softc* %0, %struct.dmae_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca %struct.dmae_cmd*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store %struct.dmae_cmd* %1, %struct.dmae_cmd** %5, align 8
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = ptrtoint i32* %9 to i32
  %11 = call i32* @BXE_SP(%struct.bxe_softc* %8, i32 %10)
  store i32* %11, i32** %6, align 8
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %13 = call i64 @CHIP_REV_IS_SLOW(%struct.bxe_softc* %12)
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 400000, i32 4000
  store i32 %16, i32* %7, align 4
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %18 = call i32 @BXE_DMAE_LOCK(%struct.bxe_softc* %17)
  %19 = load i32*, i32** %6, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %21 = load %struct.dmae_cmd*, %struct.dmae_cmd** %5, align 8
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %23 = call i32 @INIT_DMAE_C(%struct.bxe_softc* %22)
  %24 = call i32 @bxe_post_dmae(%struct.bxe_softc* %20, %struct.dmae_cmd* %21, i32 %23)
  %25 = call i32 @DELAY(i32 5)
  br label %26

26:                                               ; preds = %60, %2
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DMAE_PCI_ERR_FLAG, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = load i32, i32* @DMAE_COMP_VAL, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %64

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %39 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BXE_RECOVERY_DONE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %37
  %44 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %45 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @BXE_RECOVERY_NIC_LOADING, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %43, %34
  %50 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %54 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @BLOGE(%struct.bxe_softc* %50, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %52, i64 %55)
  %57 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %58 = call i32 @BXE_DMAE_UNLOCK(%struct.bxe_softc* %57)
  %59 = load i32, i32* @DMAE_TIMEOUT, align 4
  store i32 %59, i32* %3, align 4
  br label %84

60:                                               ; preds = %43, %37
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %7, align 4
  %63 = call i32 @DELAY(i32 50)
  br label %26

64:                                               ; preds = %26
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @DMAE_PCI_ERR_FLAG, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %64
  %71 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %75 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @BLOGE(%struct.bxe_softc* %71, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %73, i64 %76)
  %78 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %79 = call i32 @BXE_DMAE_UNLOCK(%struct.bxe_softc* %78)
  %80 = load i32, i32* @DMAE_PCI_ERROR, align 4
  store i32 %80, i32* %3, align 4
  br label %84

81:                                               ; preds = %64
  %82 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %83 = call i32 @BXE_DMAE_UNLOCK(%struct.bxe_softc* %82)
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %81, %70, %49
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32* @BXE_SP(%struct.bxe_softc*, i32) #1

declare dso_local i64 @CHIP_REV_IS_SLOW(%struct.bxe_softc*) #1

declare dso_local i32 @BXE_DMAE_LOCK(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_post_dmae(%struct.bxe_softc*, %struct.dmae_cmd*, i32) #1

declare dso_local i32 @INIT_DMAE_C(%struct.bxe_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32, i64) #1

declare dso_local i32 @BXE_DMAE_UNLOCK(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
