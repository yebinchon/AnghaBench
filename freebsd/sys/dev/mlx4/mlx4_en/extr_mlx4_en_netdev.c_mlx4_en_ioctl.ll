; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, %struct.mlx4_en_priv* }
%struct.mlx4_en_priv = type { i64, i32, i32, %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { i32, i32 }
%struct.ifreq = type { i32, i32 }
%struct.ifrsskey = type { i32, i32, i8* }
%struct.ifrsshash = type { i32, i8* }

@ENXIO = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@CSUM_IP = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@CSUM_IP_TSO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"tso4 disabled due to -txcsum.\0A\00", align 1
@IFCAP_TXCSUM_IPV6 = common dso_local global i32 0, align 4
@CSUM_UDP_IPV6 = common dso_local global i32 0, align 4
@CSUM_TCP_IPV6 = common dso_local global i32 0, align 4
@IFCAP_TSO6 = common dso_local global i32 0, align 4
@CSUM_IP6_TSO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"tso6 disabled due to -txcsum6.\0A\00", align 1
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_RXCSUM_IPV6 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"enable txcsum first.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"enable txcsum6 first.\0A\00", align 1
@IFCAP_LRO = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWFILTER = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@RSS_FUNC_TOEPLITZ = common dso_local global i8* null, align 8
@RSS_KEYLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX4_RSS_IPV4 = common dso_local global i32 0, align 4
@RSS_TYPE_IPV4 = common dso_local global i32 0, align 4
@MLX4_RSS_TCP_IPV4 = common dso_local global i32 0, align 4
@RSS_TYPE_TCP_IPV4 = common dso_local global i32 0, align 4
@MLX4_RSS_IPV6 = common dso_local global i32 0, align 4
@RSS_TYPE_IPV6 = common dso_local global i32 0, align 4
@MLX4_RSS_TCP_IPV6 = common dso_local global i32 0, align 4
@RSS_TYPE_TCP_IPV6 = common dso_local global i32 0, align 4
@MLX4_RSS_UDP_IPV4 = common dso_local global i32 0, align 4
@RSS_TYPE_UDP_IPV4 = common dso_local global i32 0, align 4
@MLX4_RSS_UDP_IPV6 = common dso_local global i32 0, align 4
@RSS_TYPE_UDP_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @mlx4_en_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.mlx4_en_priv*, align 8
  %9 = alloca %struct.mlx4_en_dev*, align 8
  %10 = alloca %struct.ifreq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ifrsskey*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.ifrsshash*, align 8
  %16 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 4
  %19 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %18, align 8
  store %struct.mlx4_en_priv* %19, %struct.mlx4_en_priv** %8, align 8
  %20 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %21 = icmp eq %struct.mlx4_en_priv* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %24 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22, %3
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %4, align 4
  br label %480

29:                                               ; preds = %22
  %30 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %31 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %30, i32 0, i32 3
  %32 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %31, align 8
  store %struct.mlx4_en_dev* %32, %struct.mlx4_en_dev** %9, align 8
  %33 = load i64, i64* %7, align 8
  %34 = inttoptr i64 %33 to %struct.ifreq*
  store %struct.ifreq* %34, %struct.ifreq** %10, align 8
  %35 = load i32, i32* %6, align 4
  switch i32 %35, label %473 [
    i32 128, label %36
    i32 130, label %43
    i32 137, label %91
    i32 136, label %91
    i32 129, label %94
    i32 134, label %94
    i32 131, label %101
    i32 132, label %358
    i32 133, label %391
  ]

36:                                               ; preds = %29
  %37 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %38 = load %struct.ifreq*, %struct.ifreq** %10, align 8
  %39 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mlx4_en_change_mtu(%struct.ifnet* %37, i32 %40)
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %478

43:                                               ; preds = %29
  %44 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %45 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @IFF_UP, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %43
  %51 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  %59 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %58, i32 0, i32 0
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %62 = call i32 @mlx4_en_start_port(%struct.ifnet* %61)
  %63 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  %64 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  br label %69

66:                                               ; preds = %50
  %67 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %68 = call i32 @mlx4_en_set_rx_mode(%struct.ifnet* %67)
  br label %69

69:                                               ; preds = %66, %57
  br label %90

70:                                               ; preds = %43
  %71 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  %72 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %71, i32 0, i32 0
  %73 = call i32 @mutex_lock(i32* %72)
  %74 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %75 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %70
  %81 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %82 = call i32 @mlx4_en_stop_port(%struct.ifnet* %81)
  %83 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %84 = load i32, i32* @LINK_STATE_DOWN, align 4
  %85 = call i32 @if_link_state_change(%struct.ifnet* %83, i32 %84)
  br label %86

86:                                               ; preds = %80, %70
  %87 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  %88 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  br label %90

90:                                               ; preds = %86, %69
  br label %478

91:                                               ; preds = %29, %29
  %92 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %93 = call i32 @mlx4_en_set_rx_mode(%struct.ifnet* %92)
  br label %478

94:                                               ; preds = %29, %29
  %95 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %96 = load %struct.ifreq*, %struct.ifreq** %10, align 8
  %97 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %98 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %97, i32 0, i32 2
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @ifmedia_ioctl(%struct.ifnet* %95, %struct.ifreq* %96, i32* %98, i32 %99)
  store i32 %100, i32* %11, align 4
  br label %478

101:                                              ; preds = %29
  %102 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  %103 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %102, i32 0, i32 0
  %104 = call i32 @mutex_lock(i32* %103)
  %105 = load %struct.ifreq*, %struct.ifreq** %10, align 8
  %106 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %109 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = xor i32 %107, %110
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @IFCAP_TXCSUM, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %160

116:                                              ; preds = %101
  %117 = load i32, i32* @IFCAP_TXCSUM, align 4
  %118 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %119 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = xor i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load i32, i32* @CSUM_TCP, align 4
  %123 = load i32, i32* @CSUM_UDP, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @CSUM_IP, align 4
  %126 = or i32 %124, %125
  %127 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %128 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = xor i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load i32, i32* @IFCAP_TSO4, align 4
  %132 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %133 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %131, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %159

137:                                              ; preds = %116
  %138 = load i32, i32* @IFCAP_TXCSUM, align 4
  %139 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %140 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %138, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %159, label %144

144:                                              ; preds = %137
  %145 = load i32, i32* @IFCAP_TSO4, align 4
  %146 = xor i32 %145, -1
  %147 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %148 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = and i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load i32, i32* @CSUM_IP_TSO, align 4
  %152 = xor i32 %151, -1
  %153 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %154 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, %152
  store i32 %156, i32* %154, align 4
  %157 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %158 = call i32 @if_printf(%struct.ifnet* %157, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %159

159:                                              ; preds = %144, %137, %116
  br label %160

160:                                              ; preds = %159, %101
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %207

165:                                              ; preds = %160
  %166 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %167 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %168 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = xor i32 %169, %166
  store i32 %170, i32* %168, align 8
  %171 = load i32, i32* @CSUM_UDP_IPV6, align 4
  %172 = load i32, i32* @CSUM_TCP_IPV6, align 4
  %173 = or i32 %171, %172
  %174 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %175 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = xor i32 %176, %173
  store i32 %177, i32* %175, align 4
  %178 = load i32, i32* @IFCAP_TSO6, align 4
  %179 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %180 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = and i32 %178, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %206

184:                                              ; preds = %165
  %185 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %186 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %187 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = and i32 %185, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %206, label %191

191:                                              ; preds = %184
  %192 = load i32, i32* @IFCAP_TSO6, align 4
  %193 = xor i32 %192, -1
  %194 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %195 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = and i32 %196, %193
  store i32 %197, i32* %195, align 8
  %198 = load i32, i32* @CSUM_IP6_TSO, align 4
  %199 = xor i32 %198, -1
  %200 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %201 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = and i32 %202, %199
  store i32 %203, i32* %201, align 4
  %204 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %205 = call i32 @if_printf(%struct.ifnet* %204, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %206

206:                                              ; preds = %191, %184, %165
  br label %207

207:                                              ; preds = %206, %160
  %208 = load i32, i32* %12, align 4
  %209 = load i32, i32* @IFCAP_RXCSUM, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %207
  %213 = load i32, i32* @IFCAP_RXCSUM, align 4
  %214 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %215 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = xor i32 %216, %213
  store i32 %217, i32* %215, align 8
  br label %218

218:                                              ; preds = %212, %207
  %219 = load i32, i32* %12, align 4
  %220 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %218
  %224 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %225 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %226 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = xor i32 %227, %224
  store i32 %228, i32* %226, align 8
  br label %229

229:                                              ; preds = %223, %218
  %230 = load i32, i32* %12, align 4
  %231 = load i32, i32* @IFCAP_TSO4, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %263

234:                                              ; preds = %229
  %235 = load i32, i32* @IFCAP_TSO4, align 4
  %236 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %237 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = and i32 %235, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %252, label %241

241:                                              ; preds = %234
  %242 = load i32, i32* @IFCAP_TXCSUM, align 4
  %243 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %244 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = and i32 %242, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %252, label %248

248:                                              ; preds = %241
  %249 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %250 = call i32 @if_printf(%struct.ifnet* %249, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %251 = load i32, i32* @EAGAIN, align 4
  store i32 %251, i32* %11, align 4
  br label %352

252:                                              ; preds = %241, %234
  %253 = load i32, i32* @IFCAP_TSO4, align 4
  %254 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %255 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = xor i32 %256, %253
  store i32 %257, i32* %255, align 8
  %258 = load i32, i32* @CSUM_IP_TSO, align 4
  %259 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %260 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = xor i32 %261, %258
  store i32 %262, i32* %260, align 4
  br label %263

263:                                              ; preds = %252, %229
  %264 = load i32, i32* %12, align 4
  %265 = load i32, i32* @IFCAP_TSO6, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %297

268:                                              ; preds = %263
  %269 = load i32, i32* @IFCAP_TSO6, align 4
  %270 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %271 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = and i32 %269, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %286, label %275

275:                                              ; preds = %268
  %276 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %277 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %278 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = and i32 %276, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %286, label %282

282:                                              ; preds = %275
  %283 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %284 = call i32 @if_printf(%struct.ifnet* %283, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %285 = load i32, i32* @EAGAIN, align 4
  store i32 %285, i32* %11, align 4
  br label %352

286:                                              ; preds = %275, %268
  %287 = load i32, i32* @IFCAP_TSO6, align 4
  %288 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %289 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = xor i32 %290, %287
  store i32 %291, i32* %289, align 8
  %292 = load i32, i32* @CSUM_IP6_TSO, align 4
  %293 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %294 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 4
  %296 = xor i32 %295, %292
  store i32 %296, i32* %294, align 4
  br label %297

297:                                              ; preds = %286, %263
  %298 = load i32, i32* %12, align 4
  %299 = load i32, i32* @IFCAP_LRO, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %308

302:                                              ; preds = %297
  %303 = load i32, i32* @IFCAP_LRO, align 4
  %304 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %305 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = xor i32 %306, %303
  store i32 %307, i32* %305, align 8
  br label %308

308:                                              ; preds = %302, %297
  %309 = load i32, i32* %12, align 4
  %310 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %319

313:                                              ; preds = %308
  %314 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %315 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %316 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 8
  %318 = xor i32 %317, %314
  store i32 %318, i32* %316, align 8
  br label %319

319:                                              ; preds = %313, %308
  %320 = load i32, i32* %12, align 4
  %321 = load i32, i32* @IFCAP_VLAN_HWFILTER, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %330

324:                                              ; preds = %319
  %325 = load i32, i32* @IFCAP_VLAN_HWFILTER, align 4
  %326 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %327 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = xor i32 %328, %325
  store i32 %329, i32* %327, align 8
  br label %330

330:                                              ; preds = %324, %319
  %331 = load i32, i32* %12, align 4
  %332 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %341

335:                                              ; preds = %330
  %336 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %337 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %338 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = xor i32 %339, %336
  store i32 %340, i32* %338, align 8
  br label %341

341:                                              ; preds = %335, %330
  %342 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %343 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %346 = and i32 %344, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %351

348:                                              ; preds = %341
  %349 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %350 = call i32 @mlx4_en_start_port(%struct.ifnet* %349)
  br label %351

351:                                              ; preds = %348, %341
  br label %352

352:                                              ; preds = %351, %282, %248
  %353 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  %354 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %353, i32 0, i32 0
  %355 = call i32 @mutex_unlock(i32* %354)
  %356 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %357 = call i32 @VLAN_CAPABILITIES(%struct.ifnet* %356)
  br label %478

358:                                              ; preds = %29
  %359 = load i64, i64* %7, align 8
  %360 = inttoptr i64 %359 to %struct.ifrsskey*
  store %struct.ifrsskey* %360, %struct.ifrsskey** %13, align 8
  %361 = load i8*, i8** @RSS_FUNC_TOEPLITZ, align 8
  %362 = load %struct.ifrsskey*, %struct.ifrsskey** %13, align 8
  %363 = getelementptr inbounds %struct.ifrsskey, %struct.ifrsskey* %362, i32 0, i32 2
  store i8* %361, i8** %363, align 8
  %364 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  %365 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %364, i32 0, i32 0
  %366 = call i32 @mutex_lock(i32* %365)
  %367 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %368 = load %struct.ifrsskey*, %struct.ifrsskey** %13, align 8
  %369 = getelementptr inbounds %struct.ifrsskey, %struct.ifrsskey* %368, i32 0, i32 0
  %370 = call i32* @mlx4_en_get_rss_key(%struct.mlx4_en_priv* %367, i32* %369)
  store i32* %370, i32** %14, align 8
  %371 = load %struct.ifrsskey*, %struct.ifrsskey** %13, align 8
  %372 = getelementptr inbounds %struct.ifrsskey, %struct.ifrsskey* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = load i32, i32* @RSS_KEYLEN, align 4
  %375 = icmp sgt i32 %373, %374
  br i1 %375, label %376, label %378

376:                                              ; preds = %358
  %377 = load i32, i32* @EINVAL, align 4
  store i32 %377, i32* %11, align 4
  br label %387

378:                                              ; preds = %358
  %379 = load %struct.ifrsskey*, %struct.ifrsskey** %13, align 8
  %380 = getelementptr inbounds %struct.ifrsskey, %struct.ifrsskey* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = load i32*, i32** %14, align 8
  %383 = load %struct.ifrsskey*, %struct.ifrsskey** %13, align 8
  %384 = getelementptr inbounds %struct.ifrsskey, %struct.ifrsskey* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = call i32 @memcpy(i32 %381, i32* %382, i32 %385)
  br label %387

387:                                              ; preds = %378, %376
  %388 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  %389 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %388, i32 0, i32 0
  %390 = call i32 @mutex_unlock(i32* %389)
  br label %478

391:                                              ; preds = %29
  %392 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  %393 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %392, i32 0, i32 0
  %394 = call i32 @mutex_lock(i32* %393)
  %395 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %396 = call i32 @mlx4_en_get_rss_mask(%struct.mlx4_en_priv* %395)
  store i32 %396, i32* %16, align 4
  %397 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  %398 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %397, i32 0, i32 0
  %399 = call i32 @mutex_unlock(i32* %398)
  %400 = load i64, i64* %7, align 8
  %401 = inttoptr i64 %400 to %struct.ifrsshash*
  store %struct.ifrsshash* %401, %struct.ifrsshash** %15, align 8
  %402 = load i8*, i8** @RSS_FUNC_TOEPLITZ, align 8
  %403 = load %struct.ifrsshash*, %struct.ifrsshash** %15, align 8
  %404 = getelementptr inbounds %struct.ifrsshash, %struct.ifrsshash* %403, i32 0, i32 1
  store i8* %402, i8** %404, align 8
  %405 = load %struct.ifrsshash*, %struct.ifrsshash** %15, align 8
  %406 = getelementptr inbounds %struct.ifrsshash, %struct.ifrsshash* %405, i32 0, i32 0
  store i32 0, i32* %406, align 8
  %407 = load i32, i32* %16, align 4
  %408 = load i32, i32* @MLX4_RSS_IPV4, align 4
  %409 = and i32 %407, %408
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %417

411:                                              ; preds = %391
  %412 = load i32, i32* @RSS_TYPE_IPV4, align 4
  %413 = load %struct.ifrsshash*, %struct.ifrsshash** %15, align 8
  %414 = getelementptr inbounds %struct.ifrsshash, %struct.ifrsshash* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = or i32 %415, %412
  store i32 %416, i32* %414, align 8
  br label %417

417:                                              ; preds = %411, %391
  %418 = load i32, i32* %16, align 4
  %419 = load i32, i32* @MLX4_RSS_TCP_IPV4, align 4
  %420 = and i32 %418, %419
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %428

422:                                              ; preds = %417
  %423 = load i32, i32* @RSS_TYPE_TCP_IPV4, align 4
  %424 = load %struct.ifrsshash*, %struct.ifrsshash** %15, align 8
  %425 = getelementptr inbounds %struct.ifrsshash, %struct.ifrsshash* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = or i32 %426, %423
  store i32 %427, i32* %425, align 8
  br label %428

428:                                              ; preds = %422, %417
  %429 = load i32, i32* %16, align 4
  %430 = load i32, i32* @MLX4_RSS_IPV6, align 4
  %431 = and i32 %429, %430
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %439

433:                                              ; preds = %428
  %434 = load i32, i32* @RSS_TYPE_IPV6, align 4
  %435 = load %struct.ifrsshash*, %struct.ifrsshash** %15, align 8
  %436 = getelementptr inbounds %struct.ifrsshash, %struct.ifrsshash* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  %438 = or i32 %437, %434
  store i32 %438, i32* %436, align 8
  br label %439

439:                                              ; preds = %433, %428
  %440 = load i32, i32* %16, align 4
  %441 = load i32, i32* @MLX4_RSS_TCP_IPV6, align 4
  %442 = and i32 %440, %441
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %450

444:                                              ; preds = %439
  %445 = load i32, i32* @RSS_TYPE_TCP_IPV6, align 4
  %446 = load %struct.ifrsshash*, %struct.ifrsshash** %15, align 8
  %447 = getelementptr inbounds %struct.ifrsshash, %struct.ifrsshash* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = or i32 %448, %445
  store i32 %449, i32* %447, align 8
  br label %450

450:                                              ; preds = %444, %439
  %451 = load i32, i32* %16, align 4
  %452 = load i32, i32* @MLX4_RSS_UDP_IPV4, align 4
  %453 = and i32 %451, %452
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %461

455:                                              ; preds = %450
  %456 = load i32, i32* @RSS_TYPE_UDP_IPV4, align 4
  %457 = load %struct.ifrsshash*, %struct.ifrsshash** %15, align 8
  %458 = getelementptr inbounds %struct.ifrsshash, %struct.ifrsshash* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = or i32 %459, %456
  store i32 %460, i32* %458, align 8
  br label %461

461:                                              ; preds = %455, %450
  %462 = load i32, i32* %16, align 4
  %463 = load i32, i32* @MLX4_RSS_UDP_IPV6, align 4
  %464 = and i32 %462, %463
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %472

466:                                              ; preds = %461
  %467 = load i32, i32* @RSS_TYPE_UDP_IPV6, align 4
  %468 = load %struct.ifrsshash*, %struct.ifrsshash** %15, align 8
  %469 = getelementptr inbounds %struct.ifrsshash, %struct.ifrsshash* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 8
  %471 = or i32 %470, %467
  store i32 %471, i32* %469, align 8
  br label %472

472:                                              ; preds = %466, %461
  br label %478

473:                                              ; preds = %29
  %474 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %475 = load i32, i32* %6, align 4
  %476 = load i64, i64* %7, align 8
  %477 = call i32 @ether_ioctl(%struct.ifnet* %474, i32 %475, i64 %476)
  store i32 %477, i32* %11, align 4
  br label %478

478:                                              ; preds = %473, %472, %387, %352, %94, %91, %90, %36
  %479 = load i32, i32* %11, align 4
  store i32 %479, i32* %4, align 4
  br label %480

480:                                              ; preds = %478, %27
  %481 = load i32, i32* %4, align 4
  ret i32 %481
}

declare dso_local i32 @mlx4_en_change_mtu(%struct.ifnet*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_en_start_port(%struct.ifnet*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlx4_en_set_rx_mode(%struct.ifnet*) #1

declare dso_local i32 @mlx4_en_stop_port(%struct.ifnet*) #1

declare dso_local i32 @if_link_state_change(%struct.ifnet*, i32) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

declare dso_local i32 @VLAN_CAPABILITIES(%struct.ifnet*) #1

declare dso_local i32* @mlx4_en_get_rss_key(%struct.mlx4_en_priv*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @mlx4_en_get_rss_mask(%struct.mlx4_en_priv*) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
