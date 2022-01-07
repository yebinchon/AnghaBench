; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_cong_signal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_cong_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i32, i32, i32, i32, %struct.TYPE_5__*, i32, i64, i64, i64, i64, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.tcphdr = type { i32 }
%struct.tcp_rack = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_5__*, i32)* }

@TF_WASFRECOVERY = common dso_local global i32 0, align 4
@TF_WASCRECOVERY = common dso_local global i32 0, align 4
@TF_ECN_PERMIT = common dso_local global i32 0, align 4
@TF_ECN_SND_CWR = common dso_local global i32 0, align 4
@tcps_ecn_rcwnd = common dso_local global i32 0, align 4
@tcps_sndrexmitbad = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tcphdr*, i32)* @rack_cong_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rack_cong_signal(%struct.tcpcb* %0, %struct.tcphdr* %1, i32 %2) #0 {
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca %struct.tcphdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcp_rack*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %4, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %9 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %8, i32 0, i32 16
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @INP_WLOCK_ASSERT(i32 %10)
  %12 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %13 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %12, i32 0, i32 15
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.tcp_rack*
  store %struct.tcp_rack* %15, %struct.tcp_rack** %7, align 8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %203 [
    i32 130, label %17
    i32 131, label %84
    i32 129, label %112
    i32 128, label %142
  ]

17:                                               ; preds = %3
  %18 = load i32, i32* @TF_WASFRECOVERY, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %21 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load i32, i32* @TF_WASCRECOVERY, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %27 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %31 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @IN_FASTRECOVERY(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %83, label %35

35:                                               ; preds = %17
  %36 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %37 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 5
  store i32 0, i32* %38, align 4
  %39 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %40 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 4
  store i32 0, i32* %41, align 8
  %42 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %43 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  store i32 0, i32* %44, align 4
  %45 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %46 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i32 0, i32* %47, align 8
  %48 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %49 = call i32 @ctf_fixed_maxseg(%struct.tcpcb* %48)
  %50 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %51 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %54 = call i32 @rack_log_to_prr(%struct.tcp_rack* %53, i32 2)
  %55 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %56 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %55, i32 0, i32 7
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %59 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %58, i32 0, i32 14
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  %62 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %63 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i64 %61, i64* %64, align 8
  %65 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %66 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %65, i32 0, i32 7
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %69 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %68, i32 0, i32 10
  store i64 %67, i64* %69, align 8
  %70 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %71 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @TF_ECN_PERMIT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %35
  %77 = load i32, i32* @TF_ECN_SND_CWR, align 4
  %78 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %79 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %76, %35
  br label %83

83:                                               ; preds = %82, %17
  br label %203

84:                                               ; preds = %3
  %85 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %86 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @IN_CONGRECOVERY(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %111, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* @tcps_ecn_rcwnd, align 4
  %92 = call i32 @TCPSTAT_INC(i32 %91)
  %93 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %94 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %93, i32 0, i32 7
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %97 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %96, i32 0, i32 10
  store i64 %95, i64* %97, align 8
  %98 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %99 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @TF_ECN_PERMIT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %90
  %105 = load i32, i32* @TF_ECN_SND_CWR, align 4
  %106 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %107 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %104, %90
  br label %111

111:                                              ; preds = %110, %84
  br label %203

112:                                              ; preds = %3
  %113 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %114 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %113, i32 0, i32 13
  store i32 0, i32* %114, align 8
  %115 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %116 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %115, i32 0, i32 12
  store i32 0, i32* %116, align 4
  %117 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %118 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @EXIT_RECOVERY(i32 %119)
  %121 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %122 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %121, i32 0, i32 11
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %125 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @min(i32 %123, i32 %126)
  %128 = sdiv i32 %127, 2
  %129 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %130 = call i32 @ctf_fixed_maxseg(%struct.tcpcb* %129)
  %131 = sdiv i32 %128, %130
  %132 = call i32 @max(i32 2, i32 %131)
  %133 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %134 = call i32 @ctf_fixed_maxseg(%struct.tcpcb* %133)
  %135 = mul nsw i32 %132, %134
  %136 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %137 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %139 = call i32 @ctf_fixed_maxseg(%struct.tcpcb* %138)
  %140 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %141 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  br label %203

142:                                              ; preds = %3
  %143 = load i32, i32* @tcps_sndrexmitbad, align 4
  %144 = call i32 @TCPSTAT_INC(i32 %143)
  %145 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %146 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %149 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  %150 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %151 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %154 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %156 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %155, i32 0, i32 9
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %159 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %158, i32 0, i32 10
  store i64 %157, i64* %159, align 8
  %160 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %161 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @TF_WASFRECOVERY, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %142
  %167 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %168 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @ENTER_FASTRECOVERY(i32 %169)
  %171 = load i32, i32* @TF_WASFRECOVERY, align 4
  %172 = xor i32 %171, -1
  %173 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %174 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = and i32 %175, %172
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %166, %142
  %178 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %179 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @TF_WASCRECOVERY, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %195

184:                                              ; preds = %177
  %185 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %186 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @ENTER_CONGRECOVERY(i32 %187)
  %189 = load i32, i32* @TF_WASCRECOVERY, align 4
  %190 = xor i32 %189, -1
  %191 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %192 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = and i32 %193, %190
  store i32 %194, i32* %192, align 8
  br label %195

195:                                              ; preds = %184, %177
  %196 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %197 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %196, i32 0, i32 7
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %200 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %199, i32 0, i32 8
  store i64 %198, i64* %200, align 8
  %201 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %202 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %201, i32 0, i32 6
  store i32 0, i32* %202, align 8
  br label %203

203:                                              ; preds = %3, %195, %112, %111, %83
  %204 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %205 = call %struct.TYPE_6__* @CC_ALGO(%struct.tcpcb* %204)
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %206, align 8
  %208 = icmp ne i32 (%struct.TYPE_5__*, i32)* %207, null
  br i1 %208, label %209, label %230

209:                                              ; preds = %203
  %210 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %211 = icmp ne %struct.tcphdr* %210, null
  br i1 %211, label %212, label %220

212:                                              ; preds = %209
  %213 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %214 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %217 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %216, i32 0, i32 5
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  store i32 %215, i32* %219, align 4
  br label %220

220:                                              ; preds = %212, %209
  %221 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %222 = call %struct.TYPE_6__* @CC_ALGO(%struct.tcpcb* %221)
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %223, align 8
  %225 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %226 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %225, i32 0, i32 5
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %226, align 8
  %228 = load i32, i32* %6, align 4
  %229 = call i32 %224(%struct.TYPE_5__* %227, i32 %228)
  br label %230

230:                                              ; preds = %220, %203
  ret void
}

declare dso_local i32 @INP_WLOCK_ASSERT(i32) #1

declare dso_local i32 @IN_FASTRECOVERY(i32) #1

declare dso_local i32 @ctf_fixed_maxseg(%struct.tcpcb*) #1

declare dso_local i32 @rack_log_to_prr(%struct.tcp_rack*, i32) #1

declare dso_local i32 @IN_CONGRECOVERY(i32) #1

declare dso_local i32 @TCPSTAT_INC(i32) #1

declare dso_local i32 @EXIT_RECOVERY(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ENTER_FASTRECOVERY(i32) #1

declare dso_local i32 @ENTER_CONGRECOVERY(i32) #1

declare dso_local %struct.TYPE_6__* @CC_ALGO(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
