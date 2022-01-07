; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_do_close_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_do_close_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.tcphdr = type { i32 }
%struct.socket = type { i32 }
%struct.tcpcb = type { i32, i32, i32, i64, i64, i32, i64 }
%struct.tcpopt = type { i32, i64 }
%struct.tcp_rack = type { i32 }

@TH_RST = common dso_local global i32 0, align 4
@TH_FIN = common dso_local global i32 0, align 4
@TH_SYN = common dso_local global i32 0, align 4
@TOF_TS = common dso_local global i32 0, align 4
@TH_ACK = common dso_local global i32 0, align 4
@TF_NEEDSYN = common dso_local global i32 0, align 4
@TF_ACKNOW = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@BANDLIM_RST_OPENPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*, %struct.tcpopt*, i32, i32, i32, i32, i32)* @rack_do_close_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rack_do_close_wait(%struct.mbuf* %0, %struct.tcphdr* %1, %struct.socket* %2, %struct.tcpcb* %3, %struct.tcpopt* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
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
  %22 = alloca i32, align 4
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
  store i32 0, i32* %22, align 4
  %23 = load %struct.socket*, %struct.socket** %14, align 8
  %24 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %25 = call i32 @ctf_calc_rwin(%struct.socket* %23, %struct.tcpcb* %24)
  %26 = load i32, i32* %20, align 4
  %27 = load i32, i32* @TH_RST, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %10
  %31 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %32 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load i32, i32* %20, align 4
  %37 = load i32, i32* @TH_FIN, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35, %10
  %41 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %42 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %43 = load %struct.socket*, %struct.socket** %14, align 8
  %44 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %45 = call i32 @ctf_process_rst(%struct.mbuf* %41, %struct.tcphdr* %42, %struct.socket* %43, %struct.tcpcb* %44)
  store i32 %45, i32* %11, align 4
  br label %236

46:                                               ; preds = %35, %30
  %47 = load i32, i32* %20, align 4
  %48 = load i32, i32* @TH_SYN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %53 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %54 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %55 = call i32 @ctf_challenge_ack(%struct.mbuf* %52, %struct.tcphdr* %53, %struct.tcpcb* %54, i32* %22)
  %56 = load i32, i32* %22, align 4
  store i32 %56, i32* %11, align 4
  br label %236

57:                                               ; preds = %46
  %58 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %59 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @TOF_TS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %57
  %65 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %66 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %64
  %70 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %71 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %74 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @TSTMP_LT(i64 %72, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %69
  %79 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %80 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %81 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* %20, align 4
  %84 = call i64 @ctf_ts_check(%struct.mbuf* %79, %struct.tcphdr* %80, %struct.tcpcb* %81, i32 %82, i32 %83, i32* %22)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i32, i32* %22, align 4
  store i32 %87, i32* %11, align 4
  br label %236

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88, %69, %64, %57
  %90 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %91 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %92 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %93 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %94 = call i64 @ctf_drop_checks(%struct.tcpopt* %90, %struct.mbuf* %91, %struct.tcphdr* %92, %struct.tcpcb* %93, i32* %18, i32* %20, i32* %17, i32* %22)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* %22, align 4
  store i32 %97, i32* %11, align 4
  br label %236

98:                                               ; preds = %89
  %99 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %100 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @TOF_TS, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %142

105:                                              ; preds = %98
  %106 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %107 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %110 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @SEQ_LEQ(i32 %108, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %142

114:                                              ; preds = %105
  %115 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %116 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %119 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %18, align 4
  %122 = add nsw i32 %120, %121
  %123 = load i32, i32* %20, align 4
  %124 = load i32, i32* @TH_SYN, align 4
  %125 = load i32, i32* @TH_FIN, align 4
  %126 = or i32 %124, %125
  %127 = and i32 %123, %126
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i32
  %130 = add nsw i32 %122, %129
  %131 = call i64 @SEQ_LEQ(i32 %117, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %114
  %134 = call i32 (...) @tcp_ts_getticks()
  %135 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %136 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %135, i32 0, i32 5
  store i32 %134, i32* %136, align 8
  %137 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %138 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %141 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %140, i32 0, i32 4
  store i64 %139, i64* %141, align 8
  br label %142

142:                                              ; preds = %133, %114, %105, %98
  %143 = load i32, i32* %20, align 4
  %144 = load i32, i32* @TH_ACK, align 4
  %145 = and i32 %143, %144
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %190

147:                                              ; preds = %142
  %148 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %149 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @TF_NEEDSYN, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %147
  %155 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %156 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %157 = load %struct.socket*, %struct.socket** %14, align 8
  %158 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %159 = load i32, i32* %17, align 4
  %160 = load i32, i32* %18, align 4
  %161 = load i32, i32* %19, align 4
  %162 = load i32, i32* %20, align 4
  %163 = load i32, i32* %21, align 4
  %164 = call i32 @rack_process_data(%struct.mbuf* %155, %struct.tcphdr* %156, %struct.socket* %157, %struct.tcpcb* %158, i32 %159, i32 %160, i32 %161, i32 %162, i32 %163)
  store i32 %164, i32* %11, align 4
  br label %236

165:                                              ; preds = %147
  %166 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %167 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @TF_ACKNOW, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %187

172:                                              ; preds = %165
  %173 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %174 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %175 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %176 = load i32, i32* %20, align 4
  %177 = load i32, i32* %18, align 4
  %178 = call i32 @ctf_do_dropafterack(%struct.mbuf* %173, %struct.tcpcb* %174, %struct.tcphdr* %175, i32 %176, i32 %177, i32* %22)
  %179 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %180 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = inttoptr i64 %181 to %struct.tcp_rack*
  %183 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 4
  %186 = load i32, i32* %22, align 4
  store i32 %186, i32* %11, align 4
  br label %236

187:                                              ; preds = %165
  %188 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %189 = call i32 @ctf_do_drop(%struct.mbuf* %188, i32* null)
  store i32 0, i32* %11, align 4
  br label %236

190:                                              ; preds = %142
  %191 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %192 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %193 = load %struct.socket*, %struct.socket** %14, align 8
  %194 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %195 = load %struct.tcpopt*, %struct.tcpopt** %16, align 8
  %196 = load i32, i32* %19, align 4
  %197 = load i32, i32* %18, align 4
  %198 = load i32, i32* %20, align 4
  %199 = call i64 @rack_process_ack(%struct.mbuf* %191, %struct.tcphdr* %192, %struct.socket* %193, %struct.tcpcb* %194, %struct.tcpopt* %195, i32 %196, i32 %197, i32* null, i32 %198, i32* %22)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %190
  %202 = load i32, i32* %22, align 4
  store i32 %202, i32* %11, align 4
  br label %236

203:                                              ; preds = %190
  %204 = load %struct.socket*, %struct.socket** %14, align 8
  %205 = getelementptr inbounds %struct.socket, %struct.socket* %204, i32 0, i32 0
  %206 = call i64 @sbavail(i32* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %225

208:                                              ; preds = %203
  %209 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %210 = call i64 @rack_progress_timeout_check(%struct.tcpcb* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %224

212:                                              ; preds = %208
  %213 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %214 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @ETIMEDOUT, align 4
  %217 = call i32 @tcp_set_inp_to_drop(i32 %215, i32 %216)
  %218 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %219 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %220 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %221 = load i32, i32* @BANDLIM_RST_OPENPORT, align 4
  %222 = load i32, i32* %18, align 4
  %223 = call i32 @ctf_do_dropwithreset(%struct.mbuf* %218, %struct.tcpcb* %219, %struct.tcphdr* %220, i32 %221, i32 %222)
  store i32 1, i32* %11, align 4
  br label %236

224:                                              ; preds = %208
  br label %225

225:                                              ; preds = %224, %203
  %226 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %227 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %228 = load %struct.socket*, %struct.socket** %14, align 8
  %229 = load %struct.tcpcb*, %struct.tcpcb** %15, align 8
  %230 = load i32, i32* %17, align 4
  %231 = load i32, i32* %18, align 4
  %232 = load i32, i32* %19, align 4
  %233 = load i32, i32* %20, align 4
  %234 = load i32, i32* %21, align 4
  %235 = call i32 @rack_process_data(%struct.mbuf* %226, %struct.tcphdr* %227, %struct.socket* %228, %struct.tcpcb* %229, i32 %230, i32 %231, i32 %232, i32 %233, i32 %234)
  store i32 %235, i32* %11, align 4
  br label %236

236:                                              ; preds = %225, %212, %201, %187, %172, %154, %96, %86, %51, %40
  %237 = load i32, i32* %11, align 4
  ret i32 %237
}

declare dso_local i32 @ctf_calc_rwin(%struct.socket*, %struct.tcpcb*) #1

declare dso_local i32 @ctf_process_rst(%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*) #1

declare dso_local i32 @ctf_challenge_ack(%struct.mbuf*, %struct.tcphdr*, %struct.tcpcb*, i32*) #1

declare dso_local i64 @TSTMP_LT(i64, i64) #1

declare dso_local i64 @ctf_ts_check(%struct.mbuf*, %struct.tcphdr*, %struct.tcpcb*, i32, i32, i32*) #1

declare dso_local i64 @ctf_drop_checks(%struct.tcpopt*, %struct.mbuf*, %struct.tcphdr*, %struct.tcpcb*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @SEQ_LEQ(i32, i32) #1

declare dso_local i32 @tcp_ts_getticks(...) #1

declare dso_local i32 @rack_process_data(%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctf_do_dropafterack(%struct.mbuf*, %struct.tcpcb*, %struct.tcphdr*, i32, i32, i32*) #1

declare dso_local i32 @ctf_do_drop(%struct.mbuf*, i32*) #1

declare dso_local i64 @rack_process_ack(%struct.mbuf*, %struct.tcphdr*, %struct.socket*, %struct.tcpcb*, %struct.tcpopt*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @sbavail(i32*) #1

declare dso_local i64 @rack_progress_timeout_check(%struct.tcpcb*) #1

declare dso_local i32 @tcp_set_inp_to_drop(i32, i32) #1

declare dso_local i32 @ctf_do_dropwithreset(%struct.mbuf*, %struct.tcpcb*, %struct.tcphdr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
