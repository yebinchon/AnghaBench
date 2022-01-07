; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_port_phy_qcfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_port_phy_qcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { %struct.TYPE_6__*, %struct.TYPE_4__, %struct.bnxt_link_info }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.bnxt_link_info = type { i64, i32*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_5__, i64, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.hwrm_port_phy_qcfg_input = type { i32 }
%struct.hwrm_port_phy_qcfg_output = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@HWRM_PORT_PHY_QCFG = common dso_local global i32 0, align 4
@BNXT_AUTO_PAUSE_AUTONEG_PAUSE = common dso_local global i32 0, align 4
@BNXT_PAUSE_TX = common dso_local global i32 0, align 4
@BNXT_PAUSE_RX = common dso_local global i32 0, align 4
@HWRM_PORT_PHY_QCFG_OUTPUT_LINK_LINK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@BNXT_NAME_SIZE = common dso_local global i32 0, align 4
@HWRM_PORT_PHY_QCFG_OUTPUT_PHY_ADDR_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_port_phy_qcfg(%struct.bnxt_softc* %0) #0 {
  %2 = alloca %struct.bnxt_softc*, align 8
  %3 = alloca %struct.bnxt_link_info*, align 8
  %4 = alloca %struct.hwrm_port_phy_qcfg_input, align 4
  %5 = alloca %struct.hwrm_port_phy_qcfg_output*, align 8
  %6 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %2, align 8
  %7 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %8 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %7, i32 0, i32 2
  store %struct.bnxt_link_info* %8, %struct.bnxt_link_info** %3, align 8
  %9 = bitcast %struct.hwrm_port_phy_qcfg_input* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  %10 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %11 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.hwrm_port_phy_qcfg_output*
  store %struct.hwrm_port_phy_qcfg_output* %15, %struct.hwrm_port_phy_qcfg_output** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %17 = call i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc* %16)
  %18 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %19 = load i32, i32* @HWRM_PORT_PHY_QCFG, align 4
  %20 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %18, %struct.hwrm_port_phy_qcfg_input* %4, i32 %19)
  %21 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %22 = call i32 @_hwrm_send_message(%struct.bnxt_softc* %21, %struct.hwrm_port_phy_qcfg_input* %4, i32 4)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %254

26:                                               ; preds = %1
  %27 = load %struct.hwrm_port_phy_qcfg_output*, %struct.hwrm_port_phy_qcfg_output** %5, align 8
  %28 = getelementptr inbounds %struct.hwrm_port_phy_qcfg_output, %struct.hwrm_port_phy_qcfg_output* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %31 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.hwrm_port_phy_qcfg_output*, %struct.hwrm_port_phy_qcfg_output** %5, align 8
  %33 = getelementptr inbounds %struct.hwrm_port_phy_qcfg_output, %struct.hwrm_port_phy_qcfg_output* %32, i32 0, i32 18
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %36 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %35, i32 0, i32 15
  store i32 %34, i32* %36, align 8
  %37 = load %struct.hwrm_port_phy_qcfg_output*, %struct.hwrm_port_phy_qcfg_output** %5, align 8
  %38 = getelementptr inbounds %struct.hwrm_port_phy_qcfg_output, %struct.hwrm_port_phy_qcfg_output* %37, i32 0, i32 19
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %41 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %40, i32 0, i32 14
  store i64 %39, i64* %41, align 8
  %42 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %43 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %42, i32 0, i32 13
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  %45 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %46 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %45, i32 0, i32 13
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %49 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %48, i32 0, i32 13
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store i32 0, i32* %50, align 4
  %51 = load %struct.hwrm_port_phy_qcfg_output*, %struct.hwrm_port_phy_qcfg_output** %5, align 8
  %52 = getelementptr inbounds %struct.hwrm_port_phy_qcfg_output, %struct.hwrm_port_phy_qcfg_output* %51, i32 0, i32 19
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %26
  %56 = load %struct.hwrm_port_phy_qcfg_output*, %struct.hwrm_port_phy_qcfg_output** %5, align 8
  %57 = getelementptr inbounds %struct.hwrm_port_phy_qcfg_output, %struct.hwrm_port_phy_qcfg_output* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @BNXT_AUTO_PAUSE_AUTONEG_PAUSE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %64 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %63, i32 0, i32 13
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %55, %26
  %67 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %68 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %67, i32 0, i32 13
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %66
  %73 = load %struct.hwrm_port_phy_qcfg_output*, %struct.hwrm_port_phy_qcfg_output** %5, align 8
  %74 = getelementptr inbounds %struct.hwrm_port_phy_qcfg_output, %struct.hwrm_port_phy_qcfg_output* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @BNXT_PAUSE_TX, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %81 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %80, i32 0, i32 13
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %79, %72
  %84 = load %struct.hwrm_port_phy_qcfg_output*, %struct.hwrm_port_phy_qcfg_output** %5, align 8
  %85 = getelementptr inbounds %struct.hwrm_port_phy_qcfg_output, %struct.hwrm_port_phy_qcfg_output* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @BNXT_PAUSE_RX, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %92 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %91, i32 0, i32 13
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  store i32 1, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %83
  br label %118

95:                                               ; preds = %66
  %96 = load %struct.hwrm_port_phy_qcfg_output*, %struct.hwrm_port_phy_qcfg_output** %5, align 8
  %97 = getelementptr inbounds %struct.hwrm_port_phy_qcfg_output, %struct.hwrm_port_phy_qcfg_output* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @BNXT_PAUSE_TX, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %104 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %103, i32 0, i32 13
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  store i32 1, i32* %105, align 4
  br label %106

106:                                              ; preds = %102, %95
  %107 = load %struct.hwrm_port_phy_qcfg_output*, %struct.hwrm_port_phy_qcfg_output** %5, align 8
  %108 = getelementptr inbounds %struct.hwrm_port_phy_qcfg_output, %struct.hwrm_port_phy_qcfg_output* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @BNXT_PAUSE_RX, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %115 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %114, i32 0, i32 13
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  store i32 1, i32* %116, align 4
  br label %117

117:                                              ; preds = %113, %106
  br label %118

118:                                              ; preds = %117, %94
  %119 = load %struct.hwrm_port_phy_qcfg_output*, %struct.hwrm_port_phy_qcfg_output** %5, align 8
  %120 = getelementptr inbounds %struct.hwrm_port_phy_qcfg_output, %struct.hwrm_port_phy_qcfg_output* %119, i32 0, i32 18
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %123 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %122, i32 0, i32 12
  store i32 %121, i32* %123, align 8
  %124 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %125 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @HWRM_PORT_PHY_QCFG_OUTPUT_LINK_LINK, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %118
  %130 = load %struct.hwrm_port_phy_qcfg_output*, %struct.hwrm_port_phy_qcfg_output** %5, align 8
  %131 = getelementptr inbounds %struct.hwrm_port_phy_qcfg_output, %struct.hwrm_port_phy_qcfg_output* %130, i32 0, i32 17
  %132 = load i32, i32* %131, align 8
  %133 = call i8* @le16toh(i32 %132)
  %134 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %135 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %134, i32 0, i32 11
  store i8* %133, i8** %135, align 8
  br label %139

136:                                              ; preds = %118
  %137 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %138 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %137, i32 0, i32 11
  store i8* null, i8** %138, align 8
  br label %139

139:                                              ; preds = %136, %129
  %140 = load %struct.hwrm_port_phy_qcfg_output*, %struct.hwrm_port_phy_qcfg_output** %5, align 8
  %141 = getelementptr inbounds %struct.hwrm_port_phy_qcfg_output, %struct.hwrm_port_phy_qcfg_output* %140, i32 0, i32 16
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @le16toh(i32 %142)
  %144 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %145 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %144, i32 0, i32 10
  store i8* %143, i8** %145, align 8
  %146 = load %struct.hwrm_port_phy_qcfg_output*, %struct.hwrm_port_phy_qcfg_output** %5, align 8
  %147 = getelementptr inbounds %struct.hwrm_port_phy_qcfg_output, %struct.hwrm_port_phy_qcfg_output* %146, i32 0, i32 15
  %148 = load i32, i32* %147, align 8
  %149 = call i8* @le16toh(i32 %148)
  %150 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %151 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %150, i32 0, i32 9
  store i8* %149, i8** %151, align 8
  %152 = load %struct.hwrm_port_phy_qcfg_output*, %struct.hwrm_port_phy_qcfg_output** %5, align 8
  %153 = getelementptr inbounds %struct.hwrm_port_phy_qcfg_output, %struct.hwrm_port_phy_qcfg_output* %152, i32 0, i32 14
  %154 = load i32, i32* %153, align 4
  %155 = call i8* @le16toh(i32 %154)
  %156 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %157 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %156, i32 0, i32 8
  store i8* %155, i8** %157, align 8
  %158 = load %struct.hwrm_port_phy_qcfg_output*, %struct.hwrm_port_phy_qcfg_output** %5, align 8
  %159 = getelementptr inbounds %struct.hwrm_port_phy_qcfg_output, %struct.hwrm_port_phy_qcfg_output* %158, i32 0, i32 13
  %160 = load i32, i32* %159, align 8
  %161 = call i8* @le16toh(i32 %160)
  %162 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %163 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %162, i32 0, i32 7
  store i8* %161, i8** %163, align 8
  %164 = load %struct.hwrm_port_phy_qcfg_output*, %struct.hwrm_port_phy_qcfg_output** %5, align 8
  %165 = getelementptr inbounds %struct.hwrm_port_phy_qcfg_output, %struct.hwrm_port_phy_qcfg_output* %164, i32 0, i32 12
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @le32toh(i32 %166)
  %168 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %169 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %168, i32 0, i32 6
  store i32 %167, i32* %169, align 8
  %170 = load %struct.hwrm_port_phy_qcfg_output*, %struct.hwrm_port_phy_qcfg_output** %5, align 8
  %171 = getelementptr inbounds %struct.hwrm_port_phy_qcfg_output, %struct.hwrm_port_phy_qcfg_output* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %174 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  store i32 %172, i32* %176, align 4
  %177 = load %struct.hwrm_port_phy_qcfg_output*, %struct.hwrm_port_phy_qcfg_output** %5, align 8
  %178 = getelementptr inbounds %struct.hwrm_port_phy_qcfg_output, %struct.hwrm_port_phy_qcfg_output* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %181 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 1
  store i32 %179, i32* %183, align 4
  %184 = load %struct.hwrm_port_phy_qcfg_output*, %struct.hwrm_port_phy_qcfg_output** %5, align 8
  %185 = getelementptr inbounds %struct.hwrm_port_phy_qcfg_output, %struct.hwrm_port_phy_qcfg_output* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %188 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 2
  store i32 %186, i32* %190, align 4
  %191 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %192 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %191, i32 0, i32 0
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %197 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %202 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %207 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 2
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @snprintf(i32 %195, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %200, i32 %205, i32 %210)
  %212 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %213 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %212, i32 0, i32 0
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.hwrm_port_phy_qcfg_output*, %struct.hwrm_port_phy_qcfg_output** %5, align 8
  %218 = getelementptr inbounds %struct.hwrm_port_phy_qcfg_output, %struct.hwrm_port_phy_qcfg_output* %217, i32 0, i32 11
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @BNXT_NAME_SIZE, align 4
  %221 = call i32 @strlcpy(i32 %216, i32 %219, i32 %220)
  %222 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %223 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %222, i32 0, i32 0
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.hwrm_port_phy_qcfg_output*, %struct.hwrm_port_phy_qcfg_output** %5, align 8
  %228 = getelementptr inbounds %struct.hwrm_port_phy_qcfg_output, %struct.hwrm_port_phy_qcfg_output* %227, i32 0, i32 10
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @BNXT_NAME_SIZE, align 4
  %231 = call i32 @strlcpy(i32 %226, i32 %229, i32 %230)
  %232 = load %struct.hwrm_port_phy_qcfg_output*, %struct.hwrm_port_phy_qcfg_output** %5, align 8
  %233 = getelementptr inbounds %struct.hwrm_port_phy_qcfg_output, %struct.hwrm_port_phy_qcfg_output* %232, i32 0, i32 9
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %236 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %235, i32 0, i32 5
  store i32 %234, i32* %236, align 4
  %237 = load %struct.hwrm_port_phy_qcfg_output*, %struct.hwrm_port_phy_qcfg_output** %5, align 8
  %238 = getelementptr inbounds %struct.hwrm_port_phy_qcfg_output, %struct.hwrm_port_phy_qcfg_output* %237, i32 0, i32 8
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %241 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %240, i32 0, i32 4
  store i32 %239, i32* %241, align 8
  %242 = load %struct.hwrm_port_phy_qcfg_output*, %struct.hwrm_port_phy_qcfg_output** %5, align 8
  %243 = getelementptr inbounds %struct.hwrm_port_phy_qcfg_output, %struct.hwrm_port_phy_qcfg_output* %242, i32 0, i32 7
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %246 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %245, i32 0, i32 3
  store i32 %244, i32* %246, align 4
  %247 = load %struct.hwrm_port_phy_qcfg_output*, %struct.hwrm_port_phy_qcfg_output** %5, align 8
  %248 = getelementptr inbounds %struct.hwrm_port_phy_qcfg_output, %struct.hwrm_port_phy_qcfg_output* %247, i32 0, i32 6
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @HWRM_PORT_PHY_QCFG_OUTPUT_PHY_ADDR_MASK, align 4
  %251 = and i32 %249, %250
  %252 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %253 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %252, i32 0, i32 2
  store i32 %251, i32* %253, align 8
  br label %254

254:                                              ; preds = %139, %25
  %255 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %256 = call i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc* %255)
  %257 = load i32, i32* %6, align 4
  ret i32 %257
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc*) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_port_phy_qcfg_input*, i32) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_port_phy_qcfg_input*, i32) #2

declare dso_local i8* @le16toh(i32) #2

declare dso_local i32 @le32toh(i32) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
