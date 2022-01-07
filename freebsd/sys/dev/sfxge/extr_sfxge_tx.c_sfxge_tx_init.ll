; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, i64, i32*, i32, i32, %struct.sfxge_intr, i32 }
%struct.sfxge_intr = type { i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@SFXGE_INTR_INITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"intr->state != SFXGE_INTR_INITIALIZED\00", align 1
@sfxge_tx_dpl_get_max = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"%s=%d must be greater than 0\00", align 1
@SFXGE_PARAM_TX_DPL_GET_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@sfxge_tx_dpl_get_non_tcp_max = common dso_local global i64 0, align 8
@SFXGE_PARAM_TX_DPL_GET_NON_TCP_MAX = common dso_local global i32 0, align 4
@sfxge_tx_dpl_put_max = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"%s=%d must be greater or equal to 0\00", align 1
@SFXGE_PARAM_TX_DPL_PUT_MAX = common dso_local global i32 0, align 4
@sfxge_tso_fw_assisted = common dso_local global i32 0, align 4
@EFX_FEATURE_FW_ASSISTED_TSO = common dso_local global i32 0, align 4
@SFXGE_FATSOV1 = common dso_local global i32 0, align 4
@EFX_FEATURE_FW_ASSISTED_TSO_V2 = common dso_local global i32 0, align 4
@SFXGE_FATSOV2 = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"txq\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"Tx queues\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@SFXGE_TXQ_NON_CKSUM = common dso_local global i32 0, align 4
@SFXGE_TXQ_IP_CKSUM = common dso_local global i32 0, align 4
@SFXGE_TXQ_IP_TCP_UDP_CKSUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sfxge_tx_init(%struct.sfxge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sfxge_softc*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.sfxge_intr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %3, align 8
  %8 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %9 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.TYPE_3__* @efx_nic_cfg_get(i32 %10)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %4, align 8
  %12 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %13 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %12, i32 0, i32 5
  store %struct.sfxge_intr* %13, %struct.sfxge_intr** %5, align 8
  %14 = load %struct.sfxge_intr*, %struct.sfxge_intr** %5, align 8
  %15 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SFXGE_INTR_INITIALIZED, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* @sfxge_tx_dpl_get_max, align 8
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load i32, i32* @LOG_ERR, align 4
  %25 = load i32, i32* @SFXGE_PARAM_TX_DPL_GET_MAX, align 4
  %26 = load i64, i64* @sfxge_tx_dpl_get_max, align 8
  %27 = call i32 @log(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %25, i64 %26)
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %7, align 4
  br label %197

29:                                               ; preds = %1
  %30 = load i64, i64* @sfxge_tx_dpl_get_non_tcp_max, align 8
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* @LOG_ERR, align 4
  %34 = load i32, i32* @SFXGE_PARAM_TX_DPL_GET_NON_TCP_MAX, align 4
  %35 = load i64, i64* @sfxge_tx_dpl_get_non_tcp_max, align 8
  %36 = call i32 @log(i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %34, i64 %35)
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %7, align 4
  br label %196

38:                                               ; preds = %29
  %39 = load i64, i64* @sfxge_tx_dpl_put_max, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* @LOG_ERR, align 4
  %43 = load i32, i32* @SFXGE_PARAM_TX_DPL_PUT_MAX, align 4
  %44 = load i64, i64* @sfxge_tx_dpl_put_max, align 8
  %45 = call i32 @log(i32 %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %43, i64 %44)
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %7, align 4
  br label %195

47:                                               ; preds = %38
  %48 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %49 = call i32 @SFXGE_EVQ0_N_TXQ(%struct.sfxge_softc* %48)
  %50 = sub nsw i32 %49, 1
  %51 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %52 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %50, %54
  %56 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %57 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @sfxge_tso_fw_assisted, align 4
  %59 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %60 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* @EFX_FEATURE_FW_ASSISTED_TSO, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %47
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %68, %47
  %74 = load i32, i32* @SFXGE_FATSOV1, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %77 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %73, %68
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* @EFX_FEATURE_FW_ASSISTED_TSO_V2, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %80
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %88, %80
  %94 = load i32, i32* @SFXGE_FATSOV2, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %97 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %93, %88
  %101 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %102 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @device_get_sysctl_ctx(i32 %103)
  %105 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %106 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @device_get_sysctl_tree(i32 %107)
  %109 = call i32 @SYSCTL_CHILDREN(i32 %108)
  %110 = load i32, i32* @OID_AUTO, align 4
  %111 = load i32, i32* @CTLFLAG_RD, align 4
  %112 = call i32* @SYSCTL_ADD_NODE(i32 %104, i32 %109, i32 %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %111, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %113 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %114 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %113, i32 0, i32 2
  store i32* %112, i32** %114, align 8
  %115 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %116 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %100
  %120 = load i32, i32* @ENOMEM, align 4
  store i32 %120, i32* %7, align 4
  br label %192

121:                                              ; preds = %100
  %122 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %123 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @B_FALSE, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %142

127:                                              ; preds = %121
  %128 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %129 = load i32, i32* @SFXGE_TXQ_NON_CKSUM, align 4
  %130 = load i32, i32* @SFXGE_TXQ_NON_CKSUM, align 4
  %131 = call i32 @sfxge_tx_qinit(%struct.sfxge_softc* %128, i32 %129, i32 %130, i32 0)
  store i32 %131, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  br label %191

134:                                              ; preds = %127
  %135 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %136 = load i32, i32* @SFXGE_TXQ_IP_CKSUM, align 4
  %137 = load i32, i32* @SFXGE_TXQ_IP_CKSUM, align 4
  %138 = call i32 @sfxge_tx_qinit(%struct.sfxge_softc* %135, i32 %136, i32 %137, i32 0)
  store i32 %138, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %187

141:                                              ; preds = %134
  br label %142

142:                                              ; preds = %141, %121
  store i32 0, i32* %6, align 4
  br label %143

143:                                              ; preds = %166, %142
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %146 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %149 = call i32 @SFXGE_EVQ0_N_TXQ(%struct.sfxge_softc* %148)
  %150 = sub nsw i32 %147, %149
  %151 = add nsw i32 %150, 1
  %152 = icmp slt i32 %144, %151
  br i1 %152, label %153, label %169

153:                                              ; preds = %143
  %154 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %155 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %156 = call i32 @SFXGE_EVQ0_N_TXQ(%struct.sfxge_softc* %155)
  %157 = sub nsw i32 %156, 1
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %157, %158
  %160 = load i32, i32* @SFXGE_TXQ_IP_TCP_UDP_CKSUM, align 4
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @sfxge_tx_qinit(%struct.sfxge_softc* %154, i32 %159, i32 %160, i32 %161)
  store i32 %162, i32* %7, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %153
  br label %172

165:                                              ; preds = %153
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  br label %143

169:                                              ; preds = %143
  %170 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %171 = call i32 @sfxge_tx_stat_init(%struct.sfxge_softc* %170)
  store i32 0, i32* %2, align 4
  br label %199

172:                                              ; preds = %164
  br label %173

173:                                              ; preds = %177, %172
  %174 = load i32, i32* %6, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %6, align 4
  %176 = icmp sge i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %179 = load i32, i32* @SFXGE_TXQ_IP_TCP_UDP_CKSUM, align 4
  %180 = load i32, i32* %6, align 4
  %181 = add nsw i32 %179, %180
  %182 = call i32 @sfxge_tx_qfini(%struct.sfxge_softc* %178, i32 %181)
  br label %173

183:                                              ; preds = %173
  %184 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %185 = load i32, i32* @SFXGE_TXQ_IP_CKSUM, align 4
  %186 = call i32 @sfxge_tx_qfini(%struct.sfxge_softc* %184, i32 %185)
  br label %187

187:                                              ; preds = %183, %140
  %188 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %189 = load i32, i32* @SFXGE_TXQ_NON_CKSUM, align 4
  %190 = call i32 @sfxge_tx_qfini(%struct.sfxge_softc* %188, i32 %189)
  br label %191

191:                                              ; preds = %187, %133
  br label %192

192:                                              ; preds = %191, %119
  %193 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %194 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %193, i32 0, i32 0
  store i32 0, i32* %194, align 8
  br label %195

195:                                              ; preds = %192, %41
  br label %196

196:                                              ; preds = %195, %32
  br label %197

197:                                              ; preds = %196, %23
  %198 = load i32, i32* %7, align 4
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %197, %169
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local %struct.TYPE_3__* @efx_nic_cfg_get(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @log(i32, i8*, i32, i64) #1

declare dso_local i32 @SFXGE_EVQ0_N_TXQ(%struct.sfxge_softc*) #1

declare dso_local i32* @SYSCTL_ADD_NODE(i32, i32, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @sfxge_tx_qinit(%struct.sfxge_softc*, i32, i32, i32) #1

declare dso_local i32 @sfxge_tx_stat_init(%struct.sfxge_softc*) #1

declare dso_local i32 @sfxge_tx_qfini(%struct.sfxge_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
