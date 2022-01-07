; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_setfilt_asix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_setfilt_asix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@DC_AX_FILTIDX = common dso_local global i32 0, align 4
@DC_AX_FILTIDX_PAR0 = common dso_local global i32 0, align 4
@DC_AX_FILTDATA = common dso_local global i32 0, align 4
@DC_AX_FILTIDX_PAR1 = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@DC_NETCFG = common dso_local global i32 0, align 4
@DC_NETCFG_RX_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@DC_NETCFG_RX_ALLMULTI = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@DC_AX_NETCFG_RX_BROAD = common dso_local global i32 0, align 4
@DC_AX_FILTIDX_MAR0 = common dso_local global i32 0, align 4
@DC_AX_FILTIDX_MAR1 = common dso_local global i32 0, align 4
@dc_hash_maddr_admtek_be = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_softc*)* @dc_setfilt_asix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_setfilt_asix(%struct.dc_softc* %0) #0 {
  %2 = alloca %struct.dc_softc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  store %struct.dc_softc* %0, %struct.dc_softc** %2, align 8
  %8 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %9 = add nsw i32 %8, 3
  %10 = sdiv i32 %9, 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = bitcast [2 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  %15 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %16 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %15, i32 0, i32 0
  %17 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  store %struct.ifnet* %17, %struct.ifnet** %5, align 8
  %18 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %19 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %18, i32 0, i32 0
  %20 = load %struct.ifnet*, %struct.ifnet** %19, align 8
  %21 = call i32 @IF_LLADDR(%struct.ifnet* %20)
  %22 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %23 = call i32 @bcopy(i32 %21, i32* %13, i32 %22)
  %24 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %25 = load i32, i32* @DC_AX_FILTIDX, align 4
  %26 = load i32, i32* @DC_AX_FILTIDX_PAR0, align 4
  %27 = call i32 @CSR_WRITE_4(%struct.dc_softc* %24, i32 %25, i32 %26)
  %28 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %29 = load i32, i32* @DC_AX_FILTDATA, align 4
  %30 = getelementptr inbounds i32, i32* %13, i64 0
  %31 = load i32, i32* %30, align 16
  %32 = call i32 @CSR_WRITE_4(%struct.dc_softc* %28, i32 %29, i32 %31)
  %33 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %34 = load i32, i32* @DC_AX_FILTIDX, align 4
  %35 = load i32, i32* @DC_AX_FILTIDX_PAR1, align 4
  %36 = call i32 @CSR_WRITE_4(%struct.dc_softc* %33, i32 %34, i32 %35)
  %37 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %38 = load i32, i32* @DC_AX_FILTDATA, align 4
  %39 = getelementptr inbounds i32, i32* %13, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @CSR_WRITE_4(%struct.dc_softc* %37, i32 %38, i32 %40)
  %42 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %43 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IFF_PROMISC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %1
  %49 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %50 = load i32, i32* @DC_NETCFG, align 4
  %51 = load i32, i32* @DC_NETCFG_RX_PROMISC, align 4
  %52 = call i32 @DC_SETBIT(%struct.dc_softc* %49, i32 %50, i32 %51)
  br label %58

53:                                               ; preds = %1
  %54 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %55 = load i32, i32* @DC_NETCFG, align 4
  %56 = load i32, i32* @DC_NETCFG_RX_PROMISC, align 4
  %57 = call i32 @DC_CLRBIT(%struct.dc_softc* %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %60 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IFF_ALLMULTI, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %67 = load i32, i32* @DC_NETCFG, align 4
  %68 = load i32, i32* @DC_NETCFG_RX_ALLMULTI, align 4
  %69 = call i32 @DC_SETBIT(%struct.dc_softc* %66, i32 %67, i32 %68)
  br label %75

70:                                               ; preds = %58
  %71 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %72 = load i32, i32* @DC_NETCFG, align 4
  %73 = load i32, i32* @DC_NETCFG_RX_ALLMULTI, align 4
  %74 = call i32 @DC_CLRBIT(%struct.dc_softc* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %70, %65
  %76 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %77 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IFF_BROADCAST, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %84 = load i32, i32* @DC_NETCFG, align 4
  %85 = load i32, i32* @DC_AX_NETCFG_RX_BROAD, align 4
  %86 = call i32 @DC_SETBIT(%struct.dc_softc* %83, i32 %84, i32 %85)
  br label %92

87:                                               ; preds = %75
  %88 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %89 = load i32, i32* @DC_NETCFG, align 4
  %90 = load i32, i32* @DC_AX_NETCFG_RX_BROAD, align 4
  %91 = call i32 @DC_CLRBIT(%struct.dc_softc* %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %87, %82
  %93 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %94 = load i32, i32* @DC_AX_FILTIDX, align 4
  %95 = load i32, i32* @DC_AX_FILTIDX_MAR0, align 4
  %96 = call i32 @CSR_WRITE_4(%struct.dc_softc* %93, i32 %94, i32 %95)
  %97 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %98 = load i32, i32* @DC_AX_FILTDATA, align 4
  %99 = call i32 @CSR_WRITE_4(%struct.dc_softc* %97, i32 %98, i32 0)
  %100 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %101 = load i32, i32* @DC_AX_FILTIDX, align 4
  %102 = load i32, i32* @DC_AX_FILTIDX_MAR1, align 4
  %103 = call i32 @CSR_WRITE_4(%struct.dc_softc* %100, i32 %101, i32 %102)
  %104 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %105 = load i32, i32* @DC_AX_FILTDATA, align 4
  %106 = call i32 @CSR_WRITE_4(%struct.dc_softc* %104, i32 %105, i32 0)
  %107 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %108 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @IFF_PROMISC, align 4
  %111 = load i32, i32* @IFF_ALLMULTI, align 4
  %112 = or i32 %110, %111
  %113 = and i32 %109, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %92
  store i32 1, i32* %7, align 4
  br label %139

116:                                              ; preds = %92
  %117 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %118 = load i32, i32* @dc_hash_maddr_admtek_be, align 4
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %120 = call i32 @if_foreach_llmaddr(%struct.ifnet* %117, i32 %118, i32* %119)
  %121 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %122 = load i32, i32* @DC_AX_FILTIDX, align 4
  %123 = load i32, i32* @DC_AX_FILTIDX_MAR0, align 4
  %124 = call i32 @CSR_WRITE_4(%struct.dc_softc* %121, i32 %122, i32 %123)
  %125 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %126 = load i32, i32* @DC_AX_FILTDATA, align 4
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @CSR_WRITE_4(%struct.dc_softc* %125, i32 %126, i32 %128)
  %130 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %131 = load i32, i32* @DC_AX_FILTIDX, align 4
  %132 = load i32, i32* @DC_AX_FILTIDX_MAR1, align 4
  %133 = call i32 @CSR_WRITE_4(%struct.dc_softc* %130, i32 %131, i32 %132)
  %134 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %135 = load i32, i32* @DC_AX_FILTDATA, align 4
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @CSR_WRITE_4(%struct.dc_softc* %134, i32 %135, i32 %137)
  store i32 0, i32* %7, align 4
  br label %139

139:                                              ; preds = %116, %115
  %140 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %140)
  %141 = load i32, i32* %7, align 4
  switch i32 %141, label %143 [
    i32 0, label %142
    i32 1, label %142
  ]

142:                                              ; preds = %139, %139
  ret void

143:                                              ; preds = %139
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @bcopy(i32, i32*, i32) #3

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #3

declare dso_local i32 @CSR_WRITE_4(%struct.dc_softc*, i32, i32) #3

declare dso_local i32 @DC_SETBIT(%struct.dc_softc*, i32, i32) #3

declare dso_local i32 @DC_CLRBIT(%struct.dc_softc*, i32, i32) #3

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
