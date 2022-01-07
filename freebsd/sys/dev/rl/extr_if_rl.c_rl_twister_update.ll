; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_twister_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_twister_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.rl_softc = type { i32, i32, i64 }

@rl_twister_update.param = internal constant [4 x [4 x %struct.TYPE_8__]] [[4 x %struct.TYPE_8__] [%struct.TYPE_8__ { i32 -885399997, i32 -885404093, i32 -80159229, i32 -885465533 }, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_8__ zeroinitializer], [4 x %struct.TYPE_8__] [%struct.TYPE_8__ { i32 -885399997, i32 -885404093, i32 -885404029, i32 -885404029 }, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_8__ zeroinitializer], [4 x %struct.TYPE_8__] [%struct.TYPE_8__ { i32 -885399997, i32 -885404093, i32 -885404029, i32 -885404029 }, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_8__ zeroinitializer], [4 x %struct.TYPE_8__] [%struct.TYPE_8__ { i32 -1153835453, i32 -1153839549, i32 -1153839485, i32 -1153839485 }, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_8__ zeroinitializer]], align 16
@RL_CSCFG = common dso_local global i32 0, align 4
@RL_CSCFG_LINK_OK = common dso_local global i32 0, align 4
@RL_CSCFG_LINK_DOWN_OFF_CMD = common dso_local global i32 0, align 4
@RL_CSCFG_LINK_DOWN_CMD = common dso_local global i32 0, align 4
@RL_NWAYTST = common dso_local global i32 0, align 4
@RL_NWAYTST_CBL_TEST = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@RL_PARA78 = common dso_local global i32 0, align 4
@RL_PARA78_DEF = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@RL_PARA7C = common dso_local global i32 0, align 4
@RL_PARA7C_DEF = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@RL_CSCFG_STATUS = common dso_local global i32 0, align 4
@RL_CSCFG_ROW3 = common dso_local global i32 0, align 4
@RL_CSCFG_ROW2 = common dso_local global i32 0, align 4
@RL_CSCFG_ROW1 = common dso_local global i32 0, align 4
@RL_NWAYTST_RESET = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@RL_PARA7C_RETUNE = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rl_softc*)* @rl_twister_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rl_twister_update(%struct.rl_softc* %0) #0 {
  %2 = alloca %struct.rl_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.rl_softc* %0, %struct.rl_softc** %2, align 8
  %4 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %5 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %178 [
    i32 133, label %7
    i32 131, label %44
    i32 128, label %80
    i32 130, label %127
    i32 129, label %148
    i32 132, label %177
  ]

7:                                                ; preds = %1
  %8 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %9 = load i32, i32* @RL_CSCFG, align 4
  %10 = call i32 @CSR_READ_2(%struct.rl_softc* %8, i32 %9)
  %11 = load i32, i32* @RL_CSCFG_LINK_OK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %7
  %15 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %16 = load i32, i32* @RL_CSCFG, align 4
  %17 = load i32, i32* @RL_CSCFG_LINK_DOWN_OFF_CMD, align 4
  %18 = call i32 @CSR_WRITE_2(%struct.rl_softc* %15, i32 %16, i32 %17)
  %19 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %20 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %19, i32 0, i32 0
  store i32 131, i32* %20, align 8
  br label %43

21:                                               ; preds = %7
  %22 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %23 = load i32, i32* @RL_CSCFG, align 4
  %24 = load i32, i32* @RL_CSCFG_LINK_DOWN_CMD, align 4
  %25 = call i32 @CSR_WRITE_2(%struct.rl_softc* %22, i32 %23, i32 %24)
  %26 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %27 = load i32, i32* @RL_NWAYTST, align 4
  %28 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_8__* @RL_NWAYTST_CBL_TEST to { i64, i64 }*), i32 0, i32 0), align 4
  %29 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_8__* @RL_NWAYTST_CBL_TEST to { i64, i64 }*), i32 0, i32 1), align 4
  %30 = call i32 @CSR_WRITE_4(%struct.rl_softc* %26, i32 %27, i64 %28, i64 %29)
  %31 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %32 = load i32, i32* @RL_PARA78, align 4
  %33 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_8__* @RL_PARA78_DEF to { i64, i64 }*), i32 0, i32 0), align 4
  %34 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_8__* @RL_PARA78_DEF to { i64, i64 }*), i32 0, i32 1), align 4
  %35 = call i32 @CSR_WRITE_4(%struct.rl_softc* %31, i32 %32, i64 %33, i64 %34)
  %36 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %37 = load i32, i32* @RL_PARA7C, align 4
  %38 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_8__* @RL_PARA7C_DEF to { i64, i64 }*), i32 0, i32 0), align 4
  %39 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_8__* @RL_PARA7C_DEF to { i64, i64 }*), i32 0, i32 1), align 4
  %40 = call i32 @CSR_WRITE_4(%struct.rl_softc* %36, i32 %37, i64 %38, i64 %39)
  %41 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %42 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %41, i32 0, i32 0
  store i32 132, i32* %42, align 8
  br label %43

43:                                               ; preds = %21, %14
  br label %178

44:                                               ; preds = %1
  %45 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %46 = load i32, i32* @RL_CSCFG, align 4
  %47 = call i32 @CSR_READ_2(%struct.rl_softc* %45, i32 %46)
  %48 = load i32, i32* @RL_CSCFG_STATUS, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @RL_CSCFG_ROW3, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %55 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %54, i32 0, i32 1
  store i32 3, i32* %55, align 4
  br label %75

56:                                               ; preds = %44
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @RL_CSCFG_ROW2, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %62 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %61, i32 0, i32 1
  store i32 2, i32* %62, align 4
  br label %74

63:                                               ; preds = %56
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @RL_CSCFG_ROW1, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %69 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  br label %73

70:                                               ; preds = %63
  %71 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %72 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %67
  br label %74

74:                                               ; preds = %73, %60
  br label %75

75:                                               ; preds = %74, %53
  %76 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %77 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %79 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %78, i32 0, i32 0
  store i32 128, i32* %79, align 8
  br label %178

80:                                               ; preds = %1
  %81 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %82 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %87 = load i32, i32* @RL_NWAYTST, align 4
  %88 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_8__* @RL_NWAYTST_RESET to { i64, i64 }*), i32 0, i32 0), align 4
  %89 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_8__* @RL_NWAYTST_RESET to { i64, i64 }*), i32 0, i32 1), align 4
  %90 = call i32 @CSR_WRITE_4(%struct.rl_softc* %86, i32 %87, i64 %88, i64 %89)
  br label %91

91:                                               ; preds = %85, %80
  %92 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %93 = load i32, i32* @RL_PARA7C, align 4
  %94 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %95 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [4 x [4 x %struct.TYPE_8__]], [4 x [4 x %struct.TYPE_8__]]* @rl_twister_update.param, i64 0, i64 %97
  %99 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %100 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %98, i64 0, i64 %101
  %103 = bitcast %struct.TYPE_8__* %102 to { i64, i64 }*
  %104 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 16
  %106 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %103, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @CSR_WRITE_4(%struct.rl_softc* %92, i32 %93, i64 %105, i64 %107)
  %109 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %110 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %110, align 8
  %113 = icmp eq i64 %112, 4
  br i1 %113, label %114, label %126

114:                                              ; preds = %91
  %115 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %116 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 3
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %121 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %120, i32 0, i32 0
  store i32 130, i32* %121, align 8
  br label %125

122:                                              ; preds = %114
  %123 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %124 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %123, i32 0, i32 0
  store i32 132, i32* %124, align 8
  br label %125

125:                                              ; preds = %122, %119
  br label %126

126:                                              ; preds = %125, %91
  br label %178

127:                                              ; preds = %1
  %128 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %129 = load i32, i32* @RL_CSCFG, align 4
  %130 = call i32 @CSR_READ_2(%struct.rl_softc* %128, i32 %129)
  %131 = load i32, i32* @RL_CSCFG_STATUS, align 4
  %132 = and i32 %130, %131
  store i32 %132, i32* %3, align 4
  %133 = load i32, i32* %3, align 4
  %134 = load i32, i32* @RL_CSCFG_ROW3, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %127
  %137 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %138 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %137, i32 0, i32 0
  store i32 132, i32* %138, align 8
  br label %147

139:                                              ; preds = %127
  %140 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %141 = load i32, i32* @RL_PARA7C, align 4
  %142 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_8__* @RL_PARA7C_RETUNE to { i64, i64 }*), i32 0, i32 0), align 4
  %143 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_8__* @RL_PARA7C_RETUNE to { i64, i64 }*), i32 0, i32 1), align 4
  %144 = call i32 @CSR_WRITE_4(%struct.rl_softc* %140, i32 %141, i64 %142, i64 %143)
  %145 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %146 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %145, i32 0, i32 0
  store i32 129, i32* %146, align 8
  br label %147

147:                                              ; preds = %139, %136
  br label %178

148:                                              ; preds = %1
  %149 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %150 = load i32, i32* @RL_NWAYTST, align 4
  %151 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_8__* @RL_NWAYTST_CBL_TEST to { i64, i64 }*), i32 0, i32 0), align 4
  %152 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_8__* @RL_NWAYTST_CBL_TEST to { i64, i64 }*), i32 0, i32 1), align 4
  %153 = call i32 @CSR_WRITE_4(%struct.rl_softc* %149, i32 %150, i64 %151, i64 %152)
  %154 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %155 = load i32, i32* @RL_PARA78, align 4
  %156 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_8__* @RL_PARA78_DEF to { i64, i64 }*), i32 0, i32 0), align 4
  %157 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_8__* @RL_PARA78_DEF to { i64, i64 }*), i32 0, i32 1), align 4
  %158 = call i32 @CSR_WRITE_4(%struct.rl_softc* %154, i32 %155, i64 %156, i64 %157)
  %159 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %160 = load i32, i32* @RL_PARA7C, align 4
  %161 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_8__* @RL_PARA7C_DEF to { i64, i64 }*), i32 0, i32 0), align 4
  %162 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_8__* @RL_PARA7C_DEF to { i64, i64 }*), i32 0, i32 1), align 4
  %163 = call i32 @CSR_WRITE_4(%struct.rl_softc* %159, i32 %160, i64 %161, i64 %162)
  %164 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %165 = load i32, i32* @RL_NWAYTST, align 4
  %166 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_8__* @RL_NWAYTST_RESET to { i64, i64 }*), i32 0, i32 0), align 4
  %167 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_8__* @RL_NWAYTST_RESET to { i64, i64 }*), i32 0, i32 1), align 4
  %168 = call i32 @CSR_WRITE_4(%struct.rl_softc* %164, i32 %165, i64 %166, i64 %167)
  %169 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %170 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %170, align 4
  %173 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %174 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %173, i32 0, i32 2
  store i64 0, i64* %174, align 8
  %175 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %176 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %175, i32 0, i32 0
  store i32 128, i32* %176, align 8
  br label %178

177:                                              ; preds = %1
  br label %178

178:                                              ; preds = %1, %177, %148, %147, %126, %75, %43
  ret void
}

declare dso_local i32 @CSR_READ_2(%struct.rl_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.rl_softc*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
