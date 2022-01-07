; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_set_sockopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_set_sockopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockopt = type { i32 }
%struct.inpcb = type { i32 }
%struct.tcpcb = type { i32, i32, i64 }
%struct.tcp_rack = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@INP_TIMEWAIT = common dso_local global i32 0, align 4
@INP_DROPPED = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@tcp_rack_no_sack = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@tcp_rack_prop_rate = common dso_local global i32 0, align 4
@TLP_USE_ID = common dso_local global i32 0, align 4
@TLP_USE_TWO_TWO = common dso_local global i32 0, align 4
@tcp_tlp_use = common dso_local global i32 0, align 4
@tcp_rack_prop = common dso_local global i32 0, align 4
@tcp_rack_tlp_reduce = common dso_local global i32 0, align 4
@tcp_rack_early_recov = common dso_local global i32 0, align 4
@tcp_rack_pace_always = common dso_local global i32 0, align 4
@tcp_rack_pace_reduce = common dso_local global i32 0, align 4
@tcp_rack_max_seg = common dso_local global i32 0, align 4
@tcp_rack_prr_sendalot = common dso_local global i32 0, align 4
@tcp_rack_min_to = common dso_local global i32 0, align 4
@tcp_rack_early_seg = common dso_local global i32 0, align 4
@tcp_rack_reord_thresh = common dso_local global i32 0, align 4
@tcp_rack_reord_fade = common dso_local global i32 0, align 4
@tcp_rack_tlp_thresh = common dso_local global i32 0, align 4
@tcp_rack_cheat = common dso_local global i32 0, align 4
@tcp_rack_pkt_delay = common dso_local global i32 0, align 4
@TF_DELACK = common dso_local global i32 0, align 4
@TF_ACKNOW = common dso_local global i32 0, align 4
@tcp_rack_min_pace = common dso_local global i32 0, align 4
@USE_RTT_HIGH = common dso_local global i32 0, align 4
@USE_RTT_LOW = common dso_local global i32 0, align 4
@USE_RTT_AVG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockopt*, %struct.inpcb*, %struct.tcpcb*, %struct.tcp_rack*)* @rack_set_sockopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rack_set_sockopt(%struct.socket* %0, %struct.sockopt* %1, %struct.inpcb* %2, %struct.tcpcb* %3, %struct.tcp_rack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.sockopt*, align 8
  %9 = alloca %struct.inpcb*, align 8
  %10 = alloca %struct.tcpcb*, align 8
  %11 = alloca %struct.tcp_rack*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %7, align 8
  store %struct.sockopt* %1, %struct.sockopt** %8, align 8
  store %struct.inpcb* %2, %struct.inpcb** %9, align 8
  store %struct.tcpcb* %3, %struct.tcpcb** %10, align 8
  store %struct.tcp_rack* %4, %struct.tcp_rack** %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.sockopt*, %struct.sockopt** %8, align 8
  %15 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %18 [
    i32 135, label %17
    i32 136, label %17
    i32 130, label %17
    i32 146, label %17
    i32 140, label %17
    i32 148, label %17
    i32 138, label %17
    i32 139, label %17
    i32 134, label %17
    i32 141, label %17
    i32 145, label %17
    i32 132, label %17
    i32 133, label %17
    i32 129, label %17
    i32 137, label %17
    i32 128, label %17
    i32 131, label %17
    i32 143, label %17
    i32 142, label %17
    i32 144, label %17
    i32 151, label %17
    i32 150, label %17
    i32 147, label %17
    i32 149, label %17
  ]

17:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5
  br label %24

18:                                               ; preds = %5
  %19 = load %struct.socket*, %struct.socket** %7, align 8
  %20 = load %struct.sockopt*, %struct.sockopt** %8, align 8
  %21 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %22 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %23 = call i32 @tcp_default_ctloutput(%struct.socket* %19, %struct.sockopt* %20, %struct.inpcb* %21, %struct.tcpcb* %22)
  store i32 %23, i32* %6, align 4
  br label %332

24:                                               ; preds = %17
  %25 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %26 = call i32 @INP_WUNLOCK(%struct.inpcb* %25)
  %27 = load %struct.sockopt*, %struct.sockopt** %8, align 8
  %28 = call i32 @sooptcopyin(%struct.sockopt* %27, i32* %13, i32 4, i32 4)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %6, align 4
  br label %332

33:                                               ; preds = %24
  %34 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %35 = call i32 @INP_WLOCK(%struct.inpcb* %34)
  %36 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %37 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @INP_TIMEWAIT, align 4
  %40 = load i32, i32* @INP_DROPPED, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %46 = call i32 @INP_WUNLOCK(%struct.inpcb* %45)
  %47 = load i32, i32* @ECONNRESET, align 4
  store i32 %47, i32* %6, align 4
  br label %332

48:                                               ; preds = %33
  %49 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %50 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %49)
  store %struct.tcpcb* %50, %struct.tcpcb** %10, align 8
  %51 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %52 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.tcp_rack*
  store %struct.tcp_rack* %54, %struct.tcp_rack** %11, align 8
  %55 = load %struct.sockopt*, %struct.sockopt** %8, align 8
  %56 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %322 [
    i32 147, label %58
    i32 135, label %70
    i32 128, label %85
    i32 136, label %101
    i32 130, label %108
    i32 146, label %115
    i32 140, label %122
    i32 138, label %134
    i32 139, label %146
    i32 134, label %155
    i32 141, label %162
    i32 145, label %169
    i32 132, label %176
    i32 133, label %192
    i32 129, label %199
    i32 150, label %212
    i32 137, label %224
    i32 131, label %231
    i32 143, label %233
    i32 148, label %235
    i32 142, label %266
    i32 144, label %279
    i32 151, label %292
    i32 149, label %312
  ]

58:                                               ; preds = %48
  %59 = load i32, i32* @tcp_rack_no_sack, align 4
  %60 = call i32 @RACK_OPTS_INC(i32 %59)
  %61 = load i32, i32* %13, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %65 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %64, i32 0, i32 0
  store i32 0, i32* %65, align 4
  br label %69

66:                                               ; preds = %58
  %67 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %68 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %67, i32 0, i32 0
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %63
  br label %328

70:                                               ; preds = %48
  %71 = load i32, i32* %13, align 4
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %13, align 4
  %75 = icmp sge i32 %74, 100
  br i1 %75, label %76, label %78

76:                                               ; preds = %73, %70
  %77 = load i32, i32* @EINVAL, align 4
  store i32 %77, i32* %12, align 4
  br label %328

78:                                               ; preds = %73
  %79 = load i32, i32* @tcp_rack_prop_rate, align 4
  %80 = call i32 @RACK_OPTS_INC(i32 %79)
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %83 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %82, i32 0, i32 9
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 4
  br label %328

85:                                               ; preds = %48
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @TLP_USE_ID, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @TLP_USE_TWO_TWO, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89, %85
  %94 = load i32, i32* @EINVAL, align 4
  store i32 %94, i32* %12, align 4
  br label %328

95:                                               ; preds = %89
  %96 = load i32, i32* @tcp_tlp_use, align 4
  %97 = call i32 @RACK_OPTS_INC(i32 %96)
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %100 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %328

101:                                              ; preds = %48
  %102 = load i32, i32* @tcp_rack_prop, align 4
  %103 = call i32 @RACK_OPTS_INC(i32 %102)
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %106 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %105, i32 0, i32 9
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  store i32 %104, i32* %107, align 4
  br label %328

108:                                              ; preds = %48
  %109 = load i32, i32* @tcp_rack_tlp_reduce, align 4
  %110 = call i32 @RACK_OPTS_INC(i32 %109)
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %113 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %112, i32 0, i32 9
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  store i32 %111, i32* %114, align 4
  br label %328

115:                                              ; preds = %48
  %116 = load i32, i32* @tcp_rack_early_recov, align 4
  %117 = call i32 @RACK_OPTS_INC(i32 %116)
  %118 = load i32, i32* %13, align 4
  %119 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %120 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %119, i32 0, i32 9
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 3
  store i32 %118, i32* %121, align 4
  br label %328

122:                                              ; preds = %48
  %123 = load i32, i32* @tcp_rack_pace_always, align 4
  %124 = call i32 @RACK_OPTS_INC(i32 %123)
  %125 = load i32, i32* %13, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %129 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %128, i32 0, i32 2
  store i32 1, i32* %129, align 4
  br label %133

130:                                              ; preds = %122
  %131 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %132 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %131, i32 0, i32 2
  store i32 0, i32* %132, align 4
  br label %133

133:                                              ; preds = %130, %127
  br label %328

134:                                              ; preds = %48
  %135 = load i32, i32* @tcp_rack_pace_reduce, align 4
  %136 = call i32 @RACK_OPTS_INC(i32 %135)
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load i32, i32* %13, align 4
  %141 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %142 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 4
  br label %145

143:                                              ; preds = %134
  %144 = load i32, i32* @EINVAL, align 4
  store i32 %144, i32* %12, align 4
  br label %145

145:                                              ; preds = %143, %139
  br label %328

146:                                              ; preds = %48
  %147 = load i32, i32* @tcp_rack_max_seg, align 4
  %148 = call i32 @RACK_OPTS_INC(i32 %147)
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %151 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %150, i32 0, i32 4
  store i32 %149, i32* %151, align 4
  %152 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %153 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %154 = call i32 @rack_set_pace_segments(%struct.tcpcb* %152, %struct.tcp_rack* %153)
  br label %328

155:                                              ; preds = %48
  %156 = load i32, i32* @tcp_rack_prr_sendalot, align 4
  %157 = call i32 @RACK_OPTS_INC(i32 %156)
  %158 = load i32, i32* %13, align 4
  %159 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %160 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %159, i32 0, i32 9
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 4
  store i32 %158, i32* %161, align 4
  br label %328

162:                                              ; preds = %48
  %163 = load i32, i32* @tcp_rack_min_to, align 4
  %164 = call i32 @RACK_OPTS_INC(i32 %163)
  %165 = load i32, i32* %13, align 4
  %166 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %167 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %166, i32 0, i32 9
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 5
  store i32 %165, i32* %168, align 4
  br label %328

169:                                              ; preds = %48
  %170 = load i32, i32* @tcp_rack_early_seg, align 4
  %171 = call i32 @RACK_OPTS_INC(i32 %170)
  %172 = load i32, i32* %13, align 4
  %173 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %174 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %173, i32 0, i32 9
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 6
  store i32 %172, i32* %175, align 4
  br label %328

176:                                              ; preds = %48
  %177 = load i32, i32* @tcp_rack_reord_thresh, align 4
  %178 = call i32 @RACK_OPTS_INC(i32 %177)
  %179 = load i32, i32* %13, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %176
  %182 = load i32, i32* %13, align 4
  %183 = icmp slt i32 %182, 31
  br i1 %183, label %184, label %189

184:                                              ; preds = %181
  %185 = load i32, i32* %13, align 4
  %186 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %187 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %186, i32 0, i32 9
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 7
  store i32 %185, i32* %188, align 4
  br label %191

189:                                              ; preds = %181, %176
  %190 = load i32, i32* @EINVAL, align 4
  store i32 %190, i32* %12, align 4
  br label %191

191:                                              ; preds = %189, %184
  br label %328

192:                                              ; preds = %48
  %193 = load i32, i32* @tcp_rack_reord_fade, align 4
  %194 = call i32 @RACK_OPTS_INC(i32 %193)
  %195 = load i32, i32* %13, align 4
  %196 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %197 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %196, i32 0, i32 9
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 8
  store i32 %195, i32* %198, align 4
  br label %328

199:                                              ; preds = %48
  %200 = load i32, i32* @tcp_rack_tlp_thresh, align 4
  %201 = call i32 @RACK_OPTS_INC(i32 %200)
  %202 = load i32, i32* %13, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %199
  %205 = load i32, i32* %13, align 4
  %206 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %207 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %206, i32 0, i32 9
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 9
  store i32 %205, i32* %208, align 4
  br label %211

209:                                              ; preds = %199
  %210 = load i32, i32* @EINVAL, align 4
  store i32 %210, i32* %12, align 4
  br label %211

211:                                              ; preds = %209, %204
  br label %328

212:                                              ; preds = %48
  %213 = load i32, i32* @tcp_rack_cheat, align 4
  %214 = call i32 @RACK_OPTS_INC(i32 %213)
  %215 = load i32, i32* %13, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %212
  %218 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %219 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %218, i32 0, i32 5
  store i32 1, i32* %219, align 4
  br label %223

220:                                              ; preds = %212
  %221 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %222 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %221, i32 0, i32 5
  store i32 0, i32* %222, align 4
  br label %223

223:                                              ; preds = %220, %217
  br label %328

224:                                              ; preds = %48
  %225 = load i32, i32* @tcp_rack_pkt_delay, align 4
  %226 = call i32 @RACK_OPTS_INC(i32 %225)
  %227 = load i32, i32* %13, align 4
  %228 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %229 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %228, i32 0, i32 9
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 10
  store i32 %227, i32* %230, align 4
  br label %328

231:                                              ; preds = %48
  %232 = load i32, i32* @EINVAL, align 4
  store i32 %232, i32* %12, align 4
  br label %328

233:                                              ; preds = %48
  %234 = load i32, i32* @EINVAL, align 4
  store i32 %234, i32* %12, align 4
  br label %328

235:                                              ; preds = %48
  %236 = load i32, i32* %13, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %235
  %239 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %240 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %239, i32 0, i32 0
  store i32 0, i32* %240, align 8
  br label %244

241:                                              ; preds = %235
  %242 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %243 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %242, i32 0, i32 0
  store i32 1, i32* %243, align 8
  br label %244

244:                                              ; preds = %241, %238
  %245 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %246 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @TF_DELACK, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %265

251:                                              ; preds = %244
  %252 = load i32, i32* @TF_DELACK, align 4
  %253 = xor i32 %252, -1
  %254 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %255 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = and i32 %256, %253
  store i32 %257, i32* %255, align 4
  %258 = load i32, i32* @TF_ACKNOW, align 4
  %259 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %260 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = or i32 %261, %258
  store i32 %262, i32* %260, align 4
  %263 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %264 = call i32 @rack_output(%struct.tcpcb* %263)
  br label %265

265:                                              ; preds = %251, %244
  br label %328

266:                                              ; preds = %48
  %267 = load i32, i32* @tcp_rack_min_pace, align 4
  %268 = call i32 @RACK_OPTS_INC(i32 %267)
  %269 = load i32, i32* %13, align 4
  %270 = icmp sgt i32 %269, 3
  br i1 %270, label %271, label %274

271:                                              ; preds = %266
  %272 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %273 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %272, i32 0, i32 6
  store i32 3, i32* %273, align 4
  br label %278

274:                                              ; preds = %266
  %275 = load i32, i32* %13, align 4
  %276 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %277 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %276, i32 0, i32 6
  store i32 %275, i32* %277, align 4
  br label %278

278:                                              ; preds = %274, %271
  br label %328

279:                                              ; preds = %48
  %280 = load i32, i32* %13, align 4
  %281 = icmp sge i32 %280, 0
  br i1 %281, label %282, label %289

282:                                              ; preds = %279
  %283 = load i32, i32* %13, align 4
  %284 = icmp sle i32 %283, 256
  br i1 %284, label %285, label %289

285:                                              ; preds = %282
  %286 = load i32, i32* %13, align 4
  %287 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %288 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %287, i32 0, i32 7
  store i32 %286, i32* %288, align 4
  br label %291

289:                                              ; preds = %282, %279
  %290 = load i32, i32* @EINVAL, align 4
  store i32 %290, i32* %12, align 4
  br label %291

291:                                              ; preds = %289, %285
  br label %328

292:                                              ; preds = %48
  %293 = load i32, i32* %13, align 4
  %294 = load i32, i32* @USE_RTT_HIGH, align 4
  %295 = icmp ne i32 %293, %294
  br i1 %295, label %296, label %306

296:                                              ; preds = %292
  %297 = load i32, i32* %13, align 4
  %298 = load i32, i32* @USE_RTT_LOW, align 4
  %299 = icmp ne i32 %297, %298
  br i1 %299, label %300, label %306

300:                                              ; preds = %296
  %301 = load i32, i32* %13, align 4
  %302 = load i32, i32* @USE_RTT_AVG, align 4
  %303 = icmp ne i32 %301, %302
  br i1 %303, label %304, label %306

304:                                              ; preds = %300
  %305 = load i32, i32* @EINVAL, align 4
  store i32 %305, i32* %12, align 4
  br label %311

306:                                              ; preds = %300, %296, %292
  %307 = load i32, i32* %13, align 4
  %308 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %309 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %308, i32 0, i32 9
  %310 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %309, i32 0, i32 11
  store i32 %307, i32* %310, align 4
  br label %311

311:                                              ; preds = %306, %304
  br label %328

312:                                              ; preds = %48
  %313 = load i32, i32* %13, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %312
  %316 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %317 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %316, i32 0, i32 8
  store i32 1, i32* %317, align 4
  br label %321

318:                                              ; preds = %312
  %319 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %320 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %319, i32 0, i32 8
  store i32 0, i32* %320, align 4
  br label %321

321:                                              ; preds = %318, %315
  br label %328

322:                                              ; preds = %48
  %323 = load %struct.socket*, %struct.socket** %7, align 8
  %324 = load %struct.sockopt*, %struct.sockopt** %8, align 8
  %325 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %326 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %327 = call i32 @tcp_default_ctloutput(%struct.socket* %323, %struct.sockopt* %324, %struct.inpcb* %325, %struct.tcpcb* %326)
  store i32 %327, i32* %6, align 4
  br label %332

328:                                              ; preds = %321, %311, %291, %278, %265, %233, %231, %224, %223, %211, %192, %191, %169, %162, %155, %146, %145, %133, %115, %108, %101, %95, %93, %78, %76, %69
  %329 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %330 = call i32 @INP_WUNLOCK(%struct.inpcb* %329)
  %331 = load i32, i32* %12, align 4
  store i32 %331, i32* %6, align 4
  br label %332

332:                                              ; preds = %328, %322, %44, %31, %18
  %333 = load i32, i32* %6, align 4
  ret i32 %333
}

declare dso_local i32 @tcp_default_ctloutput(%struct.socket*, %struct.sockopt*, %struct.inpcb*, %struct.tcpcb*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

declare dso_local i32 @sooptcopyin(%struct.sockopt*, i32*, i32, i32) #1

declare dso_local i32 @INP_WLOCK(%struct.inpcb*) #1

declare dso_local %struct.tcpcb* @intotcpcb(%struct.inpcb*) #1

declare dso_local i32 @RACK_OPTS_INC(i32) #1

declare dso_local i32 @rack_set_pace_segments(%struct.tcpcb*, %struct.tcp_rack*) #1

declare dso_local i32 @rack_output(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
