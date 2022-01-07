; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_q_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_q_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_queue_state_params = type { %struct.TYPE_4__, %struct.ecore_queue_sp_obj* }
%struct.TYPE_4__ = type { %struct.ecore_queue_init_params }
%struct.ecore_queue_init_params = type { i32*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.ecore_queue_sp_obj = type { i64, i32 (%struct.bxe_softc.0*, %struct.ecore_queue_sp_obj*, i32)*, i32*, i32 }
%struct.bxe_softc.0 = type opaque

@ECORE_Q_TYPE_HAS_TX = common dso_local global i32 0, align 4
@ECORE_Q_FLG_HC = common dso_local global i32 0, align 4
@ECORE_Q_FLG_HC_EN = common dso_local global i32 0, align 4
@ECORE_Q_TYPE_HAS_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"setting context validation. cid %d, cos %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"context pointer %p\0A\00", align 1
@ECORE_Q_CMD_INIT = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.ecore_queue_state_params*)* @ecore_q_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_q_init(%struct.bxe_softc* %0, %struct.ecore_queue_state_params* %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca %struct.ecore_queue_state_params*, align 8
  %5 = alloca %struct.ecore_queue_sp_obj*, align 8
  %6 = alloca %struct.ecore_queue_init_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store %struct.ecore_queue_state_params* %1, %struct.ecore_queue_state_params** %4, align 8
  %9 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %4, align 8
  %10 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %9, i32 0, i32 1
  %11 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %10, align 8
  store %struct.ecore_queue_sp_obj* %11, %struct.ecore_queue_sp_obj** %5, align 8
  %12 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %4, align 8
  %13 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.ecore_queue_init_params* %14, %struct.ecore_queue_init_params** %6, align 8
  %15 = load i32, i32* @ECORE_Q_TYPE_HAS_TX, align 4
  %16 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %5, align 8
  %17 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %16, i32 0, i32 3
  %18 = call i64 @ECORE_TEST_BIT(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %61

20:                                               ; preds = %2
  %21 = load i32, i32* @ECORE_Q_FLG_HC, align 4
  %22 = load %struct.ecore_queue_init_params*, %struct.ecore_queue_init_params** %6, align 8
  %23 = getelementptr inbounds %struct.ecore_queue_init_params, %struct.ecore_queue_init_params* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = call i64 @ECORE_TEST_BIT(i32 %21, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %61

27:                                               ; preds = %20
  %28 = load %struct.ecore_queue_init_params*, %struct.ecore_queue_init_params** %6, align 8
  %29 = getelementptr inbounds %struct.ecore_queue_init_params, %struct.ecore_queue_init_params* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.ecore_queue_init_params*, %struct.ecore_queue_init_params** %6, align 8
  %35 = getelementptr inbounds %struct.ecore_queue_init_params, %struct.ecore_queue_init_params* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sdiv i32 1000000, %37
  br label %40

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %33
  %41 = phi i32 [ %38, %33 ], [ 0, %39 ]
  store i32 %41, i32* %7, align 4
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %43 = load %struct.ecore_queue_init_params*, %struct.ecore_queue_init_params** %6, align 8
  %44 = getelementptr inbounds %struct.ecore_queue_init_params, %struct.ecore_queue_init_params* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ecore_queue_init_params*, %struct.ecore_queue_init_params** %6, align 8
  %48 = getelementptr inbounds %struct.ecore_queue_init_params, %struct.ecore_queue_init_params* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ECORE_Q_FLG_HC_EN, align 4
  %52 = load %struct.ecore_queue_init_params*, %struct.ecore_queue_init_params** %6, align 8
  %53 = getelementptr inbounds %struct.ecore_queue_init_params, %struct.ecore_queue_init_params* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = call i64 @ECORE_TEST_BIT(i32 %51, i32* %54)
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @ECORE_UPDATE_COALESCE_SB_INDEX(%struct.bxe_softc* %42, i32 %46, i32 %50, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %40, %20, %2
  %62 = load i32, i32* @ECORE_Q_TYPE_HAS_RX, align 4
  %63 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %5, align 8
  %64 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %63, i32 0, i32 3
  %65 = call i64 @ECORE_TEST_BIT(i32 %62, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %108

67:                                               ; preds = %61
  %68 = load i32, i32* @ECORE_Q_FLG_HC, align 4
  %69 = load %struct.ecore_queue_init_params*, %struct.ecore_queue_init_params** %6, align 8
  %70 = getelementptr inbounds %struct.ecore_queue_init_params, %struct.ecore_queue_init_params* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = call i64 @ECORE_TEST_BIT(i32 %68, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %108

74:                                               ; preds = %67
  %75 = load %struct.ecore_queue_init_params*, %struct.ecore_queue_init_params** %6, align 8
  %76 = getelementptr inbounds %struct.ecore_queue_init_params, %struct.ecore_queue_init_params* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load %struct.ecore_queue_init_params*, %struct.ecore_queue_init_params** %6, align 8
  %82 = getelementptr inbounds %struct.ecore_queue_init_params, %struct.ecore_queue_init_params* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sdiv i32 1000000, %84
  br label %87

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86, %80
  %88 = phi i32 [ %85, %80 ], [ 0, %86 ]
  store i32 %88, i32* %7, align 4
  %89 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %90 = load %struct.ecore_queue_init_params*, %struct.ecore_queue_init_params** %6, align 8
  %91 = getelementptr inbounds %struct.ecore_queue_init_params, %struct.ecore_queue_init_params* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ecore_queue_init_params*, %struct.ecore_queue_init_params** %6, align 8
  %95 = getelementptr inbounds %struct.ecore_queue_init_params, %struct.ecore_queue_init_params* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @ECORE_Q_FLG_HC_EN, align 4
  %99 = load %struct.ecore_queue_init_params*, %struct.ecore_queue_init_params** %6, align 8
  %100 = getelementptr inbounds %struct.ecore_queue_init_params, %struct.ecore_queue_init_params* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = call i64 @ECORE_TEST_BIT(i32 %98, i32* %101)
  %103 = icmp ne i64 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @ECORE_UPDATE_COALESCE_SB_INDEX(%struct.bxe_softc* %89, i32 %93, i32 %97, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %87, %67, %61
  store i64 0, i64* %8, align 8
  br label %109

109:                                              ; preds = %147, %108
  %110 = load i64, i64* %8, align 8
  %111 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %5, align 8
  %112 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ult i64 %110, %113
  br i1 %114, label %115, label %150

115:                                              ; preds = %109
  %116 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %117 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %5, align 8
  %118 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* %8, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i64, i64* %8, align 8
  %124 = call i32 (%struct.bxe_softc*, i8*, i32, ...) @ECORE_MSG(%struct.bxe_softc* %116, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %122, i64 %123)
  %125 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %126 = load %struct.ecore_queue_init_params*, %struct.ecore_queue_init_params** %6, align 8
  %127 = getelementptr inbounds %struct.ecore_queue_init_params, %struct.ecore_queue_init_params* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* %8, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (%struct.bxe_softc*, i8*, i32, ...) @ECORE_MSG(%struct.bxe_softc* %125, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  %133 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %134 = load %struct.ecore_queue_init_params*, %struct.ecore_queue_init_params** %6, align 8
  %135 = getelementptr inbounds %struct.ecore_queue_init_params, %struct.ecore_queue_init_params* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i64, i64* %8, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %5, align 8
  %141 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* %8, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ECORE_SET_CTX_VALIDATION(%struct.bxe_softc* %133, i32 %139, i32 %145)
  br label %147

147:                                              ; preds = %115
  %148 = load i64, i64* %8, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %8, align 8
  br label %109

150:                                              ; preds = %109
  %151 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %5, align 8
  %152 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %151, i32 0, i32 1
  %153 = load i32 (%struct.bxe_softc.0*, %struct.ecore_queue_sp_obj*, i32)*, i32 (%struct.bxe_softc.0*, %struct.ecore_queue_sp_obj*, i32)** %152, align 8
  %154 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %155 = bitcast %struct.bxe_softc* %154 to %struct.bxe_softc.0*
  %156 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %5, align 8
  %157 = load i32, i32* @ECORE_Q_CMD_INIT, align 4
  %158 = call i32 %153(%struct.bxe_softc.0* %155, %struct.ecore_queue_sp_obj* %156, i32 %157)
  %159 = call i32 (...) @ECORE_MMIOWB()
  %160 = call i32 (...) @ECORE_SMP_MB()
  %161 = load i32, i32* @ECORE_SUCCESS, align 4
  ret i32 %161
}

declare dso_local i64 @ECORE_TEST_BIT(i32, i32*) #1

declare dso_local i32 @ECORE_UPDATE_COALESCE_SB_INDEX(%struct.bxe_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @ECORE_MSG(%struct.bxe_softc*, i8*, i32, ...) #1

declare dso_local i32 @ECORE_SET_CTX_VALIDATION(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @ECORE_MMIOWB(...) #1

declare dso_local i32 @ECORE_SMP_MB(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
