; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_rxeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_rxeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i32, i32, i64, %struct.TYPE_8__, %struct.mbuf*, %struct.mbuf*, %struct.ifnet* }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.rl_desc* }
%struct.TYPE_7__ = type { %struct.mbuf* }
%struct.TYPE_6__ = type { %struct.mbuf* }
%struct.rl_desc = type { i32, i32 }
%struct.mbuf = type { i32, i32, %struct.TYPE_5__, %struct.mbuf* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i64, i32, i32, i32 (%struct.ifnet*, %struct.mbuf*)* }

@RL_MTU = common dso_local global i64 0, align 8
@RL_FLAG_JUMBOV2 = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@RL_RDESC_STAT_OWN = common dso_local global i32 0, align 4
@RL_RDESC_STAT_SOF = common dso_local global i32 0, align 4
@RL_RDESC_STAT_EOF = common dso_local global i32 0, align 4
@RE_RX_DESC_BUFLEN = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@RL_8169 = common dso_local global i64 0, align 8
@RL_RDESC_STAT_RXERRSUM = common dso_local global i32 0, align 4
@RL_RDESC_STAT_ERRS = common dso_local global i32 0, align 4
@RL_RDESC_STAT_GIANT = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@ETHER_CRC_LEN = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@RL_FLAG_DESCV2 = common dso_local global i32 0, align 4
@RL_RDESC_STAT_PROTOID = common dso_local global i32 0, align 4
@CSUM_IP_CHECKED = common dso_local global i32 0, align 4
@RL_RDESC_STAT_IPSUMBAD = common dso_local global i32 0, align 4
@CSUM_IP_VALID = common dso_local global i32 0, align 4
@RL_RDESC_STAT_TCPSUMBAD = common dso_local global i32 0, align 4
@RL_RDESC_STAT_UDPSUMBAD = common dso_local global i32 0, align 4
@CSUM_DATA_VALID = common dso_local global i32 0, align 4
@CSUM_PSEUDO_HDR = common dso_local global i32 0, align 4
@RL_RDESC_IPV4 = common dso_local global i32 0, align 4
@RL_RDESC_STAT_TCP = common dso_local global i32 0, align 4
@RL_RDESC_STAT_UDP = common dso_local global i32 0, align 4
@RL_RDESC_VLANCTL_TAG = common dso_local global i32 0, align 4
@RL_RDESC_VLANCTL_DATA = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rl_softc*, i32*)* @re_rxeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @re_rxeof(%struct.rl_softc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rl_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rl_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.rl_softc* %0, %struct.rl_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 16, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %18 = call i32 @RL_LOCK_ASSERT(%struct.rl_softc* %17)
  %19 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %20 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %19, i32 0, i32 6
  %21 = load %struct.ifnet*, %struct.ifnet** %20, align 8
  store %struct.ifnet* %21, %struct.ifnet** %7, align 8
  %22 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RL_MTU, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  %28 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %29 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @RL_FLAG_JUMBOV2, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 1, i32* %14, align 4
  br label %36

35:                                               ; preds = %27, %2
  store i32 0, i32* %14, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %38 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %42 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %46 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @bus_dmamap_sync(i32 %40, i32 %44, i32 %47)
  %49 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %50 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %548, %36
  %54 = load i32, i32* %15, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %552

56:                                               ; preds = %53
  %57 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %58 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %552

64:                                               ; preds = %56
  %65 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %66 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 5
  %68 = load %struct.rl_desc*, %struct.rl_desc** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.rl_desc, %struct.rl_desc* %68, i64 %70
  store %struct.rl_desc* %71, %struct.rl_desc** %11, align 8
  %72 = load %struct.rl_desc*, %struct.rl_desc** %11, align 8
  %73 = getelementptr inbounds %struct.rl_desc, %struct.rl_desc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le32toh(i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @RL_RDESC_STAT_OWN, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %64
  br label %552

81:                                               ; preds = %64
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %84 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %82, %85
  store i32 %86, i32* %10, align 4
  %87 = load %struct.rl_desc*, %struct.rl_desc** %11, align 8
  %88 = getelementptr inbounds %struct.rl_desc, %struct.rl_desc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le32toh(i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %81
  %94 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %95 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load %struct.mbuf*, %struct.mbuf** %101, align 8
  store %struct.mbuf* %102, %struct.mbuf** %6, align 8
  br label %113

103:                                              ; preds = %81
  %104 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %105 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load %struct.mbuf*, %struct.mbuf** %111, align 8
  store %struct.mbuf* %112, %struct.mbuf** %6, align 8
  br label %113

113:                                              ; preds = %103, %93
  %114 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %115 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @RL_FLAG_JUMBOV2, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %113
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* @RL_RDESC_STAT_SOF, align 4
  %123 = load i32, i32* @RL_RDESC_STAT_EOF, align 4
  %124 = or i32 %122, %123
  %125 = and i32 %121, %124
  %126 = load i32, i32* @RL_RDESC_STAT_SOF, align 4
  %127 = load i32, i32* @RL_RDESC_STAT_EOF, align 4
  %128 = or i32 %126, %127
  %129 = icmp ne i32 %125, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %120
  %131 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @re_discard_rxbuf(%struct.rl_softc* %131, i32 %132)
  br label %548

134:                                              ; preds = %120, %113
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* @RL_RDESC_STAT_EOF, align 4
  %137 = and i32 %135, %136
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %192

139:                                              ; preds = %134
  %140 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @re_newbuf(%struct.rl_softc* %140, i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %162

144:                                              ; preds = %139
  %145 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %146 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %145, i32 0, i32 5
  %147 = load %struct.mbuf*, %struct.mbuf** %146, align 8
  %148 = icmp ne %struct.mbuf* %147, null
  br i1 %148, label %149, label %158

149:                                              ; preds = %144
  %150 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %151 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %150, i32 0, i32 5
  %152 = load %struct.mbuf*, %struct.mbuf** %151, align 8
  %153 = call i32 @m_freem(%struct.mbuf* %152)
  %154 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %155 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %154, i32 0, i32 4
  store %struct.mbuf* null, %struct.mbuf** %155, align 8
  %156 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %157 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %156, i32 0, i32 5
  store %struct.mbuf* null, %struct.mbuf** %157, align 8
  br label %158

158:                                              ; preds = %149, %144
  %159 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @re_discard_rxbuf(%struct.rl_softc* %159, i32 %160)
  br label %548

162:                                              ; preds = %139
  %163 = load i32, i32* @RE_RX_DESC_BUFLEN, align 4
  %164 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %165 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %167 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %166, i32 0, i32 5
  %168 = load %struct.mbuf*, %struct.mbuf** %167, align 8
  %169 = icmp eq %struct.mbuf* %168, null
  br i1 %169, label %170, label %176

170:                                              ; preds = %162
  %171 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %172 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %173 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %172, i32 0, i32 4
  store %struct.mbuf* %171, %struct.mbuf** %173, align 8
  %174 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %175 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %174, i32 0, i32 5
  store %struct.mbuf* %171, %struct.mbuf** %175, align 8
  br label %191

176:                                              ; preds = %162
  %177 = load i32, i32* @M_PKTHDR, align 4
  %178 = xor i32 %177, -1
  %179 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %180 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, %178
  store i32 %182, i32* %180, align 4
  %183 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %184 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %185 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %184, i32 0, i32 4
  %186 = load %struct.mbuf*, %struct.mbuf** %185, align 8
  %187 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %186, i32 0, i32 3
  store %struct.mbuf* %183, %struct.mbuf** %187, align 8
  %188 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %189 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %190 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %189, i32 0, i32 4
  store %struct.mbuf* %188, %struct.mbuf** %190, align 8
  br label %191

191:                                              ; preds = %176, %170
  br label %548

192:                                              ; preds = %134
  br label %193

193:                                              ; preds = %192
  %194 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %195 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @RL_8169, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %193
  %200 = load i32, i32* %12, align 4
  %201 = ashr i32 %200, 1
  store i32 %201, i32* %12, align 4
  br label %202

202:                                              ; preds = %199, %193
  %203 = load i32, i32* %12, align 4
  %204 = load i32, i32* @RL_RDESC_STAT_RXERRSUM, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %249

207:                                              ; preds = %202
  store i32 1, i32* %9, align 4
  %208 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %209 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @RL_FLAG_JUMBOV2, align 4
  %212 = and i32 %210, %211
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %224

214:                                              ; preds = %207
  %215 = load i32, i32* %10, align 4
  %216 = icmp sgt i32 %215, 8191
  br i1 %216, label %217, label %224

217:                                              ; preds = %214
  %218 = load i32, i32* %12, align 4
  %219 = load i32, i32* @RL_RDESC_STAT_ERRS, align 4
  %220 = and i32 %218, %219
  %221 = load i32, i32* @RL_RDESC_STAT_GIANT, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %217
  store i32 0, i32* %9, align 4
  br label %224

224:                                              ; preds = %223, %217, %214, %207
  %225 = load i32, i32* %9, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %248

227:                                              ; preds = %224
  %228 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %229 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %230 = call i32 @if_inc_counter(%struct.ifnet* %228, i32 %229, i32 1)
  %231 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %232 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %231, i32 0, i32 5
  %233 = load %struct.mbuf*, %struct.mbuf** %232, align 8
  %234 = icmp ne %struct.mbuf* %233, null
  br i1 %234, label %235, label %244

235:                                              ; preds = %227
  %236 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %237 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %236, i32 0, i32 5
  %238 = load %struct.mbuf*, %struct.mbuf** %237, align 8
  %239 = call i32 @m_freem(%struct.mbuf* %238)
  %240 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %241 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %240, i32 0, i32 4
  store %struct.mbuf* null, %struct.mbuf** %241, align 8
  %242 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %243 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %242, i32 0, i32 5
  store %struct.mbuf* null, %struct.mbuf** %243, align 8
  br label %244

244:                                              ; preds = %235, %227
  %245 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %246 = load i32, i32* %8, align 4
  %247 = call i32 @re_discard_rxbuf(%struct.rl_softc* %245, i32 %246)
  br label %548

248:                                              ; preds = %224
  br label %249

249:                                              ; preds = %248, %202
  %250 = load i32, i32* %14, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %249
  %253 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %254 = load i32, i32* %8, align 4
  %255 = call i32 @re_jumbo_newbuf(%struct.rl_softc* %253, i32 %254)
  store i32 %255, i32* %9, align 4
  br label %260

256:                                              ; preds = %249
  %257 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %258 = load i32, i32* %8, align 4
  %259 = call i32 @re_newbuf(%struct.rl_softc* %257, i32 %258)
  store i32 %259, i32* %9, align 4
  br label %260

260:                                              ; preds = %256, %252
  %261 = load i32, i32* %9, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %284

263:                                              ; preds = %260
  %264 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %265 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %266 = call i32 @if_inc_counter(%struct.ifnet* %264, i32 %265, i32 1)
  %267 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %268 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %267, i32 0, i32 5
  %269 = load %struct.mbuf*, %struct.mbuf** %268, align 8
  %270 = icmp ne %struct.mbuf* %269, null
  br i1 %270, label %271, label %280

271:                                              ; preds = %263
  %272 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %273 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %272, i32 0, i32 5
  %274 = load %struct.mbuf*, %struct.mbuf** %273, align 8
  %275 = call i32 @m_freem(%struct.mbuf* %274)
  %276 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %277 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %276, i32 0, i32 4
  store %struct.mbuf* null, %struct.mbuf** %277, align 8
  %278 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %279 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %278, i32 0, i32 5
  store %struct.mbuf* null, %struct.mbuf** %279, align 8
  br label %280

280:                                              ; preds = %271, %263
  %281 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %282 = load i32, i32* %8, align 4
  %283 = call i32 @re_discard_rxbuf(%struct.rl_softc* %281, i32 %282)
  br label %548

284:                                              ; preds = %260
  %285 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %286 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %285, i32 0, i32 5
  %287 = load %struct.mbuf*, %struct.mbuf** %286, align 8
  %288 = icmp ne %struct.mbuf* %287, null
  br i1 %288, label %289, label %362

289:                                              ; preds = %284
  %290 = load i32, i32* %14, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %289
  %293 = load i32, i32* %10, align 4
  %294 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %295 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %294, i32 0, i32 0
  store i32 %293, i32* %295, align 8
  br label %311

296:                                              ; preds = %289
  %297 = load i32, i32* %10, align 4
  %298 = load i32, i32* @RE_RX_DESC_BUFLEN, align 4
  %299 = srem i32 %297, %298
  %300 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %301 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %300, i32 0, i32 0
  store i32 %299, i32* %301, align 8
  %302 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %303 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %310

306:                                              ; preds = %296
  %307 = load i32, i32* @RE_RX_DESC_BUFLEN, align 4
  %308 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %309 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %308, i32 0, i32 0
  store i32 %307, i32* %309, align 8
  br label %310

310:                                              ; preds = %306, %296
  br label %311

311:                                              ; preds = %310, %292
  %312 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %313 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @ETHER_CRC_LEN, align 4
  %316 = icmp sle i32 %314, %315
  br i1 %316, label %317, label %331

317:                                              ; preds = %311
  %318 = load i32, i32* @ETHER_CRC_LEN, align 4
  %319 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %320 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = sub nsw i32 %318, %321
  %323 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %324 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %323, i32 0, i32 4
  %325 = load %struct.mbuf*, %struct.mbuf** %324, align 8
  %326 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = sub nsw i32 %327, %322
  store i32 %328, i32* %326, align 8
  %329 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %330 = call i32 @m_freem(%struct.mbuf* %329)
  br label %348

331:                                              ; preds = %311
  %332 = load i32, i32* @ETHER_CRC_LEN, align 4
  %333 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %334 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = sub nsw i32 %335, %332
  store i32 %336, i32* %334, align 8
  %337 = load i32, i32* @M_PKTHDR, align 4
  %338 = xor i32 %337, -1
  %339 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %340 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = and i32 %341, %338
  store i32 %342, i32* %340, align 4
  %343 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %344 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %345 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %344, i32 0, i32 4
  %346 = load %struct.mbuf*, %struct.mbuf** %345, align 8
  %347 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %346, i32 0, i32 3
  store %struct.mbuf* %343, %struct.mbuf** %347, align 8
  br label %348

348:                                              ; preds = %331, %317
  %349 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %350 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %349, i32 0, i32 5
  %351 = load %struct.mbuf*, %struct.mbuf** %350, align 8
  store %struct.mbuf* %351, %struct.mbuf** %6, align 8
  %352 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %353 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %352, i32 0, i32 4
  store %struct.mbuf* null, %struct.mbuf** %353, align 8
  %354 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %355 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %354, i32 0, i32 5
  store %struct.mbuf* null, %struct.mbuf** %355, align 8
  %356 = load i32, i32* %10, align 4
  %357 = load i32, i32* @ETHER_CRC_LEN, align 4
  %358 = sub nsw i32 %356, %357
  %359 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %360 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %359, i32 0, i32 2
  %361 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %360, i32 0, i32 0
  store i32 %358, i32* %361, align 8
  br label %371

362:                                              ; preds = %284
  %363 = load i32, i32* %10, align 4
  %364 = load i32, i32* @ETHER_CRC_LEN, align 4
  %365 = sub nsw i32 %363, %364
  %366 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %367 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %366, i32 0, i32 0
  store i32 %365, i32* %367, align 8
  %368 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %369 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %368, i32 0, i32 2
  %370 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %369, i32 0, i32 0
  store i32 %365, i32* %370, align 8
  br label %371

371:                                              ; preds = %362, %348
  %372 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %373 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %374 = call i32 @if_inc_counter(%struct.ifnet* %372, i32 %373, i32 1)
  %375 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %376 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %377 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %376, i32 0, i32 2
  %378 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %377, i32 0, i32 4
  store %struct.ifnet* %375, %struct.ifnet** %378, align 8
  %379 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %380 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* @IFCAP_RXCSUM, align 4
  %383 = and i32 %381, %382
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %515

385:                                              ; preds = %371
  %386 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %387 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = load i32, i32* @RL_FLAG_DESCV2, align 4
  %390 = and i32 %388, %389
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %447

392:                                              ; preds = %385
  %393 = load i32, i32* %12, align 4
  %394 = load i32, i32* @RL_RDESC_STAT_PROTOID, align 4
  %395 = and i32 %393, %394
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %404

397:                                              ; preds = %392
  %398 = load i32, i32* @CSUM_IP_CHECKED, align 4
  %399 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %400 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %399, i32 0, i32 2
  %401 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = or i32 %402, %398
  store i32 %403, i32* %401, align 4
  br label %404

404:                                              ; preds = %397, %392
  %405 = load i32, i32* %12, align 4
  %406 = load i32, i32* @RL_RDESC_STAT_IPSUMBAD, align 4
  %407 = and i32 %405, %406
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %416, label %409

409:                                              ; preds = %404
  %410 = load i32, i32* @CSUM_IP_VALID, align 4
  %411 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %412 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %411, i32 0, i32 2
  %413 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 4
  %415 = or i32 %414, %410
  store i32 %415, i32* %413, align 4
  br label %416

416:                                              ; preds = %409, %404
  %417 = load i32, i32* %12, align 4
  %418 = call i64 @RL_TCPPKT(i32 %417)
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %425

420:                                              ; preds = %416
  %421 = load i32, i32* %12, align 4
  %422 = load i32, i32* @RL_RDESC_STAT_TCPSUMBAD, align 4
  %423 = and i32 %421, %422
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %434

425:                                              ; preds = %420, %416
  %426 = load i32, i32* %12, align 4
  %427 = call i64 @RL_UDPPKT(i32 %426)
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %446

429:                                              ; preds = %425
  %430 = load i32, i32* %12, align 4
  %431 = load i32, i32* @RL_RDESC_STAT_UDPSUMBAD, align 4
  %432 = and i32 %430, %431
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %446, label %434

434:                                              ; preds = %429, %420
  %435 = load i32, i32* @CSUM_DATA_VALID, align 4
  %436 = load i32, i32* @CSUM_PSEUDO_HDR, align 4
  %437 = or i32 %435, %436
  %438 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %439 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %438, i32 0, i32 2
  %440 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = or i32 %441, %437
  store i32 %442, i32* %440, align 4
  %443 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %444 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %443, i32 0, i32 2
  %445 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %444, i32 0, i32 2
  store i32 65535, i32* %445, align 8
  br label %446

446:                                              ; preds = %434, %429, %425
  br label %514

447:                                              ; preds = %385
  %448 = load i32, i32* %12, align 4
  %449 = load i32, i32* @RL_RDESC_STAT_PROTOID, align 4
  %450 = and i32 %448, %449
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %464

452:                                              ; preds = %447
  %453 = load i32, i32* %13, align 4
  %454 = load i32, i32* @RL_RDESC_IPV4, align 4
  %455 = and i32 %453, %454
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %464

457:                                              ; preds = %452
  %458 = load i32, i32* @CSUM_IP_CHECKED, align 4
  %459 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %460 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %459, i32 0, i32 2
  %461 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 4
  %463 = or i32 %462, %458
  store i32 %463, i32* %461, align 4
  br label %464

464:                                              ; preds = %457, %452, %447
  %465 = load i32, i32* %12, align 4
  %466 = load i32, i32* @RL_RDESC_STAT_IPSUMBAD, align 4
  %467 = and i32 %465, %466
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %481, label %469

469:                                              ; preds = %464
  %470 = load i32, i32* %13, align 4
  %471 = load i32, i32* @RL_RDESC_IPV4, align 4
  %472 = and i32 %470, %471
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %481

474:                                              ; preds = %469
  %475 = load i32, i32* @CSUM_IP_VALID, align 4
  %476 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %477 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %476, i32 0, i32 2
  %478 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %477, i32 0, i32 1
  %479 = load i32, i32* %478, align 4
  %480 = or i32 %479, %475
  store i32 %480, i32* %478, align 4
  br label %481

481:                                              ; preds = %474, %469, %464
  %482 = load i32, i32* %12, align 4
  %483 = load i32, i32* @RL_RDESC_STAT_TCP, align 4
  %484 = and i32 %482, %483
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %491

486:                                              ; preds = %481
  %487 = load i32, i32* %12, align 4
  %488 = load i32, i32* @RL_RDESC_STAT_TCPSUMBAD, align 4
  %489 = and i32 %487, %488
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %501

491:                                              ; preds = %486, %481
  %492 = load i32, i32* %12, align 4
  %493 = load i32, i32* @RL_RDESC_STAT_UDP, align 4
  %494 = and i32 %492, %493
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %513

496:                                              ; preds = %491
  %497 = load i32, i32* %12, align 4
  %498 = load i32, i32* @RL_RDESC_STAT_UDPSUMBAD, align 4
  %499 = and i32 %497, %498
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %513, label %501

501:                                              ; preds = %496, %486
  %502 = load i32, i32* @CSUM_DATA_VALID, align 4
  %503 = load i32, i32* @CSUM_PSEUDO_HDR, align 4
  %504 = or i32 %502, %503
  %505 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %506 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %505, i32 0, i32 2
  %507 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %506, i32 0, i32 1
  %508 = load i32, i32* %507, align 4
  %509 = or i32 %508, %504
  store i32 %509, i32* %507, align 4
  %510 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %511 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %510, i32 0, i32 2
  %512 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %511, i32 0, i32 2
  store i32 65535, i32* %512, align 8
  br label %513

513:                                              ; preds = %501, %496, %491
  br label %514

514:                                              ; preds = %513, %446
  br label %515

515:                                              ; preds = %514, %371
  %516 = load i32, i32* %15, align 4
  %517 = add nsw i32 %516, -1
  store i32 %517, i32* %15, align 4
  %518 = load i32, i32* %13, align 4
  %519 = load i32, i32* @RL_RDESC_VLANCTL_TAG, align 4
  %520 = and i32 %518, %519
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %535

522:                                              ; preds = %515
  %523 = load i32, i32* %13, align 4
  %524 = load i32, i32* @RL_RDESC_VLANCTL_DATA, align 4
  %525 = and i32 %523, %524
  %526 = call i32 @bswap16(i32 %525)
  %527 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %528 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %527, i32 0, i32 2
  %529 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %528, i32 0, i32 3
  store i32 %526, i32* %529, align 4
  %530 = load i32, i32* @M_VLANTAG, align 4
  %531 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %532 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %531, i32 0, i32 1
  %533 = load i32, i32* %532, align 4
  %534 = or i32 %533, %530
  store i32 %534, i32* %532, align 4
  br label %535

535:                                              ; preds = %522, %515
  %536 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %537 = call i32 @RL_UNLOCK(%struct.rl_softc* %536)
  %538 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %539 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %538, i32 0, i32 3
  %540 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %539, align 8
  %541 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %542 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %543 = call i32 %540(%struct.ifnet* %541, %struct.mbuf* %542)
  %544 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %545 = call i32 @RL_LOCK(%struct.rl_softc* %544)
  %546 = load i32, i32* %16, align 4
  %547 = add nsw i32 %546, 1
  store i32 %547, i32* %16, align 4
  br label %548

548:                                              ; preds = %535, %280, %244, %191, %158, %130
  %549 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %550 = load i32, i32* %8, align 4
  %551 = call i32 @RL_RX_DESC_NXT(%struct.rl_softc* %549, i32 %550)
  store i32 %551, i32* %8, align 4
  br label %53

552:                                              ; preds = %80, %63, %53
  %553 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %554 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %553, i32 0, i32 3
  %555 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %554, i32 0, i32 2
  %556 = load i32, i32* %555, align 8
  %557 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %558 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %557, i32 0, i32 3
  %559 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %558, i32 0, i32 1
  %560 = load i32, i32* %559, align 4
  %561 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %562 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %563 = or i32 %561, %562
  %564 = call i32 @bus_dmamap_sync(i32 %556, i32 %560, i32 %563)
  %565 = load i32, i32* %8, align 4
  %566 = load %struct.rl_softc*, %struct.rl_softc** %4, align 8
  %567 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %566, i32 0, i32 3
  %568 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %567, i32 0, i32 0
  store i32 %565, i32* %568, align 8
  %569 = load i32*, i32** %5, align 8
  %570 = icmp ne i32* %569, null
  br i1 %570, label %571, label %574

571:                                              ; preds = %552
  %572 = load i32, i32* %16, align 4
  %573 = load i32*, i32** %5, align 8
  store i32 %572, i32* %573, align 4
  br label %574

574:                                              ; preds = %571, %552
  %575 = load i32, i32* %15, align 4
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %577, label %579

577:                                              ; preds = %574
  %578 = load i32, i32* @EAGAIN, align 4
  store i32 %578, i32* %3, align 4
  br label %580

579:                                              ; preds = %574
  store i32 0, i32* %3, align 4
  br label %580

580:                                              ; preds = %579, %577
  %581 = load i32, i32* %3, align 4
  ret i32 %581
}

declare dso_local i32 @RL_LOCK_ASSERT(%struct.rl_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @re_discard_rxbuf(%struct.rl_softc*, i32) #1

declare dso_local i32 @re_newbuf(%struct.rl_softc*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @re_jumbo_newbuf(%struct.rl_softc*, i32) #1

declare dso_local i64 @RL_TCPPKT(i32) #1

declare dso_local i64 @RL_UDPPKT(i32) #1

declare dso_local i32 @bswap16(i32) #1

declare dso_local i32 @RL_UNLOCK(%struct.rl_softc*) #1

declare dso_local i32 @RL_LOCK(%struct.rl_softc*) #1

declare dso_local i32 @RL_RX_DESC_NXT(%struct.rl_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
