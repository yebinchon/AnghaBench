; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_calc_thresh_tlp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_calc_thresh_tlp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i64, i32 }
%struct.tcp_bbr = type { i32, i32, i64 }
%struct.bbr_sendmap = type { i32, i32, i32, i32* }

@bbr_head = common dso_local global i32 0, align 4
@r_tnext = common dso_local global i32 0, align 4
@bbr_delayed_ack_time = common dso_local global i32 0, align 4
@BBR_INITIAL_RTO = common dso_local global i32 0, align 4
@BBR_TO_FRM_TLP = common dso_local global i32 0, align 4
@USECS_IN_SECOND = common dso_local global i32 0, align 4
@bbr_tlp_min = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpcb*, %struct.tcp_bbr*, %struct.bbr_sendmap*, i32, i32)* @bbr_calc_thresh_tlp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbr_calc_thresh_tlp(%struct.tcpcb* %0, %struct.tcp_bbr* %1, %struct.bbr_sendmap* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.tcpcb*, align 8
  %7 = alloca %struct.tcp_bbr*, align 8
  %8 = alloca %struct.bbr_sendmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.bbr_sendmap*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %6, align 8
  store %struct.tcp_bbr* %1, %struct.tcp_bbr** %7, align 8
  store %struct.bbr_sendmap* %2, %struct.bbr_sendmap** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 1, i32* %9, align 4
  br label %23

23:                                               ; preds = %22, %5
  %24 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %25 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %32 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sdiv i32 %30, %33
  %35 = add nsw i32 %29, %34
  store i32 %35, i32* %11, align 4
  br label %39

36:                                               ; preds = %23
  %37 = load i32, i32* %9, align 4
  %38 = mul nsw i32 %37, 2
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %36, %28
  %40 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %41 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %44 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %42, %45
  store i32 %46, i32* %13, align 4
  %47 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %48 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %51 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %49, %52
  store i32 %53, i32* %12, align 4
  %54 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %55 = load i32, i32* @bbr_head, align 4
  %56 = load i32, i32* @r_tnext, align 4
  %57 = call %struct.bbr_sendmap* @TAILQ_PREV(%struct.bbr_sendmap* %54, i32 %55, i32 %56)
  store %struct.bbr_sendmap* %57, %struct.bbr_sendmap** %15, align 8
  %58 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %15, align 8
  %59 = icmp ne %struct.bbr_sendmap* %58, null
  br i1 %59, label %60, label %109

60:                                               ; preds = %39
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %109

64:                                               ; preds = %60
  store i32 0, i32* %16, align 4
  %65 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %66 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* %17, align 4
  %69 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %15, align 8
  %70 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 1
  store i32 %72, i32* %18, align 4
  %73 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %74 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %18, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %15, align 8
  %81 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %17, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @TSTMP_GEQ(i32 %79, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %64
  %90 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %91 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %17, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %15, align 8
  %98 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %18, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %96, %103
  store i32 %104, i32* %16, align 4
  br label %105

105:                                              ; preds = %89, %64
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %11, align 4
  br label %127

109:                                              ; preds = %60, %39
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp sle i32 %110, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %109
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = sdiv i32 %115, 2
  %117 = add nsw i32 %114, %116
  %118 = load i32, i32* @bbr_delayed_ack_time, align 4
  %119 = add nsw i32 %117, %118
  store i32 %119, i32* %19, align 4
  %120 = load i32, i32* %19, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp sgt i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %113
  %124 = load i32, i32* %19, align 4
  store i32 %124, i32* %11, align 4
  br label %125

125:                                              ; preds = %123, %113
  br label %126

126:                                              ; preds = %125, %109
  br label %127

127:                                              ; preds = %126, %105
  %128 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %129 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i32, i32* @BBR_INITIAL_RTO, align 4
  store i32 %133, i32* %14, align 4
  br label %139

134:                                              ; preds = %127
  %135 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %136 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @TICKS_2_USEC(i32 %137)
  store i32 %138, i32* %14, align 4
  br label %139

139:                                              ; preds = %134, %132
  %140 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %146 = load i32, i32* @BBR_TO_FRM_TLP, align 4
  %147 = call i32 @bbr_log_thresh_choice(%struct.tcp_bbr* %140, i32 %141, i32 %142, i32 %143, i32 %144, %struct.bbr_sendmap* %145, i32 %146)
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %139
  %152 = load i32, i32* %14, align 4
  store i32 %152, i32* %11, align 4
  br label %153

153:                                              ; preds = %151, %139
  %154 = load i32, i32* %11, align 4
  %155 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %156 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = trunc i64 %157 to i32
  %159 = load i32, i32* @USECS_IN_SECOND, align 4
  %160 = mul nsw i32 %158, %159
  %161 = icmp sgt i32 %154, %160
  br i1 %161, label %162, label %169

162:                                              ; preds = %153
  %163 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %164 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = trunc i64 %165 to i32
  %167 = load i32, i32* @USECS_IN_SECOND, align 4
  %168 = mul nsw i32 %166, %167
  store i32 %168, i32* %11, align 4
  br label %169

169:                                              ; preds = %162, %153
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* @bbr_tlp_min, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = load i32, i32* @bbr_tlp_min, align 4
  store i32 %174, i32* %11, align 4
  br label %175

175:                                              ; preds = %173, %169
  %176 = load i32, i32* %11, align 4
  ret i32 %176
}

declare dso_local %struct.bbr_sendmap* @TAILQ_PREV(%struct.bbr_sendmap*, i32, i32) #1

declare dso_local i64 @TSTMP_GEQ(i32, i32) #1

declare dso_local i32 @TICKS_2_USEC(i32) #1

declare dso_local i32 @bbr_log_thresh_choice(%struct.tcp_bbr*, i32, i32, i32, i32, %struct.bbr_sendmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
