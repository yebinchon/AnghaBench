; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_nemc.c_jz4780_nemc_configure_bank.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_nemc.c_jz4780_nemc_configure_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_nemc_softc = type { i32, i32 }

@JZ_NEMC_SMCR_SMT_MASK = common dso_local global i32 0, align 4
@JZ_NEMC_SMCR_SMT_NORMAL = common dso_local global i32 0, align 4
@JZ_NEMC_SMCR_SMT_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ingenic,nemc-tAS\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"invalid value of %s %u (%u cycles), maximum %u cycles supported\0A\00", align 1
@JZ_NEMC_SMCR_TAS_MASK = common dso_local global i32 0, align 4
@JZ_NEMC_SMCR_TAS_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"ingenic,nemc-tAH\00", align 1
@JZ_NEMC_SMCR_TAH_MASK = common dso_local global i32 0, align 4
@JZ_NEMC_SMCR_TAH_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"ingenic,nemc-tBP\00", align 1
@JZ_NEMC_SMCR_TBP_MASK = common dso_local global i32 0, align 4
@ticks_to_tBP_tAW = common dso_local global i32* null, align 8
@JZ_NEMC_SMCR_TBP_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"ingenic,nemc-tAW\00", align 1
@JZ_NEMC_SMCR_TAW_MASK = common dso_local global i32 0, align 4
@JZ_NEMC_SMCR_TAW_SHIFT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"ingenic,nemc-tSTRV\00", align 1
@JZ_NEMC_SMCR_STRV_MASK = common dso_local global i32 0, align 4
@JZ_NEMC_SMCR_STRV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4780_nemc_softc*, i32, i32)* @jz4780_nemc_configure_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_nemc_configure_bank(%struct.jz4780_nemc_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.jz4780_nemc_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.jz4780_nemc_softc* %0, %struct.jz4780_nemc_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.jz4780_nemc_softc*, %struct.jz4780_nemc_softc** %5, align 8
  %13 = getelementptr inbounds %struct.jz4780_nemc_softc, %struct.jz4780_nemc_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %7, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %190

20:                                               ; preds = %3
  %21 = load %struct.jz4780_nemc_softc*, %struct.jz4780_nemc_softc** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @JZ_NEMC_SMCR(i32 %22)
  %24 = call i32 @CSR_READ_4(%struct.jz4780_nemc_softc* %21, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @JZ_NEMC_SMCR_SMT_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @JZ_NEMC_SMCR_SMT_NORMAL, align 4
  %30 = load i32, i32* @JZ_NEMC_SMCR_SMT_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @ofw_bus_get_node(i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @OF_getencprop(i32 %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %11, i32 4)
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %20
  %40 = load %struct.jz4780_nemc_softc*, %struct.jz4780_nemc_softc** %5, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @JZ4780_NEMC_NS_TO_TICKS(%struct.jz4780_nemc_softc* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp sgt i32 %43, 15
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.jz4780_nemc_softc*, %struct.jz4780_nemc_softc** %5, align 8
  %47 = getelementptr inbounds %struct.jz4780_nemc_softc, %struct.jz4780_nemc_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50, i32 15)
  store i32 -1, i32* %4, align 4
  br label %190

52:                                               ; preds = %39
  %53 = load i32, i32* @JZ_NEMC_SMCR_TAS_MASK, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @JZ_NEMC_SMCR_TAS_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %52, %20
  %63 = load i32, i32* %10, align 4
  %64 = call i64 @OF_getencprop(i32 %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %11, i32 4)
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %62
  %67 = load %struct.jz4780_nemc_softc*, %struct.jz4780_nemc_softc** %5, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @JZ4780_NEMC_NS_TO_TICKS(%struct.jz4780_nemc_softc* %67, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp sgt i32 %70, 15
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load %struct.jz4780_nemc_softc*, %struct.jz4780_nemc_softc** %5, align 8
  %74 = getelementptr inbounds %struct.jz4780_nemc_softc, %struct.jz4780_nemc_softc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @device_printf(i32 %75, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %77, i32 15)
  store i32 -1, i32* %4, align 4
  br label %190

79:                                               ; preds = %66
  %80 = load i32, i32* @JZ_NEMC_SMCR_TAH_MASK, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %8, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @JZ_NEMC_SMCR_TAH_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %79, %62
  %90 = load i32, i32* %10, align 4
  %91 = call i64 @OF_getencprop(i32 %90, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* %11, i32 4)
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %120

93:                                               ; preds = %89
  %94 = load %struct.jz4780_nemc_softc*, %struct.jz4780_nemc_softc** %5, align 8
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @JZ4780_NEMC_NS_TO_TICKS(%struct.jz4780_nemc_softc* %94, i32 %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp sgt i32 %97, 31
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load %struct.jz4780_nemc_softc*, %struct.jz4780_nemc_softc** %5, align 8
  %101 = getelementptr inbounds %struct.jz4780_nemc_softc, %struct.jz4780_nemc_softc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @device_printf(i32 %102, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %103, i32 %104, i32 15)
  store i32 -1, i32* %4, align 4
  br label %190

106:                                              ; preds = %93
  %107 = load i32, i32* @JZ_NEMC_SMCR_TBP_MASK, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %8, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %8, align 4
  %111 = load i32*, i32** @ticks_to_tBP_tAW, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @JZ_NEMC_SMCR_TBP_SHIFT, align 4
  %117 = shl i32 %115, %116
  %118 = load i32, i32* %8, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %106, %89
  %121 = load i32, i32* %10, align 4
  %122 = call i64 @OF_getencprop(i32 %121, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* %11, i32 4)
  %123 = icmp sgt i64 %122, 0
  br i1 %123, label %124, label %151

124:                                              ; preds = %120
  %125 = load %struct.jz4780_nemc_softc*, %struct.jz4780_nemc_softc** %5, align 8
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @JZ4780_NEMC_NS_TO_TICKS(%struct.jz4780_nemc_softc* %125, i32 %126)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp sgt i32 %128, 31
  br i1 %129, label %130, label %137

130:                                              ; preds = %124
  %131 = load %struct.jz4780_nemc_softc*, %struct.jz4780_nemc_softc** %5, align 8
  %132 = getelementptr inbounds %struct.jz4780_nemc_softc, %struct.jz4780_nemc_softc* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @device_printf(i32 %133, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %134, i32 %135, i32 15)
  store i32 -1, i32* %4, align 4
  br label %190

137:                                              ; preds = %124
  %138 = load i32, i32* @JZ_NEMC_SMCR_TAW_MASK, align 4
  %139 = xor i32 %138, -1
  %140 = load i32, i32* %8, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %8, align 4
  %142 = load i32*, i32** @ticks_to_tBP_tAW, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @JZ_NEMC_SMCR_TAW_SHIFT, align 4
  %148 = shl i32 %146, %147
  %149 = load i32, i32* %8, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %137, %120
  %152 = load i32, i32* %10, align 4
  %153 = call i64 @OF_getencprop(i32 %152, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32* %11, i32 4)
  %154 = icmp sgt i64 %153, 0
  br i1 %154, label %155, label %178

155:                                              ; preds = %151
  %156 = load %struct.jz4780_nemc_softc*, %struct.jz4780_nemc_softc** %5, align 8
  %157 = load i32, i32* %11, align 4
  %158 = call i32 @JZ4780_NEMC_NS_TO_TICKS(%struct.jz4780_nemc_softc* %156, i32 %157)
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %9, align 4
  %160 = icmp sgt i32 %159, 63
  br i1 %160, label %161, label %168

161:                                              ; preds = %155
  %162 = load %struct.jz4780_nemc_softc*, %struct.jz4780_nemc_softc** %5, align 8
  %163 = getelementptr inbounds %struct.jz4780_nemc_softc, %struct.jz4780_nemc_softc* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @device_printf(i32 %164, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %165, i32 %166, i32 15)
  store i32 -1, i32* %4, align 4
  br label %190

168:                                              ; preds = %155
  %169 = load i32, i32* @JZ_NEMC_SMCR_STRV_MASK, align 4
  %170 = xor i32 %169, -1
  %171 = load i32, i32* %8, align 4
  %172 = and i32 %171, %170
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* @JZ_NEMC_SMCR_STRV_SHIFT, align 4
  %175 = shl i32 %173, %174
  %176 = load i32, i32* %8, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %8, align 4
  br label %178

178:                                              ; preds = %168, %151
  %179 = load %struct.jz4780_nemc_softc*, %struct.jz4780_nemc_softc** %5, align 8
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @JZ_NEMC_SMCR(i32 %180)
  %182 = load i32, i32* %8, align 4
  %183 = call i32 @CSR_WRITE_4(%struct.jz4780_nemc_softc* %179, i32 %181, i32 %182)
  %184 = load i32, i32* %7, align 4
  %185 = shl i32 1, %184
  %186 = load %struct.jz4780_nemc_softc*, %struct.jz4780_nemc_softc** %5, align 8
  %187 = getelementptr inbounds %struct.jz4780_nemc_softc, %struct.jz4780_nemc_softc* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 4
  store i32 0, i32* %4, align 4
  br label %190

190:                                              ; preds = %178, %161, %130, %99, %72, %45, %19
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local i32 @CSR_READ_4(%struct.jz4780_nemc_softc*, i32) #1

declare dso_local i32 @JZ_NEMC_SMCR(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @JZ4780_NEMC_NS_TO_TICKS(%struct.jz4780_nemc_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.jz4780_nemc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
