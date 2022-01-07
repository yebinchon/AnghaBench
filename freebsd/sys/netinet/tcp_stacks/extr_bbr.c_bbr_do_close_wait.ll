; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_do_close_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_do_close_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.tcphdr = type { i32 }
%struct.socket = type { i32 }
%struct.tcpcb = type { i32, i32, i64, i32, i32, i64, i64 }
%struct.tcpopt = type { i32, i64 }
%struct.tcp_bbr = type { i32, i32 }

@TH_RST = common dso_local global i32 0, align 4
@TH_FIN = common dso_local global i32 0, align 4
@TH_SYN = common dso_local global i32 0, align 4
@TOF_TS = common dso_local global i32 0, align 4
@TH_ACK = common dso_local global i32 0, align 4
@TF_NEEDSYN = common dso_local global i32 0, align 4
@TF_ACKNOW = common dso_local global i32 0, align 4
@BANDLIM_RST_OPENPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*, %struct.tcpopt*, i32, i32, i32, i32, i32)* @bbr_do_close_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbr_do_close_wait(%struct.mbuf* %0, %struct.tcphdr* %1, %struct.socket* %2, %struct.tcpcb* %3, %struct.tcpopt* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca %struct.tcphdr*, align 8
  %14 = alloca %struct.socket*, align 8
  %15 = alloca %struct.tcpcb*, align 8
  %16 = alloca %struct.tcpopt*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.tcp_bbr*, align 8
  %23 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %12, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %13, align 8
  store %struct.socket* %2, %struct.socket** %14, align 8
  store %struct.tcpcb* %3, %struct.tcpcb** %15, align 8
  store %struct.tcpopt* %4, %struct.tcpopt** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %24 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %25 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.tcp_bbr*
  store %struct.tcp_bbr* %27, %struct.tcp_bbr** %22, align 8
  %28 = load %struct.socket*, %struct.socket** %14, align 8
  %29 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %30 = call i32 @ctf_calc_rwin(%struct.socket* %28, %struct.tcpcb* %29)
  %31 = load i32, i32* %20, align 4
  %32 = load i32, i32* @TH_RST, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %10
  %36 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %37 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load i32, i32* %20, align 4
  %42 = load i32, i32* @TH_FIN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40, %10
  %46 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %47 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %48 = load %struct.socket*, %struct.socket** %14, align 8
  %49 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %50 = call i32 @ctf_process_rst(%struct.mbuf* %46, %struct.tcphdr* %47, %struct.socket* %48, %struct.tcpcb* %49)
  store i32 %50, i32* %11, align 4
  br label %237

51:                                               ; preds = %40, %35
  %52 = load i32, i32* %20, align 4
  %53 = load i32, i32* @TH_SYN, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %58 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %59 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %60 = call i32 @ctf_challenge_ack(%struct.mbuf* %57, %struct.tcphdr* %58, %struct.tcpcb* %59, i32* %23)
  %61 = load i32, i32* %23, align 4
  store i32 %61, i32* %11, align 4
  br label %237

62:                                               ; preds = %51
  %63 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %64 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @TOF_TS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %94

69:                                               ; preds = %62
  %70 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %71 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %69
  %75 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %76 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %79 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @TSTMP_LT(i64 %77, i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %74
  %84 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %85 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %86 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %20, align 4
  %89 = call i64 @ctf_ts_check(%struct.mbuf* %84, %struct.tcphdr* %85, %struct.tcpcb* %86, i32 %87, i32 %88, i32* %23)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* %23, align 4
  store i32 %92, i32* %11, align 4
  br label %237

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93, %74, %69, %62
  %95 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %96 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @INP_WLOCK_ASSERT(i32 %97)
  %99 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %100 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %101 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %102 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %103 = call i64 @ctf_drop_checks(%struct.tcpopt* %99, %struct.mbuf* %100, %struct.tcphdr* %101, %struct.tcpcb* %102, i32* %18, i32* %20, i32* %17, i32* %23)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %94
  %106 = load i32, i32* %23, align 4
  store i32 %106, i32* %11, align 4
  br label %237

107:                                              ; preds = %94
  %108 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %109 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @TOF_TS, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %153

114:                                              ; preds = %107
  %115 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %116 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %119 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @SEQ_LEQ(i32 %117, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %153

123:                                              ; preds = %114
  %124 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %125 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %128 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %18, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32, i32* %20, align 4
  %133 = load i32, i32* @TH_SYN, align 4
  %134 = load i32, i32* @TH_FIN, align 4
  %135 = or i32 %133, %134
  %136 = and i32 %132, %135
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i32
  %139 = add nsw i32 %131, %138
  %140 = call i64 @SEQ_LEQ(i32 %126, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %153

142:                                              ; preds = %123
  %143 = load %struct.tcp_bbr*, %struct.tcp_bbr** %22, align 8
  %144 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %143, i32 0, i32 1
  %145 = call i32 @tcp_tv_to_mssectick(i32* %144)
  %146 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %147 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 8
  %148 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %149 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %152 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %151, i32 0, i32 2
  store i64 %150, i64* %152, align 8
  br label %153

153:                                              ; preds = %142, %123, %114, %107
  %154 = load i32, i32* %20, align 4
  %155 = load i32, i32* @TH_ACK, align 4
  %156 = and i32 %154, %155
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %196

158:                                              ; preds = %153
  %159 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %160 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @TF_NEEDSYN, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %176

165:                                              ; preds = %158
  %166 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %167 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %168 = load %struct.socket*, %struct.socket** %14, align 8
  %169 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %170 = load i32, i32* %17, align 4
  %171 = load i32, i32* %18, align 4
  %172 = load i32, i32* %19, align 4
  %173 = load i32, i32* %20, align 4
  %174 = load i32, i32* %21, align 4
  %175 = call i32 @bbr_process_data(%struct.mbuf* %166, %struct.tcphdr* %167, %struct.socket* %168, %struct.tcpcb* %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174)
  store i32 %175, i32* %11, align 4
  br label %237

176:                                              ; preds = %158
  %177 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %178 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @TF_ACKNOW, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %176
  %184 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %185 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %186 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %187 = load i32, i32* %20, align 4
  %188 = load i32, i32* %18, align 4
  %189 = call i32 @ctf_do_dropafterack(%struct.mbuf* %184, %struct.tcpcb* %185, %struct.tcphdr* %186, i32 %187, i32 %188, i32* %23)
  %190 = load %struct.tcp_bbr*, %struct.tcp_bbr** %22, align 8
  %191 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %190, i32 0, i32 0
  store i32 1, i32* %191, align 4
  %192 = load i32, i32* %23, align 4
  store i32 %192, i32* %11, align 4
  br label %237

193:                                              ; preds = %176
  %194 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %195 = call i32 @ctf_do_drop(%struct.mbuf* %194, i32* null)
  store i32 0, i32* %11, align 4
  br label %237

196:                                              ; preds = %153
  %197 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %198 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %199 = load %struct.socket*, %struct.socket** %14, align 8
  %200 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %201 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %202 = load i32, i32* %19, align 4
  %203 = load i32, i32* %18, align 4
  %204 = load i32, i32* %20, align 4
  %205 = call i64 @bbr_process_ack(%struct.mbuf* %197, %struct.tcphdr* %198, %struct.socket* %199, %struct.tcpcb* %200, %struct.tcpopt* %201, i32 %202, i32 %203, i32* null, i32 %204, i32* %23)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %196
  %208 = load i32, i32* %23, align 4
  store i32 %208, i32* %11, align 4
  br label %237

209:                                              ; preds = %196
  %210 = load %struct.socket*, %struct.socket** %14, align 8
  %211 = getelementptr inbounds %struct.socket, %struct.socket* %210, i32 0, i32 0
  %212 = call i64 @sbavail(i32* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %226

214:                                              ; preds = %209
  %215 = load %struct.tcp_bbr*, %struct.tcp_bbr** %22, align 8
  %216 = call i64 @bbr_progress_timeout_check(%struct.tcp_bbr* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %214
  %219 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %220 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %221 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %222 = load i32, i32* @BANDLIM_RST_OPENPORT, align 4
  %223 = load i32, i32* %18, align 4
  %224 = call i32 @ctf_do_dropwithreset_conn(%struct.mbuf* %219, %struct.tcpcb* %220, %struct.tcphdr* %221, i32 %222, i32 %223)
  store i32 1, i32* %11, align 4
  br label %237

225:                                              ; preds = %214
  br label %226

226:                                              ; preds = %225, %209
  %227 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %228 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %229 = load %struct.socket*, %struct.socket** %14, align 8
  %230 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %231 = load i32, i32* %17, align 4
  %232 = load i32, i32* %18, align 4
  %233 = load i32, i32* %19, align 4
  %234 = load i32, i32* %20, align 4
  %235 = load i32, i32* %21, align 4
  %236 = call i32 @bbr_process_data(%struct.mbuf* %227, %struct.tcphdr* %228, %struct.socket* %229, %struct.tcpcb* %230, i32 %231, i32 %232, i32 %233, i32 %234, i32 %235)
  store i32 %236, i32* %11, align 4
  br label %237

237:                                              ; preds = %226, %218, %207, %193, %183, %165, %105, %91, %56, %45
  %238 = load i32, i32* %11, align 4
  ret i32 %238
}

declare dso_local i32 @ctf_calc_rwin(%struct.socket*, %struct.tcpcb*) #1

declare dso_local i32 @ctf_process_rst(%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*) #1

declare dso_local i32 @ctf_challenge_ack(%struct.mbuf*, %struct.tcphdr*, %struct.tcpcb*, i32*) #1

declare dso_local i64 @TSTMP_LT(i64, i64) #1

declare dso_local i64 @ctf_ts_check(%struct.mbuf*, %struct.tcphdr*, %struct.tcpcb*, i32, i32, i32*) #1

declare dso_local i32 @INP_WLOCK_ASSERT(i32) #1

declare dso_local i64 @ctf_drop_checks(%struct.tcpopt*, %struct.mbuf*, %struct.tcphdr*, %struct.tcpcb*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @SEQ_LEQ(i32, i32) #1

declare dso_local i32 @tcp_tv_to_mssectick(i32*) #1

declare dso_local i32 @bbr_process_data(%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctf_do_dropafterack(%struct.mbuf*, %struct.tcpcb*, %struct.tcphdr*, i32, i32, i32*) #1

declare dso_local i32 @ctf_do_drop(%struct.mbuf*, i32*) #1

declare dso_local i64 @bbr_process_ack(%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*, %struct.tcpopt*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @sbavail(i32*) #1

declare dso_local i64 @bbr_progress_timeout_check(%struct.tcp_bbr*) #1

declare dso_local i32 @ctf_do_dropwithreset_conn(%struct.mbuf*, %struct.tcpcb*, %struct.tcphdr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
