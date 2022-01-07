; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpge_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpge_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.nlm_xlpge_softc* }
%struct.nlm_xlpge_softc = type { i32, i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, i32, i32, i32*, i32, i32, i32*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.xlp_port_ivars = type { i32, i32, i64, i32, i32, i32, i32 }

@nae_port_config = common dso_local global %struct.TYPE_5__* null, align 8
@NLM_SGMII_SPEED_10 = common dso_local global i32 0, align 4
@NLM_SGMII_DUPLEX_FULL = common dso_local global i32 0, align 4
@NLM_LINK_DOWN = common dso_local global i32 0, align 4
@NLM_FLOWCTRL_DISABLED = common dso_local global i32 0, align 4
@ifp_ports = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nlm_xlpge_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm_xlpge_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xlp_port_ivars*, align 8
  %4 = alloca %struct.nlm_xlpge_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.xlp_port_ivars* @device_get_ivars(i32 %6)
  store %struct.xlp_port_ivars* %7, %struct.xlp_port_ivars** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call i8* @device_get_softc(i32 %8)
  %10 = bitcast i8* %9 to %struct.nlm_xlpge_softc*
  store %struct.nlm_xlpge_softc* %10, %struct.nlm_xlpge_softc** %4, align 8
  %11 = load i32, i32* %2, align 4
  %12 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %13 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %12, i32 0, i32 22
  store i32 %11, i32* %13, align 8
  %14 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %15 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %14, i32 0, i32 21
  store i32* null, i32** %15, align 8
  %16 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %3, align 8
  %17 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %20 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %3, align 8
  %22 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %25 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %24, i32 0, i32 20
  store i32 %23, i32* %25, align 4
  %26 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %3, align 8
  %27 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %30 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %3, align 8
  %32 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %35 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %34, i32 0, i32 19
  store i32 %33, i32* %35, align 8
  %36 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %37 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %36, i32 0, i32 18
  store i32* null, i32** %37, align 8
  %38 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %3, align 8
  %39 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %42 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %41, i32 0, i32 17
  store i32 %40, i32* %42, align 4
  %43 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %3, align 8
  %44 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %47 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %46, i32 0, i32 16
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nae_port_config, align 8
  %49 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %50 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %49, i32 0, i32 15
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %50, align 8
  %51 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %3, align 8
  %52 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %55 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %54, i32 0, i32 3
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* @NLM_SGMII_SPEED_10, align 4
  %57 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %58 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %57, i32 0, i32 14
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @NLM_SGMII_DUPLEX_FULL, align 4
  %60 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %61 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %60, i32 0, i32 13
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @NLM_LINK_DOWN, align 4
  %63 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %64 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %63, i32 0, i32 12
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @NLM_FLOWCTRL_DISABLED, align 4
  %66 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %67 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %66, i32 0, i32 11
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %2, align 4
  %69 = call i32 @device_get_parent(i32 %68)
  %70 = call i8* @device_get_softc(i32 %69)
  %71 = bitcast i8* %70 to %struct.TYPE_4__*
  %72 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %73 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %72, i32 0, i32 8
  store %struct.TYPE_4__* %71, %struct.TYPE_4__** %73, align 8
  %74 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %75 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %74, i32 0, i32 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %80 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %82 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %81, i32 0, i32 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %87 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %86, i32 0, i32 10
  store i32 %85, i32* %87, align 4
  %88 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %89 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %88, i32 0, i32 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %94 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %93, i32 0, i32 9
  store i32 %92, i32* %94, align 8
  %95 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %96 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %95, i32 0, i32 7
  %97 = call i32 @callout_init(i32* %96, i32 1)
  %98 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %99 = load i32, i32* %2, align 4
  %100 = call i32 @device_get_nameunit(i32 %99)
  %101 = call i32 @XLPGE_LOCK_INIT(%struct.nlm_xlpge_softc* %98, i32 %100)
  %102 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %103 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = mul nsw i32 %104, 4
  %106 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %107 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %105, %108
  store i32 %109, i32* %5, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nae_port_config, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %117 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nae_port_config, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %125 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %124, i32 0, i32 6
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nae_port_config, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %133 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %132, i32 0, i32 5
  store i32 %131, i32* %133, align 4
  %134 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %135 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %136 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @nlm_xlpge_submit_rx_free_desc(%struct.nlm_xlpge_softc* %134, i32 %137)
  %139 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %140 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %1
  %144 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %145 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %148 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %151 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @nlm_enable_hardware_parser_per_port(i32 %146, i32 %149, i32 %152)
  br label %154

154:                                              ; preds = %143, %1
  %155 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %156 = call i32 @nlm_xlpge_ifinit(%struct.nlm_xlpge_softc* %155)
  %157 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ifp_ports, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  store %struct.nlm_xlpge_softc* %157, %struct.nlm_xlpge_softc** %162, align 8
  %163 = load i32, i32* %2, align 4
  %164 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %165 = call i32 @nlm_xlpge_mii_init(i32 %163, %struct.nlm_xlpge_softc* %164)
  %166 = load i32, i32* %2, align 4
  %167 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %168 = call i32 @nlm_xlpge_setup_stats_sysctl(i32 %166, %struct.nlm_xlpge_softc* %167)
  ret i32 0
}

declare dso_local %struct.xlp_port_ivars* @device_get_ivars(i32) #1

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @XLPGE_LOCK_INIT(%struct.nlm_xlpge_softc*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @nlm_xlpge_submit_rx_free_desc(%struct.nlm_xlpge_softc*, i32) #1

declare dso_local i32 @nlm_enable_hardware_parser_per_port(i32, i32, i32) #1

declare dso_local i32 @nlm_xlpge_ifinit(%struct.nlm_xlpge_softc*) #1

declare dso_local i32 @nlm_xlpge_mii_init(i32, %struct.nlm_xlpge_softc*) #1

declare dso_local i32 @nlm_xlpge_setup_stats_sysctl(i32, %struct.nlm_xlpge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
