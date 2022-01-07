; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack_bbr_common.c_ctf_drop_checks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack_bbr_common.c_ctf_drop_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpopt = type { i32 }
%struct.mbuf = type { i32 }
%struct.tcphdr = type { i32, i32 }
%struct.tcpcb = type { i32, i32, i32 }

@TH_SYN = common dso_local global i32 0, align 4
@TH_URG = common dso_local global i32 0, align 4
@TH_FIN = common dso_local global i32 0, align 4
@TF_ACKNOW = common dso_local global i32 0, align 4
@tcps_rcvduppack = common dso_local global i32 0, align 4
@tcps_rcvdupbyte = common dso_local global i32 0, align 4
@tcps_rcvpartduppack = common dso_local global i32 0, align 4
@tcps_rcvpartdupbyte = common dso_local global i32 0, align 4
@TF_SACK_PERMIT = common dso_local global i32 0, align 4
@tcps_rcvpackafterwin = common dso_local global i32 0, align 4
@tcps_rcvbyteafterwin = common dso_local global i32 0, align 4
@tcps_rcvwinprobe = common dso_local global i32 0, align 4
@TH_PUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctf_drop_checks(%struct.tcpopt* %0, %struct.mbuf* %1, %struct.tcphdr* %2, %struct.tcpcb* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.tcpopt*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.tcphdr*, align 8
  %13 = alloca %struct.tcpcb*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.tcpopt* %0, %struct.tcpopt** %10, align 8
  store %struct.mbuf* %1, %struct.mbuf** %11, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %12, align 8
  store %struct.tcpcb* %3, %struct.tcpcb** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %21 = load i32*, i32** %15, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %19, align 4
  %23 = load i32*, i32** %14, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %20, align 4
  %25 = load %struct.tcpcb*, %struct.tcpcb** %13, align 8
  %26 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %29 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %27, %30
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %155

34:                                               ; preds = %8
  %35 = load i32, i32* %19, align 4
  %36 = load i32, i32* @TH_SYN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %34
  %40 = load i32, i32* @TH_SYN, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %19, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %19, align 4
  %44 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %45 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %49 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %57

52:                                               ; preds = %39
  %53 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %54 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 4
  br label %62

57:                                               ; preds = %39
  %58 = load i32, i32* @TH_URG, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %19, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %19, align 4
  br label %62

62:                                               ; preds = %57, %52
  %63 = load i32, i32* %18, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %18, align 4
  br label %65

65:                                               ; preds = %62, %34
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* %20, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %78, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %20, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %94

73:                                               ; preds = %69
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* @TH_FIN, align 4
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %73, %65
  %79 = load i32, i32* @TH_FIN, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %19, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* @TF_ACKNOW, align 4
  %84 = load %struct.tcpcb*, %struct.tcpcb** %13, align 8
  %85 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* %20, align 4
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* @tcps_rcvduppack, align 4
  %90 = call i32 @TCPSTAT_INC(i32 %89)
  %91 = load i32, i32* @tcps_rcvdupbyte, align 4
  %92 = load i32, i32* %18, align 4
  %93 = call i32 @TCPSTAT_ADD(i32 %91, i32 %92)
  br label %100

94:                                               ; preds = %73, %69
  %95 = load i32, i32* @tcps_rcvpartduppack, align 4
  %96 = call i32 @TCPSTAT_INC(i32 %95)
  %97 = load i32, i32* @tcps_rcvpartdupbyte, align 4
  %98 = load i32, i32* %18, align 4
  %99 = call i32 @TCPSTAT_ADD(i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %94, %78
  %101 = load %struct.tcpcb*, %struct.tcpcb** %13, align 8
  %102 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @TF_SACK_PERMIT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %100
  %108 = load %struct.tcpcb*, %struct.tcpcb** %13, align 8
  %109 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %110 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %113 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %18, align 4
  %116 = add nsw i32 %114, %115
  %117 = call i32 @tcp_update_sack_list(%struct.tcpcb* %108, i32 %111, i32 %116)
  %118 = load i32, i32* @TF_ACKNOW, align 4
  %119 = load %struct.tcpcb*, %struct.tcpcb** %13, align 8
  %120 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %107, %100
  %124 = load i32, i32* %18, align 4
  %125 = load i32*, i32** %16, align 8
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, %124
  store i32 %127, i32* %125, align 4
  %128 = load i32, i32* %18, align 4
  %129 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %130 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, %128
  store i32 %132, i32* %130, align 4
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* %20, align 4
  %135 = sub nsw i32 %134, %133
  store i32 %135, i32* %20, align 4
  %136 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %137 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %18, align 4
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %123
  %142 = load i32, i32* %18, align 4
  %143 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %144 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %145, %142
  store i32 %146, i32* %144, align 4
  br label %154

147:                                              ; preds = %123
  %148 = load i32, i32* @TH_URG, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %19, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %19, align 4
  %152 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %153 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %152, i32 0, i32 1
  store i32 0, i32* %153, align 4
  br label %154

154:                                              ; preds = %147, %141
  br label %155

155:                                              ; preds = %154, %8
  %156 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %157 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %20, align 4
  %160 = add nsw i32 %158, %159
  %161 = load %struct.tcpcb*, %struct.tcpcb** %13, align 8
  %162 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.tcpcb*, %struct.tcpcb** %13, align 8
  %165 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %163, %166
  %168 = sub nsw i32 %160, %167
  store i32 %168, i32* %18, align 4
  %169 = load i32, i32* %18, align 4
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %228

171:                                              ; preds = %155
  %172 = load i32, i32* @tcps_rcvpackafterwin, align 4
  %173 = call i32 @TCPSTAT_INC(i32 %172)
  %174 = load i32, i32* %18, align 4
  %175 = load i32, i32* %20, align 4
  %176 = icmp sge i32 %174, %175
  br i1 %176, label %177, label %210

177:                                              ; preds = %171
  %178 = load i32, i32* @tcps_rcvbyteafterwin, align 4
  %179 = load i32, i32* %20, align 4
  %180 = call i32 @TCPSTAT_ADD(i32 %178, i32 %179)
  %181 = load %struct.tcpcb*, %struct.tcpcb** %13, align 8
  %182 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %201

185:                                              ; preds = %177
  %186 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %187 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.tcpcb*, %struct.tcpcb** %13, align 8
  %190 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %188, %191
  br i1 %192, label %193, label %201

193:                                              ; preds = %185
  %194 = load i32, i32* @TF_ACKNOW, align 4
  %195 = load %struct.tcpcb*, %struct.tcpcb** %13, align 8
  %196 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 4
  %199 = load i32, i32* @tcps_rcvwinprobe, align 4
  %200 = call i32 @TCPSTAT_INC(i32 %199)
  br label %209

201:                                              ; preds = %185, %177
  %202 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %203 = load %struct.tcpcb*, %struct.tcpcb** %13, align 8
  %204 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %205 = load i32, i32* %19, align 4
  %206 = load i32, i32* %20, align 4
  %207 = load i32*, i32** %17, align 8
  %208 = call i32 @ctf_do_dropafterack(%struct.mbuf* %202, %struct.tcpcb* %203, %struct.tcphdr* %204, i32 %205, i32 %206, i32* %207)
  store i32 1, i32* %9, align 4
  br label %233

209:                                              ; preds = %193
  br label %214

210:                                              ; preds = %171
  %211 = load i32, i32* @tcps_rcvbyteafterwin, align 4
  %212 = load i32, i32* %18, align 4
  %213 = call i32 @TCPSTAT_ADD(i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %210, %209
  %215 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %216 = load i32, i32* %18, align 4
  %217 = sub nsw i32 0, %216
  %218 = call i32 @m_adj(%struct.mbuf* %215, i32 %217)
  %219 = load i32, i32* %18, align 4
  %220 = load i32, i32* %20, align 4
  %221 = sub nsw i32 %220, %219
  store i32 %221, i32* %20, align 4
  %222 = load i32, i32* @TH_PUSH, align 4
  %223 = load i32, i32* @TH_FIN, align 4
  %224 = or i32 %222, %223
  %225 = xor i32 %224, -1
  %226 = load i32, i32* %19, align 4
  %227 = and i32 %226, %225
  store i32 %227, i32* %19, align 4
  br label %228

228:                                              ; preds = %214, %155
  %229 = load i32, i32* %19, align 4
  %230 = load i32*, i32** %15, align 8
  store i32 %229, i32* %230, align 4
  %231 = load i32, i32* %20, align 4
  %232 = load i32*, i32** %14, align 8
  store i32 %231, i32* %232, align 4
  store i32 0, i32* %9, align 4
  br label %233

233:                                              ; preds = %228, %201
  %234 = load i32, i32* %9, align 4
  ret i32 %234
}

declare dso_local i32 @TCPSTAT_INC(i32) #1

declare dso_local i32 @TCPSTAT_ADD(i32, i32) #1

declare dso_local i32 @tcp_update_sack_list(%struct.tcpcb*, i32, i32) #1

declare dso_local i32 @ctf_do_dropafterack(%struct.mbuf*, %struct.tcpcb*, %struct.tcphdr*, i32, i32, i32*) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
