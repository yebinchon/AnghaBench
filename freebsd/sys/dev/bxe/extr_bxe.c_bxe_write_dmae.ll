; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_write_dmae.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_write_dmae.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.dmae_cmd = type { i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"DMAE not ready and length is %d\00", align 1
@wb_data = common dso_local global i32* null, align 8
@DMAE_SRC_PCI = common dso_local global i32 0, align 4
@DMAE_DST_GRC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"DMAE failed (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bxe_write_dmae(%struct.bxe_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dmae_cmd, align 8
  %10 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %12 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %48, label %15

15:                                               ; preds = %4
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp sle i32 %17, 4
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @DBASSERT(%struct.bxe_softc* %16, i32 %19, i8* %22)
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %25 = call i64 @CHIP_IS_E1(%struct.bxe_softc* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %15
  %28 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %31 = load i32*, i32** @wb_data, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @BXE_SP(%struct.bxe_softc* %30, i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @ecore_init_ind_wr(%struct.bxe_softc* %28, i32 %29, i32 %34, i32 %35)
  br label %47

37:                                               ; preds = %15
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %41 = load i32*, i32** @wb_data, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @BXE_SP(%struct.bxe_softc* %40, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @ecore_init_str_wr(%struct.bxe_softc* %38, i32 %39, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %37, %27
  br label %74

48:                                               ; preds = %4
  %49 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %50 = load i32, i32* @DMAE_SRC_PCI, align 4
  %51 = load i32, i32* @DMAE_DST_GRC, align 4
  %52 = call i32 @bxe_prep_dmae_with_comp(%struct.bxe_softc* %49, %struct.dmae_cmd* %9, i32 %50, i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @U64_LO(i32 %53)
  %55 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %9, i32 0, i32 4
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @U64_HI(i32 %56)
  %58 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %9, i32 0, i32 3
  store i32 %57, i32* %58, align 8
  %59 = load i32, i32* %7, align 4
  %60 = ashr i32 %59, 2
  %61 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %9, i32 0, i32 0
  store i32 %60, i32* %61, align 8
  %62 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %9, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %9, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %66 = call i32 @bxe_issue_dmae_with_comp(%struct.bxe_softc* %65, %struct.dmae_cmd* %9)
  store i32 %66, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %48
  %69 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = call i32 @bxe_panic(%struct.bxe_softc* %69, i8* %72)
  br label %74

74:                                               ; preds = %47, %68, %48
  ret void
}

declare dso_local i32 @DBASSERT(%struct.bxe_softc*, i32, i8*) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bxe_softc*) #1

declare dso_local i32 @ecore_init_ind_wr(%struct.bxe_softc*, i32, i32, i32) #1

declare dso_local i32 @BXE_SP(%struct.bxe_softc*, i32) #1

declare dso_local i32 @ecore_init_str_wr(%struct.bxe_softc*, i32, i32, i32) #1

declare dso_local i32 @bxe_prep_dmae_with_comp(%struct.bxe_softc*, %struct.dmae_cmd*, i32, i32) #1

declare dso_local i32 @U64_LO(i32) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i32 @bxe_issue_dmae_with_comp(%struct.bxe_softc*, %struct.dmae_cmd*) #1

declare dso_local i32 @bxe_panic(%struct.bxe_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
