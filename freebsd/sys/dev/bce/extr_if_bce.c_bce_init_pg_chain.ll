; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_init_pg_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_init_pg_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bce_softc = type { i32, i32, i32*, i32, i32*, %struct.rx_bd**, i8*, i8*, i8*, i8*, i64, i64 }
%struct.rx_bd = type { i8*, i8* }

@BCE_VERBOSE_RESET = common dso_local global i32 0, align 4
@BCE_VERBOSE_RECV = common dso_local global i32 0, align 4
@BCE_VERBOSE_LOAD = common dso_local global i32 0, align 4
@BCE_VERBOSE_CTX = common dso_local global i32 0, align 4
@USABLE_PG_BD_ALLOC = common dso_local global i8* null, align 8
@USABLE_PG_BD_PER_PAGE = common dso_local global i64 0, align 8
@BCE_CHIP_NUM_5709 = common dso_local global i64 0, align 8
@BCE_MQ_MAP_L2_3 = common dso_local global i32 0, align 4
@BCE_MQ_MAP_L2_3_DEFAULT = common dso_local global i32 0, align 4
@RX_CID = common dso_local global i32 0, align 4
@BCE_L2CTX_RX_PG_BUF_SIZE = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@BCE_L2CTX_RX_RBDC_KEY = common dso_local global i32 0, align 4
@BCE_L2CTX_RX_RBDC_JUMBO_KEY = common dso_local global i32 0, align 4
@BCE_L2CTX_RX_NX_PG_BDHADDR_HI = common dso_local global i32 0, align 4
@BCE_L2CTX_RX_NX_PG_BDHADDR_LO = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BCE_EXTREME_RECV = common dso_local global i32 0, align 4
@TOTAL_PG_BD_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bce_softc*)* @bce_init_pg_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bce_init_pg_chain(%struct.bce_softc* %0) #0 {
  %2 = alloca %struct.bce_softc*, align 8
  %3 = alloca %struct.rx_bd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bce_softc* %0, %struct.bce_softc** %2, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %9 = load i32, i32* @BCE_VERBOSE_RECV, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @BCE_VERBOSE_LOAD, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @BCE_VERBOSE_CTX, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @DBENTER(i32 %14)
  %16 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %17 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %16, i32 0, i32 11
  store i64 0, i64* %17, align 8
  %18 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %19 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %18, i32 0, i32 10
  store i64 0, i64* %19, align 8
  %20 = load i8*, i8** @USABLE_PG_BD_ALLOC, align 8
  %21 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %22 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %21, i32 0, i32 9
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @USABLE_PG_BD_ALLOC, align 8
  %24 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %25 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %24, i32 0, i32 7
  store i8* %23, i8** %25, align 8
  %26 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %27 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %26, i32 0, i32 7
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %30 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %29, i32 0, i32 8
  store i8* %28, i8** %30, align 8
  %31 = call i32 @DBRUN(i8* %28)
  %32 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %33 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %32, i32 0, i32 6
  store i8* null, i8** %33, align 8
  %34 = call i32 @DBRUN(i8* null)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %84, %1
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %38 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %87

41:                                               ; preds = %35
  %42 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %43 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %42, i32 0, i32 5
  %44 = load %struct.rx_bd**, %struct.rx_bd*** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.rx_bd*, %struct.rx_bd** %44, i64 %46
  %48 = load %struct.rx_bd*, %struct.rx_bd** %47, align 8
  %49 = load i64, i64* @USABLE_PG_BD_PER_PAGE, align 8
  %50 = getelementptr inbounds %struct.rx_bd, %struct.rx_bd* %48, i64 %49
  store %struct.rx_bd* %50, %struct.rx_bd** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %53 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 1
  %56 = icmp eq i32 %51, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %61

58:                                               ; preds = %41
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %58, %57
  %62 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %63 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @BCE_ADDR_HI(i32 %68)
  %70 = call i8* @htole32(i32 %69)
  %71 = load %struct.rx_bd*, %struct.rx_bd** %3, align 8
  %72 = getelementptr inbounds %struct.rx_bd, %struct.rx_bd* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %74 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @BCE_ADDR_LO(i32 %79)
  %81 = call i8* @htole32(i32 %80)
  %82 = load %struct.rx_bd*, %struct.rx_bd** %3, align 8
  %83 = getelementptr inbounds %struct.rx_bd, %struct.rx_bd* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %61
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %35

87:                                               ; preds = %35
  %88 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %89 = call i64 @BCE_CHIP_NUM(%struct.bce_softc* %88)
  %90 = load i64, i64* @BCE_CHIP_NUM_5709, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %94 = load i32, i32* @BCE_MQ_MAP_L2_3, align 4
  %95 = load i32, i32* @BCE_MQ_MAP_L2_3_DEFAULT, align 4
  %96 = call i32 @REG_WR(%struct.bce_softc* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %92, %87
  %98 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %99 = load i32, i32* @RX_CID, align 4
  %100 = call i32 @GET_CID_ADDR(i32 %99)
  %101 = load i32, i32* @BCE_L2CTX_RX_PG_BUF_SIZE, align 4
  %102 = call i32 @CTX_WR(%struct.bce_softc* %98, i32 %100, i32 %101, i32 0)
  %103 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %104 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %105, 16
  %107 = load i32, i32* @MCLBYTES, align 4
  %108 = or i32 %106, %107
  store i32 %108, i32* %6, align 4
  %109 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %110 = load i32, i32* @RX_CID, align 4
  %111 = call i32 @GET_CID_ADDR(i32 %110)
  %112 = load i32, i32* @BCE_L2CTX_RX_PG_BUF_SIZE, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @CTX_WR(%struct.bce_softc* %109, i32 %111, i32 %112, i32 %113)
  %115 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %116 = load i32, i32* @RX_CID, align 4
  %117 = call i32 @GET_CID_ADDR(i32 %116)
  %118 = load i32, i32* @BCE_L2CTX_RX_RBDC_KEY, align 4
  %119 = load i32, i32* @BCE_L2CTX_RX_RBDC_JUMBO_KEY, align 4
  %120 = call i32 @CTX_WR(%struct.bce_softc* %115, i32 %117, i32 %118, i32 %119)
  %121 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %122 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @BCE_ADDR_HI(i32 %125)
  store i32 %126, i32* %6, align 4
  %127 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %128 = load i32, i32* @RX_CID, align 4
  %129 = call i32 @GET_CID_ADDR(i32 %128)
  %130 = load i32, i32* @BCE_L2CTX_RX_NX_PG_BDHADDR_HI, align 4
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @CTX_WR(%struct.bce_softc* %127, i32 %129, i32 %130, i32 %131)
  %133 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %134 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %133, i32 0, i32 4
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @BCE_ADDR_LO(i32 %137)
  store i32 %138, i32* %6, align 4
  %139 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %140 = load i32, i32* @RX_CID, align 4
  %141 = call i32 @GET_CID_ADDR(i32 %140)
  %142 = load i32, i32* @BCE_L2CTX_RX_NX_PG_BDHADDR_LO, align 4
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @CTX_WR(%struct.bce_softc* %139, i32 %141, i32 %142, i32 %143)
  %145 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %146 = call i32 @bce_fill_pg_chain(%struct.bce_softc* %145)
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %168, %97
  %148 = load i32, i32* %4, align 4
  %149 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %150 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp slt i32 %148, %151
  br i1 %152, label %153, label %171

153:                                              ; preds = %147
  %154 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %155 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %158 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %4, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %165 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %166 = or i32 %164, %165
  %167 = call i32 @bus_dmamap_sync(i32 %156, i32 %163, i32 %166)
  br label %168

168:                                              ; preds = %153
  %169 = load i32, i32* %4, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %4, align 4
  br label %147

171:                                              ; preds = %147
  %172 = load i32, i32* @BCE_EXTREME_RECV, align 4
  %173 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %174 = load i32, i32* @TOTAL_PG_BD_ALLOC, align 4
  %175 = call i32 @bce_dump_pg_chain(%struct.bce_softc* %173, i32 0, i32 %174)
  %176 = call i32 @DBRUNMSG(i32 %172, i32 %175)
  %177 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %178 = load i32, i32* @BCE_VERBOSE_RECV, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @BCE_VERBOSE_LOAD, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @BCE_VERBOSE_CTX, align 4
  %183 = or i32 %181, %182
  %184 = call i32 @DBEXIT(i32 %183)
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

declare dso_local i32 @DBENTER(i32) #1

declare dso_local i32 @DBRUN(i8*) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @BCE_ADDR_HI(i32) #1

declare dso_local i32 @BCE_ADDR_LO(i32) #1

declare dso_local i64 @BCE_CHIP_NUM(%struct.bce_softc*) #1

declare dso_local i32 @REG_WR(%struct.bce_softc*, i32, i32) #1

declare dso_local i32 @CTX_WR(%struct.bce_softc*, i32, i32, i32) #1

declare dso_local i32 @GET_CID_ADDR(i32) #1

declare dso_local i32 @bce_fill_pg_chain(%struct.bce_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @DBRUNMSG(i32, i32) #1

declare dso_local i32 @bce_dump_pg_chain(%struct.bce_softc*, i32, i32) #1

declare dso_local i32 @DBEXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
