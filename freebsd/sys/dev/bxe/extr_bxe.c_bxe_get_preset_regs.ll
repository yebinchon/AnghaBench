; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_get_preset_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_get_preset_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wreg_addr = type { i64, i64, i64, i64*, i32 }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.bxe_softc = type { i32 }

@wreg_addr_e1 = common dso_local global %struct.wreg_addr zeroinitializer, align 8
@wreg_addr_e1h = common dso_local global %struct.wreg_addr zeroinitializer, align 8
@wreg_addr_e2 = common dso_local global %struct.wreg_addr zeroinitializer, align 8
@wreg_addr_e3 = common dso_local global %struct.wreg_addr zeroinitializer, align 8
@wreg_addr_e3b0 = common dso_local global %struct.wreg_addr zeroinitializer, align 8
@IDLE_REGS_COUNT = common dso_local global i64 0, align 8
@idle_reg_addrs = common dso_local global %struct.TYPE_4__* null, align 8
@REGS_COUNT = common dso_local global i64 0, align 8
@reg_addrs = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, i64*, i64)* @bxe_get_preset_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_get_preset_regs(%struct.bxe_softc* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.wreg_addr*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.wreg_addr* null, %struct.wreg_addr** %11, align 8
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %13 = call i64 @CHIP_IS_E1(%struct.bxe_softc* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store %struct.wreg_addr* @wreg_addr_e1, %struct.wreg_addr** %11, align 8
  br label %41

16:                                               ; preds = %3
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %18 = call i64 @CHIP_IS_E1H(%struct.bxe_softc* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store %struct.wreg_addr* @wreg_addr_e1h, %struct.wreg_addr** %11, align 8
  br label %40

21:                                               ; preds = %16
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %23 = call i64 @CHIP_IS_E2(%struct.bxe_softc* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store %struct.wreg_addr* @wreg_addr_e2, %struct.wreg_addr** %11, align 8
  br label %39

26:                                               ; preds = %21
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %28 = call i64 @CHIP_IS_E3A0(%struct.bxe_softc* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store %struct.wreg_addr* @wreg_addr_e3, %struct.wreg_addr** %11, align 8
  br label %38

31:                                               ; preds = %26
  %32 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %33 = call i64 @CHIP_IS_E3B0(%struct.bxe_softc* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store %struct.wreg_addr* @wreg_addr_e3b0, %struct.wreg_addr** %11, align 8
  br label %37

36:                                               ; preds = %31
  store i32 -1, i32* %4, align 4
  br label %218

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %37, %30
  br label %39

39:                                               ; preds = %38, %25
  br label %40

40:                                               ; preds = %39, %20
  br label %41

41:                                               ; preds = %40, %15
  store i64 0, i64* %8, align 8
  br label %42

42:                                               ; preds = %90, %41
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @IDLE_REGS_COUNT, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %93

46:                                               ; preds = %42
  %47 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @idle_reg_addrs, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %49
  %51 = call i64 @bxe_is_reg_in_chip(%struct.bxe_softc* %47, %struct.TYPE_4__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %89

53:                                               ; preds = %46
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @idle_reg_addrs, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i64 @IS_REG_IN_PRESET(i32 %58, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %89

62:                                               ; preds = %53
  store i64 0, i64* %9, align 8
  br label %63

63:                                               ; preds = %85, %62
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @idle_reg_addrs, align 8
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ult i64 %64, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %63
  %72 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @idle_reg_addrs, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %9, align 8
  %79 = mul i64 %78, 4
  %80 = add i64 %77, %79
  %81 = call i8* @REG_RD(%struct.bxe_softc* %72, i64 %80)
  %82 = ptrtoint i8* %81 to i64
  %83 = load i64*, i64** %6, align 8
  %84 = getelementptr inbounds i64, i64* %83, i32 1
  store i64* %84, i64** %6, align 8
  store i64 %82, i64* %83, align 8
  br label %85

85:                                               ; preds = %71
  %86 = load i64, i64* %9, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %9, align 8
  br label %63

88:                                               ; preds = %63
  br label %89

89:                                               ; preds = %88, %53, %46
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %8, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %8, align 8
  br label %42

93:                                               ; preds = %42
  store i64 0, i64* %8, align 8
  br label %94

94:                                               ; preds = %142, %93
  %95 = load i64, i64* %8, align 8
  %96 = load i64, i64* @REGS_COUNT, align 8
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %98, label %145

98:                                               ; preds = %94
  %99 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_addrs, align 8
  %101 = load i64, i64* %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %101
  %103 = call i64 @bxe_is_reg_in_chip(%struct.bxe_softc* %99, %struct.TYPE_4__* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %141

105:                                              ; preds = %98
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_addrs, align 8
  %107 = load i64, i64* %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i64, i64* %7, align 8
  %112 = call i64 @IS_REG_IN_PRESET(i32 %110, i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %141

114:                                              ; preds = %105
  store i64 0, i64* %9, align 8
  br label %115

115:                                              ; preds = %137, %114
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_addrs, align 8
  %118 = load i64, i64* %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ult i64 %116, %121
  br i1 %122, label %123, label %140

123:                                              ; preds = %115
  %124 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_addrs, align 8
  %126 = load i64, i64* %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %9, align 8
  %131 = mul i64 %130, 4
  %132 = add i64 %129, %131
  %133 = call i8* @REG_RD(%struct.bxe_softc* %124, i64 %132)
  %134 = ptrtoint i8* %133 to i64
  %135 = load i64*, i64** %6, align 8
  %136 = getelementptr inbounds i64, i64* %135, i32 1
  store i64* %136, i64** %6, align 8
  store i64 %134, i64* %135, align 8
  br label %137

137:                                              ; preds = %123
  %138 = load i64, i64* %9, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %9, align 8
  br label %115

140:                                              ; preds = %115
  br label %141

141:                                              ; preds = %140, %105, %98
  br label %142

142:                                              ; preds = %141
  %143 = load i64, i64* %8, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %8, align 8
  br label %94

145:                                              ; preds = %94
  %146 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %147 = load %struct.wreg_addr*, %struct.wreg_addr** %11, align 8
  %148 = call i64 @bxe_is_wreg_in_chip(%struct.bxe_softc* %146, %struct.wreg_addr* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %204

150:                                              ; preds = %145
  %151 = load %struct.wreg_addr*, %struct.wreg_addr** %11, align 8
  %152 = getelementptr inbounds %struct.wreg_addr, %struct.wreg_addr* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load i64, i64* %7, align 8
  %155 = call i64 @IS_REG_IN_PRESET(i32 %153, i64 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %204

157:                                              ; preds = %150
  store i64 0, i64* %8, align 8
  br label %158

158:                                              ; preds = %200, %157
  %159 = load i64, i64* %8, align 8
  %160 = load %struct.wreg_addr*, %struct.wreg_addr** %11, align 8
  %161 = getelementptr inbounds %struct.wreg_addr, %struct.wreg_addr* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ult i64 %159, %162
  br i1 %163, label %164, label %203

164:                                              ; preds = %158
  %165 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %166 = load %struct.wreg_addr*, %struct.wreg_addr** %11, align 8
  %167 = getelementptr inbounds %struct.wreg_addr, %struct.wreg_addr* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* %8, align 8
  %170 = mul i64 %169, 4
  %171 = add i64 %168, %170
  %172 = call i8* @REG_RD(%struct.bxe_softc* %165, i64 %171)
  %173 = ptrtoint i8* %172 to i64
  %174 = load i64*, i64** %6, align 8
  %175 = getelementptr inbounds i64, i64* %174, i32 1
  store i64* %175, i64** %6, align 8
  store i64 %173, i64* %174, align 8
  store i64 0, i64* %9, align 8
  br label %176

176:                                              ; preds = %196, %164
  %177 = load i64, i64* %9, align 8
  %178 = load %struct.wreg_addr*, %struct.wreg_addr** %11, align 8
  %179 = getelementptr inbounds %struct.wreg_addr, %struct.wreg_addr* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = icmp ult i64 %177, %180
  br i1 %181, label %182, label %199

182:                                              ; preds = %176
  %183 = load %struct.wreg_addr*, %struct.wreg_addr** %11, align 8
  %184 = getelementptr inbounds %struct.wreg_addr, %struct.wreg_addr* %183, i32 0, i32 3
  %185 = load i64*, i64** %184, align 8
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %10, align 8
  %187 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %188 = load i64, i64* %10, align 8
  %189 = load i64, i64* %9, align 8
  %190 = mul i64 %189, 4
  %191 = add i64 %188, %190
  %192 = call i8* @REG_RD(%struct.bxe_softc* %187, i64 %191)
  %193 = ptrtoint i8* %192 to i64
  %194 = load i64*, i64** %6, align 8
  %195 = getelementptr inbounds i64, i64* %194, i32 1
  store i64* %195, i64** %6, align 8
  store i64 %193, i64* %194, align 8
  br label %196

196:                                              ; preds = %182
  %197 = load i64, i64* %9, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %9, align 8
  br label %176

199:                                              ; preds = %176
  br label %200

200:                                              ; preds = %199
  %201 = load i64, i64* %8, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %8, align 8
  br label %158

203:                                              ; preds = %158
  br label %204

204:                                              ; preds = %203, %150, %145
  %205 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %206 = call i64 @CHIP_IS_E2(%struct.bxe_softc* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %212, label %208

208:                                              ; preds = %204
  %209 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %210 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %208, %204
  %213 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %214 = load i64*, i64** %6, align 8
  %215 = load i64, i64* %7, align 8
  %216 = call i32 @bxe_read_pages_regs(%struct.bxe_softc* %213, i64* %214, i64 %215)
  br label %217

217:                                              ; preds = %212, %208
  store i32 0, i32* %4, align 4
  br label %218

218:                                              ; preds = %217, %36
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local i64 @CHIP_IS_E1(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_IS_E1H(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_IS_E2(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_IS_E3A0(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_IS_E3B0(%struct.bxe_softc*) #1

declare dso_local i64 @bxe_is_reg_in_chip(%struct.bxe_softc*, %struct.TYPE_4__*) #1

declare dso_local i64 @IS_REG_IN_PRESET(i32, i64) #1

declare dso_local i8* @REG_RD(%struct.bxe_softc*, i64) #1

declare dso_local i64 @bxe_is_wreg_in_chip(%struct.bxe_softc*, %struct.wreg_addr*) #1

declare dso_local i64 @CHIP_IS_E3(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_read_pages_regs(%struct.bxe_softc*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
