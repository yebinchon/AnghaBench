; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, %struct.mlx5e_priv* }
%struct.mlx5e_priv = type { i64, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ifreq = type { i32, i32 }
%struct.ifi2creq = type { i32, i32, i64, i32 }

@ENXIO = common dso_local global i32 0, align 4
@MLX5E_MTU_MIN = common dso_local global i32 0, align 4
@MLX5E_MTU_MAX = common dso_local global i32 0, align 4
@MLX5E_STATE_OPENED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Invalid MTU value. Min val: %d, Max val: %d\0A\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@MLX5_PORT_UP = common dso_local global i32 0, align 4
@MLX5_PORT_DOWN = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@CSUM_IP = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@CSUM_IP_TSO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"tso4 disabled due to -txcsum.\0A\00", align 1
@IFCAP_TXCSUM_IPV6 = common dso_local global i32 0, align 4
@CSUM_UDP_IPV6 = common dso_local global i32 0, align 4
@CSUM_TCP_IPV6 = common dso_local global i32 0, align 4
@IFCAP_TSO6 = common dso_local global i32 0, align 4
@CSUM_IP6_TSO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"tso6 disabled due to -txcsum6.\0A\00", align 1
@IFCAP_NOMAP = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_RXCSUM_IPV6 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"enable txcsum first.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"enable txcsum6 first.\0A\00", align 1
@IFCAP_VLAN_HWFILTER = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@IFCAP_LRO = common dso_local global i32 0, align 4
@IFCAP_HWRXTSTMP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [58 x i8] c"Query module num failed, eeprom reading is not supported\0A\00", align 1
@MLX5_MODULE_STATUS_PLUGGED_ENABLED = common dso_local global i32 0, align 4
@MLX5_I2C_ADDR_LOW = common dso_local global i32 0, align 4
@MLX5_I2C_ADDR_HIGH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"Query eeprom failed, Invalid Address: %X\0A\00", align 1
@MLX5_EEPROM_LOW_PAGE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [54 x i8] c"Query eeprom failed, eeprom reading is not supported\0A\00", align 1
@MLX5_EEPROM_MAX_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @mlx5e_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.mlx5e_priv*, align 8
  %9 = alloca %struct.ifreq*, align 8
  %10 = alloca %struct.ifi2creq, align 8
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
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %21 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 4
  %23 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %22, align 8
  store %struct.mlx5e_priv* %23, %struct.mlx5e_priv** %8, align 8
  %24 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %25 = icmp eq %struct.mlx5e_priv* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %3
  %27 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %28 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %3
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %4, align 4
  br label %672

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  switch i32 %34, label %665 [
    i32 128, label %35
    i32 130, label %90
    i32 136, label %178
    i32 135, label %178
    i32 129, label %181
    i32 133, label %181
    i32 132, label %181
    i32 131, label %190
    i32 134, label %544
  ]

35:                                               ; preds = %33
  %36 = load i64, i64* %7, align 8
  %37 = inttoptr i64 %36 to %struct.ifreq*
  store %struct.ifreq* %37, %struct.ifreq** %9, align 8
  %38 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %39 = call i32 @PRIV_LOCK(%struct.mlx5e_priv* %38)
  %40 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %41 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @mlx5_query_port_max_mtu(i32 %42, i32* %16)
  %44 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %45 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MLX5E_MTU_MIN, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %79

49:                                               ; preds = %35
  %50 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %51 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MLX5E_MTU_MAX, align 4
  %54 = load i32, i32* %16, align 4
  %55 = call i32 @MIN(i32 %53, i32 %54)
  %56 = icmp sle i32 %52, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %49
  %58 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %59 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %60 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %59, i32 0, i32 6
  %61 = call i32 @test_bit(i32 %58, i32* %60)
  store i32 %61, i32* %18, align 4
  %62 = load i32, i32* %18, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %66 = call i32 @mlx5e_close_locked(%struct.ifnet* %65)
  br label %67

67:                                               ; preds = %64, %57
  %68 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %69 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %70 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @mlx5e_set_dev_port_mtu(%struct.ifnet* %68, i32 %71)
  %73 = load i32, i32* %18, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %77 = call i32 @mlx5e_open_locked(%struct.ifnet* %76)
  br label %78

78:                                               ; preds = %75, %67
  br label %87

79:                                               ; preds = %49, %35
  %80 = load i32, i32* @EINVAL, align 4
  store i32 %80, i32* %11, align 4
  %81 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %82 = load i32, i32* @MLX5E_MTU_MIN, align 4
  %83 = load i32, i32* @MLX5E_MTU_MAX, align 4
  %84 = load i32, i32* %16, align 4
  %85 = call i32 @MIN(i32 %83, i32 %84)
  %86 = call i32 (%struct.ifnet*, i8*, ...) @mlx5_en_err(%struct.ifnet* %81, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %79, %78
  %88 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %89 = call i32 @PRIV_UNLOCK(%struct.mlx5e_priv* %88)
  br label %670

90:                                               ; preds = %33
  %91 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %92 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @IFF_UP, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %90
  %98 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %99 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %106 = call i32 @mlx5e_set_rx_mode(%struct.ifnet* %105)
  br label %670

107:                                              ; preds = %97, %90
  %108 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %109 = call i32 @PRIV_LOCK(%struct.mlx5e_priv* %108)
  %110 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %111 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @IFF_UP, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %144

116:                                              ; preds = %107
  %117 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %118 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %121 = and i32 %119, %120
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %143

123:                                              ; preds = %116
  %124 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %125 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %126 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %125, i32 0, i32 6
  %127 = call i32 @test_bit(i32 %124, i32* %126)
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %131 = call i32 @mlx5e_open_locked(%struct.ifnet* %130)
  br label %132

132:                                              ; preds = %129, %123
  %133 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %134 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %135 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 4
  %138 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %139 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @MLX5_PORT_UP, align 4
  %142 = call i32 @mlx5_set_port_status(i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %132, %116
  br label %175

144:                                              ; preds = %107
  %145 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %146 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %174

151:                                              ; preds = %144
  %152 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %153 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @MLX5_PORT_DOWN, align 4
  %156 = call i32 @mlx5_set_port_status(i32 %154, i32 %155)
  %157 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %158 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %159 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %158, i32 0, i32 6
  %160 = call i32 @test_bit(i32 %157, i32* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %151
  %163 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %164 = call i32 @mlx5e_close_locked(%struct.ifnet* %163)
  br label %165

165:                                              ; preds = %162, %151
  %166 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %167 = call i32 @mlx5e_update_carrier(%struct.mlx5e_priv* %166)
  %168 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %169 = xor i32 %168, -1
  %170 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %171 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %172, %169
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %165, %144
  br label %175

175:                                              ; preds = %174, %143
  %176 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %177 = call i32 @PRIV_UNLOCK(%struct.mlx5e_priv* %176)
  br label %670

178:                                              ; preds = %33, %33
  %179 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %180 = call i32 @mlx5e_set_rx_mode(%struct.ifnet* %179)
  br label %670

181:                                              ; preds = %33, %33, %33
  %182 = load i64, i64* %7, align 8
  %183 = inttoptr i64 %182 to %struct.ifreq*
  store %struct.ifreq* %183, %struct.ifreq** %9, align 8
  %184 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %185 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %186 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %187 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %186, i32 0, i32 7
  %188 = load i32, i32* %6, align 4
  %189 = call i32 @ifmedia_ioctl(%struct.ifnet* %184, %struct.ifreq* %185, i32* %187, i32 %188)
  store i32 %189, i32* %11, align 4
  br label %670

190:                                              ; preds = %33
  %191 = load i64, i64* %7, align 8
  %192 = inttoptr i64 %191 to %struct.ifreq*
  store %struct.ifreq* %192, %struct.ifreq** %9, align 8
  %193 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %194 = call i32 @PRIV_LOCK(%struct.mlx5e_priv* %193)
  %195 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %196 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %199 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = xor i32 %197, %200
  store i32 %201, i32* %12, align 4
  %202 = load i32, i32* %12, align 4
  %203 = load i32, i32* @IFCAP_TXCSUM, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %250

206:                                              ; preds = %190
  %207 = load i32, i32* @IFCAP_TXCSUM, align 4
  %208 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %209 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = xor i32 %210, %207
  store i32 %211, i32* %209, align 8
  %212 = load i32, i32* @CSUM_TCP, align 4
  %213 = load i32, i32* @CSUM_UDP, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @CSUM_IP, align 4
  %216 = or i32 %214, %215
  %217 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %218 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = xor i32 %219, %216
  store i32 %220, i32* %218, align 4
  %221 = load i32, i32* @IFCAP_TSO4, align 4
  %222 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %223 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = and i32 %221, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %249

227:                                              ; preds = %206
  %228 = load i32, i32* @IFCAP_TXCSUM, align 4
  %229 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %230 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = and i32 %228, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %249, label %234

234:                                              ; preds = %227
  %235 = load i32, i32* @IFCAP_TSO4, align 4
  %236 = xor i32 %235, -1
  %237 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %238 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = and i32 %239, %236
  store i32 %240, i32* %238, align 8
  %241 = load i32, i32* @CSUM_IP_TSO, align 4
  %242 = xor i32 %241, -1
  %243 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %244 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = and i32 %245, %242
  store i32 %246, i32* %244, align 4
  %247 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %248 = call i32 (%struct.ifnet*, i8*, ...) @mlx5_en_err(%struct.ifnet* %247, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %249

249:                                              ; preds = %234, %227, %206
  br label %250

250:                                              ; preds = %249, %190
  %251 = load i32, i32* %12, align 4
  %252 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %297

255:                                              ; preds = %250
  %256 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %257 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %258 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = xor i32 %259, %256
  store i32 %260, i32* %258, align 8
  %261 = load i32, i32* @CSUM_UDP_IPV6, align 4
  %262 = load i32, i32* @CSUM_TCP_IPV6, align 4
  %263 = or i32 %261, %262
  %264 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %265 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = xor i32 %266, %263
  store i32 %267, i32* %265, align 4
  %268 = load i32, i32* @IFCAP_TSO6, align 4
  %269 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %270 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = and i32 %268, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %296

274:                                              ; preds = %255
  %275 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %276 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %277 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = and i32 %275, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %296, label %281

281:                                              ; preds = %274
  %282 = load i32, i32* @IFCAP_TSO6, align 4
  %283 = xor i32 %282, -1
  %284 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %285 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = and i32 %286, %283
  store i32 %287, i32* %285, align 8
  %288 = load i32, i32* @CSUM_IP6_TSO, align 4
  %289 = xor i32 %288, -1
  %290 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %291 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 4
  %293 = and i32 %292, %289
  store i32 %293, i32* %291, align 4
  %294 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %295 = call i32 (%struct.ifnet*, i8*, ...) @mlx5_en_err(%struct.ifnet* %294, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %296

296:                                              ; preds = %281, %274, %255
  br label %297

297:                                              ; preds = %296, %250
  %298 = load i32, i32* %12, align 4
  %299 = load i32, i32* @IFCAP_NOMAP, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %308

302:                                              ; preds = %297
  %303 = load i32, i32* @IFCAP_NOMAP, align 4
  %304 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %305 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = xor i32 %306, %303
  store i32 %307, i32* %305, align 8
  br label %308

308:                                              ; preds = %302, %297
  %309 = load i32, i32* %12, align 4
  %310 = load i32, i32* @IFCAP_RXCSUM, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %319

313:                                              ; preds = %308
  %314 = load i32, i32* @IFCAP_RXCSUM, align 4
  %315 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %316 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 8
  %318 = xor i32 %317, %314
  store i32 %318, i32* %316, align 8
  br label %319

319:                                              ; preds = %313, %308
  %320 = load i32, i32* %12, align 4
  %321 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %330

324:                                              ; preds = %319
  %325 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %326 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %327 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = xor i32 %328, %325
  store i32 %329, i32* %327, align 8
  br label %330

330:                                              ; preds = %324, %319
  %331 = load i32, i32* %12, align 4
  %332 = load i32, i32* @IFCAP_TSO4, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %364

335:                                              ; preds = %330
  %336 = load i32, i32* @IFCAP_TSO4, align 4
  %337 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %338 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = and i32 %336, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %353, label %342

342:                                              ; preds = %335
  %343 = load i32, i32* @IFCAP_TXCSUM, align 4
  %344 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %345 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 8
  %347 = and i32 %343, %346
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %353, label %349

349:                                              ; preds = %342
  %350 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %351 = call i32 (%struct.ifnet*, i8*, ...) @mlx5_en_err(%struct.ifnet* %350, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %352 = load i32, i32* @EAGAIN, align 4
  store i32 %352, i32* %11, align 4
  br label %541

353:                                              ; preds = %342, %335
  %354 = load i32, i32* @IFCAP_TSO4, align 4
  %355 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %356 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 8
  %358 = xor i32 %357, %354
  store i32 %358, i32* %356, align 8
  %359 = load i32, i32* @CSUM_IP_TSO, align 4
  %360 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %361 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %360, i32 0, i32 3
  %362 = load i32, i32* %361, align 4
  %363 = xor i32 %362, %359
  store i32 %363, i32* %361, align 4
  br label %364

364:                                              ; preds = %353, %330
  %365 = load i32, i32* %12, align 4
  %366 = load i32, i32* @IFCAP_TSO6, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %398

369:                                              ; preds = %364
  %370 = load i32, i32* @IFCAP_TSO6, align 4
  %371 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %372 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 8
  %374 = and i32 %370, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %387, label %376

376:                                              ; preds = %369
  %377 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %378 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %379 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 8
  %381 = and i32 %377, %380
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %387, label %383

383:                                              ; preds = %376
  %384 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %385 = call i32 (%struct.ifnet*, i8*, ...) @mlx5_en_err(%struct.ifnet* %384, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %386 = load i32, i32* @EAGAIN, align 4
  store i32 %386, i32* %11, align 4
  br label %541

387:                                              ; preds = %376, %369
  %388 = load i32, i32* @IFCAP_TSO6, align 4
  %389 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %390 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %389, i32 0, i32 2
  %391 = load i32, i32* %390, align 8
  %392 = xor i32 %391, %388
  store i32 %392, i32* %390, align 8
  %393 = load i32, i32* @CSUM_IP6_TSO, align 4
  %394 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %395 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %394, i32 0, i32 3
  %396 = load i32, i32* %395, align 4
  %397 = xor i32 %396, %393
  store i32 %397, i32* %395, align 4
  br label %398

398:                                              ; preds = %387, %364
  %399 = load i32, i32* %12, align 4
  %400 = load i32, i32* @IFCAP_VLAN_HWFILTER, align 4
  %401 = and i32 %399, %400
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %422

403:                                              ; preds = %398
  %404 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %405 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 8
  %407 = load i32, i32* @IFCAP_VLAN_HWFILTER, align 4
  %408 = and i32 %406, %407
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %413

410:                                              ; preds = %403
  %411 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %412 = call i32 @mlx5e_disable_vlan_filter(%struct.mlx5e_priv* %411)
  br label %416

413:                                              ; preds = %403
  %414 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %415 = call i32 @mlx5e_enable_vlan_filter(%struct.mlx5e_priv* %414)
  br label %416

416:                                              ; preds = %413, %410
  %417 = load i32, i32* @IFCAP_VLAN_HWFILTER, align 4
  %418 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %419 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %418, i32 0, i32 2
  %420 = load i32, i32* %419, align 8
  %421 = xor i32 %420, %417
  store i32 %421, i32* %419, align 8
  br label %422

422:                                              ; preds = %416, %398
  %423 = load i32, i32* %12, align 4
  %424 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %425 = and i32 %423, %424
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %433

427:                                              ; preds = %422
  %428 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %429 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %430 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %429, i32 0, i32 2
  %431 = load i32, i32* %430, align 8
  %432 = xor i32 %431, %428
  store i32 %432, i32* %430, align 8
  br label %433

433:                                              ; preds = %427, %422
  %434 = load i32, i32* %12, align 4
  %435 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %436 = and i32 %434, %435
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %444

438:                                              ; preds = %433
  %439 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %440 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %441 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %440, i32 0, i32 2
  %442 = load i32, i32* %441, align 8
  %443 = xor i32 %442, %439
  store i32 %443, i32* %441, align 8
  br label %444

444:                                              ; preds = %438, %433
  %445 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %446 = call i32 @VLAN_CAPABILITIES(%struct.ifnet* %445)
  %447 = load i32, i32* %12, align 4
  %448 = load i32, i32* @IFCAP_LRO, align 4
  %449 = and i32 %447, %448
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %507

451:                                              ; preds = %444
  %452 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %453 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %454 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %453, i32 0, i32 6
  %455 = call i32 @test_bit(i32 %452, i32* %454)
  store i32 %455, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %456 = load i32, i32* @IFCAP_LRO, align 4
  %457 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %458 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %457, i32 0, i32 2
  %459 = load i32, i32* %458, align 8
  %460 = xor i32 %459, %456
  store i32 %460, i32* %458, align 8
  %461 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %462 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %461, i32 0, i32 2
  %463 = load i32, i32* %462, align 8
  %464 = load i32, i32* @IFCAP_LRO, align 4
  %465 = and i32 %463, %464
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %478, label %467

467:                                              ; preds = %451
  %468 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %469 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %468, i32 0, i32 4
  %470 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %477

473:                                              ; preds = %467
  %474 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %475 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %474, i32 0, i32 4
  %476 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %475, i32 0, i32 0
  store i32 0, i32* %476, align 4
  store i32 1, i32* %20, align 4
  br label %477

477:                                              ; preds = %473, %467
  br label %495

478:                                              ; preds = %451
  %479 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %480 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %479, i32 0, i32 4
  %481 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 4
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %494

484:                                              ; preds = %478
  %485 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %486 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %485, i32 0, i32 5
  %487 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %494

490:                                              ; preds = %484
  %491 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %492 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %491, i32 0, i32 4
  %493 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %492, i32 0, i32 0
  store i32 1, i32* %493, align 4
  store i32 1, i32* %20, align 4
  br label %494

494:                                              ; preds = %490, %484, %478
  br label %495

495:                                              ; preds = %494, %477
  %496 = load i32, i32* %19, align 4
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %506

498:                                              ; preds = %495
  %499 = load i32, i32* %20, align 4
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %506

501:                                              ; preds = %498
  %502 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %503 = call i32 @mlx5e_close_locked(%struct.ifnet* %502)
  %504 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %505 = call i32 @mlx5e_open_locked(%struct.ifnet* %504)
  br label %506

506:                                              ; preds = %501, %498, %495
  br label %507

507:                                              ; preds = %506, %444
  %508 = load i32, i32* %12, align 4
  %509 = load i32, i32* @IFCAP_HWRXTSTMP, align 4
  %510 = and i32 %508, %509
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %540

512:                                              ; preds = %507
  %513 = load i32, i32* @IFCAP_HWRXTSTMP, align 4
  %514 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %515 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %514, i32 0, i32 2
  %516 = load i32, i32* %515, align 8
  %517 = xor i32 %516, %513
  store i32 %517, i32* %515, align 8
  %518 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %519 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %518, i32 0, i32 2
  %520 = load i32, i32* %519, align 8
  %521 = load i32, i32* @IFCAP_HWRXTSTMP, align 4
  %522 = and i32 %520, %521
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %524, label %533

524:                                              ; preds = %512
  %525 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %526 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %525, i32 0, i32 2
  %527 = load i32, i32* %526, align 4
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %529, label %532

529:                                              ; preds = %524
  %530 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %531 = call i32 @mlx5e_reset_calibration_callout(%struct.mlx5e_priv* %530)
  br label %532

532:                                              ; preds = %529, %524
  br label %539

533:                                              ; preds = %512
  %534 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %535 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %534, i32 0, i32 3
  %536 = call i32 @callout_drain(i32* %535)
  %537 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %538 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %537, i32 0, i32 2
  store i32 0, i32* %538, align 4
  br label %539

539:                                              ; preds = %533, %532
  br label %540

540:                                              ; preds = %539, %507
  br label %541

541:                                              ; preds = %540, %383, %349
  %542 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %543 = call i32 @PRIV_UNLOCK(%struct.mlx5e_priv* %542)
  br label %670

544:                                              ; preds = %33
  %545 = load i64, i64* %7, align 8
  %546 = inttoptr i64 %545 to %struct.ifreq*
  store %struct.ifreq* %546, %struct.ifreq** %9, align 8
  %547 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %548 = call i32 @ifr_data_get_ptr(%struct.ifreq* %547)
  %549 = call i32 @copyin(i32 %548, %struct.ifi2creq* %10, i32 24)
  store i32 %549, i32* %11, align 4
  %550 = load i32, i32* %11, align 4
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %553

552:                                              ; preds = %544
  br label %670

553:                                              ; preds = %544
  %554 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %10, i32 0, i32 0
  %555 = load i32, i32* %554, align 8
  %556 = sext i32 %555 to i64
  %557 = icmp ugt i64 %556, 8
  br i1 %557, label %558, label %560

558:                                              ; preds = %553
  %559 = load i32, i32* @EINVAL, align 4
  store i32 %559, i32* %11, align 4
  br label %670

560:                                              ; preds = %553
  %561 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %562 = call i32 @PRIV_LOCK(%struct.mlx5e_priv* %561)
  %563 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %564 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %563, i32 0, i32 1
  %565 = load i32, i32* %564, align 8
  %566 = call i32 @mlx5_query_module_num(i32 %565, i32* %15)
  store i32 %566, i32* %11, align 4
  %567 = load i32, i32* %11, align 4
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %573

569:                                              ; preds = %560
  %570 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %571 = call i32 (%struct.ifnet*, i8*, ...) @mlx5_en_err(%struct.ifnet* %570, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  %572 = load i32, i32* @EINVAL, align 4
  store i32 %572, i32* %11, align 4
  br label %662

573:                                              ; preds = %560
  %574 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %575 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %574, i32 0, i32 1
  %576 = load i32, i32* %575, align 8
  %577 = load i32, i32* %15, align 4
  %578 = call i32 @mlx5_query_module_status(i32 %576, i32 %577)
  store i32 %578, i32* %14, align 4
  %579 = load i32, i32* %14, align 4
  %580 = load i32, i32* @MLX5_MODULE_STATUS_PLUGGED_ENABLED, align 4
  %581 = icmp ne i32 %579, %580
  br i1 %581, label %582, label %584

582:                                              ; preds = %573
  %583 = load i32, i32* @EINVAL, align 4
  store i32 %583, i32* %11, align 4
  br label %662

584:                                              ; preds = %573
  %585 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %10, i32 0, i32 1
  %586 = load i32, i32* %585, align 4
  %587 = icmp eq i32 %586, 160
  br i1 %587, label %588, label %590

588:                                              ; preds = %584
  %589 = load i32, i32* @MLX5_I2C_ADDR_LOW, align 4
  store i32 %589, i32* %17, align 4
  br label %603

590:                                              ; preds = %584
  %591 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %10, i32 0, i32 1
  %592 = load i32, i32* %591, align 4
  %593 = icmp eq i32 %592, 162
  br i1 %593, label %594, label %596

594:                                              ; preds = %590
  %595 = load i32, i32* @MLX5_I2C_ADDR_HIGH, align 4
  store i32 %595, i32* %17, align 4
  br label %602

596:                                              ; preds = %590
  %597 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %598 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %10, i32 0, i32 1
  %599 = load i32, i32* %598, align 4
  %600 = call i32 (%struct.ifnet*, i8*, ...) @mlx5_en_err(%struct.ifnet* %597, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %599)
  %601 = load i32, i32* @EINVAL, align 4
  store i32 %601, i32* %11, align 4
  br label %662

602:                                              ; preds = %594
  br label %603

603:                                              ; preds = %602, %588
  %604 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %605 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %604, i32 0, i32 1
  %606 = load i32, i32* %605, align 8
  %607 = load i32, i32* %17, align 4
  %608 = load i32, i32* @MLX5_EEPROM_LOW_PAGE, align 4
  %609 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %10, i32 0, i32 3
  %610 = load i32, i32* %609, align 8
  %611 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %10, i32 0, i32 0
  %612 = load i32, i32* %611, align 8
  %613 = load i32, i32* %15, align 4
  %614 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %10, i32 0, i32 2
  %615 = load i64, i64* %614, align 8
  %616 = inttoptr i64 %615 to i32*
  %617 = call i32 @mlx5_query_eeprom(i32 %606, i32 %607, i32 %608, i32 %610, i32 %612, i32 %613, i32* %616, i32* %13)
  store i32 %617, i32* %11, align 4
  %618 = load i32, i32* %11, align 4
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %620, label %624

620:                                              ; preds = %603
  %621 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %622 = call i32 (%struct.ifnet*, i8*, ...) @mlx5_en_err(%struct.ifnet* %621, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  %623 = load i32, i32* @EINVAL, align 4
  store i32 %623, i32* %11, align 4
  br label %662

624:                                              ; preds = %603
  %625 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %10, i32 0, i32 0
  %626 = load i32, i32* %625, align 8
  %627 = load i32, i32* @MLX5_EEPROM_MAX_BYTES, align 4
  %628 = icmp sgt i32 %626, %627
  br i1 %628, label %629, label %651

629:                                              ; preds = %624
  %630 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %631 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %630, i32 0, i32 1
  %632 = load i32, i32* %631, align 8
  %633 = load i32, i32* %17, align 4
  %634 = load i32, i32* @MLX5_EEPROM_LOW_PAGE, align 4
  %635 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %10, i32 0, i32 3
  %636 = load i32, i32* %635, align 8
  %637 = load i32, i32* %13, align 4
  %638 = add nsw i32 %636, %637
  %639 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %10, i32 0, i32 0
  %640 = load i32, i32* %639, align 8
  %641 = load i32, i32* %13, align 4
  %642 = sub nsw i32 %640, %641
  %643 = load i32, i32* %15, align 4
  %644 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %10, i32 0, i32 2
  %645 = load i64, i64* %644, align 8
  %646 = load i32, i32* %13, align 4
  %647 = sext i32 %646 to i64
  %648 = add nsw i64 %645, %647
  %649 = inttoptr i64 %648 to i32*
  %650 = call i32 @mlx5_query_eeprom(i32 %632, i32 %633, i32 %634, i32 %638, i32 %642, i32 %643, i32* %649, i32* %13)
  store i32 %650, i32* %11, align 4
  br label %651

651:                                              ; preds = %629, %624
  %652 = load i32, i32* %11, align 4
  %653 = icmp ne i32 %652, 0
  br i1 %653, label %654, label %658

654:                                              ; preds = %651
  %655 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %656 = call i32 (%struct.ifnet*, i8*, ...) @mlx5_en_err(%struct.ifnet* %655, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  %657 = load i32, i32* @EINVAL, align 4
  store i32 %657, i32* %11, align 4
  br label %662

658:                                              ; preds = %651
  %659 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %660 = call i32 @ifr_data_get_ptr(%struct.ifreq* %659)
  %661 = call i32 @copyout(%struct.ifi2creq* %10, i32 %660, i32 24)
  store i32 %661, i32* %11, align 4
  br label %662

662:                                              ; preds = %658, %654, %620, %596, %582, %569
  %663 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %664 = call i32 @PRIV_UNLOCK(%struct.mlx5e_priv* %663)
  br label %670

665:                                              ; preds = %33
  %666 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %667 = load i32, i32* %6, align 4
  %668 = load i64, i64* %7, align 8
  %669 = call i32 @ether_ioctl(%struct.ifnet* %666, i32 %667, i64 %668)
  store i32 %669, i32* %11, align 4
  br label %670

670:                                              ; preds = %665, %662, %558, %552, %541, %181, %178, %175, %104, %87
  %671 = load i32, i32* %11, align 4
  store i32 %671, i32* %4, align 4
  br label %672

672:                                              ; preds = %670, %31
  %673 = load i32, i32* %4, align 4
  ret i32 %673
}

declare dso_local i32 @PRIV_LOCK(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5_query_port_max_mtu(i32, i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mlx5e_close_locked(%struct.ifnet*) #1

declare dso_local i32 @mlx5e_set_dev_port_mtu(%struct.ifnet*, i32) #1

declare dso_local i32 @mlx5e_open_locked(%struct.ifnet*) #1

declare dso_local i32 @mlx5_en_err(%struct.ifnet*, i8*, ...) #1

declare dso_local i32 @PRIV_UNLOCK(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_set_rx_mode(%struct.ifnet*) #1

declare dso_local i32 @mlx5_set_port_status(i32, i32) #1

declare dso_local i32 @mlx5e_update_carrier(%struct.mlx5e_priv*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @mlx5e_disable_vlan_filter(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_enable_vlan_filter(%struct.mlx5e_priv*) #1

declare dso_local i32 @VLAN_CAPABILITIES(%struct.ifnet*) #1

declare dso_local i32 @mlx5e_reset_calibration_callout(%struct.mlx5e_priv*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @copyin(i32, %struct.ifi2creq*, i32) #1

declare dso_local i32 @ifr_data_get_ptr(%struct.ifreq*) #1

declare dso_local i32 @mlx5_query_module_num(i32, i32*) #1

declare dso_local i32 @mlx5_query_module_status(i32, i32) #1

declare dso_local i32 @mlx5_query_eeprom(i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @copyout(%struct.ifi2creq*, i32, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
