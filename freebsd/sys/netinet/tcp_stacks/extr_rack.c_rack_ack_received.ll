; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_ack_received.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_ack_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i64, i32, i32, i64, i64, i64, i32, %struct.TYPE_5__*, i64, i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i64, i64 }
%struct.tcp_rack = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32*, i64, i32, i64 }
%struct.tcphdr = type { i64 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_5__*, i64)* }

@CCF_CWND_LIMITED = common dso_local global i32 0, align 4
@CC_ACK = common dso_local global i64 0, align 8
@V_tcp_abc_l_var = common dso_local global i64 0, align 8
@CCF_ABC_SENTAWND = common dso_local global i32 0, align 4
@RACK_GP_HIST = common dso_local global i64 0, align 8
@TF_GPUTINPROG = common dso_local global i32 0, align 4
@VOI_TCP_CALCFRWINDIFF = common dso_local global i32 0, align 4
@VOI_TCP_GPUT = common dso_local global i32 0, align 4
@VOI_TCP_GPUT_ND = common dso_local global i32 0, align 4
@VOI_TCP_LCWIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tcp_rack*, %struct.tcphdr*, i64, i64, i32)* @rack_ack_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rack_ack_received(%struct.tcpcb* %0, %struct.tcp_rack* %1, %struct.tcphdr* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.tcpcb*, align 8
  %8 = alloca %struct.tcp_rack*, align 8
  %9 = alloca %struct.tcphdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %7, align 8
  store %struct.tcp_rack* %1, %struct.tcp_rack** %8, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %15 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %14, i32 0, i32 13
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @INP_WLOCK_ASSERT(i32 %16)
  %18 = load i64, i64* %10, align 8
  %19 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %20 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %19, i32 0, i32 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  store i64 %18, i64* %22, align 8
  %23 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %24 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %25 = call i64 @BYTES_THIS_ACK(%struct.tcpcb* %23, %struct.tcphdr* %24)
  %26 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %27 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %26, i32 0, i32 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  store i64 %25, i64* %29, align 8
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %6
  %33 = load %struct.tcp_rack*, %struct.tcp_rack** %8, align 8
  %34 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %32
  %39 = load %struct.tcp_rack*, %struct.tcp_rack** %8, align 8
  %40 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %44 = call i64 @ctf_fixed_maxseg(%struct.tcpcb* %43)
  %45 = mul nsw i64 %42, %44
  store i64 %45, i64* %13, align 8
  %46 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %47 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %46, i32 0, i32 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %13, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %38
  %54 = load i64, i64* %13, align 8
  %55 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %56 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %55, i32 0, i32 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  store i64 %54, i64* %58, align 8
  br label %59

59:                                               ; preds = %53, %38
  br label %60

60:                                               ; preds = %59, %32, %6
  %61 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %62 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %65 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp sle i64 %63, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %60
  %69 = load i32, i32* @CCF_CWND_LIMITED, align 4
  %70 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %71 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %70, i32 0, i32 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %69
  store i32 %75, i32* %73, align 8
  br label %85

76:                                               ; preds = %60
  %77 = load i32, i32* @CCF_CWND_LIMITED, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %80 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %79, i32 0, i32 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, %78
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %76, %68
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* @CC_ACK, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %149

89:                                               ; preds = %85
  %90 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %91 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %94 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %92, %95
  br i1 %96, label %97, label %137

97:                                               ; preds = %89
  %98 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %99 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %98, i32 0, i32 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* @V_tcp_abc_l_var, align 8
  %105 = mul nsw i64 %103, %104
  %106 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %107 = call i64 @ctf_fixed_maxseg(%struct.tcpcb* %106)
  %108 = mul nsw i64 %105, %107
  %109 = call i64 @min(i64 %102, i64 %108)
  %110 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %111 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, %109
  store i64 %113, i64* %111, align 8
  %114 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %115 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %118 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp sge i64 %116, %119
  br i1 %120, label %121, label %136

121:                                              ; preds = %97
  %122 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %123 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %126 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %125, i32 0, i32 5
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %127, %124
  store i64 %128, i64* %126, align 8
  %129 = load i32, i32* @CCF_ABC_SENTAWND, align 4
  %130 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %131 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %130, i32 0, i32 8
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %129
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %121, %97
  br label %148

137:                                              ; preds = %89
  %138 = load i32, i32* @CCF_ABC_SENTAWND, align 4
  %139 = xor i32 %138, -1
  %140 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %141 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %140, i32 0, i32 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = and i32 %144, %139
  store i32 %145, i32* %143, align 8
  %146 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %147 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %146, i32 0, i32 5
  store i64 0, i64* %147, align 8
  br label %148

148:                                              ; preds = %137, %136
  br label %149

149:                                              ; preds = %148, %85
  %150 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %151 = call %struct.TYPE_6__* @CC_ALGO(%struct.tcpcb* %150)
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32 (%struct.TYPE_5__*, i64)*, i32 (%struct.TYPE_5__*, i64)** %152, align 8
  %154 = icmp ne i32 (%struct.TYPE_5__*, i64)* %153, null
  br i1 %154, label %155, label %172

155:                                              ; preds = %149
  %156 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %157 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %160 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %159, i32 0, i32 8
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  store i64 %158, i64* %162, align 8
  %163 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %164 = call %struct.TYPE_6__* @CC_ALGO(%struct.tcpcb* %163)
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i32 (%struct.TYPE_5__*, i64)*, i32 (%struct.TYPE_5__*, i64)** %165, align 8
  %167 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %168 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %167, i32 0, i32 8
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = load i64, i64* %11, align 8
  %171 = call i32 %166(%struct.TYPE_5__* %169, i64 %170)
  br label %172

172:                                              ; preds = %155, %149
  %173 = load %struct.tcp_rack*, %struct.tcp_rack** %8, align 8
  %174 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 4
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %178 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp slt i64 %176, %179
  br i1 %180, label %181, label %188

181:                                              ; preds = %172
  %182 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %183 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.tcp_rack*, %struct.tcp_rack** %8, align 8
  %186 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 4
  store i64 %184, i64* %187, align 8
  br label %188

188:                                              ; preds = %181, %172
  %189 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %190 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %189, i32 0, i32 6
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %207

193:                                              ; preds = %188
  %194 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %195 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %198 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %197, i32 0, i32 6
  %199 = load i64, i64* %198, align 8
  %200 = icmp sgt i64 %196, %199
  br i1 %200, label %201, label %207

201:                                              ; preds = %193
  %202 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %203 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %202, i32 0, i32 6
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %206 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %205, i32 0, i32 0
  store i64 %204, i64* %206, align 8
  br label %207

207:                                              ; preds = %201, %193, %188
  ret void
}

declare dso_local i32 @INP_WLOCK_ASSERT(i32) #1

declare dso_local i64 @BYTES_THIS_ACK(%struct.tcpcb*, %struct.tcphdr*) #1

declare dso_local i64 @ctf_fixed_maxseg(%struct.tcpcb*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local %struct.TYPE_6__* @CC_ALGO(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
