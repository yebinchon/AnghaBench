; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_sctp_cwnd_new_rtcc_transmission_begins.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_sctp_cwnd_new_rtcc_transmission_begins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { i32, %struct.TYPE_8__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.sctp_nets = type { i32, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@sctp = common dso_local global i32 0, align 4
@cwnd = common dso_local global i32 0, align 4
@rttvar = common dso_local global i32 0, align 4
@sctp_initial_cwnd = common dso_local global i32 0, align 4
@SCTP_INITIAL_CWND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tcb*, %struct.sctp_nets*)* @sctp_cwnd_new_rtcc_transmission_begins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_cwnd_new_rtcc_transmission_begins(%struct.sctp_tcb* %0, %struct.sctp_nets* %1) #0 {
  %3 = alloca %struct.sctp_tcb*, align 8
  %4 = alloca %struct.sctp_nets*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %3, align 8
  store %struct.sctp_nets* %1, %struct.sctp_nets** %4, align 8
  %9 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %10 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %181

15:                                               ; preds = %2
  %16 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %17 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 %18, 32
  %20 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %21 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = shl i32 %25, 16
  %27 = or i32 %19, %26
  %28 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %29 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %27, %30
  store i32 %31, i32* %5, align 4
  %32 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %33 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 32
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, 524288
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* @sctp, align 4
  %39 = load i32, i32* @cwnd, align 4
  %40 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %41 = load i32, i32* @rttvar, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %44 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = shl i32 %47, 32
  %49 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %50 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 32
  %55 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %56 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %54, %57
  %59 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %60 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @SDT_PROBE5(i32 %38, i32 %39, %struct.sctp_nets* %40, i32 %41, i32 %42, i32 %48, i32 %58, i32 %61, i32 %62)
  %64 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %65 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  %68 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %69 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 11
  store i64 0, i64* %71, align 8
  %72 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %73 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %77 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 10
  store i64 0, i64* %79, align 8
  %80 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %81 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 5
  store i64 0, i64* %83, align 8
  %84 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %85 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 9
  store i64 0, i64* %87, align 8
  %88 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %89 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 8
  store i64 0, i64* %91, align 8
  %92 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %93 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 7
  store i64 0, i64* %95, align 8
  %96 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %97 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %15
  %103 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %104 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 5
  store i64 0, i64* %106, align 8
  %107 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %108 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 4
  store i64 0, i64* %110, align 8
  %111 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %112 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  store i64 0, i64* %114, align 8
  br label %115

115:                                              ; preds = %102, %15
  %116 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %117 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %180

122:                                              ; preds = %115
  %123 = load i32, i32* @sctp_initial_cwnd, align 4
  %124 = call i32 @SCTP_BASE_SYSCTL(i32 %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %122
  %128 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %129 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = mul nsw i32 %130, 4
  %132 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %133 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = mul nsw i32 2, %134
  %136 = load i32, i32* @SCTP_INITIAL_CWND, align 4
  %137 = call i32 @max(i32 %135, i32 %136)
  %138 = call i32 @min(i32 %131, i32 %137)
  store i32 %138, i32* %8, align 4
  br label %169

139:                                              ; preds = %122
  %140 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %141 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp sgt i64 %143, 0
  br i1 %144, label %145, label %159

145:                                              ; preds = %139
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %149 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp sgt i64 %147, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %145
  %154 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %155 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %7, align 4
  br label %159

159:                                              ; preds = %153, %145, %139
  %160 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %161 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = sub i64 %163, 4
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = mul i64 %164, %166
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %8, align 4
  br label %169

169:                                              ; preds = %159, %127
  %170 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %171 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %8, align 4
  %174 = icmp sgt i32 %172, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %169
  %176 = load i32, i32* %8, align 4
  %177 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %178 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  br label %179

179:                                              ; preds = %175, %169
  br label %180

180:                                              ; preds = %179, %115
  br label %181

181:                                              ; preds = %180, %2
  ret void
}

declare dso_local i32 @SDT_PROBE5(i32, i32, %struct.sctp_nets*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SCTP_BASE_SYSCTL(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
