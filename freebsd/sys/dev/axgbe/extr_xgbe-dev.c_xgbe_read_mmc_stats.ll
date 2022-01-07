; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_read_mmc_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_read_mmc_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.xgbe_mmc_stats }
%struct.xgbe_mmc_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MMC_CR = common dso_local global i32 0, align 4
@MCF = common dso_local global i32 0, align 4
@MMC_TXOCTETCOUNT_GB_LO = common dso_local global i32 0, align 4
@MMC_TXFRAMECOUNT_GB_LO = common dso_local global i32 0, align 4
@MMC_TXBROADCASTFRAMES_G_LO = common dso_local global i32 0, align 4
@MMC_TXMULTICASTFRAMES_G_LO = common dso_local global i32 0, align 4
@MMC_TX64OCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_TX65TO127OCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_TX128TO255OCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_TX256TO511OCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_TX512TO1023OCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_TX1024TOMAXOCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_TXUNICASTFRAMES_GB_LO = common dso_local global i32 0, align 4
@MMC_TXMULTICASTFRAMES_GB_LO = common dso_local global i32 0, align 4
@MMC_TXBROADCASTFRAMES_GB_LO = common dso_local global i32 0, align 4
@MMC_TXUNDERFLOWERROR_LO = common dso_local global i32 0, align 4
@MMC_TXOCTETCOUNT_G_LO = common dso_local global i32 0, align 4
@MMC_TXFRAMECOUNT_G_LO = common dso_local global i32 0, align 4
@MMC_TXPAUSEFRAMES_LO = common dso_local global i32 0, align 4
@MMC_TXVLANFRAMES_G_LO = common dso_local global i32 0, align 4
@MMC_RXFRAMECOUNT_GB_LO = common dso_local global i32 0, align 4
@MMC_RXOCTETCOUNT_GB_LO = common dso_local global i32 0, align 4
@MMC_RXOCTETCOUNT_G_LO = common dso_local global i32 0, align 4
@MMC_RXBROADCASTFRAMES_G_LO = common dso_local global i32 0, align 4
@MMC_RXMULTICASTFRAMES_G_LO = common dso_local global i32 0, align 4
@MMC_RXCRCERROR_LO = common dso_local global i32 0, align 4
@MMC_RXRUNTERROR = common dso_local global i32 0, align 4
@MMC_RXJABBERERROR = common dso_local global i32 0, align 4
@MMC_RXUNDERSIZE_G = common dso_local global i32 0, align 4
@MMC_RXOVERSIZE_G = common dso_local global i32 0, align 4
@MMC_RX64OCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_RX65TO127OCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_RX128TO255OCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_RX256TO511OCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_RX512TO1023OCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_RX1024TOMAXOCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_RXUNICASTFRAMES_G_LO = common dso_local global i32 0, align 4
@MMC_RXLENGTHERROR_LO = common dso_local global i32 0, align 4
@MMC_RXOUTOFRANGETYPE_LO = common dso_local global i32 0, align 4
@MMC_RXPAUSEFRAMES_LO = common dso_local global i32 0, align 4
@MMC_RXFIFOOVERFLOW_LO = common dso_local global i32 0, align 4
@MMC_RXVLANFRAMES_GB_LO = common dso_local global i32 0, align 4
@MMC_RXWATCHDOGERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_read_mmc_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_read_mmc_stats(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.xgbe_mmc_stats*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %4 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %5 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %4, i32 0, i32 0
  store %struct.xgbe_mmc_stats* %5, %struct.xgbe_mmc_stats** %3, align 8
  %6 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %7 = load i32, i32* @MMC_CR, align 4
  %8 = load i32, i32* @MCF, align 4
  %9 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %6, i32 %7, i32 %8, i32 1)
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %11 = load i32, i32* @MMC_TXOCTETCOUNT_GB_LO, align 4
  %12 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %10, i32 %11)
  %13 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %14 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %13, i32 0, i32 39
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %16, %12
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %14, align 4
  %19 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %20 = load i32, i32* @MMC_TXFRAMECOUNT_GB_LO, align 4
  %21 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %19, i32 %20)
  %22 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %23 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %22, i32 0, i32 38
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %21
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %23, align 4
  %28 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %29 = load i32, i32* @MMC_TXBROADCASTFRAMES_G_LO, align 4
  %30 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %28, i32 %29)
  %31 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %32 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %31, i32 0, i32 28
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %30
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 4
  %37 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %38 = load i32, i32* @MMC_TXMULTICASTFRAMES_G_LO, align 4
  %39 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %37, i32 %38)
  %40 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %41 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %40, i32 0, i32 37
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %39
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 4
  %46 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %47 = load i32, i32* @MMC_TX64OCTETS_GB_LO, align 4
  %48 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %46, i32 %47)
  %49 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %50 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %49, i32 0, i32 36
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 4
  %55 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %56 = load i32, i32* @MMC_TX65TO127OCTETS_GB_LO, align 4
  %57 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %55, i32 %56)
  %58 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %59 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %58, i32 0, i32 35
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %57
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 4
  %64 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %65 = load i32, i32* @MMC_TX128TO255OCTETS_GB_LO, align 4
  %66 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %64, i32 %65)
  %67 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %68 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %67, i32 0, i32 34
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %66
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 4
  %73 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %74 = load i32, i32* @MMC_TX256TO511OCTETS_GB_LO, align 4
  %75 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %73, i32 %74)
  %76 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %77 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %76, i32 0, i32 33
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %75
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 4
  %82 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %83 = load i32, i32* @MMC_TX512TO1023OCTETS_GB_LO, align 4
  %84 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %82, i32 %83)
  %85 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %86 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %85, i32 0, i32 32
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %84
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 4
  %91 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %92 = load i32, i32* @MMC_TX1024TOMAXOCTETS_GB_LO, align 4
  %93 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %91, i32 %92)
  %94 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %95 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %94, i32 0, i32 31
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %93
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %95, align 4
  %100 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %101 = load i32, i32* @MMC_TXUNICASTFRAMES_GB_LO, align 4
  %102 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %100, i32 %101)
  %103 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %104 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %103, i32 0, i32 30
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %102
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %104, align 4
  %109 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %110 = load i32, i32* @MMC_TXMULTICASTFRAMES_GB_LO, align 4
  %111 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %109, i32 %110)
  %112 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %113 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %112, i32 0, i32 29
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %111
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %113, align 4
  %118 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %119 = load i32, i32* @MMC_TXBROADCASTFRAMES_GB_LO, align 4
  %120 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %118, i32 %119)
  %121 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %122 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %121, i32 0, i32 28
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %120
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %122, align 4
  %127 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %128 = load i32, i32* @MMC_TXUNDERFLOWERROR_LO, align 4
  %129 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %127, i32 %128)
  %130 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %131 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %130, i32 0, i32 27
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %133, %129
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %131, align 4
  %136 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %137 = load i32, i32* @MMC_TXOCTETCOUNT_G_LO, align 4
  %138 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %136, i32 %137)
  %139 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %140 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %139, i32 0, i32 26
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %142, %138
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %140, align 4
  %145 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %146 = load i32, i32* @MMC_TXFRAMECOUNT_G_LO, align 4
  %147 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %145, i32 %146)
  %148 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %149 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %148, i32 0, i32 25
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %151, %147
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %149, align 4
  %154 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %155 = load i32, i32* @MMC_TXPAUSEFRAMES_LO, align 4
  %156 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %154, i32 %155)
  %157 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %158 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %157, i32 0, i32 24
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %160, %156
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %158, align 4
  %163 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %164 = load i32, i32* @MMC_TXVLANFRAMES_G_LO, align 4
  %165 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %163, i32 %164)
  %166 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %167 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %166, i32 0, i32 23
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %169, %165
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %167, align 4
  %172 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %173 = load i32, i32* @MMC_RXFRAMECOUNT_GB_LO, align 4
  %174 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %172, i32 %173)
  %175 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %176 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %175, i32 0, i32 22
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %178, %174
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %176, align 4
  %181 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %182 = load i32, i32* @MMC_RXOCTETCOUNT_GB_LO, align 4
  %183 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %181, i32 %182)
  %184 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %185 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %184, i32 0, i32 21
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %187, %183
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %185, align 4
  %190 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %191 = load i32, i32* @MMC_RXOCTETCOUNT_G_LO, align 4
  %192 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %190, i32 %191)
  %193 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %194 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %193, i32 0, i32 20
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = add nsw i64 %196, %192
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %194, align 4
  %199 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %200 = load i32, i32* @MMC_RXBROADCASTFRAMES_G_LO, align 4
  %201 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %199, i32 %200)
  %202 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %203 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %202, i32 0, i32 19
  %204 = load i32, i32* %203, align 4
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %205, %201
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %203, align 4
  %208 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %209 = load i32, i32* @MMC_RXMULTICASTFRAMES_G_LO, align 4
  %210 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %208, i32 %209)
  %211 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %212 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %211, i32 0, i32 18
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  %215 = add nsw i64 %214, %210
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %212, align 4
  %217 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %218 = load i32, i32* @MMC_RXCRCERROR_LO, align 4
  %219 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %217, i32 %218)
  %220 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %221 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %220, i32 0, i32 17
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  %224 = add nsw i64 %223, %219
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %221, align 4
  %226 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %227 = load i32, i32* @MMC_RXRUNTERROR, align 4
  %228 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %226, i32 %227)
  %229 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %230 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %229, i32 0, i32 16
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = add nsw i64 %232, %228
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %230, align 4
  %235 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %236 = load i32, i32* @MMC_RXJABBERERROR, align 4
  %237 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %235, i32 %236)
  %238 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %239 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %238, i32 0, i32 15
  %240 = load i32, i32* %239, align 4
  %241 = sext i32 %240 to i64
  %242 = add nsw i64 %241, %237
  %243 = trunc i64 %242 to i32
  store i32 %243, i32* %239, align 4
  %244 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %245 = load i32, i32* @MMC_RXUNDERSIZE_G, align 4
  %246 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %244, i32 %245)
  %247 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %248 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %247, i32 0, i32 14
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  %251 = add nsw i64 %250, %246
  %252 = trunc i64 %251 to i32
  store i32 %252, i32* %248, align 4
  %253 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %254 = load i32, i32* @MMC_RXOVERSIZE_G, align 4
  %255 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %253, i32 %254)
  %256 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %257 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %256, i32 0, i32 13
  %258 = load i32, i32* %257, align 4
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %259, %255
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %257, align 4
  %262 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %263 = load i32, i32* @MMC_RX64OCTETS_GB_LO, align 4
  %264 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %262, i32 %263)
  %265 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %266 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %265, i32 0, i32 12
  %267 = load i32, i32* %266, align 4
  %268 = sext i32 %267 to i64
  %269 = add nsw i64 %268, %264
  %270 = trunc i64 %269 to i32
  store i32 %270, i32* %266, align 4
  %271 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %272 = load i32, i32* @MMC_RX65TO127OCTETS_GB_LO, align 4
  %273 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %271, i32 %272)
  %274 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %275 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %274, i32 0, i32 11
  %276 = load i32, i32* %275, align 4
  %277 = sext i32 %276 to i64
  %278 = add nsw i64 %277, %273
  %279 = trunc i64 %278 to i32
  store i32 %279, i32* %275, align 4
  %280 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %281 = load i32, i32* @MMC_RX128TO255OCTETS_GB_LO, align 4
  %282 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %280, i32 %281)
  %283 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %284 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %283, i32 0, i32 10
  %285 = load i32, i32* %284, align 4
  %286 = sext i32 %285 to i64
  %287 = add nsw i64 %286, %282
  %288 = trunc i64 %287 to i32
  store i32 %288, i32* %284, align 4
  %289 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %290 = load i32, i32* @MMC_RX256TO511OCTETS_GB_LO, align 4
  %291 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %289, i32 %290)
  %292 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %293 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %292, i32 0, i32 9
  %294 = load i32, i32* %293, align 4
  %295 = sext i32 %294 to i64
  %296 = add nsw i64 %295, %291
  %297 = trunc i64 %296 to i32
  store i32 %297, i32* %293, align 4
  %298 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %299 = load i32, i32* @MMC_RX512TO1023OCTETS_GB_LO, align 4
  %300 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %298, i32 %299)
  %301 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %302 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %301, i32 0, i32 8
  %303 = load i32, i32* %302, align 4
  %304 = sext i32 %303 to i64
  %305 = add nsw i64 %304, %300
  %306 = trunc i64 %305 to i32
  store i32 %306, i32* %302, align 4
  %307 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %308 = load i32, i32* @MMC_RX1024TOMAXOCTETS_GB_LO, align 4
  %309 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %307, i32 %308)
  %310 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %311 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %310, i32 0, i32 7
  %312 = load i32, i32* %311, align 4
  %313 = sext i32 %312 to i64
  %314 = add nsw i64 %313, %309
  %315 = trunc i64 %314 to i32
  store i32 %315, i32* %311, align 4
  %316 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %317 = load i32, i32* @MMC_RXUNICASTFRAMES_G_LO, align 4
  %318 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %316, i32 %317)
  %319 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %320 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %319, i32 0, i32 6
  %321 = load i32, i32* %320, align 4
  %322 = sext i32 %321 to i64
  %323 = add nsw i64 %322, %318
  %324 = trunc i64 %323 to i32
  store i32 %324, i32* %320, align 4
  %325 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %326 = load i32, i32* @MMC_RXLENGTHERROR_LO, align 4
  %327 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %325, i32 %326)
  %328 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %329 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %328, i32 0, i32 5
  %330 = load i32, i32* %329, align 4
  %331 = sext i32 %330 to i64
  %332 = add nsw i64 %331, %327
  %333 = trunc i64 %332 to i32
  store i32 %333, i32* %329, align 4
  %334 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %335 = load i32, i32* @MMC_RXOUTOFRANGETYPE_LO, align 4
  %336 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %334, i32 %335)
  %337 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %338 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %337, i32 0, i32 4
  %339 = load i32, i32* %338, align 4
  %340 = sext i32 %339 to i64
  %341 = add nsw i64 %340, %336
  %342 = trunc i64 %341 to i32
  store i32 %342, i32* %338, align 4
  %343 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %344 = load i32, i32* @MMC_RXPAUSEFRAMES_LO, align 4
  %345 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %343, i32 %344)
  %346 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %347 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %346, i32 0, i32 3
  %348 = load i32, i32* %347, align 4
  %349 = sext i32 %348 to i64
  %350 = add nsw i64 %349, %345
  %351 = trunc i64 %350 to i32
  store i32 %351, i32* %347, align 4
  %352 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %353 = load i32, i32* @MMC_RXFIFOOVERFLOW_LO, align 4
  %354 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %352, i32 %353)
  %355 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %356 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 4
  %358 = sext i32 %357 to i64
  %359 = add nsw i64 %358, %354
  %360 = trunc i64 %359 to i32
  store i32 %360, i32* %356, align 4
  %361 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %362 = load i32, i32* @MMC_RXVLANFRAMES_GB_LO, align 4
  %363 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %361, i32 %362)
  %364 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %365 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = sext i32 %366 to i64
  %368 = add nsw i64 %367, %363
  %369 = trunc i64 %368 to i32
  store i32 %369, i32* %365, align 4
  %370 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %371 = load i32, i32* @MMC_RXWATCHDOGERROR, align 4
  %372 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %370, i32 %371)
  %373 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %374 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = sext i32 %375 to i64
  %377 = add nsw i64 %376, %372
  %378 = trunc i64 %377 to i32
  store i32 %378, i32* %374, align 4
  %379 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %380 = load i32, i32* @MMC_CR, align 4
  %381 = load i32, i32* @MCF, align 4
  %382 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %379, i32 %380, i32 %381, i32 0)
  ret void
}

declare dso_local i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i64 @xgbe_mmc_read(%struct.xgbe_prv_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
