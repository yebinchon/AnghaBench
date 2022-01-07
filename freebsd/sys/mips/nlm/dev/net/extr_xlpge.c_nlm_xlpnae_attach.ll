; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpnae_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpnae_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.xlp_nae_ivars }
%struct.xlp_nae_ivars = type { i32, i32, %struct.TYPE_11__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32*, i32 }
%struct.TYPE_13__ = type { i64, i32, i32, i32, i32, i32 }
%struct.nlm_xlpnae_softc = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32, %struct.TYPE_13__*, i32, i32, i64, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NUM_WORDS_PER_DV = common dso_local global i32 0, align 4
@xlp_board_info = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@nae_port_config = common dso_local global %struct.TYPE_13__* null, align 8
@XLP_PCI_DEVINFO_REG5 = common dso_local global i32 0, align 4
@cntx2port = common dso_local global i32* null, align 8
@PORTS_PER_CMPLX = common dso_local global i32 0, align 4
@UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"NL Tx Desc\00", align 1
@NAE_CACHELINE_SIZE = common dso_local global i32 0, align 4
@nl_tx_desc_zone = common dso_local global i32 0, align 4
@nlm_xlpge_msgring_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Couldn't register NAE msgring handler\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Couldn't register POE msgring handler\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"xlpge\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"XLP NAE Port %d,%d\00", align 1
@POE_DISTR_EN = common dso_local global i32 0, align 4
@XLPGE_RX_VC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nlm_xlpnae_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm_xlpnae_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xlp_nae_ivars*, align 8
  %4 = alloca %struct.nlm_xlpnae_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [32 x i8], align 16
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %26 = load i32, i32* @NUM_WORDS_PER_DV, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %6, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %7, align 8
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @pci_get_slot(i32 %30)
  %32 = sdiv i32 %31, 8
  store i32 %32, i32* %13, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @xlp_board_info, i32 0, i32 0), align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  store %struct.xlp_nae_ivars* %37, %struct.xlp_nae_ivars** %3, align 8
  %38 = load i32, i32* %2, align 4
  %39 = call %struct.nlm_xlpnae_softc* @device_get_softc(i32 %38)
  store %struct.nlm_xlpnae_softc* %39, %struct.nlm_xlpnae_softc** %4, align 8
  %40 = load i32, i32* %2, align 4
  %41 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %42 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %41, i32 0, i32 24
  store i32 %40, i32* %42, align 8
  %43 = load %struct.xlp_nae_ivars*, %struct.xlp_nae_ivars** %3, align 8
  %44 = getelementptr inbounds %struct.xlp_nae_ivars, %struct.xlp_nae_ivars* %43, i32 0, i32 12
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %47 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %46, i32 0, i32 11
  store i32 %45, i32* %47, align 4
  %48 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %49 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %48, i32 0, i32 11
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @nlm_get_nae_regbase(i32 %50)
  %52 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %53 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %52, i32 0, i32 10
  store i32 %51, i32* %53, align 8
  %54 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %55 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %54, i32 0, i32 11
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @nlm_get_poe_regbase(i32 %56)
  %58 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %59 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 4
  %60 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %61 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %60, i32 0, i32 11
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @nlm_get_poedv_regbase(i32 %62)
  %64 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %65 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %64, i32 0, i32 8
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** @nae_port_config, align 8
  %67 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %68 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %67, i32 0, i32 9
  store %struct.TYPE_13__* %66, %struct.TYPE_13__** %68, align 8
  %69 = load %struct.xlp_nae_ivars*, %struct.xlp_nae_ivars** %3, align 8
  %70 = getelementptr inbounds %struct.xlp_nae_ivars, %struct.xlp_nae_ivars* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %73 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.xlp_nae_ivars*, %struct.xlp_nae_ivars** %3, align 8
  %75 = getelementptr inbounds %struct.xlp_nae_ivars, %struct.xlp_nae_ivars* %74, i32 0, i32 11
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %78 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %77, i32 0, i32 23
  store i32 %76, i32* %78, align 4
  %79 = load %struct.xlp_nae_ivars*, %struct.xlp_nae_ivars** %3, align 8
  %80 = getelementptr inbounds %struct.xlp_nae_ivars, %struct.xlp_nae_ivars* %79, i32 0, i32 10
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %83 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %82, i32 0, i32 22
  store i32 %81, i32* %83, align 8
  %84 = load %struct.xlp_nae_ivars*, %struct.xlp_nae_ivars** %3, align 8
  %85 = getelementptr inbounds %struct.xlp_nae_ivars, %struct.xlp_nae_ivars* %84, i32 0, i32 9
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %88 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %87, i32 0, i32 21
  store i32 %86, i32* %88, align 4
  %89 = load %struct.xlp_nae_ivars*, %struct.xlp_nae_ivars** %3, align 8
  %90 = getelementptr inbounds %struct.xlp_nae_ivars, %struct.xlp_nae_ivars* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %93 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.xlp_nae_ivars*, %struct.xlp_nae_ivars** %3, align 8
  %95 = getelementptr inbounds %struct.xlp_nae_ivars, %struct.xlp_nae_ivars* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %98 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %97, i32 0, i32 20
  store i32 %96, i32* %98, align 8
  %99 = load %struct.xlp_nae_ivars*, %struct.xlp_nae_ivars** %3, align 8
  %100 = getelementptr inbounds %struct.xlp_nae_ivars, %struct.xlp_nae_ivars* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %103 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %102, i32 0, i32 19
  store i32 %101, i32* %103, align 4
  %104 = load %struct.xlp_nae_ivars*, %struct.xlp_nae_ivars** %3, align 8
  %105 = getelementptr inbounds %struct.xlp_nae_ivars, %struct.xlp_nae_ivars* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %108 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %107, i32 0, i32 18
  store i32 %106, i32* %108, align 8
  %109 = load %struct.xlp_nae_ivars*, %struct.xlp_nae_ivars** %3, align 8
  %110 = getelementptr inbounds %struct.xlp_nae_ivars, %struct.xlp_nae_ivars* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %113 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %112, i32 0, i32 17
  store i32 %111, i32* %113, align 4
  %114 = load %struct.xlp_nae_ivars*, %struct.xlp_nae_ivars** %3, align 8
  %115 = getelementptr inbounds %struct.xlp_nae_ivars, %struct.xlp_nae_ivars* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %118 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %117, i32 0, i32 16
  store i32 %116, i32* %118, align 8
  %119 = load %struct.xlp_nae_ivars*, %struct.xlp_nae_ivars** %3, align 8
  %120 = getelementptr inbounds %struct.xlp_nae_ivars, %struct.xlp_nae_ivars* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %123 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %122, i32 0, i32 15
  store i32 %121, i32* %123, align 4
  %124 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %125 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %124, i32 0, i32 11
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @nlm_get_nae_pcibase(i32 %126)
  store i32 %127, i32* %21, align 4
  %128 = load i32, i32* %21, align 4
  %129 = load i32, i32* @XLP_PCI_DEVINFO_REG5, align 4
  %130 = call i32 @nlm_read_reg(i32 %128, i32 %129)
  %131 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %132 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* %21, align 4
  %134 = call i32 @nlm_num_uengines(i32 %133)
  %135 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %136 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %135, i32 0, i32 14
  store i32 %134, i32* %136, align 8
  store i32 0, i32* %12, align 4
  br label %137

137:                                              ; preds = %172, %1
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %140 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %175

143:                                              ; preds = %137
  %144 = load %struct.xlp_nae_ivars*, %struct.xlp_nae_ivars** %3, align 8
  %145 = getelementptr inbounds %struct.xlp_nae_ivars, %struct.xlp_nae_ivars* %144, i32 0, i32 2
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %145, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %153 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %152, i32 0, i32 13
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %151, i32* %157, align 4
  %158 = load %struct.xlp_nae_ivars*, %struct.xlp_nae_ivars** %3, align 8
  %159 = getelementptr inbounds %struct.xlp_nae_ivars, %struct.xlp_nae_ivars* %158, i32 0, i32 2
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %159, align 8
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %167 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %166, i32 0, i32 3
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 %165, i32* %171, align 4
  br label %172

172:                                              ; preds = %143
  %173 = load i32, i32* %12, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %12, align 4
  br label %137

175:                                              ; preds = %137
  store i32 0, i32* %9, align 4
  br label %176

176:                                              ; preds = %187, %175
  %177 = load i32, i32* %9, align 4
  %178 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %179 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = icmp slt i32 %177, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %176
  %183 = load i32*, i32** @cntx2port, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  store i32 18, i32* %186, align 4
  br label %187

187:                                              ; preds = %182
  %188 = load i32, i32* %9, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %9, align 4
  br label %176

190:                                              ; preds = %176
  %191 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %192 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, 5
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %197 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %196, i32 0, i32 4
  store i32 18, i32* %197, align 8
  br label %206

198:                                              ; preds = %190
  %199 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %200 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @PORTS_PER_CMPLX, align 4
  %203 = mul nsw i32 %201, %202
  %204 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %205 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %204, i32 0, i32 4
  store i32 %203, i32* %205, align 8
  br label %206

206:                                              ; preds = %198, %195
  store i32 0, i32* %9, align 4
  br label %207

207:                                              ; preds = %222, %206
  %208 = load i32, i32* %9, align 4
  %209 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %210 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = icmp slt i32 %208, %211
  br i1 %212, label %213, label %225

213:                                              ; preds = %207
  %214 = load i64, i64* @UNKNOWN, align 8
  %215 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %216 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %215, i32 0, i32 9
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %216, align 8
  %218 = load i32, i32* %9, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 0
  store i64 %214, i64* %221, align 8
  br label %222

222:                                              ; preds = %213
  %223 = load i32, i32* %9, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %9, align 4
  br label %207

225:                                              ; preds = %207
  %226 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %227 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %226, i32 0, i32 12
  store i64 0, i64* %227, align 8
  %228 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %229 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %228, i32 0, i32 5
  store i32 0, i32* %229, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %17, align 4
  %230 = load i32, i32* %21, align 4
  %231 = call i32 @nlm_qidstart(i32 %230)
  store i32 %231, i32* %18, align 4
  %232 = load i32, i32* %18, align 4
  %233 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %234 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = add nsw i32 %232, %235
  store i32 %236, i32* %19, align 4
  store i32 0, i32* %9, align 4
  br label %237

237:                                              ; preds = %333, %225
  %238 = load i32, i32* %9, align 4
  %239 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %240 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = icmp slt i32 %238, %241
  br i1 %242, label %243, label %336

243:                                              ; preds = %237
  %244 = load %struct.xlp_nae_ivars*, %struct.xlp_nae_ivars** %3, align 8
  %245 = getelementptr inbounds %struct.xlp_nae_ivars, %struct.xlp_nae_ivars* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* %9, align 4
  %248 = shl i32 1, %247
  %249 = and i32 %246, %248
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %243
  %252 = load i32, i32* %8, align 4
  %253 = add nsw i32 %252, 4
  store i32 %253, i32* %8, align 4
  br label %333

254:                                              ; preds = %243
  %255 = load %struct.xlp_nae_ivars*, %struct.xlp_nae_ivars** %3, align 8
  %256 = getelementptr inbounds %struct.xlp_nae_ivars, %struct.xlp_nae_ivars* %255, i32 0, i32 2
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %256, align 8
  %258 = load i32, i32* %9, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  store i32 %262, i32* %22, align 4
  store i32 0, i32* %10, align 4
  br label %263

263:                                              ; preds = %327, %254
  %264 = load i32, i32* %10, align 4
  %265 = load i32, i32* @PORTS_PER_CMPLX, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %332

267:                                              ; preds = %263
  %268 = load i32, i32* %22, align 4
  %269 = load i32, i32* %10, align 4
  %270 = shl i32 1, %269
  %271 = and i32 %268, %270
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %267
  br label %327

274:                                              ; preds = %267
  %275 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %276 = load %struct.xlp_nae_ivars*, %struct.xlp_nae_ivars** %3, align 8
  %277 = load i32, i32* %9, align 4
  %278 = load i32, i32* %8, align 4
  %279 = call i32 @nlm_setup_portcfg(%struct.nlm_xlpnae_softc* %275, %struct.xlp_nae_ivars* %276, i32 %277, i32 %278)
  %280 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %281 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %280, i32 0, i32 9
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %281, align 8
  %283 = load i32, i32* %8, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  store i32 %287, i32* %11, align 4
  store i32 0, i32* %16, align 4
  br label %288

288:                                              ; preds = %300, %274
  %289 = load i32, i32* %16, align 4
  %290 = load i32, i32* %11, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %303

292:                                              ; preds = %288
  %293 = load i32, i32* %8, align 4
  %294 = load i32*, i32** @cntx2port, align 8
  %295 = load i32, i32* %17, align 4
  %296 = load i32, i32* %16, align 4
  %297 = add nsw i32 %295, %296
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %294, i64 %298
  store i32 %293, i32* %299, align 4
  br label %300

300:                                              ; preds = %292
  %301 = load i32, i32* %16, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %16, align 4
  br label %288

303:                                              ; preds = %288
  %304 = load i32, i32* %18, align 4
  %305 = load i32, i32* %17, align 4
  %306 = add nsw i32 %304, %305
  %307 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %308 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %307, i32 0, i32 9
  %309 = load %struct.TYPE_13__*, %struct.TYPE_13__** %308, align 8
  %310 = load i32, i32* %8, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %312, i32 0, i32 2
  store i32 %306, i32* %313, align 4
  %314 = load i32, i32* %19, align 4
  %315 = load i32, i32* %8, align 4
  %316 = add nsw i32 %314, %315
  %317 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %318 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %317, i32 0, i32 9
  %319 = load %struct.TYPE_13__*, %struct.TYPE_13__** %318, align 8
  %320 = load i32, i32* %8, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %319, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i32 0, i32 3
  store i32 %316, i32* %323, align 8
  %324 = load i32, i32* %11, align 4
  %325 = load i32, i32* %17, align 4
  %326 = add nsw i32 %325, %324
  store i32 %326, i32* %17, align 4
  br label %327

327:                                              ; preds = %303, %273
  %328 = load i32, i32* %10, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %10, align 4
  %330 = load i32, i32* %8, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %8, align 4
  br label %263

332:                                              ; preds = %263
  br label %333

333:                                              ; preds = %332, %251
  %334 = load i32, i32* %9, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %9, align 4
  br label %237

336:                                              ; preds = %237
  %337 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %338 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %337, i32 0, i32 11
  %339 = load i32, i32* %338, align 4
  %340 = call i32 @nlm_get_poe_pcibase(i32 %339)
  store i32 %340, i32* %20, align 4
  %341 = load i32, i32* %20, align 4
  %342 = call i32 @nlm_poe_max_flows(i32 %341)
  %343 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %344 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %343, i32 0, i32 5
  %345 = load i32, i32* %344, align 4
  %346 = sdiv i32 %342, %345
  %347 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %348 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %347, i32 0, i32 6
  store i32 %346, i32* %348, align 8
  %349 = load i32, i32* @NAE_CACHELINE_SIZE, align 4
  %350 = call i32 @uma_zcreate(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %349, i32 0)
  store i32 %350, i32* @nl_tx_desc_zone, align 4
  %351 = load i32, i32* %21, align 4
  %352 = call i32 @nlm_qidstart(i32 %351)
  store i32 %352, i32* %14, align 4
  %353 = load i32, i32* %21, align 4
  %354 = call i32 @nlm_qnum(i32 %353)
  store i32 %354, i32* %15, align 4
  %355 = load i32, i32* %14, align 4
  %356 = load i32, i32* %14, align 4
  %357 = load i32, i32* %15, align 4
  %358 = add nsw i32 %356, %357
  %359 = sub nsw i32 %358, 1
  %360 = load i32, i32* @nlm_xlpge_msgring_handler, align 4
  %361 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %362 = call i64 @register_msgring_handler(i32 %355, i32 %359, i32 %360, %struct.nlm_xlpnae_softc* %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %366

364:                                              ; preds = %336
  %365 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %366

366:                                              ; preds = %364, %336
  %367 = load i32, i32* %20, align 4
  %368 = call i32 @nlm_qidstart(i32 %367)
  store i32 %368, i32* %14, align 4
  %369 = load i32, i32* %20, align 4
  %370 = call i32 @nlm_qnum(i32 %369)
  store i32 %370, i32* %15, align 4
  %371 = load i32, i32* %14, align 4
  %372 = load i32, i32* %14, align 4
  %373 = load i32, i32* %15, align 4
  %374 = add nsw i32 %372, %373
  %375 = sub nsw i32 %374, 1
  %376 = load i32, i32* @nlm_xlpge_msgring_handler, align 4
  %377 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %378 = call i64 @register_msgring_handler(i32 %371, i32 %375, i32 %376, %struct.nlm_xlpnae_softc* %377)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %382

380:                                              ; preds = %366
  %381 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %382

382:                                              ; preds = %380, %366
  %383 = load i32, i32* %13, align 4
  %384 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %385 = call i32 @nlm_xlpnae_init(i32 %383, %struct.nlm_xlpnae_softc* %384)
  store i32 0, i32* %9, align 4
  br label %386

386:                                              ; preds = %444, %382
  %387 = load i32, i32* %9, align 4
  %388 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %389 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %388, i32 0, i32 4
  %390 = load i32, i32* %389, align 8
  %391 = icmp slt i32 %387, %390
  br i1 %391, label %392, label %447

392:                                              ; preds = %386
  %393 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %394 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %393, i32 0, i32 9
  %395 = load %struct.TYPE_13__*, %struct.TYPE_13__** %394, align 8
  %396 = load i32, i32* %9, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %395, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %398, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = load i64, i64* @UNKNOWN, align 8
  %402 = icmp eq i64 %400, %401
  br i1 %402, label %403, label %404

403:                                              ; preds = %392
  br label %444

404:                                              ; preds = %392
  %405 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %406 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %405, i32 0, i32 9
  %407 = load %struct.TYPE_13__*, %struct.TYPE_13__** %406, align 8
  %408 = load i32, i32* %9, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %407, i64 %409
  %411 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %410, i32 0, i32 4
  %412 = load i32, i32* %411, align 4
  store i32 %412, i32* %24, align 4
  %413 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %414 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %413, i32 0, i32 9
  %415 = load %struct.TYPE_13__*, %struct.TYPE_13__** %414, align 8
  %416 = load i32, i32* %9, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %415, i64 %417
  %419 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %418, i32 0, i32 5
  %420 = load i32, i32* %419, align 8
  store i32 %420, i32* %25, align 4
  %421 = load i32, i32* %2, align 4
  %422 = load i32, i32* %9, align 4
  %423 = call i32 @device_add_child(i32 %421, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %422)
  store i32 %423, i32* %5, align 4
  %424 = load i32, i32* %5, align 4
  %425 = load %struct.xlp_nae_ivars*, %struct.xlp_nae_ivars** %3, align 8
  %426 = getelementptr inbounds %struct.xlp_nae_ivars, %struct.xlp_nae_ivars* %425, i32 0, i32 2
  %427 = load %struct.TYPE_11__*, %struct.TYPE_11__** %426, align 8
  %428 = load i32, i32* %24, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %427, i64 %429
  %431 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %430, i32 0, i32 1
  %432 = load i32*, i32** %431, align 8
  %433 = load i32, i32* %25, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %432, i64 %434
  %436 = call i32 @device_set_ivars(i32 %424, i32* %435)
  %437 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %438 = load i32, i32* %24, align 4
  %439 = load i32, i32* %25, align 4
  %440 = call i32 @sprintf(i8* %437, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %438, i32 %439)
  %441 = load i32, i32* %5, align 4
  %442 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %443 = call i32 @device_set_desc_copy(i32 %441, i8* %442)
  br label %444

444:                                              ; preds = %404, %403
  %445 = load i32, i32* %9, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %9, align 4
  br label %386

447:                                              ; preds = %386
  %448 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %449 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %448, i32 0, i32 10
  %450 = load i32, i32* %449, align 8
  %451 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %452 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %451, i32 0, i32 4
  %453 = load i32, i32* %452, align 8
  %454 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %455 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %454, i32 0, i32 9
  %456 = load %struct.TYPE_13__*, %struct.TYPE_13__** %455, align 8
  %457 = call i32 @nlm_setup_iface_fifo_cfg(i32 %450, i32 %453, %struct.TYPE_13__* %456)
  %458 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %459 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %458, i32 0, i32 10
  %460 = load i32, i32* %459, align 8
  %461 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %462 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %461, i32 0, i32 4
  %463 = load i32, i32* %462, align 8
  %464 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %465 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %464, i32 0, i32 9
  %466 = load %struct.TYPE_13__*, %struct.TYPE_13__** %465, align 8
  %467 = call i32 @nlm_setup_rx_base_config(i32 %460, i32 %463, %struct.TYPE_13__* %466)
  %468 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %469 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %468, i32 0, i32 10
  %470 = load i32, i32* %469, align 8
  %471 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %472 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %471, i32 0, i32 4
  %473 = load i32, i32* %472, align 8
  %474 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %475 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %474, i32 0, i32 9
  %476 = load %struct.TYPE_13__*, %struct.TYPE_13__** %475, align 8
  %477 = call i32 @nlm_setup_rx_buf_config(i32 %470, i32 %473, %struct.TYPE_13__* %476)
  %478 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %479 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %478, i32 0, i32 10
  %480 = load i32, i32* %479, align 8
  %481 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %482 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %481, i32 0, i32 9
  %483 = load %struct.TYPE_13__*, %struct.TYPE_13__** %482, align 8
  %484 = call i32 @nlm_setup_freein_fifo_cfg(i32 %480, %struct.TYPE_13__* %483)
  %485 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %486 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %485, i32 0, i32 10
  %487 = load i32, i32* %486, align 8
  %488 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %489 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %488, i32 0, i32 4
  %490 = load i32, i32* %489, align 8
  %491 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %492 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %491, i32 0, i32 9
  %493 = load %struct.TYPE_13__*, %struct.TYPE_13__** %492, align 8
  %494 = call i32 @nlm_program_nae_parser_seq_fifo(i32 %487, i32 %490, %struct.TYPE_13__* %493)
  %495 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %496 = call i32 @nlm_xlpnae_print_frin_desc_carving(%struct.nlm_xlpnae_softc* %495)
  %497 = load i32, i32* %2, align 4
  %498 = call i32 @bus_generic_probe(i32 %497)
  %499 = load i32, i32* %2, align 4
  %500 = call i32 @bus_generic_attach(i32 %499)
  %501 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %502 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %501, i32 0, i32 7
  %503 = load i32, i32* %502, align 4
  %504 = load i32, i32* @POE_DISTR_EN, align 4
  %505 = call i32 @nlm_write_poe_reg(i32 %503, i32 %504, i32 0)
  %506 = load i32, i32* @XLPGE_RX_VC, align 4
  %507 = shl i32 1, %506
  %508 = call i32 @nlm_calc_poe_distvec(i32 1, i32 0, i32 0, i32 0, i32 %507, i32* %29)
  %509 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %510 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %509, i32 0, i32 8
  %511 = load i32, i32* %510, align 8
  %512 = call i32 @nlm_write_poe_distvec(i32 %511, i32 0, i32* %29)
  %513 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %514 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %513, i32 0, i32 7
  %515 = load i32, i32* %514, align 4
  %516 = load i32, i32* @POE_DISTR_EN, align 4
  %517 = call i32 @nlm_write_poe_reg(i32 %515, i32 %516, i32 1)
  %518 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %518)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pci_get_slot(i32) #2

declare dso_local %struct.nlm_xlpnae_softc* @device_get_softc(i32) #2

declare dso_local i32 @nlm_get_nae_regbase(i32) #2

declare dso_local i32 @nlm_get_poe_regbase(i32) #2

declare dso_local i32 @nlm_get_poedv_regbase(i32) #2

declare dso_local i32 @nlm_get_nae_pcibase(i32) #2

declare dso_local i32 @nlm_read_reg(i32, i32) #2

declare dso_local i32 @nlm_num_uengines(i32) #2

declare dso_local i32 @nlm_qidstart(i32) #2

declare dso_local i32 @nlm_setup_portcfg(%struct.nlm_xlpnae_softc*, %struct.xlp_nae_ivars*, i32, i32) #2

declare dso_local i32 @nlm_get_poe_pcibase(i32) #2

declare dso_local i32 @nlm_poe_max_flows(i32) #2

declare dso_local i32 @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @nlm_qnum(i32) #2

declare dso_local i64 @register_msgring_handler(i32, i32, i32, %struct.nlm_xlpnae_softc*) #2

declare dso_local i32 @panic(i8*) #2

declare dso_local i32 @nlm_xlpnae_init(i32, %struct.nlm_xlpnae_softc*) #2

declare dso_local i32 @device_add_child(i32, i8*, i32) #2

declare dso_local i32 @device_set_ivars(i32, i32*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #2

declare dso_local i32 @device_set_desc_copy(i32, i8*) #2

declare dso_local i32 @nlm_setup_iface_fifo_cfg(i32, i32, %struct.TYPE_13__*) #2

declare dso_local i32 @nlm_setup_rx_base_config(i32, i32, %struct.TYPE_13__*) #2

declare dso_local i32 @nlm_setup_rx_buf_config(i32, i32, %struct.TYPE_13__*) #2

declare dso_local i32 @nlm_setup_freein_fifo_cfg(i32, %struct.TYPE_13__*) #2

declare dso_local i32 @nlm_program_nae_parser_seq_fifo(i32, i32, %struct.TYPE_13__*) #2

declare dso_local i32 @nlm_xlpnae_print_frin_desc_carving(%struct.nlm_xlpnae_softc*) #2

declare dso_local i32 @bus_generic_probe(i32) #2

declare dso_local i32 @bus_generic_attach(i32) #2

declare dso_local i32 @nlm_write_poe_reg(i32, i32, i32) #2

declare dso_local i32 @nlm_calc_poe_distvec(i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @nlm_write_poe_distvec(i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
