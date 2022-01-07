; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_clear_hw_cntrs_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_clear_hw_cntrs_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"ixgbe_clear_hw_cntrs_generic\00", align 1
@IXGBE_CRCERRS = common dso_local global i32 0, align 4
@IXGBE_ILLERRC = common dso_local global i32 0, align 4
@IXGBE_ERRBC = common dso_local global i32 0, align 4
@IXGBE_MSPDC = common dso_local global i32 0, align 4
@IXGBE_MLFC = common dso_local global i32 0, align 4
@IXGBE_MRFC = common dso_local global i32 0, align 4
@IXGBE_RLEC = common dso_local global i32 0, align 4
@IXGBE_LXONTXC = common dso_local global i32 0, align 4
@IXGBE_LXOFFTXC = common dso_local global i32 0, align 4
@ixgbe_mac_82599EB = common dso_local global i64 0, align 8
@IXGBE_LXONRXCNT = common dso_local global i32 0, align 4
@IXGBE_LXOFFRXCNT = common dso_local global i32 0, align 4
@IXGBE_LXONRXC = common dso_local global i32 0, align 4
@IXGBE_LXOFFRXC = common dso_local global i32 0, align 4
@IXGBE_PRC64 = common dso_local global i32 0, align 4
@IXGBE_PRC127 = common dso_local global i32 0, align 4
@IXGBE_PRC255 = common dso_local global i32 0, align 4
@IXGBE_PRC511 = common dso_local global i32 0, align 4
@IXGBE_PRC1023 = common dso_local global i32 0, align 4
@IXGBE_PRC1522 = common dso_local global i32 0, align 4
@IXGBE_GPRC = common dso_local global i32 0, align 4
@IXGBE_BPRC = common dso_local global i32 0, align 4
@IXGBE_MPRC = common dso_local global i32 0, align 4
@IXGBE_GPTC = common dso_local global i32 0, align 4
@IXGBE_GORCL = common dso_local global i32 0, align 4
@IXGBE_GORCH = common dso_local global i32 0, align 4
@IXGBE_GOTCL = common dso_local global i32 0, align 4
@IXGBE_GOTCH = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_RUC = common dso_local global i32 0, align 4
@IXGBE_RFC = common dso_local global i32 0, align 4
@IXGBE_ROC = common dso_local global i32 0, align 4
@IXGBE_RJC = common dso_local global i32 0, align 4
@IXGBE_MNGPRC = common dso_local global i32 0, align 4
@IXGBE_MNGPDC = common dso_local global i32 0, align 4
@IXGBE_MNGPTC = common dso_local global i32 0, align 4
@IXGBE_TORL = common dso_local global i32 0, align 4
@IXGBE_TORH = common dso_local global i32 0, align 4
@IXGBE_TPR = common dso_local global i32 0, align 4
@IXGBE_TPT = common dso_local global i32 0, align 4
@IXGBE_PTC64 = common dso_local global i32 0, align 4
@IXGBE_PTC127 = common dso_local global i32 0, align 4
@IXGBE_PTC255 = common dso_local global i32 0, align 4
@IXGBE_PTC511 = common dso_local global i32 0, align 4
@IXGBE_PTC1023 = common dso_local global i32 0, align 4
@IXGBE_PTC1522 = common dso_local global i32 0, align 4
@IXGBE_MPTC = common dso_local global i32 0, align 4
@IXGBE_BPTC = common dso_local global i32 0, align 4
@ixgbe_mac_X550 = common dso_local global i64 0, align 8
@ixgbe_mac_X540 = common dso_local global i64 0, align 8
@IXGBE_PCRC8ECL = common dso_local global i32 0, align 4
@IXGBE_MDIO_PCS_DEV_TYPE = common dso_local global i32 0, align 4
@IXGBE_PCRC8ECH = common dso_local global i32 0, align 4
@IXGBE_LDPCECL = common dso_local global i32 0, align 4
@IXGBE_LDPCECH = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_clear_hw_cntrs_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %6 = load i32, i32* @IXGBE_CRCERRS, align 4
  %7 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %5, i32 %6)
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %9 = load i32, i32* @IXGBE_ILLERRC, align 4
  %10 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %8, i32 %9)
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %12 = load i32, i32* @IXGBE_ERRBC, align 4
  %13 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %11, i32 %12)
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %15 = load i32, i32* @IXGBE_MSPDC, align 4
  %16 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %14, i32 %15)
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %25, %1
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 8
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @IXGBE_MPC(i32 %22)
  %24 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %21, i32 %23)
  br label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %17

28:                                               ; preds = %17
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %30 = load i32, i32* @IXGBE_MLFC, align 4
  %31 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %29, i32 %30)
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %33 = load i32, i32* @IXGBE_MRFC, align 4
  %34 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %32, i32 %33)
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %36 = load i32, i32* @IXGBE_RLEC, align 4
  %37 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %35, i32 %36)
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %39 = load i32, i32* @IXGBE_LXONTXC, align 4
  %40 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %38, i32 %39)
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %42 = load i32, i32* @IXGBE_LXOFFTXC, align 4
  %43 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %41, i32 %42)
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %45 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ixgbe_mac_82599EB, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %28
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %52 = load i32, i32* @IXGBE_LXONRXCNT, align 4
  %53 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %51, i32 %52)
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %55 = load i32, i32* @IXGBE_LXOFFRXCNT, align 4
  %56 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %54, i32 %55)
  br label %64

57:                                               ; preds = %28
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %59 = load i32, i32* @IXGBE_LXONRXC, align 4
  %60 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %58, i32 %59)
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %62 = load i32, i32* @IXGBE_LXOFFRXC, align 4
  %63 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %61, i32 %62)
  br label %64

64:                                               ; preds = %57, %50
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %102, %64
  %66 = load i32, i32* %3, align 4
  %67 = icmp slt i32 %66, 8
  br i1 %67, label %68, label %105

68:                                               ; preds = %65
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @IXGBE_PXONTXC(i32 %70)
  %72 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %69, i32 %71)
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @IXGBE_PXOFFTXC(i32 %74)
  %76 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %73, i32 %75)
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %78 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @ixgbe_mac_82599EB, align 8
  %82 = icmp sge i64 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %68
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @IXGBE_PXONRXCNT(i32 %85)
  %87 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %84, i32 %86)
  %88 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @IXGBE_PXOFFRXCNT(i32 %89)
  %91 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %88, i32 %90)
  br label %101

92:                                               ; preds = %68
  %93 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @IXGBE_PXONRXC(i32 %94)
  %96 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %93, i32 %95)
  %97 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @IXGBE_PXOFFRXC(i32 %98)
  %100 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %97, i32 %99)
  br label %101

101:                                              ; preds = %92, %83
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %3, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %3, align 4
  br label %65

105:                                              ; preds = %65
  %106 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %107 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @ixgbe_mac_82599EB, align 8
  %111 = icmp sge i64 %109, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %105
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %121, %112
  %114 = load i32, i32* %3, align 4
  %115 = icmp slt i32 %114, 8
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @IXGBE_PXON2OFFCNT(i32 %118)
  %120 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %117, i32 %119)
  br label %121

121:                                              ; preds = %116
  %122 = load i32, i32* %3, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %3, align 4
  br label %113

124:                                              ; preds = %113
  br label %125

125:                                              ; preds = %124, %105
  %126 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %127 = load i32, i32* @IXGBE_PRC64, align 4
  %128 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %126, i32 %127)
  %129 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %130 = load i32, i32* @IXGBE_PRC127, align 4
  %131 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %129, i32 %130)
  %132 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %133 = load i32, i32* @IXGBE_PRC255, align 4
  %134 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %132, i32 %133)
  %135 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %136 = load i32, i32* @IXGBE_PRC511, align 4
  %137 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %135, i32 %136)
  %138 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %139 = load i32, i32* @IXGBE_PRC1023, align 4
  %140 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %138, i32 %139)
  %141 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %142 = load i32, i32* @IXGBE_PRC1522, align 4
  %143 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %141, i32 %142)
  %144 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %145 = load i32, i32* @IXGBE_GPRC, align 4
  %146 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %144, i32 %145)
  %147 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %148 = load i32, i32* @IXGBE_BPRC, align 4
  %149 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %147, i32 %148)
  %150 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %151 = load i32, i32* @IXGBE_MPRC, align 4
  %152 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %150, i32 %151)
  %153 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %154 = load i32, i32* @IXGBE_GPTC, align 4
  %155 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %153, i32 %154)
  %156 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %157 = load i32, i32* @IXGBE_GORCL, align 4
  %158 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %156, i32 %157)
  %159 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %160 = load i32, i32* @IXGBE_GORCH, align 4
  %161 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %159, i32 %160)
  %162 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %163 = load i32, i32* @IXGBE_GOTCL, align 4
  %164 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %162, i32 %163)
  %165 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %166 = load i32, i32* @IXGBE_GOTCH, align 4
  %167 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %165, i32 %166)
  %168 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %169 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %187

174:                                              ; preds = %125
  store i32 0, i32* %3, align 4
  br label %175

175:                                              ; preds = %183, %174
  %176 = load i32, i32* %3, align 4
  %177 = icmp slt i32 %176, 8
  br i1 %177, label %178, label %186

178:                                              ; preds = %175
  %179 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %180 = load i32, i32* %3, align 4
  %181 = call i32 @IXGBE_RNBC(i32 %180)
  %182 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %179, i32 %181)
  br label %183

183:                                              ; preds = %178
  %184 = load i32, i32* %3, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %3, align 4
  br label %175

186:                                              ; preds = %175
  br label %187

187:                                              ; preds = %186, %125
  %188 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %189 = load i32, i32* @IXGBE_RUC, align 4
  %190 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %188, i32 %189)
  %191 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %192 = load i32, i32* @IXGBE_RFC, align 4
  %193 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %191, i32 %192)
  %194 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %195 = load i32, i32* @IXGBE_ROC, align 4
  %196 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %194, i32 %195)
  %197 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %198 = load i32, i32* @IXGBE_RJC, align 4
  %199 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %197, i32 %198)
  %200 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %201 = load i32, i32* @IXGBE_MNGPRC, align 4
  %202 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %200, i32 %201)
  %203 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %204 = load i32, i32* @IXGBE_MNGPDC, align 4
  %205 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %203, i32 %204)
  %206 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %207 = load i32, i32* @IXGBE_MNGPTC, align 4
  %208 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %206, i32 %207)
  %209 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %210 = load i32, i32* @IXGBE_TORL, align 4
  %211 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %209, i32 %210)
  %212 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %213 = load i32, i32* @IXGBE_TORH, align 4
  %214 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %212, i32 %213)
  %215 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %216 = load i32, i32* @IXGBE_TPR, align 4
  %217 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %215, i32 %216)
  %218 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %219 = load i32, i32* @IXGBE_TPT, align 4
  %220 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %218, i32 %219)
  %221 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %222 = load i32, i32* @IXGBE_PTC64, align 4
  %223 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %221, i32 %222)
  %224 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %225 = load i32, i32* @IXGBE_PTC127, align 4
  %226 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %224, i32 %225)
  %227 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %228 = load i32, i32* @IXGBE_PTC255, align 4
  %229 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %227, i32 %228)
  %230 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %231 = load i32, i32* @IXGBE_PTC511, align 4
  %232 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %230, i32 %231)
  %233 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %234 = load i32, i32* @IXGBE_PTC1023, align 4
  %235 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %233, i32 %234)
  %236 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %237 = load i32, i32* @IXGBE_PTC1522, align 4
  %238 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %236, i32 %237)
  %239 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %240 = load i32, i32* @IXGBE_MPTC, align 4
  %241 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %239, i32 %240)
  %242 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %243 = load i32, i32* @IXGBE_BPTC, align 4
  %244 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %242, i32 %243)
  store i32 0, i32* %3, align 4
  br label %245

245:                                              ; preds = %294, %187
  %246 = load i32, i32* %3, align 4
  %247 = icmp slt i32 %246, 16
  br i1 %247, label %248, label %297

248:                                              ; preds = %245
  %249 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %250 = load i32, i32* %3, align 4
  %251 = call i32 @IXGBE_QPRC(i32 %250)
  %252 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %249, i32 %251)
  %253 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %254 = load i32, i32* %3, align 4
  %255 = call i32 @IXGBE_QPTC(i32 %254)
  %256 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %253, i32 %255)
  %257 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %258 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @ixgbe_mac_82599EB, align 8
  %262 = icmp sge i64 %260, %261
  br i1 %262, label %263, label %284

263:                                              ; preds = %248
  %264 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %265 = load i32, i32* %3, align 4
  %266 = call i32 @IXGBE_QBRC_L(i32 %265)
  %267 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %264, i32 %266)
  %268 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %269 = load i32, i32* %3, align 4
  %270 = call i32 @IXGBE_QBRC_H(i32 %269)
  %271 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %268, i32 %270)
  %272 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %273 = load i32, i32* %3, align 4
  %274 = call i32 @IXGBE_QBTC_L(i32 %273)
  %275 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %272, i32 %274)
  %276 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %277 = load i32, i32* %3, align 4
  %278 = call i32 @IXGBE_QBTC_H(i32 %277)
  %279 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %276, i32 %278)
  %280 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %281 = load i32, i32* %3, align 4
  %282 = call i32 @IXGBE_QPRDC(i32 %281)
  %283 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %280, i32 %282)
  br label %293

284:                                              ; preds = %248
  %285 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %286 = load i32, i32* %3, align 4
  %287 = call i32 @IXGBE_QBRC(i32 %286)
  %288 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %285, i32 %287)
  %289 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %290 = load i32, i32* %3, align 4
  %291 = call i32 @IXGBE_QBTC(i32 %290)
  %292 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %289, i32 %291)
  br label %293

293:                                              ; preds = %284, %263
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %3, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %3, align 4
  br label %245

297:                                              ; preds = %245
  %298 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %299 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* @ixgbe_mac_X550, align 8
  %303 = icmp eq i64 %301, %302
  br i1 %303, label %311, label %304

304:                                              ; preds = %297
  %305 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %306 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @ixgbe_mac_X540, align 8
  %310 = icmp eq i64 %308, %309
  br i1 %310, label %311, label %361

311:                                              ; preds = %304, %297
  %312 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %313 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = icmp eq i64 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %311
  %318 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %319 = call i32 @ixgbe_identify_phy(%struct.ixgbe_hw* %318)
  br label %320

320:                                              ; preds = %317, %311
  %321 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %322 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 0
  %325 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %324, align 8
  %326 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %327 = bitcast %struct.ixgbe_hw* %326 to %struct.ixgbe_hw.0*
  %328 = load i32, i32* @IXGBE_PCRC8ECL, align 4
  %329 = load i32, i32* @IXGBE_MDIO_PCS_DEV_TYPE, align 4
  %330 = call i32 %325(%struct.ixgbe_hw.0* %327, i32 %328, i32 %329, i32* %3)
  %331 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %332 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %333, i32 0, i32 0
  %335 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %334, align 8
  %336 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %337 = bitcast %struct.ixgbe_hw* %336 to %struct.ixgbe_hw.0*
  %338 = load i32, i32* @IXGBE_PCRC8ECH, align 4
  %339 = load i32, i32* @IXGBE_MDIO_PCS_DEV_TYPE, align 4
  %340 = call i32 %335(%struct.ixgbe_hw.0* %337, i32 %338, i32 %339, i32* %3)
  %341 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %342 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i32 0, i32 0
  %345 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %344, align 8
  %346 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %347 = bitcast %struct.ixgbe_hw* %346 to %struct.ixgbe_hw.0*
  %348 = load i32, i32* @IXGBE_LDPCECL, align 4
  %349 = load i32, i32* @IXGBE_MDIO_PCS_DEV_TYPE, align 4
  %350 = call i32 %345(%struct.ixgbe_hw.0* %347, i32 %348, i32 %349, i32* %3)
  %351 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %352 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %353, i32 0, i32 0
  %355 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %354, align 8
  %356 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %357 = bitcast %struct.ixgbe_hw* %356 to %struct.ixgbe_hw.0*
  %358 = load i32, i32* @IXGBE_LDPCECH, align 4
  %359 = load i32, i32* @IXGBE_MDIO_PCS_DEV_TYPE, align 4
  %360 = call i32 %355(%struct.ixgbe_hw.0* %357, i32 %358, i32 %359, i32* %3)
  br label %361

361:                                              ; preds = %320, %304
  %362 = load i32, i32* @IXGBE_SUCCESS, align 4
  ret i32 %362
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_MPC(i32) #1

declare dso_local i32 @IXGBE_PXONTXC(i32) #1

declare dso_local i32 @IXGBE_PXOFFTXC(i32) #1

declare dso_local i32 @IXGBE_PXONRXCNT(i32) #1

declare dso_local i32 @IXGBE_PXOFFRXCNT(i32) #1

declare dso_local i32 @IXGBE_PXONRXC(i32) #1

declare dso_local i32 @IXGBE_PXOFFRXC(i32) #1

declare dso_local i32 @IXGBE_PXON2OFFCNT(i32) #1

declare dso_local i32 @IXGBE_RNBC(i32) #1

declare dso_local i32 @IXGBE_QPRC(i32) #1

declare dso_local i32 @IXGBE_QPTC(i32) #1

declare dso_local i32 @IXGBE_QBRC_L(i32) #1

declare dso_local i32 @IXGBE_QBRC_H(i32) #1

declare dso_local i32 @IXGBE_QBTC_L(i32) #1

declare dso_local i32 @IXGBE_QBTC_H(i32) #1

declare dso_local i32 @IXGBE_QPRDC(i32) #1

declare dso_local i32 @IXGBE_QBRC(i32) #1

declare dso_local i32 @IXGBE_QBTC(i32) #1

declare dso_local i32 @ixgbe_identify_phy(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
