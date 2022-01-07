; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_read_dmae.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_read_dmae.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.dmae_cmd = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [23 x i8] c"DMAE read length is %d\00", align 1
@wb_data = common dso_local global i32* null, align 8
@DMAE_SRC_GRC = common dso_local global i32 0, align 4
@DMAE_DST_PCI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"DMAE failed (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bxe_read_dmae(%struct.bxe_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dmae_cmd, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp sle i32 %12, 4
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @DBASSERT(%struct.bxe_softc* %11, i32 %14, i8* %17)
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %20 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %61, label %23

23:                                               ; preds = %3
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %25 = load i32*, i32** @wb_data, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32* @BXE_SP(%struct.bxe_softc* %24, i32 %27)
  store i32* %28, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %57, %23
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %29
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %35 = call i64 @CHIP_IS_E1(%struct.bxe_softc* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %9, align 4
  %41 = mul nsw i32 %40, 4
  %42 = add nsw i32 %39, %41
  %43 = call i32 @bxe_reg_rd_ind(%struct.bxe_softc* %38, i32 %42)
  br label %51

44:                                               ; preds = %33
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %9, align 4
  %48 = mul nsw i32 %47, 4
  %49 = add nsw i32 %46, %48
  %50 = call i32 @REG_RD(%struct.bxe_softc* %45, i32 %49)
  br label %51

51:                                               ; preds = %44, %37
  %52 = phi i32 [ %43, %37 ], [ %50, %44 ]
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %29

60:                                               ; preds = %29
  br label %91

61:                                               ; preds = %3
  %62 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %63 = load i32, i32* @DMAE_SRC_GRC, align 4
  %64 = load i32, i32* @DMAE_DST_PCI, align 4
  %65 = call i32 @bxe_prep_dmae_with_comp(%struct.bxe_softc* %62, %struct.dmae_cmd* %7, i32 %63, i32 %64)
  %66 = load i32, i32* %5, align 4
  %67 = ashr i32 %66, 2
  %68 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %7, i32 0, i32 0
  store i32 %67, i32* %68, align 8
  %69 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %7, i32 0, i32 4
  store i64 0, i64* %69, align 8
  %70 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %71 = load i32*, i32** @wb_data, align 8
  %72 = call i32 @BXE_SP_MAPPING(%struct.bxe_softc* %70, i32* %71)
  %73 = call i32 @U64_LO(i32 %72)
  %74 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %7, i32 0, i32 3
  store i32 %73, i32* %74, align 4
  %75 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %76 = load i32*, i32** @wb_data, align 8
  %77 = call i32 @BXE_SP_MAPPING(%struct.bxe_softc* %75, i32* %76)
  %78 = call i32 @U64_HI(i32 %77)
  %79 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %7, i32 0, i32 2
  store i32 %78, i32* %79, align 8
  %80 = load i32, i32* %6, align 4
  %81 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %7, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  %82 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %83 = call i32 @bxe_issue_dmae_with_comp(%struct.bxe_softc* %82, %struct.dmae_cmd* %7)
  store i32 %83, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %61
  %86 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  %90 = call i32 @bxe_panic(%struct.bxe_softc* %86, i8* %89)
  br label %91

91:                                               ; preds = %60, %85, %61
  ret void
}

declare dso_local i32 @DBASSERT(%struct.bxe_softc*, i32, i8*) #1

declare dso_local i32* @BXE_SP(%struct.bxe_softc*, i32) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_reg_rd_ind(%struct.bxe_softc*, i32) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @bxe_prep_dmae_with_comp(%struct.bxe_softc*, %struct.dmae_cmd*, i32, i32) #1

declare dso_local i32 @U64_LO(i32) #1

declare dso_local i32 @BXE_SP_MAPPING(%struct.bxe_softc*, i32*) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i32 @bxe_issue_dmae_with_comp(%struct.bxe_softc*, %struct.dmae_cmd*) #1

declare dso_local i32 @bxe_panic(%struct.bxe_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
