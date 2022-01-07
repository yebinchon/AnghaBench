; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_rom.c_r12a_parse_rom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_rom.c_r12a_parse_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { %struct.TYPE_2__, %struct.r12a_softc* }
%struct.TYPE_2__ = type { i32 }
%struct.r12a_softc = type { i32, i32, i32, i32, i32, i32, i32, i8*, i64, i8*, i64 }
%struct.r12a_rom = type { i32, i32, i32, i32, i32, i32, i32 }

@R92C_ROM_RF1_BOARD_TYPE = common dso_local global i32 0, align 4
@R92C_BOARD_TYPE_HIGHPA = common dso_local global i64 0, align 8
@R12A_RF_BT_OPT_ANT_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r12a_parse_rom(%struct.rtwn_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.r12a_softc*, align 8
  %6 = alloca %struct.r12a_rom*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %11 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %10, i32 0, i32 1
  %12 = load %struct.r12a_softc*, %struct.r12a_softc** %11, align 8
  store %struct.r12a_softc* %12, %struct.r12a_softc** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = bitcast i32* %13 to %struct.r12a_rom*
  store %struct.r12a_rom* %14, %struct.r12a_rom** %6, align 8
  %15 = load %struct.r12a_rom*, %struct.r12a_rom** %6, align 8
  %16 = getelementptr inbounds %struct.r12a_rom, %struct.r12a_rom* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @RTWN_GET_ROM_VAR(i32 %17, i32 0)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.r12a_rom*, %struct.r12a_rom** %6, align 8
  %20 = getelementptr inbounds %struct.r12a_rom, %struct.r12a_rom* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @RTWN_GET_ROM_VAR(i32 %21, i32 0)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.r12a_rom*, %struct.r12a_rom** %6, align 8
  %24 = getelementptr inbounds %struct.r12a_rom, %struct.r12a_rom* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @RTWN_GET_ROM_VAR(i32 %25, i32 0)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @R12A_ROM_IS_PA_EXT_2GHZ(i32 %27)
  %29 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %30 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %29, i32 0, i32 10
  store i64 %28, i64* %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @R12A_ROM_IS_PA_EXT_5GHZ(i32 %31)
  %33 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %34 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %33, i32 0, i32 8
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i8* @R21A_ROM_IS_LNA_EXT(i32 %35)
  %37 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %38 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %37, i32 0, i32 9
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i8* @R21A_ROM_IS_LNA_EXT(i32 %39)
  %41 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %42 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %41, i32 0, i32 7
  store i8* %40, i8** %42, align 8
  %43 = load %struct.r12a_rom*, %struct.r12a_rom** %6, align 8
  %44 = getelementptr inbounds %struct.r12a_rom, %struct.r12a_rom* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @R92C_ROM_RF1_BOARD_TYPE, align 4
  %47 = call i64 @MS(i32 %45, i32 %46)
  %48 = load i64, i64* @R92C_BOARD_TYPE_HIGHPA, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %52 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.r12a_rom*, %struct.r12a_rom** %6, align 8
  %54 = getelementptr inbounds %struct.r12a_rom, %struct.r12a_rom* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @R12A_RF_BT_OPT_ANT_NUM, align 4
  %57 = and i32 %55, %56
  %58 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %59 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %61 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %60, i32 0, i32 10
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %2
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @R12A_GET_ROM_PA_TYPE(i32 %65, i32 0)
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @R12A_GET_ROM_PA_TYPE(i32 %67, i32 1)
  %69 = shl i32 %68, 2
  %70 = or i32 %66, %69
  %71 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %72 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %64, %2
  %74 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %75 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %74, i32 0, i32 8
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @R12A_GET_ROM_PA_TYPE(i32 %79, i32 0)
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @R12A_GET_ROM_PA_TYPE(i32 %81, i32 1)
  %83 = shl i32 %82, 2
  %84 = or i32 %80, %83
  %85 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %86 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %78, %73
  %88 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %89 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %88, i32 0, i32 9
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @R12A_GET_ROM_LNA_TYPE(i32 %93, i32 0)
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @R12A_GET_ROM_LNA_TYPE(i32 %95, i32 1)
  %97 = shl i32 %96, 2
  %98 = or i32 %94, %97
  %99 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %100 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %92, %87
  %102 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %103 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %102, i32 0, i32 7
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @R12A_GET_ROM_LNA_TYPE(i32 %107, i32 0)
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @R12A_GET_ROM_LNA_TYPE(i32 %109, i32 1)
  %111 = shl i32 %110, 2
  %112 = or i32 %108, %111
  %113 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %114 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %106, %101
  %116 = load %struct.r12a_rom*, %struct.r12a_rom** %6, align 8
  %117 = getelementptr inbounds %struct.r12a_rom, %struct.r12a_rom* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 128
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %156

121:                                              ; preds = %115
  %122 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %123 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %122, i32 0, i32 7
  %124 = load i8*, i8** %123, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %152

126:                                              ; preds = %121
  %127 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %128 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %127, i32 0, i32 8
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %148

131:                                              ; preds = %126
  %132 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %133 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %132, i32 0, i32 10
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %131
  %137 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %138 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %137, i32 0, i32 9
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %143 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %142, i32 0, i32 6
  store i32 3, i32* %143, align 8
  br label %147

144:                                              ; preds = %136, %131
  %145 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %146 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %145, i32 0, i32 6
  store i32 0, i32* %146, align 8
  br label %147

147:                                              ; preds = %144, %141
  br label %151

148:                                              ; preds = %126
  %149 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %150 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %149, i32 0, i32 6
  store i32 2, i32* %150, align 8
  br label %151

151:                                              ; preds = %148, %147
  br label %155

152:                                              ; preds = %121
  %153 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %154 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %153, i32 0, i32 6
  store i32 4, i32* %154, align 8
  br label %155

155:                                              ; preds = %152, %151
  br label %191

156:                                              ; preds = %115
  %157 = load %struct.r12a_rom*, %struct.r12a_rom** %6, align 8
  %158 = getelementptr inbounds %struct.r12a_rom, %struct.r12a_rom* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, 63
  %161 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %162 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %161, i32 0, i32 6
  store i32 %160, i32* %162, align 8
  %163 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %164 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %165, 4
  br i1 %166, label %167, label %190

167:                                              ; preds = %156
  %168 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %169 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %168, i32 0, i32 10
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %190

172:                                              ; preds = %167
  %173 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %174 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %173, i32 0, i32 9
  %175 = load i8*, i8** %174, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %190

177:                                              ; preds = %172
  %178 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %179 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %178, i32 0, i32 8
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %177
  %183 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %184 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %183, i32 0, i32 7
  %185 = load i8*, i8** %184, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %189 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %188, i32 0, i32 6
  store i32 0, i32* %189, align 8
  br label %190

190:                                              ; preds = %187, %182, %177, %172, %167, %156
  br label %191

191:                                              ; preds = %190, %155
  %192 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %193 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.r12a_rom*, %struct.r12a_rom** %6, align 8
  %197 = getelementptr inbounds %struct.r12a_rom, %struct.r12a_rom* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @IEEE80211_ADDR_COPY(i32 %195, i32 %198)
  %200 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %201 = load i32*, i32** %4, align 8
  %202 = call i32 @r12a_parse_rom_common(%struct.rtwn_softc* %200, i32* %201)
  ret void
}

declare dso_local i32 @RTWN_GET_ROM_VAR(i32, i32) #1

declare dso_local i64 @R12A_ROM_IS_PA_EXT_2GHZ(i32) #1

declare dso_local i64 @R12A_ROM_IS_PA_EXT_5GHZ(i32) #1

declare dso_local i8* @R21A_ROM_IS_LNA_EXT(i32) #1

declare dso_local i64 @MS(i32, i32) #1

declare dso_local i32 @R12A_GET_ROM_PA_TYPE(i32, i32) #1

declare dso_local i32 @R12A_GET_ROM_LNA_TYPE(i32, i32) #1

declare dso_local i32 @IEEE80211_ADDR_COPY(i32, i32) #1

declare dso_local i32 @r12a_parse_rom_common(%struct.rtwn_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
