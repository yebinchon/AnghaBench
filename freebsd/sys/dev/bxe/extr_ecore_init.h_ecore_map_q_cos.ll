; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_init.h_ecore_map_q_cos.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_init.h_ecore_map_q_cos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@QM_REG_QVOQIDX_0 = common dso_local global i32 0, align 4
@ECORE_PORT2_MODE_NUM_VNICS = common dso_local global i32 0, align 4
@MODE_PORT4 = common dso_local global i32 0, align 4
@ECORE_PORT4_MODE_NUM_VNICS = common dso_local global i32 0, align 4
@ECORE_E3B0_PORT1_COS_OFFSET = common dso_local global i32 0, align 4
@MODE_E3_B0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i32, i32)* @ecore_map_q_cos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_map_q_cos(%struct.bxe_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %15 = load i32, i32* @QM_REG_QVOQIDX_0, align 4
  %16 = load i32, i32* %5, align 4
  %17 = mul nsw i32 %16, 4
  %18 = add nsw i32 %15, %17
  %19 = call i32 @REG_RD(%struct.bxe_softc* %14, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %124

23:                                               ; preds = %3
  %24 = load i32, i32* @ECORE_PORT2_MODE_NUM_VNICS, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %26 = call i32 @INIT_MODE_FLAGS(%struct.bxe_softc* %25)
  %27 = load i32, i32* @MODE_PORT4, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %23
  %31 = load i32, i32* @ECORE_PORT4_MODE_NUM_VNICS, align 4
  store i32 %31, i32* %8, align 4
  %32 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %33 = call i64 @PORT_ID(%struct.bxe_softc* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i32, i32* @ECORE_E3B0_PORT1_COS_OFFSET, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @ECORE_E3B0_PORT1_COS_OFFSET, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %35, %30
  br label %43

43:                                               ; preds = %42, %23
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %120, %43
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %123

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %51 = call i64 @PORT_ID(%struct.bxe_softc* %50)
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @ECORE_PF_Q_NUM(i32 %49, i64 %51, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = and i32 %54, 31
  %56 = shl i32 1, %55
  store i32 %56, i32* %13, align 4
  %57 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @ECORE_Q_VOQ_REG_ADDR(i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @REG_WR(%struct.bxe_softc* %57, i32 %59, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @ECORE_VOQ_Q_REG_ADDR(i32 %62, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @REG_RD(%struct.bxe_softc* %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %13, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  %74 = call i32 @REG_WR(%struct.bxe_softc* %68, i32 %69, i32 %73)
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @ECORE_VOQ_Q_REG_ADDR(i32 %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @REG_RD(%struct.bxe_softc* %78, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %13, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @REG_WR(%struct.bxe_softc* %81, i32 %82, i32 %85)
  %87 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %88 = call i32 @INIT_MODE_FLAGS(%struct.bxe_softc* %87)
  %89 = load i32, i32* @MODE_E3_B0, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %119, label %92

92:                                               ; preds = %48
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @ECORE_Q_CMDQ_REG_ADDR(i32 %93)
  store i32 %94, i32* %9, align 4
  %95 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @REG_RD(%struct.bxe_softc* %95, i32 %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %12, align 4
  %99 = and i32 %98, 15
  %100 = mul nsw i32 2, %99
  %101 = shl i32 1, %100
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %92
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %13, align 4
  %107 = or i32 %105, %106
  br label %113

108:                                              ; preds = %92
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %13, align 4
  %111 = xor i32 %110, -1
  %112 = and i32 %109, %111
  br label %113

113:                                              ; preds = %108, %104
  %114 = phi i32 [ %107, %104 ], [ %112, %108 ]
  store i32 %114, i32* %10, align 4
  %115 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @REG_WR(%struct.bxe_softc* %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %113, %48
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %44

123:                                              ; preds = %44
  br label %124

124:                                              ; preds = %123, %3
  ret void
}

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @INIT_MODE_FLAGS(%struct.bxe_softc*) #1

declare dso_local i64 @PORT_ID(%struct.bxe_softc*) #1

declare dso_local i32 @ECORE_PF_Q_NUM(i32, i64, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @ECORE_Q_VOQ_REG_ADDR(i32) #1

declare dso_local i32 @ECORE_VOQ_Q_REG_ADDR(i32, i32) #1

declare dso_local i32 @ECORE_Q_CMDQ_REG_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
