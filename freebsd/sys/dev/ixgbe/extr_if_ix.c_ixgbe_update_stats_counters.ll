; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_update_stats_counters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_update_stats_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_6__*, %struct.TYPE_4__, %struct.ixgbe_hw }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.ixgbe_hw_stats }
%struct.ixgbe_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32 }
%struct.ixgbe_hw = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@IXGBE_CRCERRS = common dso_local global i32 0, align 4
@IXGBE_ILLERRC = common dso_local global i32 0, align 4
@IXGBE_ERRBC = common dso_local global i32 0, align 4
@IXGBE_MSPDC = common dso_local global i32 0, align 4
@IXGBE_MLFC = common dso_local global i32 0, align 4
@IXGBE_MRFC = common dso_local global i32 0, align 4
@IXGBE_RLEC = common dso_local global i32 0, align 4
@IXGBE_GPRC = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_GORCL = common dso_local global i32 0, align 4
@IXGBE_GORCH = common dso_local global i32 0, align 4
@IXGBE_GOTCL = common dso_local global i32 0, align 4
@IXGBE_GOTCH = common dso_local global i32 0, align 4
@IXGBE_TORL = common dso_local global i32 0, align 4
@IXGBE_TORH = common dso_local global i32 0, align 4
@IXGBE_LXONRXCNT = common dso_local global i32 0, align 4
@IXGBE_LXOFFRXCNT = common dso_local global i32 0, align 4
@IXGBE_LXONRXC = common dso_local global i32 0, align 4
@IXGBE_LXOFFRXC = common dso_local global i32 0, align 4
@IXGBE_BPRC = common dso_local global i32 0, align 4
@IXGBE_MPRC = common dso_local global i32 0, align 4
@IXGBE_PRC64 = common dso_local global i32 0, align 4
@IXGBE_PRC127 = common dso_local global i32 0, align 4
@IXGBE_PRC255 = common dso_local global i32 0, align 4
@IXGBE_PRC511 = common dso_local global i32 0, align 4
@IXGBE_PRC1023 = common dso_local global i32 0, align 4
@IXGBE_PRC1522 = common dso_local global i32 0, align 4
@IXGBE_LXONTXC = common dso_local global i32 0, align 4
@IXGBE_LXOFFTXC = common dso_local global i32 0, align 4
@IXGBE_GPTC = common dso_local global i32 0, align 4
@IXGBE_MPTC = common dso_local global i32 0, align 4
@IXGBE_PTC64 = common dso_local global i32 0, align 4
@ETHER_MIN_LEN = common dso_local global i32 0, align 4
@IXGBE_RUC = common dso_local global i32 0, align 4
@IXGBE_RFC = common dso_local global i32 0, align 4
@IXGBE_ROC = common dso_local global i32 0, align 4
@IXGBE_RJC = common dso_local global i32 0, align 4
@IXGBE_MNGPRC = common dso_local global i32 0, align 4
@IXGBE_MNGPDC = common dso_local global i32 0, align 4
@IXGBE_MNGPTC = common dso_local global i32 0, align 4
@IXGBE_TPR = common dso_local global i32 0, align 4
@IXGBE_TPT = common dso_local global i32 0, align 4
@IXGBE_PTC127 = common dso_local global i32 0, align 4
@IXGBE_PTC255 = common dso_local global i32 0, align 4
@IXGBE_PTC511 = common dso_local global i32 0, align 4
@IXGBE_PTC1023 = common dso_local global i32 0, align 4
@IXGBE_PTC1522 = common dso_local global i32 0, align 4
@IXGBE_BPTC = common dso_local global i32 0, align 4
@IXGBE_XEC = common dso_local global i32 0, align 4
@IXGBE_FCCRC = common dso_local global i32 0, align 4
@IXGBE_FCLAST = common dso_local global i32 0, align 4
@IXGBE_FCOERPDC = common dso_local global i32 0, align 4
@IXGBE_FCOEPRC = common dso_local global i32 0, align 4
@IXGBE_FCOEPTC = common dso_local global i32 0, align 4
@IXGBE_FCOEDWRC = common dso_local global i32 0, align 4
@IXGBE_FCOEDWTC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @ixgbe_update_stats_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_update_stats_counters(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.ixgbe_hw_stats*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 2
  store %struct.ixgbe_hw* %14, %struct.ixgbe_hw** %3, align 8
  %15 = load %struct.adapter*, %struct.adapter** %2, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.ixgbe_hw_stats* %17, %struct.ixgbe_hw_stats** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %19 = load i32, i32* @IXGBE_CRCERRS, align 4
  %20 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %18, i32 %19)
  %21 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %22 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %26 = load i32, i32* @IXGBE_ILLERRC, align 4
  %27 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %25, i32 %26)
  %28 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %29 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %28, i32 0, i32 52
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %33 = load i32, i32* @IXGBE_ERRBC, align 4
  %34 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %32, i32 %33)
  %35 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %36 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %35, i32 0, i32 51
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %40 = load i32, i32* @IXGBE_MSPDC, align 4
  %41 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %39, i32 %40)
  %42 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %43 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %42, i32 0, i32 50
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %47 = call i32 @IXGBE_MPC(i32 0)
  %48 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %46, i32 %47)
  %49 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %50 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %49, i32 0, i32 49
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, %48
  store i32 %54, i32* %52, align 4
  store i32 0, i32* %12, align 4
  br label %55

55:                                               ; preds = %95, %1
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %56, 16
  br i1 %57, label %58, label %98

58:                                               ; preds = %55
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @IXGBE_QPRC(i32 %60)
  %62 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %59, i32 %61)
  %63 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %64 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %63, i32 0, i32 48
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, %62
  store i32 %70, i32* %68, align 4
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @IXGBE_QPTC(i32 %72)
  %74 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %71, i32 %73)
  %75 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %76 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %75, i32 0, i32 47
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, %74
  store i32 %82, i32* %80, align 4
  %83 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @IXGBE_QPRDC(i32 %84)
  %86 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %83, i32 %85)
  %87 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %88 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %87, i32 0, i32 46
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %86
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %58
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %55

98:                                               ; preds = %55
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %100 = load i32, i32* @IXGBE_MLFC, align 4
  %101 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %99, i32 %100)
  %102 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %103 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %102, i32 0, i32 45
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %107 = load i32, i32* @IXGBE_MRFC, align 4
  %108 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %106, i32 %107)
  %109 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %110 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %109, i32 0, i32 44
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %114 = load i32, i32* @IXGBE_RLEC, align 4
  %115 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %113, i32 %114)
  %116 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %117 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %121 = load i32, i32* @IXGBE_GPRC, align 4
  %122 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %120, i32 %121)
  %123 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %124 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load i32, i32* %5, align 4
  %128 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %129 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %128, i32 0, i32 8
  %130 = load i32, i32* %129, align 8
  %131 = sub nsw i32 %130, %127
  store i32 %131, i32* %129, align 8
  %132 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %133 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %190

138:                                              ; preds = %98
  %139 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %140 = load i32, i32* @IXGBE_GORCL, align 4
  %141 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %139, i32 %140)
  %142 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %143 = load i32, i32* @IXGBE_GORCH, align 4
  %144 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %142, i32 %143)
  %145 = shl i32 %144, 32
  %146 = add nsw i32 %141, %145
  %147 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %148 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, %146
  store i32 %150, i32* %148, align 4
  %151 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %152 = load i32, i32* @IXGBE_GOTCL, align 4
  %153 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %151, i32 %152)
  %154 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %155 = load i32, i32* @IXGBE_GOTCH, align 4
  %156 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %154, i32 %155)
  %157 = shl i32 %156, 32
  %158 = add nsw i32 %153, %157
  %159 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %160 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, %158
  store i32 %162, i32* %160, align 8
  %163 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %164 = load i32, i32* @IXGBE_TORL, align 4
  %165 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %163, i32 %164)
  %166 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %167 = load i32, i32* @IXGBE_TORH, align 4
  %168 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %166, i32 %167)
  %169 = shl i32 %168, 32
  %170 = add nsw i32 %165, %169
  %171 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %172 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %171, i32 0, i32 41
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, %170
  store i32 %174, i32* %172, align 4
  %175 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %176 = load i32, i32* @IXGBE_LXONRXCNT, align 4
  %177 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %175, i32 %176)
  %178 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %179 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %178, i32 0, i32 43
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, %177
  store i32 %181, i32* %179, align 4
  %182 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %183 = load i32, i32* @IXGBE_LXOFFRXCNT, align 4
  %184 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %182, i32 %183)
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* %10, align 4
  %186 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %187 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %186, i32 0, i32 42
  %188 = load i32, i32* %187, align 8
  %189 = add nsw i32 %188, %185
  store i32 %189, i32* %187, align 8
  br label %227

190:                                              ; preds = %98
  %191 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %192 = load i32, i32* @IXGBE_LXONRXC, align 4
  %193 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %191, i32 %192)
  %194 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %195 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %194, i32 0, i32 43
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, %193
  store i32 %197, i32* %195, align 4
  %198 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %199 = load i32, i32* @IXGBE_LXOFFRXC, align 4
  %200 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %198, i32 %199)
  store i32 %200, i32* %10, align 4
  %201 = load i32, i32* %10, align 4
  %202 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %203 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %202, i32 0, i32 42
  %204 = load i32, i32* %203, align 8
  %205 = add nsw i32 %204, %201
  store i32 %205, i32* %203, align 8
  %206 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %207 = load i32, i32* @IXGBE_GORCH, align 4
  %208 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %206, i32 %207)
  %209 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %210 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %209, i32 0, i32 7
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, %208
  store i32 %212, i32* %210, align 4
  %213 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %214 = load i32, i32* @IXGBE_GOTCH, align 4
  %215 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %213, i32 %214)
  %216 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %217 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = add nsw i32 %218, %215
  store i32 %219, i32* %217, align 8
  %220 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %221 = load i32, i32* @IXGBE_TORH, align 4
  %222 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %220, i32 %221)
  %223 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %224 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %223, i32 0, i32 41
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %225, %222
  store i32 %226, i32* %224, align 4
  br label %227

227:                                              ; preds = %190, %138
  %228 = load i32, i32* %10, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %227
  %231 = load %struct.adapter*, %struct.adapter** %2, align 8
  %232 = getelementptr inbounds %struct.adapter, %struct.adapter* %231, i32 0, i32 0
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  store i32 1, i32* %234, align 4
  br label %235

235:                                              ; preds = %230, %227
  %236 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %237 = load i32, i32* @IXGBE_BPRC, align 4
  %238 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %236, i32 %237)
  store i32 %238, i32* %6, align 4
  %239 = load i32, i32* %6, align 4
  %240 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %241 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %240, i32 0, i32 40
  %242 = load i32, i32* %241, align 8
  %243 = add nsw i32 %242, %239
  store i32 %243, i32* %241, align 8
  %244 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %245 = load i32, i32* @IXGBE_MPRC, align 4
  %246 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %244, i32 %245)
  %247 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %248 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %247, i32 0, i32 6
  %249 = load i32, i32* %248, align 8
  %250 = add nsw i32 %249, %246
  store i32 %250, i32* %248, align 8
  %251 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %252 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %263

257:                                              ; preds = %235
  %258 = load i32, i32* %6, align 4
  %259 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %260 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 8
  %262 = sub nsw i32 %261, %258
  store i32 %262, i32* %260, align 8
  br label %263

263:                                              ; preds = %257, %235
  %264 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %265 = load i32, i32* @IXGBE_PRC64, align 4
  %266 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %264, i32 %265)
  %267 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %268 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %267, i32 0, i32 39
  %269 = load i32, i32* %268, align 4
  %270 = add nsw i32 %269, %266
  store i32 %270, i32* %268, align 4
  %271 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %272 = load i32, i32* @IXGBE_PRC127, align 4
  %273 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %271, i32 %272)
  %274 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %275 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %274, i32 0, i32 38
  %276 = load i32, i32* %275, align 8
  %277 = add nsw i32 %276, %273
  store i32 %277, i32* %275, align 8
  %278 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %279 = load i32, i32* @IXGBE_PRC255, align 4
  %280 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %278, i32 %279)
  %281 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %282 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %281, i32 0, i32 37
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 %283, %280
  store i32 %284, i32* %282, align 4
  %285 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %286 = load i32, i32* @IXGBE_PRC511, align 4
  %287 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %285, i32 %286)
  %288 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %289 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %288, i32 0, i32 36
  %290 = load i32, i32* %289, align 8
  %291 = add nsw i32 %290, %287
  store i32 %291, i32* %289, align 8
  %292 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %293 = load i32, i32* @IXGBE_PRC1023, align 4
  %294 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %292, i32 %293)
  %295 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %296 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %295, i32 0, i32 35
  %297 = load i32, i32* %296, align 4
  %298 = add nsw i32 %297, %294
  store i32 %298, i32* %296, align 4
  %299 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %300 = load i32, i32* @IXGBE_PRC1522, align 4
  %301 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %299, i32 %300)
  %302 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %303 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %302, i32 0, i32 34
  %304 = load i32, i32* %303, align 8
  %305 = add nsw i32 %304, %301
  store i32 %305, i32* %303, align 8
  %306 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %307 = load i32, i32* @IXGBE_LXONTXC, align 4
  %308 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %306, i32 %307)
  store i32 %308, i32* %7, align 4
  %309 = load i32, i32* %7, align 4
  %310 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %311 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %310, i32 0, i32 33
  %312 = load i32, i32* %311, align 4
  %313 = add nsw i32 %312, %309
  store i32 %313, i32* %311, align 4
  %314 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %315 = load i32, i32* @IXGBE_LXOFFTXC, align 4
  %316 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %314, i32 %315)
  store i32 %316, i32* %8, align 4
  %317 = load i32, i32* %8, align 4
  %318 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %319 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %318, i32 0, i32 32
  %320 = load i32, i32* %319, align 8
  %321 = add nsw i32 %320, %317
  store i32 %321, i32* %319, align 8
  %322 = load i32, i32* %7, align 4
  %323 = load i32, i32* %8, align 4
  %324 = add nsw i32 %322, %323
  store i32 %324, i32* %9, align 4
  %325 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %326 = load i32, i32* @IXGBE_GPTC, align 4
  %327 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %325, i32 %326)
  %328 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %329 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 4
  %331 = add nsw i32 %330, %327
  store i32 %331, i32* %329, align 4
  %332 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %333 = load i32, i32* @IXGBE_MPTC, align 4
  %334 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %332, i32 %333)
  %335 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %336 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 8
  %338 = add nsw i32 %337, %334
  store i32 %338, i32* %336, align 8
  %339 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %340 = load i32, i32* @IXGBE_PTC64, align 4
  %341 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %339, i32 %340)
  %342 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %343 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %342, i32 0, i32 5
  %344 = load i32, i32* %343, align 4
  %345 = add nsw i32 %344, %341
  store i32 %345, i32* %343, align 4
  %346 = load i32, i32* %9, align 4
  %347 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %348 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 4
  %350 = sub nsw i32 %349, %346
  store i32 %350, i32* %348, align 4
  %351 = load i32, i32* %9, align 4
  %352 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %353 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %352, i32 0, i32 4
  %354 = load i32, i32* %353, align 8
  %355 = sub nsw i32 %354, %351
  store i32 %355, i32* %353, align 8
  %356 = load i32, i32* %9, align 4
  %357 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %358 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %357, i32 0, i32 5
  %359 = load i32, i32* %358, align 4
  %360 = sub nsw i32 %359, %356
  store i32 %360, i32* %358, align 4
  %361 = load i32, i32* %9, align 4
  %362 = load i32, i32* @ETHER_MIN_LEN, align 4
  %363 = mul nsw i32 %361, %362
  %364 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %365 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 8
  %367 = sub nsw i32 %366, %363
  store i32 %367, i32* %365, align 8
  %368 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %369 = load i32, i32* @IXGBE_RUC, align 4
  %370 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %368, i32 %369)
  %371 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %372 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %371, i32 0, i32 31
  %373 = load i32, i32* %372, align 4
  %374 = add nsw i32 %373, %370
  store i32 %374, i32* %372, align 4
  %375 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %376 = load i32, i32* @IXGBE_RFC, align 4
  %377 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %375, i32 %376)
  %378 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %379 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %378, i32 0, i32 30
  %380 = load i32, i32* %379, align 8
  %381 = add nsw i32 %380, %377
  store i32 %381, i32* %379, align 8
  %382 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %383 = load i32, i32* @IXGBE_ROC, align 4
  %384 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %382, i32 %383)
  %385 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %386 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %385, i32 0, i32 29
  %387 = load i32, i32* %386, align 4
  %388 = add nsw i32 %387, %384
  store i32 %388, i32* %386, align 4
  %389 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %390 = load i32, i32* @IXGBE_RJC, align 4
  %391 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %389, i32 %390)
  %392 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %393 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %392, i32 0, i32 28
  %394 = load i32, i32* %393, align 8
  %395 = add nsw i32 %394, %391
  store i32 %395, i32* %393, align 8
  %396 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %397 = load i32, i32* @IXGBE_MNGPRC, align 4
  %398 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %396, i32 %397)
  %399 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %400 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %399, i32 0, i32 27
  %401 = load i32, i32* %400, align 4
  %402 = add nsw i32 %401, %398
  store i32 %402, i32* %400, align 4
  %403 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %404 = load i32, i32* @IXGBE_MNGPDC, align 4
  %405 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %403, i32 %404)
  %406 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %407 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %406, i32 0, i32 26
  %408 = load i32, i32* %407, align 8
  %409 = add nsw i32 %408, %405
  store i32 %409, i32* %407, align 8
  %410 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %411 = load i32, i32* @IXGBE_MNGPTC, align 4
  %412 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %410, i32 %411)
  %413 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %414 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %413, i32 0, i32 25
  %415 = load i32, i32* %414, align 4
  %416 = add nsw i32 %415, %412
  store i32 %416, i32* %414, align 4
  %417 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %418 = load i32, i32* @IXGBE_TPR, align 4
  %419 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %417, i32 %418)
  %420 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %421 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %420, i32 0, i32 24
  %422 = load i32, i32* %421, align 8
  %423 = add nsw i32 %422, %419
  store i32 %423, i32* %421, align 8
  %424 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %425 = load i32, i32* @IXGBE_TPT, align 4
  %426 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %424, i32 %425)
  %427 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %428 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %427, i32 0, i32 23
  %429 = load i32, i32* %428, align 4
  %430 = add nsw i32 %429, %426
  store i32 %430, i32* %428, align 4
  %431 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %432 = load i32, i32* @IXGBE_PTC127, align 4
  %433 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %431, i32 %432)
  %434 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %435 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %434, i32 0, i32 22
  %436 = load i32, i32* %435, align 8
  %437 = add nsw i32 %436, %433
  store i32 %437, i32* %435, align 8
  %438 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %439 = load i32, i32* @IXGBE_PTC255, align 4
  %440 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %438, i32 %439)
  %441 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %442 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %441, i32 0, i32 21
  %443 = load i32, i32* %442, align 4
  %444 = add nsw i32 %443, %440
  store i32 %444, i32* %442, align 4
  %445 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %446 = load i32, i32* @IXGBE_PTC511, align 4
  %447 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %445, i32 %446)
  %448 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %449 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %448, i32 0, i32 20
  %450 = load i32, i32* %449, align 8
  %451 = add nsw i32 %450, %447
  store i32 %451, i32* %449, align 8
  %452 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %453 = load i32, i32* @IXGBE_PTC1023, align 4
  %454 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %452, i32 %453)
  %455 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %456 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %455, i32 0, i32 19
  %457 = load i32, i32* %456, align 4
  %458 = add nsw i32 %457, %454
  store i32 %458, i32* %456, align 4
  %459 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %460 = load i32, i32* @IXGBE_PTC1522, align 4
  %461 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %459, i32 %460)
  %462 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %463 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %462, i32 0, i32 18
  %464 = load i32, i32* %463, align 8
  %465 = add nsw i32 %464, %461
  store i32 %465, i32* %463, align 8
  %466 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %467 = load i32, i32* @IXGBE_BPTC, align 4
  %468 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %466, i32 %467)
  %469 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %470 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %469, i32 0, i32 17
  %471 = load i32, i32* %470, align 4
  %472 = add nsw i32 %471, %468
  store i32 %472, i32* %470, align 4
  %473 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %474 = load i32, i32* @IXGBE_XEC, align 4
  %475 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %473, i32 %474)
  %476 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %477 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %476, i32 0, i32 16
  %478 = load i32, i32* %477, align 8
  %479 = add nsw i32 %478, %475
  store i32 %479, i32* %477, align 8
  %480 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %481 = load i32, i32* @IXGBE_FCCRC, align 4
  %482 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %480, i32 %481)
  %483 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %484 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %483, i32 0, i32 15
  %485 = load i32, i32* %484, align 4
  %486 = add nsw i32 %485, %482
  store i32 %486, i32* %484, align 4
  %487 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %488 = load i32, i32* @IXGBE_FCLAST, align 4
  %489 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %487, i32 %488)
  %490 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %491 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %490, i32 0, i32 14
  %492 = load i32, i32* %491, align 8
  %493 = add nsw i32 %492, %489
  store i32 %493, i32* %491, align 8
  %494 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %495 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %494, i32 0, i32 0
  %496 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %495, i32 0, i32 0
  %497 = load i64, i64* %496, align 8
  %498 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %499 = icmp ne i64 %497, %498
  br i1 %499, label %500, label %536

500:                                              ; preds = %263
  %501 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %502 = load i32, i32* @IXGBE_FCOERPDC, align 4
  %503 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %501, i32 %502)
  %504 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %505 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %504, i32 0, i32 13
  %506 = load i32, i32* %505, align 4
  %507 = add nsw i32 %506, %503
  store i32 %507, i32* %505, align 4
  %508 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %509 = load i32, i32* @IXGBE_FCOEPRC, align 4
  %510 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %508, i32 %509)
  %511 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %512 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %511, i32 0, i32 12
  %513 = load i32, i32* %512, align 8
  %514 = add nsw i32 %513, %510
  store i32 %514, i32* %512, align 8
  %515 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %516 = load i32, i32* @IXGBE_FCOEPTC, align 4
  %517 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %515, i32 %516)
  %518 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %519 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %518, i32 0, i32 11
  %520 = load i32, i32* %519, align 4
  %521 = add nsw i32 %520, %517
  store i32 %521, i32* %519, align 4
  %522 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %523 = load i32, i32* @IXGBE_FCOEDWRC, align 4
  %524 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %522, i32 %523)
  %525 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %526 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %525, i32 0, i32 10
  %527 = load i32, i32* %526, align 8
  %528 = add nsw i32 %527, %524
  store i32 %528, i32* %526, align 8
  %529 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %530 = load i32, i32* @IXGBE_FCOEDWTC, align 4
  %531 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %529, i32 %530)
  %532 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %533 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %532, i32 0, i32 9
  %534 = load i32, i32* %533, align 4
  %535 = add nsw i32 %534, %531
  store i32 %535, i32* %533, align 4
  br label %536

536:                                              ; preds = %500, %263
  %537 = load %struct.adapter*, %struct.adapter** %2, align 8
  %538 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %539 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %538, i32 0, i32 8
  %540 = load i32, i32* %539, align 8
  %541 = call i32 @IXGBE_SET_IPACKETS(%struct.adapter* %537, i32 %540)
  %542 = load %struct.adapter*, %struct.adapter** %2, align 8
  %543 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %544 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %543, i32 0, i32 3
  %545 = load i32, i32* %544, align 4
  %546 = call i32 @IXGBE_SET_OPACKETS(%struct.adapter* %542, i32 %545)
  %547 = load %struct.adapter*, %struct.adapter** %2, align 8
  %548 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %549 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %548, i32 0, i32 7
  %550 = load i32, i32* %549, align 4
  %551 = call i32 @IXGBE_SET_IBYTES(%struct.adapter* %547, i32 %550)
  %552 = load %struct.adapter*, %struct.adapter** %2, align 8
  %553 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %554 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %553, i32 0, i32 2
  %555 = load i32, i32* %554, align 8
  %556 = call i32 @IXGBE_SET_OBYTES(%struct.adapter* %552, i32 %555)
  %557 = load %struct.adapter*, %struct.adapter** %2, align 8
  %558 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %559 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %558, i32 0, i32 6
  %560 = load i32, i32* %559, align 8
  %561 = call i32 @IXGBE_SET_IMCASTS(%struct.adapter* %557, i32 %560)
  %562 = load %struct.adapter*, %struct.adapter** %2, align 8
  %563 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %564 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %563, i32 0, i32 4
  %565 = load i32, i32* %564, align 8
  %566 = call i32 @IXGBE_SET_OMCASTS(%struct.adapter* %562, i32 %565)
  %567 = load %struct.adapter*, %struct.adapter** %2, align 8
  %568 = call i32 @IXGBE_SET_COLLISIONS(%struct.adapter* %567, i32 0)
  %569 = load %struct.adapter*, %struct.adapter** %2, align 8
  %570 = load i32, i32* %11, align 4
  %571 = call i32 @IXGBE_SET_IQDROPS(%struct.adapter* %569, i32 %570)
  %572 = load %struct.adapter*, %struct.adapter** %2, align 8
  %573 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %574 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %573, i32 0, i32 0
  %575 = load i32, i32* %574, align 8
  %576 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %577 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %576, i32 0, i32 1
  %578 = load i32, i32* %577, align 4
  %579 = add nsw i32 %575, %578
  %580 = call i32 @IXGBE_SET_IERRORS(%struct.adapter* %572, i32 %579)
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_MPC(i32) #1

declare dso_local i32 @IXGBE_QPRC(i32) #1

declare dso_local i32 @IXGBE_QPTC(i32) #1

declare dso_local i32 @IXGBE_QPRDC(i32) #1

declare dso_local i32 @IXGBE_SET_IPACKETS(%struct.adapter*, i32) #1

declare dso_local i32 @IXGBE_SET_OPACKETS(%struct.adapter*, i32) #1

declare dso_local i32 @IXGBE_SET_IBYTES(%struct.adapter*, i32) #1

declare dso_local i32 @IXGBE_SET_OBYTES(%struct.adapter*, i32) #1

declare dso_local i32 @IXGBE_SET_IMCASTS(%struct.adapter*, i32) #1

declare dso_local i32 @IXGBE_SET_OMCASTS(%struct.adapter*, i32) #1

declare dso_local i32 @IXGBE_SET_COLLISIONS(%struct.adapter*, i32) #1

declare dso_local i32 @IXGBE_SET_IQDROPS(%struct.adapter*, i32) #1

declare dso_local i32 @IXGBE_SET_IERRORS(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
