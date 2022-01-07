; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.my_softc = type { i32, i32*, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i64, %struct.ifnet* }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.TYPE_3__ = type { i64 }
%struct.ifnet = type { i32, i32 }

@PHY_BMCR = common dso_local global i32 0, align 4
@MY_BCR = common dso_local global i32 0, align 4
@MY_PBL8 = common dso_local global i32 0, align 4
@MY_TCRRCR = common dso_local global i32 0, align 4
@MY_TFTSF = common dso_local global i32 0, align 4
@MY_RBLEN = common dso_local global i32 0, align 4
@MY_RPBLE512 = common dso_local global i32 0, align 4
@MTD891ID = common dso_local global i64 0, align 8
@MY_PROG = common dso_local global i32 0, align 4
@MY_Enhanced = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"init failed: no memory for rx buffers\0A\00", align 1
@IFF_PROMISC = common dso_local global i32 0, align 4
@MY_PROM = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@MY_AB = common dso_local global i32 0, align 4
@MY_RE = common dso_local global i32 0, align 4
@MY_RXLBA = common dso_local global i32 0, align 4
@MY_IMR = common dso_local global i32 0, align 4
@MY_INTRS = common dso_local global i32 0, align 4
@MY_ISR = common dso_local global i32 0, align 4
@MY_TE = common dso_local global i32 0, align 4
@MY_TXLBA = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@my_watchdog = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.my_softc*)* @my_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @my_init_locked(%struct.my_softc* %0) #0 {
  %2 = alloca %struct.my_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  store %struct.my_softc* %0, %struct.my_softc** %2, align 8
  %5 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %6 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %5, i32 0, i32 6
  %7 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  store %struct.ifnet* %7, %struct.ifnet** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %9 = call i32 @MY_LOCK_ASSERT(%struct.my_softc* %8)
  %10 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %11 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %181

15:                                               ; preds = %1
  %16 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %17 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %22 = load i32, i32* @PHY_BMCR, align 4
  %23 = call i32 @my_phy_readreg(%struct.my_softc* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %20, %15
  %25 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %26 = call i32 @my_stop(%struct.my_softc* %25)
  %27 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %28 = call i32 @my_reset(%struct.my_softc* %27)
  %29 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %30 = load i32, i32* @MY_BCR, align 4
  %31 = load i32, i32* @MY_PBL8, align 4
  %32 = call i32 @CSR_WRITE_4(%struct.my_softc* %29, i32 %30, i32 %31)
  %33 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %34 = load i32, i32* @MY_TCRRCR, align 4
  %35 = load i32, i32* @MY_TFTSF, align 4
  %36 = load i32, i32* @MY_RBLEN, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @MY_RPBLE512, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @CSR_WRITE_4(%struct.my_softc* %33, i32 %34, i32 %39)
  %41 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %42 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %41, i32 0, i32 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MTD891ID, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %24
  %49 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %50 = load i32, i32* @MY_BCR, align 4
  %51 = load i32, i32* @MY_PROG, align 4
  %52 = call i32 @MY_SETBIT(%struct.my_softc* %49, i32 %50, i32 %51)
  %53 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %54 = load i32, i32* @MY_TCRRCR, align 4
  %55 = load i32, i32* @MY_Enhanced, align 4
  %56 = call i32 @MY_SETBIT(%struct.my_softc* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %48, %24
  %58 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @my_setcfg(%struct.my_softc* %58, i32 %59)
  %61 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %62 = call i64 @my_list_rx_init(%struct.my_softc* %61)
  %63 = load i64, i64* @ENOBUFS, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %67 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @device_printf(i32 %68, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %70 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %71 = call i32 @my_stop(%struct.my_softc* %70)
  br label %181

72:                                               ; preds = %57
  %73 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %74 = call i32 @my_list_tx_init(%struct.my_softc* %73)
  %75 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %76 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @IFF_PROMISC, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %72
  %82 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %83 = load i32, i32* @MY_TCRRCR, align 4
  %84 = load i32, i32* @MY_PROM, align 4
  %85 = call i32 @MY_SETBIT(%struct.my_softc* %82, i32 %83, i32 %84)
  br label %91

86:                                               ; preds = %72
  %87 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %88 = load i32, i32* @MY_TCRRCR, align 4
  %89 = load i32, i32* @MY_PROM, align 4
  %90 = call i32 @MY_CLRBIT(%struct.my_softc* %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %81
  %92 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %93 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @IFF_BROADCAST, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %100 = load i32, i32* @MY_TCRRCR, align 4
  %101 = load i32, i32* @MY_AB, align 4
  %102 = call i32 @MY_SETBIT(%struct.my_softc* %99, i32 %100, i32 %101)
  br label %108

103:                                              ; preds = %91
  %104 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %105 = load i32, i32* @MY_TCRRCR, align 4
  %106 = load i32, i32* @MY_AB, align 4
  %107 = call i32 @MY_CLRBIT(%struct.my_softc* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %103, %98
  %109 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %110 = call i32 @my_setmulti(%struct.my_softc* %109)
  %111 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %112 = load i32, i32* @MY_TCRRCR, align 4
  %113 = load i32, i32* @MY_RE, align 4
  %114 = call i32 @MY_CLRBIT(%struct.my_softc* %111, i32 %112, i32 %113)
  %115 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %116 = load i32, i32* @MY_RXLBA, align 4
  %117 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %118 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %117, i32 0, i32 2
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = call i32 @vtophys(i32* %122)
  %124 = call i32 @CSR_WRITE_4(%struct.my_softc* %115, i32 %116, i32 %123)
  %125 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %126 = load i32, i32* @MY_IMR, align 4
  %127 = load i32, i32* @MY_INTRS, align 4
  %128 = call i32 @CSR_WRITE_4(%struct.my_softc* %125, i32 %126, i32 %127)
  %129 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %130 = load i32, i32* @MY_ISR, align 4
  %131 = call i32 @CSR_WRITE_4(%struct.my_softc* %129, i32 %130, i32 -1)
  %132 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %133 = load i32, i32* @MY_TCRRCR, align 4
  %134 = load i32, i32* @MY_RE, align 4
  %135 = call i32 @MY_SETBIT(%struct.my_softc* %132, i32 %133, i32 %134)
  %136 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %137 = load i32, i32* @MY_TCRRCR, align 4
  %138 = load i32, i32* @MY_TE, align 4
  %139 = call i32 @MY_CLRBIT(%struct.my_softc* %136, i32 %137, i32 %138)
  %140 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %141 = load i32, i32* @MY_TXLBA, align 4
  %142 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %143 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %142, i32 0, i32 2
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = call i32 @vtophys(i32* %147)
  %149 = call i32 @CSR_WRITE_4(%struct.my_softc* %140, i32 %141, i32 %148)
  %150 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %151 = load i32, i32* @MY_TCRRCR, align 4
  %152 = load i32, i32* @MY_TE, align 4
  %153 = call i32 @MY_SETBIT(%struct.my_softc* %150, i32 %151, i32 %152)
  %154 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %155 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %163

158:                                              ; preds = %108
  %159 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %160 = load i32, i32* @PHY_BMCR, align 4
  %161 = load i32, i32* %4, align 4
  %162 = call i32 @my_phy_writereg(%struct.my_softc* %159, i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %158, %108
  %164 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %165 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %166 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 4
  %169 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %170 = xor i32 %169, -1
  %171 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %172 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, %170
  store i32 %174, i32* %172, align 4
  %175 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %176 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %175, i32 0, i32 0
  %177 = load i32, i32* @hz, align 4
  %178 = load i32, i32* @my_watchdog, align 4
  %179 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %180 = call i32 @callout_reset(i32* %176, i32 %177, i32 %178, %struct.my_softc* %179)
  br label %181

181:                                              ; preds = %163, %65, %14
  ret void
}

declare dso_local i32 @MY_LOCK_ASSERT(%struct.my_softc*) #1

declare dso_local i32 @my_phy_readreg(%struct.my_softc*, i32) #1

declare dso_local i32 @my_stop(%struct.my_softc*) #1

declare dso_local i32 @my_reset(%struct.my_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.my_softc*, i32, i32) #1

declare dso_local i32 @MY_SETBIT(%struct.my_softc*, i32, i32) #1

declare dso_local i32 @my_setcfg(%struct.my_softc*, i32) #1

declare dso_local i64 @my_list_rx_init(%struct.my_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @my_list_tx_init(%struct.my_softc*) #1

declare dso_local i32 @MY_CLRBIT(%struct.my_softc*, i32, i32) #1

declare dso_local i32 @my_setmulti(%struct.my_softc*) #1

declare dso_local i32 @vtophys(i32*) #1

declare dso_local i32 @my_phy_writereg(%struct.my_softc*, i32, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.my_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
