; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_set_mac_in_nig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_set_mac_in_nig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@NIG_REG_LLH1_FUNC_MEM = common dso_local global i32 0, align 4
@NIG_REG_LLH0_FUNC_MEM = common dso_local global i32 0, align 4
@ECORE_LLH_CAM_MAX_PF_LINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Going to %s LLH configuration at entry %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@NIG_REG_LLH1_FUNC_MEM_ENABLE = common dso_local global i64 0, align 8
@NIG_REG_LLH0_FUNC_MEM_ENABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_set_mac_in_nig(%struct.bxe_softc* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %12 = call i64 @ECORE_PORT_ID(%struct.bxe_softc* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @NIG_REG_LLH1_FUNC_MEM, align 4
  br label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @NIG_REG_LLH0_FUNC_MEM, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %10, align 4
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %21 = call i32 @ECORE_IS_MF_SI_MODE(%struct.bxe_softc* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %25 = call i32 @IS_MF_AFEX(%struct.bxe_softc* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %103

28:                                               ; preds = %23, %18
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @ECORE_LLH_CAM_MAX_PF_LINE, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %103

33:                                               ; preds = %28
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @ECORE_MSG(%struct.bxe_softc* %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %38, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %86

43:                                               ; preds = %33
  %44 = load i32, i32* %8, align 4
  %45 = mul nsw i32 8, %44
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %10, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl i32 %51, 24
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 3
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl i32 %56, 16
  %58 = or i32 %52, %57
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 4
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl i32 %62, 8
  %64 = or i32 %58, %63
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 5
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = or i32 %64, %68
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %69, i32* %70, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = shl i32 %74, 8
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = or i32 %75, %79
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %80, i32* %81, align 4
  %82 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %83 = load i32, i32* %10, align 4
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %85 = call i32 @ECORE_REG_WR_DMAE_LEN(%struct.bxe_softc* %82, i32 %83, i32* %84, i32 2)
  br label %86

86:                                               ; preds = %43, %33
  %87 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %88 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %89 = call i64 @ECORE_PORT_ID(%struct.bxe_softc* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i64, i64* @NIG_REG_LLH1_FUNC_MEM_ENABLE, align 8
  br label %95

93:                                               ; preds = %86
  %94 = load i64, i64* @NIG_REG_LLH0_FUNC_MEM_ENABLE, align 8
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i64 [ %92, %91 ], [ %94, %93 ]
  %97 = load i32, i32* %8, align 4
  %98 = mul nsw i32 4, %97
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %96, %99
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @REG_WR(%struct.bxe_softc* %87, i64 %100, i32 %101)
  br label %103

103:                                              ; preds = %95, %32, %27
  ret void
}

declare dso_local i64 @ECORE_PORT_ID(%struct.bxe_softc*) #1

declare dso_local i32 @ECORE_IS_MF_SI_MODE(%struct.bxe_softc*) #1

declare dso_local i32 @IS_MF_AFEX(%struct.bxe_softc*) #1

declare dso_local i32 @ECORE_MSG(%struct.bxe_softc*, i8*, i8*, i32) #1

declare dso_local i32 @ECORE_REG_WR_DMAE_LEN(%struct.bxe_softc*, i32, i32*, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
