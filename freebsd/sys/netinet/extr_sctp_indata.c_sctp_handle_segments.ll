; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_indata.c_sctp_handle_segments.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_indata.c_sctp_handle_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.sctp_tcb = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_gap_ack_block = type { i32, i32 }
%struct.sctp_tmit_chunk = type { i32 }

@sctp_logging_level = common dso_local global i32 0, align 4
@SCTP_FR_LOGGING_ENABLE = common dso_local global i32 0, align 4
@SCTP_FR_LOG_BIGGEST_TSNS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, i32*, %struct.sctp_tcb*, %struct.sctp_association*, i64, i64*, i64*, i64*, i32, i32, i32*)* @sctp_handle_segments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_handle_segments(%struct.mbuf* %0, i32* %1, %struct.sctp_tcb* %2, %struct.sctp_association* %3, i64 %4, i64* %5, i64* %6, i64* %7, i32 %8, i32 %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.sctp_tcb*, align 8
  %16 = alloca %struct.sctp_association*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca %struct.sctp_gap_ack_block*, align 8
  %25 = alloca %struct.sctp_gap_ack_block, align 4
  %26 = alloca %struct.sctp_tmit_chunk*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  store %struct.mbuf* %0, %struct.mbuf** %13, align 8
  store i32* %1, i32** %14, align 8
  store %struct.sctp_tcb* %2, %struct.sctp_tcb** %15, align 8
  store %struct.sctp_association* %3, %struct.sctp_association** %16, align 8
  store i64 %4, i64* %17, align 8
  store i64* %5, i64** %18, align 8
  store i64* %6, i64** %19, align 8
  store i64* %7, i64** %20, align 8
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32* %10, i32** %23, align 8
  store i32 0, i32* %28, align 4
  %34 = load %struct.sctp_association*, %struct.sctp_association** %16, align 8
  %35 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %34, i32 0, i32 0
  %36 = call %struct.sctp_tmit_chunk* @TAILQ_FIRST(i32* %35)
  store %struct.sctp_tmit_chunk* %36, %struct.sctp_tmit_chunk** %26, align 8
  store i64 0, i64* %33, align 8
  store i32 0, i32* %29, align 4
  store i32 0, i32* %27, align 4
  br label %37

37:                                               ; preds = %121, %11
  %38 = load i32, i32* %27, align 4
  %39 = load i32, i32* %21, align 4
  %40 = load i32, i32* %22, align 4
  %41 = add nsw i32 %39, %40
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %124

43:                                               ; preds = %37
  %44 = load i32, i32* %27, align 4
  %45 = load i32, i32* %21, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  store i64 0, i64* %33, align 8
  %48 = load %struct.sctp_association*, %struct.sctp_association** %16, align 8
  %49 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %48, i32 0, i32 0
  %50 = call %struct.sctp_tmit_chunk* @TAILQ_FIRST(i32* %49)
  store %struct.sctp_tmit_chunk* %50, %struct.sctp_tmit_chunk** %26, align 8
  br label %51

51:                                               ; preds = %47, %43
  %52 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %53 = load i32*, i32** %14, align 8
  %54 = load i32, i32* %53, align 4
  %55 = bitcast %struct.sctp_gap_ack_block* %25 to i32*
  %56 = call i64 @sctp_m_getptr(%struct.mbuf* %52, i32 %54, i32 8, i32* %55)
  %57 = inttoptr i64 %56 to %struct.sctp_gap_ack_block*
  store %struct.sctp_gap_ack_block* %57, %struct.sctp_gap_ack_block** %24, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  %63 = load %struct.sctp_gap_ack_block*, %struct.sctp_gap_ack_block** %24, align 8
  %64 = icmp eq %struct.sctp_gap_ack_block* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %51
  %66 = load i32, i32* %29, align 4
  store i32 %66, i32* %12, align 4
  br label %144

67:                                               ; preds = %51
  %68 = load %struct.sctp_gap_ack_block*, %struct.sctp_gap_ack_block** %24, align 8
  %69 = getelementptr inbounds %struct.sctp_gap_ack_block, %struct.sctp_gap_ack_block* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @ntohs(i32 %70)
  store i64 %71, i64* %31, align 8
  %72 = load %struct.sctp_gap_ack_block*, %struct.sctp_gap_ack_block** %24, align 8
  %73 = getelementptr inbounds %struct.sctp_gap_ack_block, %struct.sctp_gap_ack_block* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @ntohs(i32 %74)
  store i64 %75, i64* %32, align 8
  %76 = load i64, i64* %31, align 8
  %77 = load i64, i64* %32, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  br label %121

80:                                               ; preds = %67
  %81 = load i64, i64* %31, align 8
  %82 = load i64, i64* %33, align 8
  %83 = icmp sle i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load %struct.sctp_association*, %struct.sctp_association** %16, align 8
  %86 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %85, i32 0, i32 0
  %87 = call %struct.sctp_tmit_chunk* @TAILQ_FIRST(i32* %86)
  store %struct.sctp_tmit_chunk* %87, %struct.sctp_tmit_chunk** %26, align 8
  br label %88

88:                                               ; preds = %84, %80
  %89 = load i64, i64* %17, align 8
  %90 = load i64, i64* %32, align 8
  %91 = add nsw i64 %89, %90
  %92 = load i64*, i64** %18, align 8
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @SCTP_TSN_GT(i64 %91, i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %88
  %97 = load i64, i64* %17, align 8
  %98 = load i64, i64* %32, align 8
  %99 = add nsw i64 %97, %98
  %100 = load i64*, i64** %18, align 8
  store i64 %99, i64* %100, align 8
  br label %101

101:                                              ; preds = %96, %88
  %102 = load i32, i32* %27, align 4
  %103 = load i32, i32* %21, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i32 0, i32* %30, align 4
  br label %107

106:                                              ; preds = %101
  store i32 1, i32* %30, align 4
  br label %107

107:                                              ; preds = %106, %105
  %108 = load %struct.sctp_tcb*, %struct.sctp_tcb** %15, align 8
  %109 = load i64, i64* %17, align 8
  %110 = load i64, i64* %31, align 8
  %111 = load i64, i64* %32, align 8
  %112 = load i32, i32* %30, align 4
  %113 = load i64*, i64** %19, align 8
  %114 = load i64*, i64** %20, align 8
  %115 = load i32*, i32** %23, align 8
  %116 = call i64 @sctp_process_segment_range(%struct.sctp_tcb* %108, %struct.sctp_tmit_chunk** %26, i64 %109, i64 %110, i64 %111, i32 %112, i32* %28, i64* %113, i64* %114, i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %107
  store i32 1, i32* %29, align 4
  br label %119

119:                                              ; preds = %118, %107
  %120 = load i64, i64* %32, align 8
  store i64 %120, i64* %33, align 8
  br label %121

121:                                              ; preds = %119, %79
  %122 = load i32, i32* %27, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %27, align 4
  br label %37

124:                                              ; preds = %37
  %125 = load i32, i32* @sctp_logging_level, align 4
  %126 = call i32 @SCTP_BASE_SYSCTL(i32 %125)
  %127 = load i32, i32* @SCTP_FR_LOGGING_ENABLE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %124
  %131 = load i32, i32* %28, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  %134 = load i64*, i64** %18, align 8
  %135 = load i64, i64* %134, align 8
  %136 = load i64*, i64** %19, align 8
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %17, align 8
  %139 = load i32, i32* @SCTP_FR_LOG_BIGGEST_TSNS, align 4
  %140 = call i32 @sctp_log_fr(i64 %135, i64 %137, i64 %138, i32 %139)
  br label %141

141:                                              ; preds = %133, %130
  br label %142

142:                                              ; preds = %141, %124
  %143 = load i32, i32* %29, align 4
  store i32 %143, i32* %12, align 4
  br label %144

144:                                              ; preds = %142, %65
  %145 = load i32, i32* %12, align 4
  ret i32 %145
}

declare dso_local %struct.sctp_tmit_chunk* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @sctp_m_getptr(%struct.mbuf*, i32, i32, i32*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @SCTP_TSN_GT(i64, i64) #1

declare dso_local i64 @sctp_process_segment_range(%struct.sctp_tcb*, %struct.sctp_tmit_chunk**, i64, i64, i64, i32, i32*, i64*, i64*, i32*) #1

declare dso_local i32 @SCTP_BASE_SYSCTL(i32) #1

declare dso_local i32 @sctp_log_fr(i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
