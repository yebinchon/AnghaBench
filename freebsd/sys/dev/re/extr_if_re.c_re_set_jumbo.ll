; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_set_jumbo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_set_jumbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@RL_HWREV_8168E_VL = common dso_local global i32 0, align 4
@RL_EECMD = common dso_local global i32 0, align 4
@RL_EEMODE_WRITECFG = common dso_local global i32 0, align 4
@RL_CFG3_JUMBO_EN0 = common dso_local global i32 0, align 4
@RL_CFG4_JUMBO_EN1 = common dso_local global i32 0, align 4
@RL_EEMODE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rl_softc*, i32)* @re_set_jumbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @re_set_jumbo(%struct.rl_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rl_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.rl_softc* %0, %struct.rl_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %6 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @RL_HWREV_8168E_VL, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %14 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @pci_set_max_read_req(i32 %15, i32 4096)
  br label %145

17:                                               ; preds = %2
  %18 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %19 = load i32, i32* @RL_EECMD, align 4
  %20 = load i32, i32* @RL_EEMODE_WRITECFG, align 4
  %21 = call i32 @CSR_WRITE_1(%struct.rl_softc* %18, i32 %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %69

24:                                               ; preds = %17
  %25 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %26 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %27 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %30 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %31 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @CSR_READ_1(%struct.rl_softc* %29, i32 %32)
  %34 = load i32, i32* @RL_CFG3_JUMBO_EN0, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @CSR_WRITE_1(%struct.rl_softc* %25, i32 %28, i32 %35)
  %37 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %38 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %55 [
    i32 129, label %42
    i32 128, label %43
  ]

42:                                               ; preds = %24
  br label %68

43:                                               ; preds = %24
  %44 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %45 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %46 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %49 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %50 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @CSR_READ_1(%struct.rl_softc* %48, i32 %51)
  %53 = or i32 %52, 1
  %54 = call i32 @CSR_WRITE_1(%struct.rl_softc* %44, i32 %47, i32 %53)
  br label %68

55:                                               ; preds = %24
  %56 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %57 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %58 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %61 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %62 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @CSR_READ_1(%struct.rl_softc* %60, i32 %63)
  %65 = load i32, i32* @RL_CFG4_JUMBO_EN1, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @CSR_WRITE_1(%struct.rl_softc* %56, i32 %59, i32 %66)
  br label %68

68:                                               ; preds = %55, %43, %42
  br label %116

69:                                               ; preds = %17
  %70 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %71 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %72 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %75 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %76 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @CSR_READ_1(%struct.rl_softc* %74, i32 %77)
  %79 = load i32, i32* @RL_CFG3_JUMBO_EN0, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  %82 = call i32 @CSR_WRITE_1(%struct.rl_softc* %70, i32 %73, i32 %81)
  %83 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %84 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %101 [
    i32 129, label %88
    i32 128, label %89
  ]

88:                                               ; preds = %69
  br label %115

89:                                               ; preds = %69
  %90 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %91 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %92 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %95 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %96 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @CSR_READ_1(%struct.rl_softc* %94, i32 %97)
  %99 = and i32 %98, -2
  %100 = call i32 @CSR_WRITE_1(%struct.rl_softc* %90, i32 %93, i32 %99)
  br label %115

101:                                              ; preds = %69
  %102 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %103 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %104 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %107 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %108 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @CSR_READ_1(%struct.rl_softc* %106, i32 %109)
  %111 = load i32, i32* @RL_CFG4_JUMBO_EN1, align 4
  %112 = xor i32 %111, -1
  %113 = and i32 %110, %112
  %114 = call i32 @CSR_WRITE_1(%struct.rl_softc* %102, i32 %105, i32 %113)
  br label %115

115:                                              ; preds = %101, %89, %88
  br label %116

116:                                              ; preds = %115, %68
  %117 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %118 = load i32, i32* @RL_EECMD, align 4
  %119 = load i32, i32* @RL_EEMODE_OFF, align 4
  %120 = call i32 @CSR_WRITE_1(%struct.rl_softc* %117, i32 %118, i32 %119)
  %121 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %122 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %121, i32 0, i32 1
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  switch i32 %125, label %131 [
    i32 129, label %126
  ]

126:                                              ; preds = %116
  %127 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %128 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @pci_set_max_read_req(i32 %129, i32 4096)
  br label %145

131:                                              ; preds = %116
  %132 = load i32, i32* %4, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %136 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @pci_set_max_read_req(i32 %137, i32 512)
  br label %144

139:                                              ; preds = %131
  %140 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %141 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @pci_set_max_read_req(i32 %142, i32 4096)
  br label %144

144:                                              ; preds = %139, %134
  br label %145

145:                                              ; preds = %12, %144, %126
  ret void
}

declare dso_local i32 @pci_set_max_read_req(i32, i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_1(%struct.rl_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
