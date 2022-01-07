; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_start_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_start_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.mlx4_en_priv = type { i32, i32, i64, i32, i32, i32, %struct.TYPE_10__**, %struct.mlx4_en_cq**, %struct.mlx4_en_cq**, %struct.mlx4_en_tx_ring**, i32, i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_9__*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mlx4_en_dev* }
%struct.TYPE_10__ = type { i32 }
%struct.mlx4_en_cq = type { i32, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.mlx4_en_tx_ring = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.mlx4_en_dev = type { i32, i32, i64* }

@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"start port called while port already up\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Rx buf size:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to activate RX rings\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed activating Rx CQ\0A\00", align 1
@MLX4_CQE_OWNER_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed setting cq moderation parameters\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Getting qp number for port %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Failed getting eth qp\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Failed configuring rss steering\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Failed activating Tx CQ\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Resetting index of collapsed CQ:%d to -1\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Failed activating Tx ring %d\0A\00", align 1
@INIT_OWNER_BIT = common dso_local global i32 0, align 4
@STAMP_STRIDE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [71 x i8] c"Failed setting port general configurations for port %d, with error %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Failed setting default qp numbers\0A\00", align 1
@HW = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [19 x i8] c"Initializing port\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Failed Initializing port\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@MLX4_PROT_ETH = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [28 x i8] c"Failed Attaching Broadcast\0A\00", align 1
@MLX4_EN_FLAG_PROMISC = common dso_local global i32 0, align 4
@MLX4_EN_FLAG_MC_PROMISC = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@MLX4_EN_WATCHDOG_TIMEOUT = common dso_local global i32 0, align 4
@mlx4_en_watchdog_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_start_port(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mlx4_en_priv*, align 8
  %5 = alloca %struct.mlx4_en_dev*, align 8
  %6 = alloca %struct.mlx4_en_cq*, align 8
  %7 = alloca %struct.mlx4_en_tx_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [16 x i64], align 16
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.mlx4_en_priv* %15, %struct.mlx4_en_priv** %4, align 8
  %16 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %17 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %16, i32 0, i32 24
  %18 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %17, align 8
  store %struct.mlx4_en_dev* %18, %struct.mlx4_en_dev** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = bitcast [16 x i64]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 128, i1 false)
  %20 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %21 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @DRV, align 4
  %26 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %27 = call i32 (i32, %struct.mlx4_en_priv*, i8*, ...) @en_dbg(i32 %25, %struct.mlx4_en_priv* %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %498

28:                                               ; preds = %1
  %29 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %30 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %29, i32 0, i32 23
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %33 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %32, i32 0, i32 22
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %36 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %35, i32 0, i32 21
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %39 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %38, i32 0, i32 20
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %42 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %41, i32 0, i32 19
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %48 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %47, i32 0, i32 18
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @min(i32 %46, i32 %49)
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = call i32 @mlx4_en_calc_rx_buf(%struct.net_device* %53)
  %55 = load i32, i32* @DRV, align 4
  %56 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %57 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %58 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %57, i32 0, i32 16
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32, %struct.mlx4_en_priv*, i8*, ...) @en_dbg(i32 %55, %struct.mlx4_en_priv* %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %62 = call i32 @mlx4_en_activate_rx_rings(%struct.mlx4_en_priv* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %28
  %66 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %67 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %2, align 4
  br label %498

69:                                               ; preds = %28
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %144, %69
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %73 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %147

76:                                               ; preds = %70
  %77 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %78 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %77, i32 0, i32 7
  %79 = load %struct.mlx4_en_cq**, %struct.mlx4_en_cq*** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %79, i64 %81
  %83 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %82, align 8
  store %struct.mlx4_en_cq* %83, %struct.mlx4_en_cq** %6, align 8
  %84 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %85 = call i32 @mlx4_en_cq_init_lock(%struct.mlx4_en_cq* %84)
  %86 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %87 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @mlx4_en_activate_cq(%struct.mlx4_en_priv* %86, %struct.mlx4_en_cq* %87, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %76
  %93 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %94 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %461

95:                                               ; preds = %76
  store i32 0, i32* %12, align 4
  br label %96

96:                                               ; preds = %111, %95
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %99 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %96
  %103 = load i32, i32* @MLX4_CQE_OWNER_MASK, align 4
  %104 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %105 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %104, i32 0, i32 2
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  store i32 %103, i32* %110, align 4
  br label %111

111:                                              ; preds = %102
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  br label %96

114:                                              ; preds = %96
  %115 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %116 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %117 = call i32 @mlx4_en_set_cq_moder(%struct.mlx4_en_priv* %115, %struct.mlx4_en_cq* %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %114
  %121 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %122 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %121, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %123 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %124 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %125 = call i32 @mlx4_en_deactivate_cq(%struct.mlx4_en_priv* %123, %struct.mlx4_en_cq* %124)
  br label %461

126:                                              ; preds = %114
  %127 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %128 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %129 = call i32 @mlx4_en_arm_cq(%struct.mlx4_en_priv* %127, %struct.mlx4_en_cq* %128)
  %130 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %131 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %135 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %134, i32 0, i32 6
  %136 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %136, i64 %138
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  store i32 %133, i32* %141, align 4
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %126
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %11, align 4
  br label %70

147:                                              ; preds = %70
  %148 = load i32, i32* @DRV, align 4
  %149 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %150 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %151 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = call i32 (i32, %struct.mlx4_en_priv*, i8*, ...) @en_dbg(i32 %148, %struct.mlx4_en_priv* %149, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %152)
  %154 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %155 = call i32 @mlx4_en_get_qp(%struct.mlx4_en_priv* %154)
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %10, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %147
  %159 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %160 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %159, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %461

161:                                              ; preds = %147
  %162 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %163 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %162, i32 0, i32 2
  %164 = load i64*, i64** %163, align 8
  %165 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %166 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds i64, i64* %164, i64 %167
  store i64 0, i64* %168, align 8
  %169 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %170 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %173 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @mlx4_get_default_counter_index(i32 %171, i64 %174)
  %176 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %177 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %176, i32 0, i32 17
  store i32 %175, i32* %177, align 4
  %178 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %179 = call i32 @mlx4_en_config_rss_steer(%struct.mlx4_en_priv* %178)
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %161
  %183 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %184 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %183, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %458

185:                                              ; preds = %161
  %186 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %187 = call i32 @mlx4_en_create_drop_qp(%struct.mlx4_en_priv* %186)
  store i32 %187, i32* %10, align 4
  %188 = load i32, i32* %10, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  br label %455

191:                                              ; preds = %185
  store i32 0, i32* %11, align 4
  br label %192

192:                                              ; preds = %293, %191
  %193 = load i32, i32* %11, align 4
  %194 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %195 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = icmp slt i32 %193, %196
  br i1 %197, label %198, label %296

198:                                              ; preds = %192
  %199 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %200 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %199, i32 0, i32 8
  %201 = load %struct.mlx4_en_cq**, %struct.mlx4_en_cq*** %200, align 8
  %202 = load i32, i32* %11, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %201, i64 %203
  %205 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %204, align 8
  store %struct.mlx4_en_cq* %205, %struct.mlx4_en_cq** %6, align 8
  %206 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %207 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %208 = load i32, i32* %11, align 4
  %209 = call i32 @mlx4_en_activate_cq(%struct.mlx4_en_priv* %206, %struct.mlx4_en_cq* %207, i32 %208)
  store i32 %209, i32* %10, align 4
  %210 = load i32, i32* %10, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %198
  %213 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %214 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %213, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %428

215:                                              ; preds = %198
  %216 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %217 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %218 = call i32 @mlx4_en_set_cq_moder(%struct.mlx4_en_priv* %216, %struct.mlx4_en_cq* %217)
  store i32 %218, i32* %10, align 4
  %219 = load i32, i32* %10, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %215
  %222 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %223 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %222, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %224 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %225 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %226 = call i32 @mlx4_en_deactivate_cq(%struct.mlx4_en_priv* %224, %struct.mlx4_en_cq* %225)
  br label %428

227:                                              ; preds = %215
  %228 = load i32, i32* @DRV, align 4
  %229 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %230 = load i32, i32* %11, align 4
  %231 = call i32 (i32, %struct.mlx4_en_priv*, i8*, ...) @en_dbg(i32 %228, %struct.mlx4_en_priv* %229, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %230)
  %232 = call i32 @cpu_to_be16(i32 65535)
  %233 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %234 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %233, i32 0, i32 2
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 0
  store i32 %232, i32* %236, align 4
  %237 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %238 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %237, i32 0, i32 9
  %239 = load %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %238, align 8
  %240 = load i32, i32* %11, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %239, i64 %241
  %243 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %242, align 8
  store %struct.mlx4_en_tx_ring* %243, %struct.mlx4_en_tx_ring** %7, align 8
  %244 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %245 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %246 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %247 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %11, align 4
  %251 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %252 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 4
  %254 = sdiv i32 %250, %253
  %255 = call i32 @mlx4_en_activate_tx_ring(%struct.mlx4_en_priv* %244, %struct.mlx4_en_tx_ring* %245, i32 %249, i32 %254)
  store i32 %255, i32* %10, align 4
  %256 = load i32, i32* %10, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %265

258:                                              ; preds = %227
  %259 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %260 = load i32, i32* %11, align 4
  %261 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %259, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %260)
  %262 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %263 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %264 = call i32 @mlx4_en_deactivate_cq(%struct.mlx4_en_priv* %262, %struct.mlx4_en_cq* %263)
  br label %428

265:                                              ; preds = %227
  %266 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %267 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %268 = call i32 @mlx4_en_arm_cq(%struct.mlx4_en_priv* %266, %struct.mlx4_en_cq* %267)
  store i32 0, i32* %12, align 4
  br label %269

269:                                              ; preds = %284, %265
  %270 = load i32, i32* %12, align 4
  %271 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %272 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = icmp slt i32 %270, %273
  br i1 %274, label %275, label %290

275:                                              ; preds = %269
  %276 = load i32, i32* @INIT_OWNER_BIT, align 4
  %277 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %278 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = load i32, i32* %12, align 4
  %281 = sext i32 %280 to i64
  %282 = add nsw i64 %279, %281
  %283 = inttoptr i64 %282 to i32*
  store i32 %276, i32* %283, align 4
  br label %284

284:                                              ; preds = %275
  %285 = load i64, i64* @STAMP_STRIDE, align 8
  %286 = load i32, i32* %12, align 4
  %287 = sext i32 %286 to i64
  %288 = add nsw i64 %287, %285
  %289 = trunc i64 %288 to i32
  store i32 %289, i32* %12, align 4
  br label %269

290:                                              ; preds = %269
  %291 = load i32, i32* %9, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %9, align 4
  br label %293

293:                                              ; preds = %290
  %294 = load i32, i32* %11, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %11, align 4
  br label %192

296:                                              ; preds = %192
  %297 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %298 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %301 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %300, i32 0, i32 2
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %304 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %303, i32 0, i32 16
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %307 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %306, i32 0, i32 15
  %308 = load %struct.TYPE_9__*, %struct.TYPE_9__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 3
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %312 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %311, i32 0, i32 15
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %317 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %316, i32 0, i32 15
  %318 = load %struct.TYPE_9__*, %struct.TYPE_9__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %322 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %321, i32 0, i32 15
  %323 = load %struct.TYPE_9__*, %struct.TYPE_9__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @mlx4_SET_PORT_general(i32 %299, i64 %302, i32 %305, i32 %310, i32 %315, i32 %320, i32 %325)
  store i32 %326, i32* %10, align 4
  %327 = load i32, i32* %10, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %336

329:                                              ; preds = %296
  %330 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %331 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %332 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %331, i32 0, i32 2
  %333 = load i64, i64* %332, align 8
  %334 = load i32, i32* %10, align 4
  %335 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %330, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.11, i64 0, i64 0), i64 %333, i32 %334)
  br label %428

336:                                              ; preds = %296
  %337 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %338 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %341 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %340, i32 0, i32 2
  %342 = load i64, i64* %341, align 8
  %343 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %344 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %343, i32 0, i32 14
  %345 = load i32, i32* %344, align 8
  %346 = call i32 @mlx4_SET_PORT_qpn_calc(i32 %339, i64 %342, i32 %345, i32 0)
  store i32 %346, i32* %10, align 4
  %347 = load i32, i32* %10, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %352

349:                                              ; preds = %336
  %350 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %351 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %350, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  br label %428

352:                                              ; preds = %336
  %353 = load i32, i32* @HW, align 4
  %354 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %355 = call i32 (i32, %struct.mlx4_en_priv*, i8*, ...) @en_dbg(i32 %353, %struct.mlx4_en_priv* %354, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %356 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %357 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %360 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %359, i32 0, i32 2
  %361 = load i64, i64* %360, align 8
  %362 = call i32 @mlx4_INIT_PORT(i32 %358, i64 %361)
  store i32 %362, i32* %10, align 4
  %363 = load i32, i32* %10, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %352
  %366 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %367 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %366, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  br label %428

368:                                              ; preds = %352
  %369 = getelementptr inbounds [16 x i64], [16 x i64]* %13, i64 0, i64 10
  %370 = load i32, i32* @ETH_ALEN, align 4
  %371 = call i32 @memset(i64* %369, i32 255, i32 %370)
  %372 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %373 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %372, i32 0, i32 2
  %374 = load i64, i64* %373, align 8
  %375 = getelementptr inbounds [16 x i64], [16 x i64]* %13, i64 0, i64 5
  store i64 %374, i64* %375, align 8
  %376 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %377 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %380 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %379, i32 0, i32 13
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 0
  %382 = getelementptr inbounds [16 x i64], [16 x i64]* %13, i64 0, i64 0
  %383 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %384 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %383, i32 0, i32 2
  %385 = load i64, i64* %384, align 8
  %386 = load i32, i32* @MLX4_PROT_ETH, align 4
  %387 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %388 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %387, i32 0, i32 12
  %389 = call i64 @mlx4_multicast_attach(i32 %378, i32* %381, i64* %382, i64 %385, i32 0, i32 %386, i32* %388)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %394

391:                                              ; preds = %368
  %392 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %393 = call i32 @mlx4_warn(%struct.mlx4_en_dev* %392, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  br label %394

394:                                              ; preds = %391, %368
  %395 = load i32, i32* @MLX4_EN_FLAG_PROMISC, align 4
  %396 = load i32, i32* @MLX4_EN_FLAG_MC_PROMISC, align 4
  %397 = or i32 %395, %396
  %398 = xor i32 %397, -1
  %399 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %400 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %399, i32 0, i32 5
  %401 = load i32, i32* %400, align 8
  %402 = and i32 %401, %398
  store i32 %402, i32* %400, align 8
  %403 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %404 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %407 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %406, i32 0, i32 11
  %408 = call i32 @queue_work(i32 %405, i32* %407)
  %409 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %410 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %409, i32 0, i32 0
  store i32 1, i32* %410, align 8
  %411 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %412 = xor i32 %411, -1
  %413 = load %struct.net_device*, %struct.net_device** %3, align 8
  %414 = getelementptr inbounds %struct.net_device, %struct.net_device* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 4
  %416 = and i32 %415, %412
  store i32 %416, i32* %414, align 4
  %417 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %418 = load %struct.net_device*, %struct.net_device** %3, align 8
  %419 = getelementptr inbounds %struct.net_device, %struct.net_device* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 4
  %421 = or i32 %420, %417
  store i32 %421, i32* %419, align 4
  %422 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %423 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %422, i32 0, i32 10
  %424 = load i32, i32* @MLX4_EN_WATCHDOG_TIMEOUT, align 4
  %425 = load i32, i32* @mlx4_en_watchdog_timeout, align 4
  %426 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %427 = call i32 @callout_reset(i32* %423, i32 %424, i32 %425, %struct.mlx4_en_priv* %426)
  store i32 0, i32* %2, align 4
  br label %498

428:                                              ; preds = %365, %349, %329, %258, %221, %212
  br label %429

429:                                              ; preds = %433, %428
  %430 = load i32, i32* %9, align 4
  %431 = add nsw i32 %430, -1
  store i32 %431, i32* %9, align 4
  %432 = icmp ne i32 %430, 0
  br i1 %432, label %433, label %452

433:                                              ; preds = %429
  %434 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %435 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %436 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %435, i32 0, i32 9
  %437 = load %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %436, align 8
  %438 = load i32, i32* %9, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %437, i64 %439
  %441 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %440, align 8
  %442 = call i32 @mlx4_en_deactivate_tx_ring(%struct.mlx4_en_priv* %434, %struct.mlx4_en_tx_ring* %441)
  %443 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %444 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %445 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %444, i32 0, i32 8
  %446 = load %struct.mlx4_en_cq**, %struct.mlx4_en_cq*** %445, align 8
  %447 = load i32, i32* %9, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %446, i64 %448
  %450 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %449, align 8
  %451 = call i32 @mlx4_en_deactivate_cq(%struct.mlx4_en_priv* %443, %struct.mlx4_en_cq* %450)
  br label %429

452:                                              ; preds = %429
  %453 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %454 = call i32 @mlx4_en_destroy_drop_qp(%struct.mlx4_en_priv* %453)
  br label %455

455:                                              ; preds = %452, %190
  %456 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %457 = call i32 @mlx4_en_release_rss_steer(%struct.mlx4_en_priv* %456)
  br label %458

458:                                              ; preds = %455, %182
  %459 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %460 = call i32 @mlx4_en_put_qp(%struct.mlx4_en_priv* %459)
  br label %461

461:                                              ; preds = %458, %158, %120, %92
  br label %462

462:                                              ; preds = %466, %461
  %463 = load i32, i32* %8, align 4
  %464 = add nsw i32 %463, -1
  store i32 %464, i32* %8, align 4
  %465 = icmp ne i32 %463, 0
  br i1 %465, label %466, label %476

466:                                              ; preds = %462
  %467 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %468 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %469 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %468, i32 0, i32 7
  %470 = load %struct.mlx4_en_cq**, %struct.mlx4_en_cq*** %469, align 8
  %471 = load i32, i32* %8, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %470, i64 %472
  %474 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %473, align 8
  %475 = call i32 @mlx4_en_deactivate_cq(%struct.mlx4_en_priv* %467, %struct.mlx4_en_cq* %474)
  br label %462

476:                                              ; preds = %462
  store i32 0, i32* %11, align 4
  br label %477

477:                                              ; preds = %493, %476
  %478 = load i32, i32* %11, align 4
  %479 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %480 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %479, i32 0, i32 1
  %481 = load i32, i32* %480, align 4
  %482 = icmp slt i32 %478, %481
  br i1 %482, label %483, label %496

483:                                              ; preds = %477
  %484 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %485 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %486 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %485, i32 0, i32 6
  %487 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %486, align 8
  %488 = load i32, i32* %11, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %487, i64 %489
  %491 = load %struct.TYPE_10__*, %struct.TYPE_10__** %490, align 8
  %492 = call i32 @mlx4_en_deactivate_rx_ring(%struct.mlx4_en_priv* %484, %struct.TYPE_10__* %491)
  br label %493

493:                                              ; preds = %483
  %494 = load i32, i32* %11, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %11, align 4
  br label %477

496:                                              ; preds = %477
  %497 = load i32, i32* %10, align 4
  store i32 %497, i32* %2, align 4
  br label %498

498:                                              ; preds = %496, %394, %65, %24
  %499 = load i32, i32* %2, align 4
  ret i32 %499
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, ...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @mlx4_en_calc_rx_buf(%struct.net_device*) #1

declare dso_local i32 @mlx4_en_activate_rx_rings(%struct.mlx4_en_priv*) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, ...) #1

declare dso_local i32 @mlx4_en_cq_init_lock(%struct.mlx4_en_cq*) #1

declare dso_local i32 @mlx4_en_activate_cq(%struct.mlx4_en_priv*, %struct.mlx4_en_cq*, i32) #1

declare dso_local i32 @mlx4_en_set_cq_moder(%struct.mlx4_en_priv*, %struct.mlx4_en_cq*) #1

declare dso_local i32 @mlx4_en_deactivate_cq(%struct.mlx4_en_priv*, %struct.mlx4_en_cq*) #1

declare dso_local i32 @mlx4_en_arm_cq(%struct.mlx4_en_priv*, %struct.mlx4_en_cq*) #1

declare dso_local i32 @mlx4_en_get_qp(%struct.mlx4_en_priv*) #1

declare dso_local i32 @mlx4_get_default_counter_index(i32, i64) #1

declare dso_local i32 @mlx4_en_config_rss_steer(%struct.mlx4_en_priv*) #1

declare dso_local i32 @mlx4_en_create_drop_qp(%struct.mlx4_en_priv*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @mlx4_en_activate_tx_ring(%struct.mlx4_en_priv*, %struct.mlx4_en_tx_ring*, i32, i32) #1

declare dso_local i32 @mlx4_SET_PORT_general(i32, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_SET_PORT_qpn_calc(i32, i64, i32, i32) #1

declare dso_local i32 @mlx4_INIT_PORT(i32, i64) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i64 @mlx4_multicast_attach(i32, i32*, i64*, i64, i32, i32, i32*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_en_dev*, i8*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.mlx4_en_priv*) #1

declare dso_local i32 @mlx4_en_deactivate_tx_ring(%struct.mlx4_en_priv*, %struct.mlx4_en_tx_ring*) #1

declare dso_local i32 @mlx4_en_destroy_drop_qp(%struct.mlx4_en_priv*) #1

declare dso_local i32 @mlx4_en_release_rss_steer(%struct.mlx4_en_priv*) #1

declare dso_local i32 @mlx4_en_put_qp(%struct.mlx4_en_priv*) #1

declare dso_local i32 @mlx4_en_deactivate_rx_ring(%struct.mlx4_en_priv*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
