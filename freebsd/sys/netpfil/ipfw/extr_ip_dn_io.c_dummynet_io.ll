; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_io.c_dummynet_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_io.c_dummynet_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32, i32, i64 }
%struct.mbuf = type { i32* }
%struct.ip_fw_args = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.dn_fsk = type { %struct.TYPE_8__, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.dn_link, %struct.TYPE_7__* }
%struct.dn_link = type { i64, i64 }
%struct.TYPE_7__ = type { i32, i64 (%struct.dn_sch_inst*, %struct.dn_queue*, %struct.mbuf*)* }
%struct.dn_sch_inst = type { i32, i64, i64, i64 }
%struct.dn_queue = type { i32 }
%struct.m_tag = type { i64, i32 }

@IPFW_INFO_MASK = common dso_local global i32 0, align 4
@IPFW_IS_PIPE = common dso_local global i32 0, align 4
@DN_MAX_ID = common dso_local global i32 0, align 4
@IPFW_ARGS_IN = common dso_local global i32 0, align 4
@DIR_IN = common dso_local global i32 0, align 4
@DIR_OUT = common dso_local global i32 0, align 4
@IPFW_ARGS_ETHER = common dso_local global i32 0, align 4
@PROTO_LAYER2 = common dso_local global i32 0, align 4
@IPFW_ARGS_IP6 = common dso_local global i32 0, align 4
@PROTO_IPV6 = common dso_local global i32 0, align 4
@io_pkt = common dso_local global i32 0, align 4
@dn_cfg = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@DN_MULTIQUEUE = common dso_local global i32 0, align 4
@io_pkt_drop = common dso_local global i32 0, align 4
@DN_ACTIVE = common dso_local global i32 0, align 4
@MTAG_IPFW_RULE = common dso_local global i32 0, align 4
@io_pkt_fast = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"dummynet: fast io: pkt chain detected!\0A\00", align 1
@DN_NOERROR = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dummynet_io(%struct.mbuf** %0, %struct.ip_fw_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbuf**, align 8
  %5 = alloca %struct.ip_fw_args*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.dn_fsk*, align 8
  %8 = alloca %struct.dn_sch_inst*, align 8
  %9 = alloca %struct.dn_queue*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dn_link*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.m_tag*, align 8
  store %struct.mbuf** %0, %struct.mbuf*** %4, align 8
  store %struct.ip_fw_args* %1, %struct.ip_fw_args** %5, align 8
  %15 = load %struct.mbuf**, %struct.mbuf*** %4, align 8
  %16 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  store %struct.mbuf* %16, %struct.mbuf** %6, align 8
  store %struct.dn_fsk* null, %struct.dn_fsk** %7, align 8
  store %struct.dn_queue* null, %struct.dn_queue** %9, align 8
  %17 = load %struct.ip_fw_args*, %struct.ip_fw_args** %5, align 8
  %18 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IPFW_INFO_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load %struct.ip_fw_args*, %struct.ip_fw_args** %5, align 8
  %24 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IPFW_IS_PIPE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @DN_MAX_ID, align 4
  %32 = mul nsw i32 2, %31
  br label %34

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i32 [ %32, %30 ], [ 0, %33 ]
  %36 = add nsw i32 %22, %35
  store i32 %36, i32* %10, align 4
  %37 = load %struct.ip_fw_args*, %struct.ip_fw_args** %5, align 8
  %38 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IPFW_ARGS_IN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* @DIR_IN, align 4
  store i32 %44, i32* %11, align 4
  br label %47

45:                                               ; preds = %34
  %46 = load i32, i32* @DIR_OUT, align 4
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = load %struct.ip_fw_args*, %struct.ip_fw_args** %5, align 8
  %49 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IPFW_ARGS_ETHER, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32, i32* @PROTO_LAYER2, align 4
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %11, align 4
  br label %70

58:                                               ; preds = %47
  %59 = load %struct.ip_fw_args*, %struct.ip_fw_args** %5, align 8
  %60 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IPFW_ARGS_IP6, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* @PROTO_IPV6, align 4
  %67 = load i32, i32* %11, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %65, %58
  br label %70

70:                                               ; preds = %69, %54
  %71 = call i32 (...) @DN_BH_WLOCK()
  %72 = load i32, i32* @io_pkt, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @io_pkt, align 4
  %74 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.ip_fw_args*, %struct.ip_fw_args** %5, align 8
  %77 = call i64 @tag_mbuf(%struct.mbuf* %74, i32 %75, %struct.ip_fw_args* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  br label %255

80:                                               ; preds = %70
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dn_cfg, i32 0, i32 4), align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %85 = call i32 @mq_append(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dn_cfg, i32 0, i32 3), %struct.mbuf* %84)
  %86 = load %struct.mbuf**, %struct.mbuf*** %4, align 8
  store %struct.mbuf* null, %struct.mbuf** %86, align 8
  store %struct.mbuf* null, %struct.mbuf** %6, align 8
  br label %247

87:                                               ; preds = %80
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dn_cfg, i32 0, i32 2), align 8
  %89 = load i32, i32* %10, align 4
  %90 = call %struct.dn_fsk* @dn_ht_find(i32 %88, i32 %89, i32 0, i32* null)
  store %struct.dn_fsk* %90, %struct.dn_fsk** %7, align 8
  %91 = load %struct.dn_fsk*, %struct.dn_fsk** %7, align 8
  %92 = icmp eq %struct.dn_fsk* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %255

94:                                               ; preds = %87
  %95 = load %struct.dn_fsk*, %struct.dn_fsk** %7, align 8
  %96 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %95, i32 0, i32 1
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = icmp eq %struct.TYPE_9__* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %255

100:                                              ; preds = %94
  %101 = load %struct.dn_fsk*, %struct.dn_fsk** %7, align 8
  %102 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %101, i32 0, i32 1
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = load %struct.ip_fw_args*, %struct.ip_fw_args** %5, align 8
  %105 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %104, i32 0, i32 1
  %106 = call %struct.dn_sch_inst* @ipdn_si_find(%struct.TYPE_9__* %103, i32* %105)
  store %struct.dn_sch_inst* %106, %struct.dn_sch_inst** %8, align 8
  %107 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %8, align 8
  %108 = icmp eq %struct.dn_sch_inst* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  br label %255

110:                                              ; preds = %100
  %111 = load %struct.dn_fsk*, %struct.dn_fsk** %7, align 8
  %112 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %111, i32 0, i32 1
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @DN_MULTIQUEUE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %110
  %122 = load %struct.dn_fsk*, %struct.dn_fsk** %7, align 8
  %123 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %8, align 8
  %124 = load %struct.ip_fw_args*, %struct.ip_fw_args** %5, align 8
  %125 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %124, i32 0, i32 1
  %126 = call %struct.dn_queue* @ipdn_q_find(%struct.dn_fsk* %122, %struct.dn_sch_inst* %123, i32* %125)
  store %struct.dn_queue* %126, %struct.dn_queue** %9, align 8
  %127 = load %struct.dn_queue*, %struct.dn_queue** %9, align 8
  %128 = icmp eq %struct.dn_queue* %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  br label %255

130:                                              ; preds = %121
  br label %131

131:                                              ; preds = %130, %110
  %132 = load %struct.dn_fsk*, %struct.dn_fsk** %7, align 8
  %133 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %132, i32 0, i32 1
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i64 (%struct.dn_sch_inst*, %struct.dn_queue*, %struct.mbuf*)*, i64 (%struct.dn_sch_inst*, %struct.dn_queue*, %struct.mbuf*)** %137, align 8
  %139 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %8, align 8
  %140 = load %struct.dn_queue*, %struct.dn_queue** %9, align 8
  %141 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %142 = call i64 %138(%struct.dn_sch_inst* %139, %struct.dn_queue* %140, %struct.mbuf* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %131
  %145 = load %struct.mbuf**, %struct.mbuf*** %4, align 8
  store %struct.mbuf* null, %struct.mbuf** %145, align 8
  store %struct.mbuf* null, %struct.mbuf** %6, align 8
  %146 = load i32, i32* @io_pkt_drop, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* @io_pkt_drop, align 4
  br label %255

148:                                              ; preds = %131
  %149 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %8, align 8
  %150 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @DN_ACTIVE, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %148
  %156 = load %struct.mbuf**, %struct.mbuf*** %4, align 8
  store %struct.mbuf* null, %struct.mbuf** %156, align 8
  store %struct.mbuf* null, %struct.mbuf** %6, align 8
  br label %247

157:                                              ; preds = %148
  %158 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %8, align 8
  %159 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dn_cfg, i32 0, i32 0), align 8
  %162 = icmp slt i64 %160, %161
  br i1 %162, label %163, label %212

163:                                              ; preds = %157
  %164 = load %struct.dn_fsk*, %struct.dn_fsk** %7, align 8
  %165 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %164, i32 0, i32 1
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  store %struct.dn_link* %167, %struct.dn_link** %12, align 8
  %168 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dn_cfg, i32 0, i32 0), align 8
  %169 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %8, align 8
  %170 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %169, i32 0, i32 2
  store i64 %168, i64* %170, align 8
  %171 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dn_cfg, i32 0, i32 1), align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %163
  %174 = load %struct.dn_link*, %struct.dn_link** %12, align 8
  %175 = getelementptr inbounds %struct.dn_link, %struct.dn_link* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  br label %178

177:                                              ; preds = %163
  br label %178

178:                                              ; preds = %177, %173
  %179 = phi i64 [ %176, %173 ], [ 0, %177 ]
  %180 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %8, align 8
  %181 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %180, i32 0, i32 3
  store i64 %179, i64* %181, align 8
  %182 = load %struct.dn_link*, %struct.dn_link** %12, align 8
  %183 = getelementptr inbounds %struct.dn_link, %struct.dn_link* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %211

186:                                              ; preds = %178
  %187 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dn_cfg, i32 0, i32 0), align 8
  %188 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %8, align 8
  %189 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = sub nsw i64 %187, %190
  %192 = load %struct.dn_link*, %struct.dn_link** %12, align 8
  %193 = getelementptr inbounds %struct.dn_link, %struct.dn_link* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = mul nsw i64 %191, %194
  store i64 %195, i64* %13, align 8
  %196 = load i64, i64* %13, align 8
  %197 = load %struct.dn_link*, %struct.dn_link** %12, align 8
  %198 = getelementptr inbounds %struct.dn_link, %struct.dn_link* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp sgt i64 %196, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %186
  %202 = load %struct.dn_link*, %struct.dn_link** %12, align 8
  %203 = getelementptr inbounds %struct.dn_link, %struct.dn_link* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  store i64 %204, i64* %13, align 8
  br label %205

205:                                              ; preds = %201, %186
  %206 = load i64, i64* %13, align 8
  %207 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %8, align 8
  %208 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = add nsw i64 %209, %206
  store i64 %210, i64* %208, align 8
  br label %211

211:                                              ; preds = %205, %178
  br label %212

212:                                              ; preds = %211, %157
  %213 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %8, align 8
  %214 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dn_cfg, i32 0, i32 0), align 8
  %215 = call %struct.mbuf* @serve_sched(i32* null, %struct.dn_sch_inst* %213, i64 %214)
  store %struct.mbuf* %215, %struct.mbuf** %6, align 8
  %216 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %217 = load %struct.mbuf**, %struct.mbuf*** %4, align 8
  %218 = load %struct.mbuf*, %struct.mbuf** %217, align 8
  %219 = icmp eq %struct.mbuf* %216, %218
  br i1 %219, label %220, label %244

220:                                              ; preds = %212
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* @PROTO_LAYER2, align 4
  %223 = and i32 %221, %222
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %244

225:                                              ; preds = %220
  %226 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %227 = call %struct.m_tag* @m_tag_first(%struct.mbuf* %226)
  store %struct.m_tag* %227, %struct.m_tag** %14, align 8
  %228 = load i32, i32* @MTAG_IPFW_RULE, align 4
  %229 = load %struct.m_tag*, %struct.m_tag** %14, align 8
  %230 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 8
  %231 = load %struct.m_tag*, %struct.m_tag** %14, align 8
  %232 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %231, i32 0, i32 0
  store i64 0, i64* %232, align 8
  %233 = load i32, i32* @io_pkt_fast, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* @io_pkt_fast, align 4
  %235 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %236 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = icmp ne i32* %237, null
  br i1 %238, label %239, label %243

239:                                              ; preds = %225
  %240 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %241 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %242 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %241, i32 0, i32 0
  store i32* null, i32** %242, align 8
  br label %243

243:                                              ; preds = %239, %225
  store %struct.mbuf* null, %struct.mbuf** %6, align 8
  br label %246

244:                                              ; preds = %220, %212
  %245 = load %struct.mbuf**, %struct.mbuf*** %4, align 8
  store %struct.mbuf* null, %struct.mbuf** %245, align 8
  br label %246

246:                                              ; preds = %244, %243
  br label %247

247:                                              ; preds = %246, %155, %83
  %248 = call i32 (...) @DN_BH_WUNLOCK()
  %249 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %250 = icmp ne %struct.mbuf* %249, null
  br i1 %250, label %251, label %254

251:                                              ; preds = %247
  %252 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %253 = call i32 @dummynet_send(%struct.mbuf* %252)
  br label %254

254:                                              ; preds = %251, %247
  store i32 0, i32* %3, align 4
  br label %281

255:                                              ; preds = %144, %129, %109, %99, %93, %79
  %256 = load i32, i32* @io_pkt_drop, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* @io_pkt_drop, align 4
  %258 = call i32 (...) @DN_BH_WUNLOCK()
  %259 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %260 = icmp ne %struct.mbuf* %259, null
  br i1 %260, label %261, label %264

261:                                              ; preds = %255
  %262 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %263 = call i32 @FREE_PKT(%struct.mbuf* %262)
  br label %264

264:                                              ; preds = %261, %255
  %265 = load %struct.mbuf**, %struct.mbuf*** %4, align 8
  store %struct.mbuf* null, %struct.mbuf** %265, align 8
  %266 = load %struct.dn_fsk*, %struct.dn_fsk** %7, align 8
  %267 = icmp ne %struct.dn_fsk* %266, null
  br i1 %267, label %268, label %277

268:                                              ; preds = %264
  %269 = load %struct.dn_fsk*, %struct.dn_fsk** %7, align 8
  %270 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @DN_NOERROR, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %268
  br label %279

277:                                              ; preds = %268, %264
  %278 = load i32, i32* @ENOBUFS, align 4
  br label %279

279:                                              ; preds = %277, %276
  %280 = phi i32 [ 0, %276 ], [ %278, %277 ]
  store i32 %280, i32* %3, align 4
  br label %281

281:                                              ; preds = %279, %254
  %282 = load i32, i32* %3, align 4
  ret i32 %282
}

declare dso_local i32 @DN_BH_WLOCK(...) #1

declare dso_local i64 @tag_mbuf(%struct.mbuf*, i32, %struct.ip_fw_args*) #1

declare dso_local i32 @mq_append(i32*, %struct.mbuf*) #1

declare dso_local %struct.dn_fsk* @dn_ht_find(i32, i32, i32, i32*) #1

declare dso_local %struct.dn_sch_inst* @ipdn_si_find(%struct.TYPE_9__*, i32*) #1

declare dso_local %struct.dn_queue* @ipdn_q_find(%struct.dn_fsk*, %struct.dn_sch_inst*, i32*) #1

declare dso_local %struct.mbuf* @serve_sched(i32*, %struct.dn_sch_inst*, i64) #1

declare dso_local %struct.m_tag* @m_tag_first(%struct.mbuf*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @DN_BH_WUNLOCK(...) #1

declare dso_local i32 @dummynet_send(%struct.mbuf*) #1

declare dso_local i32 @FREE_PKT(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
