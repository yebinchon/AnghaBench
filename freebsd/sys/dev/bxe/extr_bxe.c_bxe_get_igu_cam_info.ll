; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_get_igu_cam_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_get_igu_cam_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i32, i32 }

@FP_SB_MAX_E1x = common dso_local global i32 0, align 4
@E1HVN_MAX = common dso_local global i32 0, align 4
@IGU_REG_MAPPING_MEMORY_SIZE = common dso_local global i32 0, align 4
@IGU_REG_MAPPING_MEMORY = common dso_local global i64 0, align 8
@IGU_REG_MAPPING_MEMORY_VALID = common dso_local global i32 0, align 4
@IGU_FID_ENCODE_IS_PF = common dso_local global i32 0, align 4
@IGU_FID_PF_NUM_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"CAM configuration error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_get_igu_cam_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_get_igu_cam_info(%struct.bxe_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %11 = call i32 @SC_FUNC(%struct.bxe_softc* %10)
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %13 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %12, i32 0, i32 0
  store i32 255, i32* %13, align 4
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %15 = call i64 @CHIP_INT_MODE_IS_BC(%struct.bxe_softc* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %51

17:                                               ; preds = %1
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %19 = call i32 @SC_VN(%struct.bxe_softc* %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %21 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %24 = call i64 @CHIP_IS_MODE_4_PORT(%struct.bxe_softc* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  br label %30

28:                                               ; preds = %17
  %29 = load i32, i32* %9, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = load i32, i32* @FP_SB_MAX_E1x, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %35 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @E1HVN_MAX, align 4
  %37 = load i32, i32* @FP_SB_MAX_E1x, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %40 = call i64 @CHIP_IS_MODE_4_PORT(%struct.bxe_softc* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load i32, i32* %4, align 4
  br label %46

44:                                               ; preds = %30
  %45 = load i32, i32* %9, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = add nsw i32 %38, %47
  %49 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %50 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %2, align 4
  br label %122

51:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %105, %51
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @IGU_REG_MAPPING_MEMORY_SIZE, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %108

56:                                               ; preds = %52
  %57 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %58 = load i64, i64* @IGU_REG_MAPPING_MEMORY, align 8
  %59 = load i32, i32* %5, align 4
  %60 = mul nsw i32 %59, 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %58, %61
  %63 = call i32 @REG_RD(%struct.bxe_softc* %57, i64 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @IGU_REG_MAPPING_MEMORY_VALID, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %56
  br label %105

69:                                               ; preds = %56
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @IGU_FID(i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @IGU_FID_ENCODE_IS_PF, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %104

76:                                               ; preds = %69
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @IGU_FID_PF_NUM_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %105

83:                                               ; preds = %76
  %84 = load i32, i32* %6, align 4
  %85 = call i64 @IGU_VEC(i32 %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %90 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  br label %103

91:                                               ; preds = %83
  %92 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %93 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 255
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %99 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %96, %91
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %100, %87
  br label %104

104:                                              ; preds = %103, %69
  br label %105

105:                                              ; preds = %104, %82, %68
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %52

108:                                              ; preds = %52
  %109 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %110 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @min(i32 %111, i32 %112)
  %114 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %115 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %108
  %119 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %120 = call i32 @BLOGE(%struct.bxe_softc* %119, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %122

121:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %118, %46
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @SC_FUNC(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_INT_MODE_IS_BC(%struct.bxe_softc*) #1

declare dso_local i32 @SC_VN(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_IS_MODE_4_PORT(%struct.bxe_softc*) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i64) #1

declare dso_local i32 @IGU_FID(i32) #1

declare dso_local i64 @IGU_VEC(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
