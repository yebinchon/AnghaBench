; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_func_chk_transition.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_func_chk_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_func_sp_obj = type { i32, i32, i64 }
%struct.ecore_func_state_params = type { i32, i64 }

@ECORE_F_STATE_MAX = common dso_local global i32 0, align 4
@RAMROD_DRV_CLR_ONLY = common dso_local global i32 0, align 4
@ECORE_BUSY = common dso_local global i32 0, align 4
@ECORE_F_CMD_HW_INIT = common dso_local global i32 0, align 4
@ECORE_F_CMD_START = common dso_local global i32 0, align 4
@ECORE_F_CMD_HW_RESET = common dso_local global i32 0, align 4
@ECORE_F_CMD_STOP = common dso_local global i32 0, align 4
@ECORE_F_CMD_AFEX_UPDATE = common dso_local global i32 0, align 4
@ECORE_F_CMD_AFEX_VIFLISTS = common dso_local global i32 0, align 4
@ECORE_F_CMD_SWITCH_UPDATE = common dso_local global i32 0, align 4
@ECORE_F_CMD_SET_TIMESYNC = common dso_local global i32 0, align 4
@ECORE_F_CMD_TX_STOP = common dso_local global i32 0, align 4
@ECORE_F_CMD_TX_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Unknown state: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Good function state transition: %d(%d)->%d\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Bad function state transition request: %d %d\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.ecore_func_sp_obj*, %struct.ecore_func_state_params*)* @ecore_func_chk_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_func_chk_transition(%struct.bxe_softc* %0, %struct.ecore_func_sp_obj* %1, %struct.ecore_func_state_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca %struct.ecore_func_sp_obj*, align 8
  %7 = alloca %struct.ecore_func_state_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store %struct.ecore_func_sp_obj* %1, %struct.ecore_func_sp_obj** %6, align 8
  store %struct.ecore_func_state_params* %2, %struct.ecore_func_state_params** %7, align 8
  %11 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %12 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @ECORE_F_STATE_MAX, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.ecore_func_state_params*, %struct.ecore_func_state_params** %7, align 8
  %16 = getelementptr inbounds %struct.ecore_func_state_params, %struct.ecore_func_state_params* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* @RAMROD_DRV_CLR_ONLY, align 4
  %19 = load %struct.ecore_func_state_params*, %struct.ecore_func_state_params** %7, align 8
  %20 = getelementptr inbounds %struct.ecore_func_state_params, %struct.ecore_func_state_params* %19, i32 0, i32 1
  %21 = call i64 @ECORE_TEST_BIT(i32 %18, i64* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %25 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @ECORE_F_STATE_MAX, align 4
  %27 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %28 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %23, %3
  %30 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %31 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @ECORE_BUSY, align 4
  store i32 %35, i32* %4, align 4
  br label %169

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %146 [
    i32 130, label %38
    i32 131, label %44
    i32 129, label %56
    i32 128, label %116
  ]

38:                                               ; preds = %36
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @ECORE_F_CMD_HW_INIT, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 131, i32* %9, align 4
  br label %43

43:                                               ; preds = %42, %38
  br label %149

44:                                               ; preds = %36
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @ECORE_F_CMD_START, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 129, i32* %9, align 4
  br label %55

49:                                               ; preds = %44
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @ECORE_F_CMD_HW_RESET, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 130, i32* %9, align 4
  br label %54

54:                                               ; preds = %53, %49
  br label %55

55:                                               ; preds = %54, %48
  br label %149

56:                                               ; preds = %36
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @ECORE_F_CMD_STOP, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 131, i32* %9, align 4
  br label %115

61:                                               ; preds = %56
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @ECORE_F_CMD_AFEX_UPDATE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load i32, i32* @ECORE_F_CMD_STOP, align 4
  %67 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %68 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %67, i32 0, i32 2
  %69 = call i64 @ECORE_TEST_BIT(i32 %66, i64* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  store i32 129, i32* %9, align 4
  br label %114

72:                                               ; preds = %65, %61
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @ECORE_F_CMD_AFEX_VIFLISTS, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load i32, i32* @ECORE_F_CMD_STOP, align 4
  %78 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %79 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %78, i32 0, i32 2
  %80 = call i64 @ECORE_TEST_BIT(i32 %77, i64* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %76
  store i32 129, i32* %9, align 4
  br label %113

83:                                               ; preds = %76, %72
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @ECORE_F_CMD_SWITCH_UPDATE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load i32, i32* @ECORE_F_CMD_STOP, align 4
  %89 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %90 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %89, i32 0, i32 2
  %91 = call i64 @ECORE_TEST_BIT(i32 %88, i64* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  store i32 129, i32* %9, align 4
  br label %112

94:                                               ; preds = %87, %83
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @ECORE_F_CMD_SET_TIMESYNC, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = load i32, i32* @ECORE_F_CMD_STOP, align 4
  %100 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %101 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %100, i32 0, i32 2
  %102 = call i64 @ECORE_TEST_BIT(i32 %99, i64* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %98
  store i32 129, i32* %9, align 4
  br label %111

105:                                              ; preds = %98, %94
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @ECORE_F_CMD_TX_STOP, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  store i32 128, i32* %9, align 4
  br label %110

110:                                              ; preds = %109, %105
  br label %111

111:                                              ; preds = %110, %104
  br label %112

112:                                              ; preds = %111, %93
  br label %113

113:                                              ; preds = %112, %82
  br label %114

114:                                              ; preds = %113, %71
  br label %115

115:                                              ; preds = %114, %60
  br label %149

116:                                              ; preds = %36
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @ECORE_F_CMD_SWITCH_UPDATE, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = load i32, i32* @ECORE_F_CMD_STOP, align 4
  %122 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %123 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %122, i32 0, i32 2
  %124 = call i64 @ECORE_TEST_BIT(i32 %121, i64* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %120
  store i32 128, i32* %9, align 4
  br label %145

127:                                              ; preds = %120, %116
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* @ECORE_F_CMD_SET_TIMESYNC, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %127
  %132 = load i32, i32* @ECORE_F_CMD_STOP, align 4
  %133 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %134 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %133, i32 0, i32 2
  %135 = call i64 @ECORE_TEST_BIT(i32 %132, i64* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %131
  store i32 128, i32* %9, align 4
  br label %144

138:                                              ; preds = %131, %127
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* @ECORE_F_CMD_TX_START, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store i32 129, i32* %9, align 4
  br label %143

143:                                              ; preds = %142, %138
  br label %144

144:                                              ; preds = %143, %137
  br label %145

145:                                              ; preds = %144, %126
  br label %149

146:                                              ; preds = %36
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @ECORE_ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %146, %145, %115, %55, %43
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* @ECORE_F_STATE_MAX, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %163

153:                                              ; preds = %149
  %154 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %9, align 4
  %158 = call i32 (%struct.bxe_softc*, i8*, i32, i32, ...) @ECORE_MSG(%struct.bxe_softc* %154, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %155, i32 %156, i32 %157)
  %159 = load i32, i32* %9, align 4
  %160 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %161 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %162, i32* %4, align 4
  br label %169

163:                                              ; preds = %149
  %164 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %10, align 4
  %167 = call i32 (%struct.bxe_softc*, i8*, i32, i32, ...) @ECORE_MSG(%struct.bxe_softc* %164, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %165, i32 %166)
  %168 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %168, i32* %4, align 4
  br label %169

169:                                              ; preds = %163, %153, %34
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local i64 @ECORE_TEST_BIT(i32, i64*) #1

declare dso_local i32 @ECORE_ERR(i8*, i32) #1

declare dso_local i32 @ECORE_MSG(%struct.bxe_softc*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
