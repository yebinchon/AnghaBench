; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-drv.c_xgbe_get_all_hw_features.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-drv.c_xgbe_get_all_hw_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.xgbe_hw_features }
%struct.xgbe_hw_features = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [29 x i8] c"-->xgbe_get_all_hw_features\0A\00", align 1
@MAC_HWF0R = common dso_local global i32 0, align 4
@MAC_HWF1R = common dso_local global i32 0, align 4
@MAC_HWF2R = common dso_local global i32 0, align 4
@MAC_VR = common dso_local global i32 0, align 4
@GMIISEL = common dso_local global i32 0, align 4
@VLHASH = common dso_local global i32 0, align 4
@SMASEL = common dso_local global i32 0, align 4
@RWKSEL = common dso_local global i32 0, align 4
@MGKSEL = common dso_local global i32 0, align 4
@MMCSEL = common dso_local global i32 0, align 4
@ARPOFFSEL = common dso_local global i32 0, align 4
@TSSEL = common dso_local global i32 0, align 4
@EEESEL = common dso_local global i32 0, align 4
@TXCOESEL = common dso_local global i32 0, align 4
@RXCOESEL = common dso_local global i32 0, align 4
@ADDMACADRSEL = common dso_local global i32 0, align 4
@TSSTSSEL = common dso_local global i32 0, align 4
@SAVLANINS = common dso_local global i32 0, align 4
@RXFIFOSIZE = common dso_local global i32 0, align 4
@TXFIFOSIZE = common dso_local global i32 0, align 4
@ADVTHWORD = common dso_local global i32 0, align 4
@ADDR64 = common dso_local global i32 0, align 4
@DCBEN = common dso_local global i32 0, align 4
@SPHEN = common dso_local global i32 0, align 4
@TSOEN = common dso_local global i32 0, align 4
@DBGMEMA = common dso_local global i32 0, align 4
@RSSEN = common dso_local global i32 0, align 4
@NUMTC = common dso_local global i32 0, align 4
@HASHTBLSZ = common dso_local global i32 0, align 4
@L3L4FNUM = common dso_local global i32 0, align 4
@RXQCNT = common dso_local global i32 0, align 4
@TXQCNT = common dso_local global i32 0, align 4
@RXCHCNT = common dso_local global i32 0, align 4
@TXCHCNT = common dso_local global i32 0, align 4
@PPSOUTNUM = common dso_local global i32 0, align 4
@AUXSNAPNUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"<--xgbe_get_all_hw_features\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xgbe_get_all_hw_features(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.xgbe_hw_features*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %7 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %8 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %7, i32 0, i32 0
  store %struct.xgbe_hw_features* %8, %struct.xgbe_hw_features** %6, align 8
  %9 = call i32 @DBGPR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %11 = load i32, i32* @MAC_HWF0R, align 4
  %12 = call i8* @XGMAC_IOREAD(%struct.xgbe_prv_data* %10, i32 %11)
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %3, align 4
  %14 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %15 = load i32, i32* @MAC_HWF1R, align 4
  %16 = call i8* @XGMAC_IOREAD(%struct.xgbe_prv_data* %14, i32 %15)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %4, align 4
  %18 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %19 = load i32, i32* @MAC_HWF2R, align 4
  %20 = call i8* @XGMAC_IOREAD(%struct.xgbe_prv_data* %18, i32 %19)
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %23 = call i32 @memset(%struct.xgbe_hw_features* %22, i32 0, i32 256)
  %24 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %25 = load i32, i32* @MAC_VR, align 4
  %26 = call i8* @XGMAC_IOREAD(%struct.xgbe_prv_data* %24, i32 %25)
  %27 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %28 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %27, i32 0, i32 32
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @MAC_HWF0R, align 4
  %31 = load i32, i32* @GMIISEL, align 4
  %32 = call i8* @XGMAC_GET_BITS(i32 %29, i32 %30, i32 %31)
  %33 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %34 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %33, i32 0, i32 31
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @MAC_HWF0R, align 4
  %37 = load i32, i32* @VLHASH, align 4
  %38 = call i8* @XGMAC_GET_BITS(i32 %35, i32 %36, i32 %37)
  %39 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %40 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %39, i32 0, i32 30
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @MAC_HWF0R, align 4
  %43 = load i32, i32* @SMASEL, align 4
  %44 = call i8* @XGMAC_GET_BITS(i32 %41, i32 %42, i32 %43)
  %45 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %46 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %45, i32 0, i32 29
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @MAC_HWF0R, align 4
  %49 = load i32, i32* @RWKSEL, align 4
  %50 = call i8* @XGMAC_GET_BITS(i32 %47, i32 %48, i32 %49)
  %51 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %52 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %51, i32 0, i32 28
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @MAC_HWF0R, align 4
  %55 = load i32, i32* @MGKSEL, align 4
  %56 = call i8* @XGMAC_GET_BITS(i32 %53, i32 %54, i32 %55)
  %57 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %58 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %57, i32 0, i32 27
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @MAC_HWF0R, align 4
  %61 = load i32, i32* @MMCSEL, align 4
  %62 = call i8* @XGMAC_GET_BITS(i32 %59, i32 %60, i32 %61)
  %63 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %64 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %63, i32 0, i32 26
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @MAC_HWF0R, align 4
  %67 = load i32, i32* @ARPOFFSEL, align 4
  %68 = call i8* @XGMAC_GET_BITS(i32 %65, i32 %66, i32 %67)
  %69 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %70 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %69, i32 0, i32 25
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @MAC_HWF0R, align 4
  %73 = load i32, i32* @TSSEL, align 4
  %74 = call i8* @XGMAC_GET_BITS(i32 %71, i32 %72, i32 %73)
  %75 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %76 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %75, i32 0, i32 24
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @MAC_HWF0R, align 4
  %79 = load i32, i32* @EEESEL, align 4
  %80 = call i8* @XGMAC_GET_BITS(i32 %77, i32 %78, i32 %79)
  %81 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %82 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %81, i32 0, i32 23
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @MAC_HWF0R, align 4
  %85 = load i32, i32* @TXCOESEL, align 4
  %86 = call i8* @XGMAC_GET_BITS(i32 %83, i32 %84, i32 %85)
  %87 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %88 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %87, i32 0, i32 22
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @MAC_HWF0R, align 4
  %91 = load i32, i32* @RXCOESEL, align 4
  %92 = call i8* @XGMAC_GET_BITS(i32 %89, i32 %90, i32 %91)
  %93 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %94 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %93, i32 0, i32 21
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* @MAC_HWF0R, align 4
  %97 = load i32, i32* @ADDMACADRSEL, align 4
  %98 = call i8* @XGMAC_GET_BITS(i32 %95, i32 %96, i32 %97)
  %99 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %100 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %99, i32 0, i32 20
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* @MAC_HWF0R, align 4
  %103 = load i32, i32* @TSSTSSEL, align 4
  %104 = call i8* @XGMAC_GET_BITS(i32 %101, i32 %102, i32 %103)
  %105 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %106 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %105, i32 0, i32 19
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* @MAC_HWF0R, align 4
  %109 = load i32, i32* @SAVLANINS, align 4
  %110 = call i8* @XGMAC_GET_BITS(i32 %107, i32 %108, i32 %109)
  %111 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %112 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %111, i32 0, i32 18
  store i8* %110, i8** %112, align 8
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @MAC_HWF1R, align 4
  %115 = load i32, i32* @RXFIFOSIZE, align 4
  %116 = call i8* @XGMAC_GET_BITS(i32 %113, i32 %114, i32 %115)
  %117 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %118 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %117, i32 0, i32 17
  store i8* %116, i8** %118, align 8
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @MAC_HWF1R, align 4
  %121 = load i32, i32* @TXFIFOSIZE, align 4
  %122 = call i8* @XGMAC_GET_BITS(i32 %119, i32 %120, i32 %121)
  %123 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %124 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %123, i32 0, i32 16
  store i8* %122, i8** %124, align 8
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @MAC_HWF1R, align 4
  %127 = load i32, i32* @ADVTHWORD, align 4
  %128 = call i8* @XGMAC_GET_BITS(i32 %125, i32 %126, i32 %127)
  %129 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %130 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %129, i32 0, i32 15
  store i8* %128, i8** %130, align 8
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @MAC_HWF1R, align 4
  %133 = load i32, i32* @ADDR64, align 4
  %134 = call i8* @XGMAC_GET_BITS(i32 %131, i32 %132, i32 %133)
  %135 = ptrtoint i8* %134 to i32
  %136 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %137 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* @MAC_HWF1R, align 4
  %140 = load i32, i32* @DCBEN, align 4
  %141 = call i8* @XGMAC_GET_BITS(i32 %138, i32 %139, i32 %140)
  %142 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %143 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %142, i32 0, i32 14
  store i8* %141, i8** %143, align 8
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @MAC_HWF1R, align 4
  %146 = load i32, i32* @SPHEN, align 4
  %147 = call i8* @XGMAC_GET_BITS(i32 %144, i32 %145, i32 %146)
  %148 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %149 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %148, i32 0, i32 13
  store i8* %147, i8** %149, align 8
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @MAC_HWF1R, align 4
  %152 = load i32, i32* @TSOEN, align 4
  %153 = call i8* @XGMAC_GET_BITS(i32 %150, i32 %151, i32 %152)
  %154 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %155 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %154, i32 0, i32 12
  store i8* %153, i8** %155, align 8
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* @MAC_HWF1R, align 4
  %158 = load i32, i32* @DBGMEMA, align 4
  %159 = call i8* @XGMAC_GET_BITS(i32 %156, i32 %157, i32 %158)
  %160 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %161 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %160, i32 0, i32 11
  store i8* %159, i8** %161, align 8
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* @MAC_HWF1R, align 4
  %164 = load i32, i32* @RSSEN, align 4
  %165 = call i8* @XGMAC_GET_BITS(i32 %162, i32 %163, i32 %164)
  %166 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %167 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %166, i32 0, i32 10
  store i8* %165, i8** %167, align 8
  %168 = load i32, i32* %4, align 4
  %169 = load i32, i32* @MAC_HWF1R, align 4
  %170 = load i32, i32* @NUMTC, align 4
  %171 = call i8* @XGMAC_GET_BITS(i32 %168, i32 %169, i32 %170)
  %172 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %173 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %172, i32 0, i32 2
  store i8* %171, i8** %173, align 8
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* @MAC_HWF1R, align 4
  %176 = load i32, i32* @HASHTBLSZ, align 4
  %177 = call i8* @XGMAC_GET_BITS(i32 %174, i32 %175, i32 %176)
  %178 = ptrtoint i8* %177 to i32
  %179 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %180 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* %4, align 4
  %182 = load i32, i32* @MAC_HWF1R, align 4
  %183 = load i32, i32* @L3L4FNUM, align 4
  %184 = call i8* @XGMAC_GET_BITS(i32 %181, i32 %182, i32 %183)
  %185 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %186 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %185, i32 0, i32 9
  store i8* %184, i8** %186, align 8
  %187 = load i32, i32* %5, align 4
  %188 = load i32, i32* @MAC_HWF2R, align 4
  %189 = load i32, i32* @RXQCNT, align 4
  %190 = call i8* @XGMAC_GET_BITS(i32 %187, i32 %188, i32 %189)
  %191 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %192 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %191, i32 0, i32 6
  store i8* %190, i8** %192, align 8
  %193 = load i32, i32* %5, align 4
  %194 = load i32, i32* @MAC_HWF2R, align 4
  %195 = load i32, i32* @TXQCNT, align 4
  %196 = call i8* @XGMAC_GET_BITS(i32 %193, i32 %194, i32 %195)
  %197 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %198 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %197, i32 0, i32 5
  store i8* %196, i8** %198, align 8
  %199 = load i32, i32* %5, align 4
  %200 = load i32, i32* @MAC_HWF2R, align 4
  %201 = load i32, i32* @RXCHCNT, align 4
  %202 = call i8* @XGMAC_GET_BITS(i32 %199, i32 %200, i32 %201)
  %203 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %204 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %203, i32 0, i32 4
  store i8* %202, i8** %204, align 8
  %205 = load i32, i32* %5, align 4
  %206 = load i32, i32* @MAC_HWF2R, align 4
  %207 = load i32, i32* @TXCHCNT, align 4
  %208 = call i8* @XGMAC_GET_BITS(i32 %205, i32 %206, i32 %207)
  %209 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %210 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %209, i32 0, i32 3
  store i8* %208, i8** %210, align 8
  %211 = load i32, i32* %5, align 4
  %212 = load i32, i32* @MAC_HWF2R, align 4
  %213 = load i32, i32* @PPSOUTNUM, align 4
  %214 = call i8* @XGMAC_GET_BITS(i32 %211, i32 %212, i32 %213)
  %215 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %216 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %215, i32 0, i32 8
  store i8* %214, i8** %216, align 8
  %217 = load i32, i32* %5, align 4
  %218 = load i32, i32* @MAC_HWF2R, align 4
  %219 = load i32, i32* @AUXSNAPNUM, align 4
  %220 = call i8* @XGMAC_GET_BITS(i32 %217, i32 %218, i32 %219)
  %221 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %222 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %221, i32 0, i32 7
  store i8* %220, i8** %222, align 8
  %223 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %224 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  switch i32 %225, label %236 [
    i32 0, label %226
    i32 1, label %227
    i32 2, label %230
    i32 3, label %233
  ]

226:                                              ; preds = %1
  br label %236

227:                                              ; preds = %1
  %228 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %229 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %228, i32 0, i32 1
  store i32 64, i32* %229, align 4
  br label %236

230:                                              ; preds = %1
  %231 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %232 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %231, i32 0, i32 1
  store i32 128, i32* %232, align 4
  br label %236

233:                                              ; preds = %1
  %234 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %235 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %234, i32 0, i32 1
  store i32 256, i32* %235, align 4
  br label %236

236:                                              ; preds = %1, %233, %230, %227, %226
  %237 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %238 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  switch i32 %239, label %249 [
    i32 0, label %240
    i32 1, label %243
    i32 2, label %246
  ]

240:                                              ; preds = %236
  %241 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %242 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %241, i32 0, i32 0
  store i32 32, i32* %242, align 8
  br label %252

243:                                              ; preds = %236
  %244 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %245 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %244, i32 0, i32 0
  store i32 40, i32* %245, align 8
  br label %252

246:                                              ; preds = %236
  %247 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %248 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %247, i32 0, i32 0
  store i32 48, i32* %248, align 8
  br label %252

249:                                              ; preds = %236
  %250 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %251 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %250, i32 0, i32 0
  store i32 32, i32* %251, align 8
  br label %252

252:                                              ; preds = %249, %246, %243, %240
  %253 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %254 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %253, i32 0, i32 6
  %255 = load i8*, i8** %254, align 8
  %256 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %256, i8** %254, align 8
  %257 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %258 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %257, i32 0, i32 5
  %259 = load i8*, i8** %258, align 8
  %260 = getelementptr inbounds i8, i8* %259, i32 1
  store i8* %260, i8** %258, align 8
  %261 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %262 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %261, i32 0, i32 4
  %263 = load i8*, i8** %262, align 8
  %264 = getelementptr inbounds i8, i8* %263, i32 1
  store i8* %264, i8** %262, align 8
  %265 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %266 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %265, i32 0, i32 3
  %267 = load i8*, i8** %266, align 8
  %268 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %268, i8** %266, align 8
  %269 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %270 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %269, i32 0, i32 2
  %271 = load i8*, i8** %270, align 8
  %272 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %272, i8** %270, align 8
  %273 = call i32 @DBGPR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBGPR(i8*) #1

declare dso_local i8* @XGMAC_IOREAD(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @memset(%struct.xgbe_hw_features*, i32, i32) #1

declare dso_local i8* @XGMAC_GET_BITS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
