; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_bus_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_bus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32, %struct.bwi_regwin, i32, i32*, %struct.bwi_regwin }
%struct.bwi_regwin = type { i32, i64 }
%struct.bwi_mac = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"not cur regwin\00", align 1
@BWI_REGWIN_T_BUSPCI = common dso_local global i64 0, align 8
@BWI_FLAGS = common dso_local global i32 0, align 4
@BWI_INTRVEC = common dso_local global i32 0, align 4
@BWI_FLAGS_INTR_MASK = common dso_local global i32 0, align 4
@BWI_PCIR_INTCTL = common dso_local global i32 0, align 4
@BWI_F_BUS_INITED = common dso_local global i32 0, align 4
@BWI_BUS_CONFIG = common dso_local global i32 0, align 4
@BWI_BUS_CONFIG_PREFETCH = common dso_local global i32 0, align 4
@BWI_BUS_CONFIG_BURST = common dso_local global i32 0, align 4
@BWI_CONF_LO = common dso_local global i32 0, align 4
@BWI_CONF_LO_SERVTO = common dso_local global i32 0, align 4
@BWI_CONF_LO_SERVTO_MASK = common dso_local global i32 0, align 4
@BWI_CONF_LO_REQTO = common dso_local global i32 0, align 4
@BWI_CONF_LO_REQTO_MASK = common dso_local global i32 0, align 4
@BWI_BUS_ADDR = common dso_local global i32 0, align 4
@BWI_BUS_ADDR_MAGIC = common dso_local global i32 0, align 4
@BWI_BUS_DATA = common dso_local global i32 0, align 4
@BWI_BUS_CONFIG_MRM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwi_bus_init(%struct.bwi_softc* %0, %struct.bwi_mac* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bwi_softc*, align 8
  %5 = alloca %struct.bwi_mac*, align 8
  %6 = alloca %struct.bwi_regwin*, align 8
  %7 = alloca %struct.bwi_regwin*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bwi_regwin*, align 8
  store %struct.bwi_softc* %0, %struct.bwi_softc** %4, align 8
  store %struct.bwi_mac* %1, %struct.bwi_mac** %5, align 8
  %12 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %13 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %12, i32 0, i32 4
  store %struct.bwi_regwin* %13, %struct.bwi_regwin** %7, align 8
  %14 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %15 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.bwi_mac*, %struct.bwi_mac** %5, align 8
  %18 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %17, i32 0, i32 1
  %19 = icmp eq i32* %16, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.bwi_regwin*, %struct.bwi_regwin** %7, align 8
  %23 = getelementptr inbounds %struct.bwi_regwin, %struct.bwi_regwin* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %24, 6
  br i1 %25, label %26, label %50

26:                                               ; preds = %2
  %27 = load %struct.bwi_regwin*, %struct.bwi_regwin** %7, align 8
  %28 = getelementptr inbounds %struct.bwi_regwin, %struct.bwi_regwin* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BWI_REGWIN_T_BUSPCI, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %26
  %33 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %34 = load i32, i32* @BWI_FLAGS, align 4
  %35 = call i32 @CSR_READ_4(%struct.bwi_softc* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %37 = load %struct.bwi_regwin*, %struct.bwi_regwin** %7, align 8
  %38 = call i32 @bwi_regwin_switch(%struct.bwi_softc* %36, %struct.bwi_regwin* %37, %struct.bwi_regwin** %6)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %3, align 4
  br label %178

43:                                               ; preds = %32
  %44 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %45 = load i32, i32* @BWI_INTRVEC, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @BWI_FLAGS_INTR_MASK, align 4
  %48 = and i32 %46, %47
  %49 = call i32 @CSR_SETBITS_4(%struct.bwi_softc* %44, i32 %45, i32 %48)
  br label %78

50:                                               ; preds = %26, %2
  %51 = load %struct.bwi_mac*, %struct.bwi_mac** %5, align 8
  %52 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 1, %53
  store i32 %54, i32* %10, align 4
  %55 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %56 = load %struct.bwi_regwin*, %struct.bwi_regwin** %7, align 8
  %57 = call i32 @bwi_regwin_switch(%struct.bwi_softc* %55, %struct.bwi_regwin* %56, %struct.bwi_regwin** %6)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %3, align 4
  br label %178

62:                                               ; preds = %50
  %63 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %64 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @BWI_PCIR_INTCTL, align 4
  %67 = call i32 @pci_read_config(i32 %65, i32 %66, i32 4)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %10, align 4
  %69 = shl i32 %68, 8
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %73 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @BWI_PCIR_INTCTL, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @pci_write_config(i32 %74, i32 %75, i32 %76, i32 4)
  br label %78

78:                                               ; preds = %62, %43
  %79 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %80 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @BWI_F_BUS_INITED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %174

86:                                               ; preds = %78
  %87 = load %struct.bwi_regwin*, %struct.bwi_regwin** %7, align 8
  %88 = getelementptr inbounds %struct.bwi_regwin, %struct.bwi_regwin* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @BWI_REGWIN_T_BUSPCI, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %167

92:                                               ; preds = %86
  %93 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %94 = load i32, i32* @BWI_BUS_CONFIG, align 4
  %95 = load i32, i32* @BWI_BUS_CONFIG_PREFETCH, align 4
  %96 = load i32, i32* @BWI_BUS_CONFIG_BURST, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @CSR_SETBITS_4(%struct.bwi_softc* %93, i32 %94, i32 %97)
  %99 = load %struct.bwi_regwin*, %struct.bwi_regwin** %7, align 8
  %100 = getelementptr inbounds %struct.bwi_regwin, %struct.bwi_regwin* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %101, 5
  br i1 %102, label %103, label %155

103:                                              ; preds = %92
  %104 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %105 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %104, i32 0, i32 1
  store %struct.bwi_regwin* %105, %struct.bwi_regwin** %11, align 8
  %106 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %107 = load i32, i32* @BWI_CONF_LO, align 4
  %108 = load i32, i32* @BWI_CONF_LO_SERVTO, align 4
  %109 = load i32, i32* @BWI_CONF_LO_SERVTO_MASK, align 4
  %110 = call i32 @__SHIFTIN(i32 %108, i32 %109)
  %111 = load i32, i32* @BWI_CONF_LO_REQTO, align 4
  %112 = load i32, i32* @BWI_CONF_LO_REQTO_MASK, align 4
  %113 = call i32 @__SHIFTIN(i32 %111, i32 %112)
  %114 = or i32 %110, %113
  %115 = call i32 @CSR_SETBITS_4(%struct.bwi_softc* %106, i32 %107, i32 %114)
  %116 = load %struct.bwi_regwin*, %struct.bwi_regwin** %11, align 8
  %117 = call i64 @BWI_REGWIN_EXIST(%struct.bwi_regwin* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %103
  %120 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %121 = load %struct.bwi_regwin*, %struct.bwi_regwin** %11, align 8
  %122 = call i32 @bwi_regwin_switch(%struct.bwi_softc* %120, %struct.bwi_regwin* %121, %struct.bwi_regwin** null)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %3, align 4
  br label %178

127:                                              ; preds = %119
  br label %128

128:                                              ; preds = %127, %103
  %129 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %130 = load i32, i32* @BWI_BUS_ADDR, align 4
  %131 = load i32, i32* @BWI_BUS_ADDR_MAGIC, align 4
  %132 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %129, i32 %130, i32 %131)
  %133 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %134 = load i32, i32* @BWI_BUS_ADDR, align 4
  %135 = call i32 @CSR_READ_4(%struct.bwi_softc* %133, i32 %134)
  %136 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %137 = load i32, i32* @BWI_BUS_DATA, align 4
  %138 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %136, i32 %137, i32 0)
  %139 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %140 = load i32, i32* @BWI_BUS_DATA, align 4
  %141 = call i32 @CSR_READ_4(%struct.bwi_softc* %139, i32 %140)
  %142 = load %struct.bwi_regwin*, %struct.bwi_regwin** %11, align 8
  %143 = call i64 @BWI_REGWIN_EXIST(%struct.bwi_regwin* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %128
  %146 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %147 = load %struct.bwi_regwin*, %struct.bwi_regwin** %7, align 8
  %148 = call i32 @bwi_regwin_switch(%struct.bwi_softc* %146, %struct.bwi_regwin* %147, %struct.bwi_regwin** null)
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = load i32, i32* %9, align 4
  store i32 %152, i32* %3, align 4
  br label %178

153:                                              ; preds = %145
  br label %154

154:                                              ; preds = %153, %128
  br label %166

155:                                              ; preds = %92
  %156 = load %struct.bwi_regwin*, %struct.bwi_regwin** %7, align 8
  %157 = getelementptr inbounds %struct.bwi_regwin, %struct.bwi_regwin* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp sge i32 %158, 11
  br i1 %159, label %160, label %165

160:                                              ; preds = %155
  %161 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %162 = load i32, i32* @BWI_BUS_CONFIG, align 4
  %163 = load i32, i32* @BWI_BUS_CONFIG_MRM, align 4
  %164 = call i32 @CSR_SETBITS_4(%struct.bwi_softc* %161, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %160, %155
  br label %166

166:                                              ; preds = %165, %154
  br label %168

167:                                              ; preds = %86
  br label %168

168:                                              ; preds = %167, %166
  %169 = load i32, i32* @BWI_F_BUS_INITED, align 4
  %170 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %171 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 8
  br label %174

174:                                              ; preds = %168, %85
  %175 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %176 = load %struct.bwi_regwin*, %struct.bwi_regwin** %6, align 8
  %177 = call i32 @bwi_regwin_switch(%struct.bwi_softc* %175, %struct.bwi_regwin* %176, %struct.bwi_regwin** null)
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %174, %151, %125, %60, %41
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @CSR_READ_4(%struct.bwi_softc*, i32) #1

declare dso_local i32 @bwi_regwin_switch(%struct.bwi_softc*, %struct.bwi_regwin*, %struct.bwi_regwin**) #1

declare dso_local i32 @CSR_SETBITS_4(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @__SHIFTIN(i32, i32) #1

declare dso_local i64 @BWI_REGWIN_EXIST(%struct.bwi_regwin*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bwi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
