; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_stats_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nge_softc = type { %struct.nge_stats, %struct.ifnet* }
%struct.nge_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ifnet = type { i32 }

@NGE_MIB_RXERRPKT = common dso_local global i32 0, align 4
@NGE_MIB_RXERRFCS = common dso_local global i32 0, align 4
@NGE_MIB_RXERRMISSEDPKT = common dso_local global i32 0, align 4
@NGE_MIB_RXERRALIGN = common dso_local global i32 0, align 4
@NGE_MIB_RXERRSYM = common dso_local global i32 0, align 4
@NGE_MIB_RXERRGIANT = common dso_local global i32 0, align 4
@NGE_MIB_RXERRRANGLEN = common dso_local global i32 0, align 4
@NGE_MIB_RXBADOPCODE = common dso_local global i32 0, align 4
@NGE_MIB_RXPAUSEPKTS = common dso_local global i32 0, align 4
@NGE_MIB_TXPAUSEPKTS = common dso_local global i32 0, align 4
@NGE_MIB_TXERRSQE = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nge_softc*)* @nge_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nge_stats_update(%struct.nge_softc* %0) #0 {
  %2 = alloca %struct.nge_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.nge_stats, align 4
  %5 = alloca %struct.nge_stats*, align 8
  %6 = alloca %struct.nge_stats*, align 8
  store %struct.nge_softc* %0, %struct.nge_softc** %2, align 8
  %7 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %8 = call i32 @NGE_LOCK_ASSERT(%struct.nge_softc* %7)
  %9 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %10 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %9, i32 0, i32 1
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %3, align 8
  store %struct.nge_stats* %4, %struct.nge_stats** %5, align 8
  %12 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %13 = load i32, i32* @NGE_MIB_RXERRPKT, align 4
  %14 = call i32 @CSR_READ_4(%struct.nge_softc* %12, i32 %13)
  %15 = and i32 %14, 65535
  %16 = load %struct.nge_stats*, %struct.nge_stats** %5, align 8
  %17 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %19 = load i32, i32* @NGE_MIB_RXERRFCS, align 4
  %20 = call i32 @CSR_READ_4(%struct.nge_softc* %18, i32 %19)
  %21 = and i32 %20, 65535
  %22 = load %struct.nge_stats*, %struct.nge_stats** %5, align 8
  %23 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %25 = load i32, i32* @NGE_MIB_RXERRMISSEDPKT, align 4
  %26 = call i32 @CSR_READ_4(%struct.nge_softc* %24, i32 %25)
  %27 = and i32 %26, 65535
  %28 = load %struct.nge_stats*, %struct.nge_stats** %5, align 8
  %29 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %31 = load i32, i32* @NGE_MIB_RXERRALIGN, align 4
  %32 = call i32 @CSR_READ_4(%struct.nge_softc* %30, i32 %31)
  %33 = and i32 %32, 65535
  %34 = load %struct.nge_stats*, %struct.nge_stats** %5, align 8
  %35 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %37 = load i32, i32* @NGE_MIB_RXERRSYM, align 4
  %38 = call i32 @CSR_READ_4(%struct.nge_softc* %36, i32 %37)
  %39 = and i32 %38, 65535
  %40 = load %struct.nge_stats*, %struct.nge_stats** %5, align 8
  %41 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %43 = load i32, i32* @NGE_MIB_RXERRGIANT, align 4
  %44 = call i32 @CSR_READ_4(%struct.nge_softc* %42, i32 %43)
  %45 = and i32 %44, 65535
  %46 = load %struct.nge_stats*, %struct.nge_stats** %5, align 8
  %47 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %49 = load i32, i32* @NGE_MIB_RXERRRANGLEN, align 4
  %50 = call i32 @CSR_READ_4(%struct.nge_softc* %48, i32 %49)
  %51 = and i32 %50, 65535
  %52 = load %struct.nge_stats*, %struct.nge_stats** %5, align 8
  %53 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 4
  %54 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %55 = load i32, i32* @NGE_MIB_RXBADOPCODE, align 4
  %56 = call i32 @CSR_READ_4(%struct.nge_softc* %54, i32 %55)
  %57 = and i32 %56, 65535
  %58 = load %struct.nge_stats*, %struct.nge_stats** %5, align 8
  %59 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 4
  %60 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %61 = load i32, i32* @NGE_MIB_RXPAUSEPKTS, align 4
  %62 = call i32 @CSR_READ_4(%struct.nge_softc* %60, i32 %61)
  %63 = and i32 %62, 65535
  %64 = load %struct.nge_stats*, %struct.nge_stats** %5, align 8
  %65 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %64, i32 0, i32 8
  store i32 %63, i32* %65, align 4
  %66 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %67 = load i32, i32* @NGE_MIB_TXPAUSEPKTS, align 4
  %68 = call i32 @CSR_READ_4(%struct.nge_softc* %66, i32 %67)
  %69 = and i32 %68, 65535
  %70 = load %struct.nge_stats*, %struct.nge_stats** %5, align 8
  %71 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %70, i32 0, i32 9
  store i32 %69, i32* %71, align 4
  %72 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %73 = load i32, i32* @NGE_MIB_TXERRSQE, align 4
  %74 = call i32 @CSR_READ_4(%struct.nge_softc* %72, i32 %73)
  %75 = and i32 %74, 255
  %76 = load %struct.nge_stats*, %struct.nge_stats** %5, align 8
  %77 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %76, i32 0, i32 10
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %79 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %80 = load %struct.nge_stats*, %struct.nge_stats** %5, align 8
  %81 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.nge_stats*, %struct.nge_stats** %5, align 8
  %84 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %82, %85
  %87 = load %struct.nge_stats*, %struct.nge_stats** %5, align 8
  %88 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %86, %89
  %91 = load %struct.nge_stats*, %struct.nge_stats** %5, align 8
  %92 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %90, %93
  %95 = call i32 @if_inc_counter(%struct.ifnet* %78, i32 %79, i32 %94)
  %96 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %97 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %96, i32 0, i32 0
  store %struct.nge_stats* %97, %struct.nge_stats** %6, align 8
  %98 = load %struct.nge_stats*, %struct.nge_stats** %5, align 8
  %99 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.nge_stats*, %struct.nge_stats** %6, align 8
  %102 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, %100
  store i32 %104, i32* %102, align 4
  %105 = load %struct.nge_stats*, %struct.nge_stats** %5, align 8
  %106 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.nge_stats*, %struct.nge_stats** %6, align 8
  %109 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load %struct.nge_stats*, %struct.nge_stats** %5, align 8
  %113 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.nge_stats*, %struct.nge_stats** %6, align 8
  %116 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, %114
  store i32 %118, i32* %116, align 4
  %119 = load %struct.nge_stats*, %struct.nge_stats** %5, align 8
  %120 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.nge_stats*, %struct.nge_stats** %6, align 8
  %123 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load %struct.nge_stats*, %struct.nge_stats** %5, align 8
  %127 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.nge_stats*, %struct.nge_stats** %6, align 8
  %130 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, %128
  store i32 %132, i32* %130, align 4
  %133 = load %struct.nge_stats*, %struct.nge_stats** %5, align 8
  %134 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.nge_stats*, %struct.nge_stats** %6, align 8
  %137 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, %135
  store i32 %139, i32* %137, align 4
  %140 = load %struct.nge_stats*, %struct.nge_stats** %5, align 8
  %141 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.nge_stats*, %struct.nge_stats** %6, align 8
  %144 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, %142
  store i32 %146, i32* %144, align 4
  %147 = load %struct.nge_stats*, %struct.nge_stats** %5, align 8
  %148 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.nge_stats*, %struct.nge_stats** %6, align 8
  %151 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, %149
  store i32 %153, i32* %151, align 4
  %154 = load %struct.nge_stats*, %struct.nge_stats** %5, align 8
  %155 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %154, i32 0, i32 8
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.nge_stats*, %struct.nge_stats** %6, align 8
  %158 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %157, i32 0, i32 8
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load %struct.nge_stats*, %struct.nge_stats** %5, align 8
  %162 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %161, i32 0, i32 9
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.nge_stats*, %struct.nge_stats** %6, align 8
  %165 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %164, i32 0, i32 9
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, %163
  store i32 %167, i32* %165, align 4
  %168 = load %struct.nge_stats*, %struct.nge_stats** %5, align 8
  %169 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %168, i32 0, i32 10
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.nge_stats*, %struct.nge_stats** %6, align 8
  %172 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %171, i32 0, i32 10
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, %170
  store i32 %174, i32* %172, align 4
  ret void
}

declare dso_local i32 @NGE_LOCK_ASSERT(%struct.nge_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.nge_softc*, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
