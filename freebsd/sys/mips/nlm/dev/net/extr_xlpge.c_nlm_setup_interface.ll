; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_setup_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_setup_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_xlpnae_softc = type { i32, %struct.TYPE_2__*, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@XAUIC = common dso_local global i32 0, align 4
@SGMIIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlm_xlpnae_softc*, i32, i32, i32, i32, i32, i32)* @nlm_setup_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_setup_interface(%struct.nlm_xlpnae_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.nlm_xlpnae_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nlm_xlpnae_softc* %0, %struct.nlm_xlpnae_softc** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %8, align 8
  %19 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %15, align 4
  store i32 1536, i32* %16, align 4
  %21 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %8, align 8
  %22 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @XAUIC, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %7
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  %35 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %8, align 8
  %36 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @nlm_config_xaui(i32 %31, i32 %32, i32 %33, i32 %34, i32 %42)
  br label %44

44:                                               ; preds = %30, %7
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %8, align 8
  %48 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @nlm_config_freein_fifo_uniq_cfg(i32 %45, i32 %46, i32 %54)
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %8, align 8
  %59 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @nlm_config_ucore_iface_mask_cfg(i32 %56, i32 %57, i32 %65)
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @nlm_program_flow_cfg(i32 %67, i32 %68, i32 %69, i32 %70)
  %72 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %8, align 8
  %73 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @SGMIIC, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %44
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %16, align 4
  %86 = call i32 @nlm_configure_sgmii_interface(i32 %82, i32 %83, i32 %84, i32 %85, i32 0)
  br label %87

87:                                               ; preds = %81, %44
  %88 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %8, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @nlm_config_egress(%struct.nlm_xlpnae_softc* %88, i32 %89, i32 %90, i32 %91, i32 %92)
  %94 = load i32, i32* %15, align 4
  %95 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %8, align 8
  %96 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @nlm_nae_init_netior(i32 %94, i32 %97)
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %8, align 8
  %102 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %8, align 8
  %110 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %109, i32 0, i32 1
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @nlm_nae_open_if(i32 %99, i32 %100, i32 %107, i32 %108, i32 %116)
  %118 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %8, align 8
  %119 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = shl i32 1, %120
  %122 = sub nsw i32 %121, 1
  store i32 %122, i32* %17, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %17, align 4
  %126 = call i32 @nlm_nae_init_ucore(i32 %123, i32 %124, i32 %125)
  ret void
}

declare dso_local i32 @nlm_config_xaui(i32, i32, i32, i32, i32) #1

declare dso_local i32 @nlm_config_freein_fifo_uniq_cfg(i32, i32, i32) #1

declare dso_local i32 @nlm_config_ucore_iface_mask_cfg(i32, i32, i32) #1

declare dso_local i32 @nlm_program_flow_cfg(i32, i32, i32, i32) #1

declare dso_local i32 @nlm_configure_sgmii_interface(i32, i32, i32, i32, i32) #1

declare dso_local i32 @nlm_config_egress(%struct.nlm_xlpnae_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @nlm_nae_init_netior(i32, i32) #1

declare dso_local i32 @nlm_nae_open_if(i32, i32, i32, i32, i32) #1

declare dso_local i32 @nlm_nae_init_ucore(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
