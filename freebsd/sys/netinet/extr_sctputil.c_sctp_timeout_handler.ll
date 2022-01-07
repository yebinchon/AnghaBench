; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_timeout_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_timeout_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_inpcb = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32**, i64, i64, i32 }
%struct.sctp_tcb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sctp_nets = type { i32 }
%struct.sctp_timer = type { i32, i8*, i32, i32, i64, i64, i64, i64 }
%struct.mbuf = type { i32 }
%struct.sctp_tmit_chunk = type { %struct.sctp_nets* }
%struct.timeval = type { i32 }
%struct.vnet = type { i32 }

@SCTP_DEBUG_TIMER1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Timer type %d goes off\0A\00", align 1
@SCTP_STATE_ABOUT_TO_BE_FREED = common dso_local global i32 0, align 4
@sctps_timodata = common dso_local global i32 0, align 4
@SCTP_OUTPUT_FROM_T3 = common dso_local global i32 0, align 4
@SCTP_SO_NOT_LOCKED = common dso_local global i32 0, align 4
@sctps_timoinit = common dso_local global i32 0, align 4
@sctps_timosack = common dso_local global i32 0, align 4
@SCTP_OUTPUT_FROM_SACK_TMR = common dso_local global i32 0, align 4
@sctps_timoshutdown = common dso_local global i32 0, align 4
@SCTP_OUTPUT_FROM_SHUT_TMR = common dso_local global i32 0, align 4
@sctps_timoheartbeat = common dso_local global i32 0, align 4
@SCTP_ADDR_NOHB = common dso_local global i32 0, align 4
@SCTP_OUTPUT_FROM_HB_TMR = common dso_local global i32 0, align 4
@sctps_timocookie = common dso_local global i32 0, align 4
@sctps_timosecret = common dso_local global i32 0, align 4
@SCTP_HOW_MANY_SECRETS = common dso_local global i64 0, align 8
@SCTP_NUMBER_OF_SECRETS = common dso_local global i32 0, align 4
@sctps_timopathmtu = common dso_local global i32 0, align 4
@sctps_timoshutdownack = common dso_local global i32 0, align 4
@SCTP_OUTPUT_FROM_SHUT_ACK_TMR = common dso_local global i32 0, align 4
@sctps_timoshutdownguard = common dso_local global i32 0, align 4
@sctp_diag_info_code = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Shutdown guard timer expired\00", align 1
@sctps_timostrmrst = common dso_local global i32 0, align 4
@SCTP_OUTPUT_FROM_STRRST_TMR = common dso_local global i32 0, align 4
@sctps_timoasconf = common dso_local global i32 0, align 4
@SCTP_OUTPUT_FROM_ASCONF_TMR = common dso_local global i32 0, align 4
@sctps_timodelprim = common dso_local global i32 0, align 4
@sctps_timoautoclose = common dso_local global i32 0, align 4
@SCTP_OUTPUT_FROM_AUTOCLOSE_TMR = common dso_local global i32 0, align 4
@sctps_timoassockill = common dso_local global i32 0, align 4
@SCTP_FROM_SCTPUTIL = common dso_local global i64 0, align 8
@SCTP_LOC_1 = common dso_local global i64 0, align 8
@SCTP_NORMAL_PROC = common dso_local global i32 0, align 4
@SCTP_LOC_2 = common dso_local global i64 0, align 8
@sctps_timoinpkill = common dso_local global i32 0, align 4
@SCTP_LOC_3 = common dso_local global i64 0, align 8
@SCTP_FREE_SHOULD_USE_ABORT = common dso_local global i32 0, align 4
@SCTP_CALLED_FROM_INPKILL_TIMER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"sctp_timeout_handler:unknown timer %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Timer now complete (type = %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_timeout_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sctp_inpcb*, align 8
  %4 = alloca %struct.sctp_tcb*, align 8
  %5 = alloca %struct.sctp_nets*, align 8
  %6 = alloca %struct.sctp_timer*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sctp_tmit_chunk*, align 8
  %11 = alloca %struct.timeval, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = bitcast i8* %14 to %struct.sctp_timer*
  store %struct.sctp_timer* %15, %struct.sctp_timer** %6, align 8
  %16 = load %struct.sctp_timer*, %struct.sctp_timer** %6, align 8
  %17 = getelementptr inbounds %struct.sctp_timer, %struct.sctp_timer* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.sctp_inpcb*
  store %struct.sctp_inpcb* %19, %struct.sctp_inpcb** %3, align 8
  %20 = load %struct.sctp_timer*, %struct.sctp_timer** %6, align 8
  %21 = getelementptr inbounds %struct.sctp_timer, %struct.sctp_timer* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.sctp_tcb*
  store %struct.sctp_tcb* %23, %struct.sctp_tcb** %4, align 8
  %24 = load %struct.sctp_timer*, %struct.sctp_timer** %6, align 8
  %25 = getelementptr inbounds %struct.sctp_timer, %struct.sctp_timer* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.sctp_nets*
  store %struct.sctp_nets* %27, %struct.sctp_nets** %5, align 8
  %28 = load %struct.sctp_timer*, %struct.sctp_timer** %6, align 8
  %29 = getelementptr inbounds %struct.sctp_timer, %struct.sctp_timer* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.vnet*
  %32 = call i32 @CURVNET_SET(%struct.vnet* %31)
  store i32 1, i32* %8, align 4
  %33 = load %struct.sctp_timer*, %struct.sctp_timer** %6, align 8
  %34 = getelementptr inbounds %struct.sctp_timer, %struct.sctp_timer* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.sctp_timer*, %struct.sctp_timer** %6, align 8
  %37 = bitcast %struct.sctp_timer* %36 to i8*
  %38 = icmp ne i8* %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %1
  %40 = call i32 (...) @CURVNET_RESTORE()
  br label %757

41:                                               ; preds = %1
  %42 = load %struct.sctp_timer*, %struct.sctp_timer** %6, align 8
  %43 = getelementptr inbounds %struct.sctp_timer, %struct.sctp_timer* %42, i32 0, i32 2
  store i32 40961, i32* %43, align 8
  %44 = load %struct.sctp_timer*, %struct.sctp_timer** %6, align 8
  %45 = getelementptr inbounds %struct.sctp_timer, %struct.sctp_timer* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @SCTP_IS_TIMER_TYPE_VALID(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %41
  %50 = call i32 (...) @CURVNET_RESTORE()
  br label %757

51:                                               ; preds = %41
  %52 = load %struct.sctp_timer*, %struct.sctp_timer** %6, align 8
  %53 = getelementptr inbounds %struct.sctp_timer, %struct.sctp_timer* %52, i32 0, i32 2
  store i32 40962, i32* %53, align 8
  %54 = load %struct.sctp_timer*, %struct.sctp_timer** %6, align 8
  %55 = getelementptr inbounds %struct.sctp_timer, %struct.sctp_timer* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 144
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %60 = icmp eq %struct.sctp_inpcb* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 (...) @CURVNET_RESTORE()
  br label %757

63:                                               ; preds = %58, %51
  %64 = load %struct.sctp_timer*, %struct.sctp_timer** %6, align 8
  %65 = getelementptr inbounds %struct.sctp_timer, %struct.sctp_timer* %64, i32 0, i32 2
  store i32 40963, i32* %65, align 8
  %66 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %67 = icmp ne %struct.sctp_inpcb* %66, null
  br i1 %67, label %68, label %125

68:                                               ; preds = %63
  %69 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %70 = call i32 @SCTP_INP_INCR_REF(%struct.sctp_inpcb* %69)
  %71 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %72 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %124

75:                                               ; preds = %68
  %76 = load %struct.sctp_timer*, %struct.sctp_timer** %6, align 8
  %77 = getelementptr inbounds %struct.sctp_timer, %struct.sctp_timer* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 137
  br i1 %79, label %80, label %124

80:                                               ; preds = %75
  %81 = load %struct.sctp_timer*, %struct.sctp_timer** %6, align 8
  %82 = getelementptr inbounds %struct.sctp_timer, %struct.sctp_timer* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 138
  br i1 %84, label %85, label %124

85:                                               ; preds = %80
  %86 = load %struct.sctp_timer*, %struct.sctp_timer** %6, align 8
  %87 = getelementptr inbounds %struct.sctp_timer, %struct.sctp_timer* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 132
  br i1 %89, label %90, label %124

90:                                               ; preds = %85
  %91 = load %struct.sctp_timer*, %struct.sctp_timer** %6, align 8
  %92 = getelementptr inbounds %struct.sctp_timer, %struct.sctp_timer* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 133
  br i1 %94, label %95, label %124

95:                                               ; preds = %90
  %96 = load %struct.sctp_timer*, %struct.sctp_timer** %6, align 8
  %97 = getelementptr inbounds %struct.sctp_timer, %struct.sctp_timer* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 139
  br i1 %99, label %100, label %124

100:                                              ; preds = %95
  %101 = load %struct.sctp_timer*, %struct.sctp_timer** %6, align 8
  %102 = getelementptr inbounds %struct.sctp_timer, %struct.sctp_timer* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 131
  br i1 %104, label %105, label %124

105:                                              ; preds = %100
  %106 = load %struct.sctp_timer*, %struct.sctp_timer** %6, align 8
  %107 = getelementptr inbounds %struct.sctp_timer, %struct.sctp_timer* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 130
  br i1 %109, label %110, label %124

110:                                              ; preds = %105
  %111 = load %struct.sctp_timer*, %struct.sctp_timer** %6, align 8
  %112 = getelementptr inbounds %struct.sctp_timer, %struct.sctp_timer* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 129
  br i1 %114, label %115, label %124

115:                                              ; preds = %110
  %116 = load %struct.sctp_timer*, %struct.sctp_timer** %6, align 8
  %117 = getelementptr inbounds %struct.sctp_timer, %struct.sctp_timer* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 142
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %122 = call i32 @SCTP_INP_DECR_REF(%struct.sctp_inpcb* %121)
  %123 = call i32 (...) @CURVNET_RESTORE()
  br label %757

124:                                              ; preds = %115, %110, %105, %100, %95, %90, %85, %80, %75, %68
  br label %125

125:                                              ; preds = %124, %63
  %126 = load %struct.sctp_timer*, %struct.sctp_timer** %6, align 8
  %127 = getelementptr inbounds %struct.sctp_timer, %struct.sctp_timer* %126, i32 0, i32 2
  store i32 40964, i32* %127, align 8
  %128 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %129 = icmp ne %struct.sctp_tcb* %128, null
  br i1 %129, label %130, label %153

130:                                              ; preds = %125
  %131 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %132 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = call i32 @atomic_add_int(i32* %133, i32 1)
  %135 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %136 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %130
  %141 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %142 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = call i32 @atomic_add_int(i32* %143, i32 -1)
  %145 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %146 = icmp ne %struct.sctp_inpcb* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %140
  %148 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %149 = call i32 @SCTP_INP_DECR_REF(%struct.sctp_inpcb* %148)
  br label %150

150:                                              ; preds = %147, %140
  %151 = call i32 (...) @CURVNET_RESTORE()
  br label %757

152:                                              ; preds = %130
  br label %153

153:                                              ; preds = %152, %125
  %154 = load %struct.sctp_timer*, %struct.sctp_timer** %6, align 8
  %155 = getelementptr inbounds %struct.sctp_timer, %struct.sctp_timer* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  store i32 %156, i32* %9, align 4
  %157 = load %struct.sctp_timer*, %struct.sctp_timer** %6, align 8
  %158 = getelementptr inbounds %struct.sctp_timer, %struct.sctp_timer* %157, i32 0, i32 2
  store i32 40965, i32* %158, align 8
  %159 = load i32, i32* @SCTP_DEBUG_TIMER1, align 4
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @SCTPDBG(i32 %159, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %160)
  %162 = load %struct.sctp_timer*, %struct.sctp_timer** %6, align 8
  %163 = getelementptr inbounds %struct.sctp_timer, %struct.sctp_timer* %162, i32 0, i32 3
  %164 = call i32 @SCTP_OS_TIMER_ACTIVE(i32* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %182, label %166

166:                                              ; preds = %153
  %167 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %168 = icmp ne %struct.sctp_inpcb* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %171 = call i32 @SCTP_INP_DECR_REF(%struct.sctp_inpcb* %170)
  br label %172

172:                                              ; preds = %169, %166
  %173 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %174 = icmp ne %struct.sctp_tcb* %173, null
  br i1 %174, label %175, label %180

175:                                              ; preds = %172
  %176 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %177 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = call i32 @atomic_add_int(i32* %178, i32 -1)
  br label %180

180:                                              ; preds = %175, %172
  %181 = call i32 (...) @CURVNET_RESTORE()
  br label %757

182:                                              ; preds = %153
  %183 = load %struct.sctp_timer*, %struct.sctp_timer** %6, align 8
  %184 = getelementptr inbounds %struct.sctp_timer, %struct.sctp_timer* %183, i32 0, i32 2
  store i32 40966, i32* %184, align 8
  %185 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %186 = icmp ne %struct.sctp_tcb* %185, null
  br i1 %186, label %187, label %222

187:                                              ; preds = %182
  %188 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %189 = call i32 @SCTP_TCB_LOCK(%struct.sctp_tcb* %188)
  %190 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %191 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  %193 = call i32 @atomic_add_int(i32* %192, i32 -1)
  %194 = load i32, i32* %9, align 4
  %195 = icmp ne i32 %194, 142
  br i1 %195, label %196, label %221

196:                                              ; preds = %187
  %197 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %198 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %211, label %202

202:                                              ; preds = %196
  %203 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %204 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i32, i32* @SCTP_STATE_ABOUT_TO_BE_FREED, align 4
  %208 = sext i32 %207 to i64
  %209 = and i64 %206, %208
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %221

211:                                              ; preds = %202, %196
  %212 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %213 = call i32 @SCTP_TCB_UNLOCK(%struct.sctp_tcb* %212)
  %214 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %215 = icmp ne %struct.sctp_inpcb* %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %211
  %217 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %218 = call i32 @SCTP_INP_DECR_REF(%struct.sctp_inpcb* %217)
  br label %219

219:                                              ; preds = %216, %211
  %220 = call i32 (...) @CURVNET_RESTORE()
  br label %757

221:                                              ; preds = %202, %187
  br label %235

222:                                              ; preds = %182
  %223 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %224 = icmp ne %struct.sctp_inpcb* %223, null
  br i1 %224, label %225, label %232

225:                                              ; preds = %222
  %226 = load i32, i32* %9, align 4
  %227 = icmp ne i32 %226, 137
  br i1 %227, label %228, label %231

228:                                              ; preds = %225
  %229 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %230 = call i32 @SCTP_INP_WLOCK(%struct.sctp_inpcb* %229)
  br label %231

231:                                              ; preds = %228, %225
  br label %234

232:                                              ; preds = %222
  %233 = call i32 (...) @SCTP_WQ_ADDR_LOCK()
  br label %234

234:                                              ; preds = %232, %231
  br label %235

235:                                              ; preds = %234, %221
  %236 = load i32, i32* %9, align 4
  %237 = load %struct.sctp_timer*, %struct.sctp_timer** %6, align 8
  %238 = getelementptr inbounds %struct.sctp_timer, %struct.sctp_timer* %237, i32 0, i32 2
  store i32 %236, i32* %238, align 8
  %239 = load %struct.sctp_timer*, %struct.sctp_timer** %6, align 8
  %240 = getelementptr inbounds %struct.sctp_timer, %struct.sctp_timer* %239, i32 0, i32 3
  %241 = call i64 @SCTP_OS_TIMER_PENDING(i32* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %235
  br label %729

244:                                              ; preds = %235
  %245 = load %struct.sctp_timer*, %struct.sctp_timer** %6, align 8
  %246 = getelementptr inbounds %struct.sctp_timer, %struct.sctp_timer* %245, i32 0, i32 3
  %247 = call i32 @SCTP_OS_TIMER_ACTIVE(i32* %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %244
  br label %729

250:                                              ; preds = %244
  %251 = load %struct.sctp_timer*, %struct.sctp_timer** %6, align 8
  %252 = getelementptr inbounds %struct.sctp_timer, %struct.sctp_timer* %251, i32 0, i32 3
  %253 = call i32 @SCTP_OS_TIMER_DEACTIVATE(i32* %252)
  %254 = load i32, i32* %9, align 4
  switch i32 %254, label %714 [
    i32 144, label %255
    i32 132, label %257
    i32 138, label %326
    i32 133, label %348
    i32 131, label %371
    i32 139, label %398
    i32 140, label %440
    i32 136, label %467
    i32 135, label %535
    i32 130, label %549
    i32 129, label %576
    i32 128, label %594
    i32 143, label %616
    i32 134, label %638
    i32 141, label %652
    i32 142, label %671
    i32 137, label %696
  ]

255:                                              ; preds = %250
  %256 = call i32 (...) @sctp_handle_addr_wq()
  br label %718

257:                                              ; preds = %250
  %258 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %259 = icmp eq %struct.sctp_tcb* %258, null
  br i1 %259, label %263, label %260

260:                                              ; preds = %257
  %261 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %262 = icmp eq %struct.sctp_inpcb* %261, null
  br i1 %262, label %263, label %264

263:                                              ; preds = %260, %257
  br label %718

264:                                              ; preds = %260
  %265 = load i32, i32* @sctps_timodata, align 4
  %266 = call i32 @SCTP_STAT_INCR(i32 %265)
  %267 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %268 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 11
  %270 = load i32, i32* %269, align 8
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %269, align 8
  %272 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %273 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 10
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %275, -1
  store i32 %276, i32* %274, align 4
  %277 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %278 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 10
  %280 = load i32, i32* %279, align 4
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %282, label %286

282:                                              ; preds = %264
  %283 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %284 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 10
  store i32 0, i32* %285, align 4
  br label %286

286:                                              ; preds = %282, %264
  %287 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %288 = call i32 @SCTP_TCB_LOCK_ASSERT(%struct.sctp_tcb* %287)
  %289 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %290 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %291 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %292 = call i32 @sctp_t3rxt_timer(%struct.sctp_inpcb* %289, %struct.sctp_tcb* %290, %struct.sctp_nets* %291)
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %286
  br label %745

295:                                              ; preds = %286
  %296 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %297 = call i32 @SCTP_TCB_LOCK_ASSERT(%struct.sctp_tcb* %296)
  %298 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %299 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %300 = load i32, i32* @SCTP_OUTPUT_FROM_T3, align 4
  %301 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %302 = call i32 @sctp_chunk_output(%struct.sctp_inpcb* %298, %struct.sctp_tcb* %299, i32 %300, i32 %301)
  %303 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %304 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 10
  %306 = load i32, i32* %305, align 4
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %325

308:                                              ; preds = %295
  %309 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %310 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 9
  %312 = load i32, i32* %311, align 8
  %313 = icmp sgt i32 %312, 0
  br i1 %313, label %314, label %325

314:                                              ; preds = %308
  %315 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %316 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 8
  %318 = call %struct.sctp_tmit_chunk* @TAILQ_FIRST(i32* %317)
  store %struct.sctp_tmit_chunk* %318, %struct.sctp_tmit_chunk** %10, align 8
  %319 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %320 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %321 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %10, align 8
  %322 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %321, i32 0, i32 0
  %323 = load %struct.sctp_nets*, %struct.sctp_nets** %322, align 8
  %324 = call i32 @sctp_timer_start(i32 132, %struct.sctp_inpcb* %319, %struct.sctp_tcb* %320, %struct.sctp_nets* %323)
  br label %325

325:                                              ; preds = %314, %308, %295
  br label %718

326:                                              ; preds = %250
  %327 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %328 = icmp eq %struct.sctp_tcb* %327, null
  br i1 %328, label %332, label %329

329:                                              ; preds = %326
  %330 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %331 = icmp eq %struct.sctp_inpcb* %330, null
  br i1 %331, label %332, label %333

332:                                              ; preds = %329, %326
  br label %718

333:                                              ; preds = %329
  %334 = load i32, i32* @sctps_timoinit, align 4
  %335 = call i32 @SCTP_STAT_INCR(i32 %334)
  %336 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %337 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 7
  %339 = load i32, i32* %338, align 8
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %338, align 8
  %341 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %342 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %343 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %344 = call i32 @sctp_t1init_timer(%struct.sctp_inpcb* %341, %struct.sctp_tcb* %342, %struct.sctp_nets* %343)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %347

346:                                              ; preds = %333
  br label %745

347:                                              ; preds = %333
  store i32 0, i32* %8, align 4
  br label %718

348:                                              ; preds = %250
  %349 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %350 = icmp eq %struct.sctp_tcb* %349, null
  br i1 %350, label %354, label %351

351:                                              ; preds = %348
  %352 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %353 = icmp eq %struct.sctp_inpcb* %352, null
  br i1 %353, label %354, label %355

354:                                              ; preds = %351, %348
  br label %718

355:                                              ; preds = %351
  %356 = load i32, i32* @sctps_timosack, align 4
  %357 = call i32 @SCTP_STAT_INCR(i32 %356)
  %358 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %359 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i32 0, i32 6
  %361 = load i32, i32* %360, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %360, align 4
  %363 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %364 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %365 = call i32 @sctp_send_sack(%struct.sctp_tcb* %363, i32 %364)
  %366 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %367 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %368 = load i32, i32* @SCTP_OUTPUT_FROM_SACK_TMR, align 4
  %369 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %370 = call i32 @sctp_chunk_output(%struct.sctp_inpcb* %366, %struct.sctp_tcb* %367, i32 %368, i32 %369)
  br label %718

371:                                              ; preds = %250
  %372 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %373 = icmp eq %struct.sctp_tcb* %372, null
  br i1 %373, label %377, label %374

374:                                              ; preds = %371
  %375 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %376 = icmp eq %struct.sctp_inpcb* %375, null
  br i1 %376, label %377, label %378

377:                                              ; preds = %374, %371
  br label %718

378:                                              ; preds = %374
  %379 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %380 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %381 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %382 = call i32 @sctp_shutdown_timer(%struct.sctp_inpcb* %379, %struct.sctp_tcb* %380, %struct.sctp_nets* %381)
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %378
  br label %745

385:                                              ; preds = %378
  %386 = load i32, i32* @sctps_timoshutdown, align 4
  %387 = call i32 @SCTP_STAT_INCR(i32 %386)
  %388 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %389 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i32 0, i32 5
  %391 = load i32, i32* %390, align 8
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %390, align 8
  %393 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %394 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %395 = load i32, i32* @SCTP_OUTPUT_FROM_SHUT_TMR, align 4
  %396 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %397 = call i32 @sctp_chunk_output(%struct.sctp_inpcb* %393, %struct.sctp_tcb* %394, i32 %395, i32 %396)
  br label %718

398:                                              ; preds = %250
  %399 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %400 = icmp eq %struct.sctp_tcb* %399, null
  br i1 %400, label %407, label %401

401:                                              ; preds = %398
  %402 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %403 = icmp eq %struct.sctp_inpcb* %402, null
  br i1 %403, label %407, label %404

404:                                              ; preds = %401
  %405 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %406 = icmp eq %struct.sctp_nets* %405, null
  br i1 %406, label %407, label %408

407:                                              ; preds = %404, %401, %398
  br label %718

408:                                              ; preds = %404
  %409 = load i32, i32* @sctps_timoheartbeat, align 4
  %410 = call i32 @SCTP_STAT_INCR(i32 %409)
  %411 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %412 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %412, i32 0, i32 4
  %414 = load i32, i32* %413, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %413, align 4
  %416 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %417 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %418 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %419 = call i32 @sctp_heartbeat_timer(%struct.sctp_inpcb* %416, %struct.sctp_tcb* %417, %struct.sctp_nets* %418)
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %422

421:                                              ; preds = %408
  br label %745

422:                                              ; preds = %408
  %423 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %424 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* @SCTP_ADDR_NOHB, align 4
  %427 = and i32 %425, %426
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %439, label %429

429:                                              ; preds = %422
  %430 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %431 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %432 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %433 = call i32 @sctp_timer_start(i32 139, %struct.sctp_inpcb* %430, %struct.sctp_tcb* %431, %struct.sctp_nets* %432)
  %434 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %435 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %436 = load i32, i32* @SCTP_OUTPUT_FROM_HB_TMR, align 4
  %437 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %438 = call i32 @sctp_chunk_output(%struct.sctp_inpcb* %434, %struct.sctp_tcb* %435, i32 %436, i32 %437)
  br label %439

439:                                              ; preds = %429, %422
  br label %718

440:                                              ; preds = %250
  %441 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %442 = icmp eq %struct.sctp_tcb* %441, null
  br i1 %442, label %446, label %443

443:                                              ; preds = %440
  %444 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %445 = icmp eq %struct.sctp_inpcb* %444, null
  br i1 %445, label %446, label %447

446:                                              ; preds = %443, %440
  br label %718

447:                                              ; preds = %443
  %448 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %449 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %450 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %451 = call i32 @sctp_cookie_timer(%struct.sctp_inpcb* %448, %struct.sctp_tcb* %449, %struct.sctp_nets* %450)
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %454

453:                                              ; preds = %447
  br label %745

454:                                              ; preds = %447
  %455 = load i32, i32* @sctps_timocookie, align 4
  %456 = call i32 @SCTP_STAT_INCR(i32 %455)
  %457 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %458 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %457, i32 0, i32 0
  %459 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %458, i32 0, i32 3
  %460 = load i32, i32* %459, align 8
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %459, align 8
  %462 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %463 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %464 = load i32, i32* @SCTP_OUTPUT_FROM_T3, align 4
  %465 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %466 = call i32 @sctp_chunk_output(%struct.sctp_inpcb* %462, %struct.sctp_tcb* %463, i32 %464, i32 %465)
  br label %718

467:                                              ; preds = %250
  %468 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %469 = icmp eq %struct.sctp_inpcb* %468, null
  br i1 %469, label %470, label %471

470:                                              ; preds = %467
  br label %718

471:                                              ; preds = %467
  %472 = load i32, i32* @sctps_timosecret, align 4
  %473 = call i32 @SCTP_STAT_INCR(i32 %472)
  %474 = call i32 @SCTP_GETTIME_TIMEVAL(%struct.timeval* %11)
  %475 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %476 = load i32, i32* %475, align 4
  %477 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %478 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %478, i32 0, i32 3
  store i32 %476, i32* %479, align 8
  %480 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %481 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %480, i32 0, i32 0
  %482 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %481, i32 0, i32 1
  %483 = load i64, i64* %482, align 8
  %484 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %485 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %485, i32 0, i32 2
  store i64 %483, i64* %486, align 8
  %487 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %488 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %488, i32 0, i32 1
  %490 = load i64, i64* %489, align 8
  %491 = add nsw i64 %490, 1
  store i64 %491, i64* %489, align 8
  %492 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %493 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %492, i32 0, i32 0
  %494 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %493, i32 0, i32 1
  %495 = load i64, i64* %494, align 8
  %496 = load i64, i64* @SCTP_HOW_MANY_SECRETS, align 8
  %497 = icmp sge i64 %495, %496
  br i1 %497, label %498, label %502

498:                                              ; preds = %471
  %499 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %500 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %499, i32 0, i32 0
  %501 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %500, i32 0, i32 1
  store i64 0, i64* %501, align 8
  br label %502

502:                                              ; preds = %498, %471
  %503 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %504 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %503, i32 0, i32 0
  %505 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %504, i32 0, i32 1
  %506 = load i64, i64* %505, align 8
  %507 = trunc i64 %506 to i32
  store i32 %507, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %508

508:                                              ; preds = %527, %502
  %509 = load i32, i32* %12, align 4
  %510 = load i32, i32* @SCTP_NUMBER_OF_SECRETS, align 4
  %511 = icmp slt i32 %509, %510
  br i1 %511, label %512, label %530

512:                                              ; preds = %508
  %513 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %514 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %513, i32 0, i32 0
  %515 = call i32 @sctp_select_initial_TSN(%struct.TYPE_3__* %514)
  %516 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %517 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %516, i32 0, i32 0
  %518 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %517, i32 0, i32 0
  %519 = load i32**, i32*** %518, align 8
  %520 = load i32, i32* %13, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds i32*, i32** %519, i64 %521
  %523 = load i32*, i32** %522, align 8
  %524 = load i32, i32* %12, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i32, i32* %523, i64 %525
  store i32 %515, i32* %526, align 4
  br label %527

527:                                              ; preds = %512
  %528 = load i32, i32* %12, align 4
  %529 = add nsw i32 %528, 1
  store i32 %529, i32* %12, align 4
  br label %508

530:                                              ; preds = %508
  %531 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %532 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %533 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %534 = call i32 @sctp_timer_start(i32 136, %struct.sctp_inpcb* %531, %struct.sctp_tcb* %532, %struct.sctp_nets* %533)
  store i32 0, i32* %8, align 4
  br label %718

535:                                              ; preds = %250
  %536 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %537 = icmp eq %struct.sctp_tcb* %536, null
  br i1 %537, label %541, label %538

538:                                              ; preds = %535
  %539 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %540 = icmp eq %struct.sctp_inpcb* %539, null
  br i1 %540, label %541, label %542

541:                                              ; preds = %538, %535
  br label %718

542:                                              ; preds = %538
  %543 = load i32, i32* @sctps_timopathmtu, align 4
  %544 = call i32 @SCTP_STAT_INCR(i32 %543)
  %545 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %546 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %547 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %548 = call i32 @sctp_pathmtu_timer(%struct.sctp_inpcb* %545, %struct.sctp_tcb* %546, %struct.sctp_nets* %547)
  store i32 0, i32* %8, align 4
  br label %718

549:                                              ; preds = %250
  %550 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %551 = icmp eq %struct.sctp_tcb* %550, null
  br i1 %551, label %555, label %552

552:                                              ; preds = %549
  %553 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %554 = icmp eq %struct.sctp_inpcb* %553, null
  br i1 %554, label %555, label %556

555:                                              ; preds = %552, %549
  br label %718

556:                                              ; preds = %552
  %557 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %558 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %559 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %560 = call i32 @sctp_shutdownack_timer(%struct.sctp_inpcb* %557, %struct.sctp_tcb* %558, %struct.sctp_nets* %559)
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %562, label %563

562:                                              ; preds = %556
  br label %745

563:                                              ; preds = %556
  %564 = load i32, i32* @sctps_timoshutdownack, align 4
  %565 = call i32 @SCTP_STAT_INCR(i32 %564)
  %566 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %567 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %566, i32 0, i32 0
  %568 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %567, i32 0, i32 2
  %569 = load i32, i32* %568, align 4
  %570 = add nsw i32 %569, 1
  store i32 %570, i32* %568, align 4
  %571 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %572 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %573 = load i32, i32* @SCTP_OUTPUT_FROM_SHUT_ACK_TMR, align 4
  %574 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %575 = call i32 @sctp_chunk_output(%struct.sctp_inpcb* %571, %struct.sctp_tcb* %572, i32 %573, i32 %574)
  br label %718

576:                                              ; preds = %250
  %577 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %578 = icmp eq %struct.sctp_tcb* %577, null
  br i1 %578, label %582, label %579

579:                                              ; preds = %576
  %580 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %581 = icmp eq %struct.sctp_inpcb* %580, null
  br i1 %581, label %582, label %583

582:                                              ; preds = %579, %576
  br label %718

583:                                              ; preds = %579
  %584 = load i32, i32* @sctps_timoshutdownguard, align 4
  %585 = call i32 @SCTP_STAT_INCR(i32 %584)
  %586 = load i32, i32* @sctp_diag_info_code, align 4
  %587 = call i32 @SCTP_BASE_SYSCTL(i32 %586)
  %588 = call %struct.mbuf* @sctp_generate_cause(i32 %587, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store %struct.mbuf* %588, %struct.mbuf** %7, align 8
  %589 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %590 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %591 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %592 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %593 = call i32 @sctp_abort_an_association(%struct.sctp_inpcb* %589, %struct.sctp_tcb* %590, %struct.mbuf* %591, i32 %592)
  br label %745

594:                                              ; preds = %250
  %595 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %596 = icmp eq %struct.sctp_tcb* %595, null
  br i1 %596, label %600, label %597

597:                                              ; preds = %594
  %598 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %599 = icmp eq %struct.sctp_inpcb* %598, null
  br i1 %599, label %600, label %601

600:                                              ; preds = %597, %594
  br label %718

601:                                              ; preds = %597
  %602 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %603 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %604 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %605 = call i32 @sctp_strreset_timer(%struct.sctp_inpcb* %602, %struct.sctp_tcb* %603, %struct.sctp_nets* %604)
  %606 = icmp ne i32 %605, 0
  br i1 %606, label %607, label %608

607:                                              ; preds = %601
  br label %745

608:                                              ; preds = %601
  %609 = load i32, i32* @sctps_timostrmrst, align 4
  %610 = call i32 @SCTP_STAT_INCR(i32 %609)
  %611 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %612 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %613 = load i32, i32* @SCTP_OUTPUT_FROM_STRRST_TMR, align 4
  %614 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %615 = call i32 @sctp_chunk_output(%struct.sctp_inpcb* %611, %struct.sctp_tcb* %612, i32 %613, i32 %614)
  br label %718

616:                                              ; preds = %250
  %617 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %618 = icmp eq %struct.sctp_tcb* %617, null
  br i1 %618, label %622, label %619

619:                                              ; preds = %616
  %620 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %621 = icmp eq %struct.sctp_inpcb* %620, null
  br i1 %621, label %622, label %623

622:                                              ; preds = %619, %616
  br label %718

623:                                              ; preds = %619
  %624 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %625 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %626 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %627 = call i32 @sctp_asconf_timer(%struct.sctp_inpcb* %624, %struct.sctp_tcb* %625, %struct.sctp_nets* %626)
  %628 = icmp ne i32 %627, 0
  br i1 %628, label %629, label %630

629:                                              ; preds = %623
  br label %745

630:                                              ; preds = %623
  %631 = load i32, i32* @sctps_timoasconf, align 4
  %632 = call i32 @SCTP_STAT_INCR(i32 %631)
  %633 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %634 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %635 = load i32, i32* @SCTP_OUTPUT_FROM_ASCONF_TMR, align 4
  %636 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %637 = call i32 @sctp_chunk_output(%struct.sctp_inpcb* %633, %struct.sctp_tcb* %634, i32 %635, i32 %636)
  br label %718

638:                                              ; preds = %250
  %639 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %640 = icmp eq %struct.sctp_tcb* %639, null
  br i1 %640, label %644, label %641

641:                                              ; preds = %638
  %642 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %643 = icmp eq %struct.sctp_inpcb* %642, null
  br i1 %643, label %644, label %645

644:                                              ; preds = %641, %638
  br label %718

645:                                              ; preds = %641
  %646 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %647 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %648 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %649 = call i32 @sctp_delete_prim_timer(%struct.sctp_inpcb* %646, %struct.sctp_tcb* %647, %struct.sctp_nets* %648)
  %650 = load i32, i32* @sctps_timodelprim, align 4
  %651 = call i32 @SCTP_STAT_INCR(i32 %650)
  br label %718

652:                                              ; preds = %250
  %653 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %654 = icmp eq %struct.sctp_tcb* %653, null
  br i1 %654, label %658, label %655

655:                                              ; preds = %652
  %656 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %657 = icmp eq %struct.sctp_inpcb* %656, null
  br i1 %657, label %658, label %659

658:                                              ; preds = %655, %652
  br label %718

659:                                              ; preds = %655
  %660 = load i32, i32* @sctps_timoautoclose, align 4
  %661 = call i32 @SCTP_STAT_INCR(i32 %660)
  %662 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %663 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %664 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %665 = call i32 @sctp_autoclose_timer(%struct.sctp_inpcb* %662, %struct.sctp_tcb* %663, %struct.sctp_nets* %664)
  %666 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %667 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %668 = load i32, i32* @SCTP_OUTPUT_FROM_AUTOCLOSE_TMR, align 4
  %669 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %670 = call i32 @sctp_chunk_output(%struct.sctp_inpcb* %666, %struct.sctp_tcb* %667, i32 %668, i32 %669)
  store i32 0, i32* %8, align 4
  br label %718

671:                                              ; preds = %250
  %672 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %673 = icmp eq %struct.sctp_tcb* %672, null
  br i1 %673, label %677, label %674

674:                                              ; preds = %671
  %675 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %676 = icmp eq %struct.sctp_inpcb* %675, null
  br i1 %676, label %677, label %678

677:                                              ; preds = %674, %671
  br label %718

678:                                              ; preds = %674
  %679 = load i32, i32* @sctps_timoassockill, align 4
  %680 = call i32 @SCTP_STAT_INCR(i32 %679)
  %681 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %682 = call i32 @SCTP_INP_DECR_REF(%struct.sctp_inpcb* %681)
  %683 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %684 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %685 = load i64, i64* @SCTP_FROM_SCTPUTIL, align 8
  %686 = load i64, i64* @SCTP_LOC_1, align 8
  %687 = add nsw i64 %685, %686
  %688 = call i32 @sctp_timer_stop(i32 142, %struct.sctp_inpcb* %683, %struct.sctp_tcb* %684, i32* null, i64 %687)
  %689 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %690 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %691 = load i32, i32* @SCTP_NORMAL_PROC, align 4
  %692 = load i64, i64* @SCTP_FROM_SCTPUTIL, align 8
  %693 = load i64, i64* @SCTP_LOC_2, align 8
  %694 = add nsw i64 %692, %693
  %695 = call i32 @sctp_free_assoc(%struct.sctp_inpcb* %689, %struct.sctp_tcb* %690, i32 %691, i64 %694)
  store %struct.sctp_tcb* null, %struct.sctp_tcb** %4, align 8
  br label %752

696:                                              ; preds = %250
  %697 = load i32, i32* @sctps_timoinpkill, align 4
  %698 = call i32 @SCTP_STAT_INCR(i32 %697)
  %699 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %700 = icmp eq %struct.sctp_inpcb* %699, null
  br i1 %700, label %701, label %702

701:                                              ; preds = %696
  br label %718

702:                                              ; preds = %696
  %703 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %704 = call i32 @SCTP_INP_DECR_REF(%struct.sctp_inpcb* %703)
  %705 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %706 = load i64, i64* @SCTP_FROM_SCTPUTIL, align 8
  %707 = load i64, i64* @SCTP_LOC_3, align 8
  %708 = add nsw i64 %706, %707
  %709 = call i32 @sctp_timer_stop(i32 137, %struct.sctp_inpcb* %705, %struct.sctp_tcb* null, i32* null, i64 %708)
  %710 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %711 = load i32, i32* @SCTP_FREE_SHOULD_USE_ABORT, align 4
  %712 = load i32, i32* @SCTP_CALLED_FROM_INPKILL_TIMER, align 4
  %713 = call i32 @sctp_inpcb_free(%struct.sctp_inpcb* %710, i32 %711, i32 %712)
  store %struct.sctp_inpcb* null, %struct.sctp_inpcb** %3, align 8
  br label %752

714:                                              ; preds = %250
  %715 = load i32, i32* @SCTP_DEBUG_TIMER1, align 4
  %716 = load i32, i32* %9, align 4
  %717 = call i32 @SCTPDBG(i32 %715, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %716)
  br label %718

718:                                              ; preds = %714, %701, %677, %659, %658, %645, %644, %630, %622, %608, %600, %582, %563, %555, %542, %541, %530, %470, %454, %446, %439, %407, %385, %377, %355, %354, %347, %332, %325, %263, %255
  %719 = load i32, i32* %8, align 4
  %720 = icmp ne i32 %719, 0
  br i1 %720, label %721, label %728

721:                                              ; preds = %718
  %722 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %723 = icmp ne %struct.sctp_tcb* %722, null
  br i1 %723, label %724, label %728

724:                                              ; preds = %721
  %725 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %726 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %725, i32 0, i32 0
  %727 = call i32 @sctp_fix_ecn_echo(%struct.TYPE_4__* %726)
  br label %728

728:                                              ; preds = %724, %721, %718
  br label %729

729:                                              ; preds = %728, %249, %243
  %730 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %731 = icmp ne %struct.sctp_tcb* %730, null
  br i1 %731, label %732, label %735

732:                                              ; preds = %729
  %733 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %734 = call i32 @SCTP_TCB_UNLOCK(%struct.sctp_tcb* %733)
  br label %744

735:                                              ; preds = %729
  %736 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %737 = icmp ne %struct.sctp_inpcb* %736, null
  br i1 %737, label %738, label %741

738:                                              ; preds = %735
  %739 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %740 = call i32 @SCTP_INP_WUNLOCK(%struct.sctp_inpcb* %739)
  br label %743

741:                                              ; preds = %735
  %742 = call i32 (...) @SCTP_WQ_ADDR_UNLOCK()
  br label %743

743:                                              ; preds = %741, %738
  br label %744

744:                                              ; preds = %743, %732
  br label %745

745:                                              ; preds = %744, %629, %607, %583, %562, %453, %421, %384, %346, %294
  %746 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %747 = icmp ne %struct.sctp_inpcb* %746, null
  br i1 %747, label %748, label %751

748:                                              ; preds = %745
  %749 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %3, align 8
  %750 = call i32 @SCTP_INP_DECR_REF(%struct.sctp_inpcb* %749)
  br label %751

751:                                              ; preds = %748, %745
  br label %752

752:                                              ; preds = %751, %702, %678
  %753 = load i32, i32* @SCTP_DEBUG_TIMER1, align 4
  %754 = load i32, i32* %9, align 4
  %755 = call i32 @SCTPDBG(i32 %753, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %754)
  %756 = call i32 (...) @CURVNET_RESTORE()
  br label %757

757:                                              ; preds = %752, %219, %180, %150, %120, %61, %49, %39
  ret void
}

declare dso_local i32 @CURVNET_SET(%struct.vnet*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

declare dso_local i32 @SCTP_IS_TIMER_TYPE_VALID(i32) #1

declare dso_local i32 @SCTP_INP_INCR_REF(%struct.sctp_inpcb*) #1

declare dso_local i32 @SCTP_INP_DECR_REF(%struct.sctp_inpcb*) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @SCTPDBG(i32, i8*, i32) #1

declare dso_local i32 @SCTP_OS_TIMER_ACTIVE(i32*) #1

declare dso_local i32 @SCTP_TCB_LOCK(%struct.sctp_tcb*) #1

declare dso_local i32 @SCTP_TCB_UNLOCK(%struct.sctp_tcb*) #1

declare dso_local i32 @SCTP_INP_WLOCK(%struct.sctp_inpcb*) #1

declare dso_local i32 @SCTP_WQ_ADDR_LOCK(...) #1

declare dso_local i64 @SCTP_OS_TIMER_PENDING(i32*) #1

declare dso_local i32 @SCTP_OS_TIMER_DEACTIVATE(i32*) #1

declare dso_local i32 @sctp_handle_addr_wq(...) #1

declare dso_local i32 @SCTP_STAT_INCR(i32) #1

declare dso_local i32 @SCTP_TCB_LOCK_ASSERT(%struct.sctp_tcb*) #1

declare dso_local i32 @sctp_t3rxt_timer(%struct.sctp_inpcb*, %struct.sctp_tcb*, %struct.sctp_nets*) #1

declare dso_local i32 @sctp_chunk_output(%struct.sctp_inpcb*, %struct.sctp_tcb*, i32, i32) #1

declare dso_local %struct.sctp_tmit_chunk* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @sctp_timer_start(i32, %struct.sctp_inpcb*, %struct.sctp_tcb*, %struct.sctp_nets*) #1

declare dso_local i32 @sctp_t1init_timer(%struct.sctp_inpcb*, %struct.sctp_tcb*, %struct.sctp_nets*) #1

declare dso_local i32 @sctp_send_sack(%struct.sctp_tcb*, i32) #1

declare dso_local i32 @sctp_shutdown_timer(%struct.sctp_inpcb*, %struct.sctp_tcb*, %struct.sctp_nets*) #1

declare dso_local i32 @sctp_heartbeat_timer(%struct.sctp_inpcb*, %struct.sctp_tcb*, %struct.sctp_nets*) #1

declare dso_local i32 @sctp_cookie_timer(%struct.sctp_inpcb*, %struct.sctp_tcb*, %struct.sctp_nets*) #1

declare dso_local i32 @SCTP_GETTIME_TIMEVAL(%struct.timeval*) #1

declare dso_local i32 @sctp_select_initial_TSN(%struct.TYPE_3__*) #1

declare dso_local i32 @sctp_pathmtu_timer(%struct.sctp_inpcb*, %struct.sctp_tcb*, %struct.sctp_nets*) #1

declare dso_local i32 @sctp_shutdownack_timer(%struct.sctp_inpcb*, %struct.sctp_tcb*, %struct.sctp_nets*) #1

declare dso_local %struct.mbuf* @sctp_generate_cause(i32, i8*) #1

declare dso_local i32 @SCTP_BASE_SYSCTL(i32) #1

declare dso_local i32 @sctp_abort_an_association(%struct.sctp_inpcb*, %struct.sctp_tcb*, %struct.mbuf*, i32) #1

declare dso_local i32 @sctp_strreset_timer(%struct.sctp_inpcb*, %struct.sctp_tcb*, %struct.sctp_nets*) #1

declare dso_local i32 @sctp_asconf_timer(%struct.sctp_inpcb*, %struct.sctp_tcb*, %struct.sctp_nets*) #1

declare dso_local i32 @sctp_delete_prim_timer(%struct.sctp_inpcb*, %struct.sctp_tcb*, %struct.sctp_nets*) #1

declare dso_local i32 @sctp_autoclose_timer(%struct.sctp_inpcb*, %struct.sctp_tcb*, %struct.sctp_nets*) #1

declare dso_local i32 @sctp_timer_stop(i32, %struct.sctp_inpcb*, %struct.sctp_tcb*, i32*, i64) #1

declare dso_local i32 @sctp_free_assoc(%struct.sctp_inpcb*, %struct.sctp_tcb*, i32, i64) #1

declare dso_local i32 @sctp_inpcb_free(%struct.sctp_inpcb*, i32, i32) #1

declare dso_local i32 @sctp_fix_ecn_echo(%struct.TYPE_4__*) #1

declare dso_local i32 @SCTP_INP_WUNLOCK(%struct.sctp_inpcb*) #1

declare dso_local i32 @SCTP_WQ_ADDR_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
