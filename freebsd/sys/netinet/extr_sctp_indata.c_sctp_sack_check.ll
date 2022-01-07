; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_indata.c_sctp_sack_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_indata.c_sctp_sack_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { i32, %struct.sctp_association }
%struct.sctp_association = type { i32, i64, i64, i64, i64, i64, %struct.TYPE_2__, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SCTP_STATE_SHUTDOWN_SENT = common dso_local global i64 0, align 8
@SCTP_TIMER_TYPE_RECV = common dso_local global i32 0, align 4
@SCTP_FROM_SCTP_INDATA = common dso_local global i64 0, align 8
@SCTP_LOC_17 = common dso_local global i64 0, align 8
@SCTP_SO_NOT_LOCKED = common dso_local global i32 0, align 4
@sctp_cmt_use_dac = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_sack_check(%struct.sctp_tcb* %0, i32 %1) #0 {
  %3 = alloca %struct.sctp_tcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %9 = call i32 @sctp_slide_mapping_arrays(%struct.sctp_tcb* %8)
  %10 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %11 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %10, i32 0, i32 1
  store %struct.sctp_association* %11, %struct.sctp_association** %5, align 8
  %12 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %13 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %12, i32 0, i32 12
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %16 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %15, i32 0, i32 11
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @SCTP_TSN_GT(i32 %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %22 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %21, i32 0, i32 12
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %26 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %25, i32 0, i32 11
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %31 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %31, i32 0, i32 10
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @SCTP_TSN_GT(i32 %29, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %36 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb* %35)
  %37 = load i64, i64* @SCTP_STATE_SHUTDOWN_SENT, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %83

39:                                               ; preds = %28
  %40 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %41 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i64 @SCTP_OS_TIMER_PENDING(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load i32, i32* @SCTP_TIMER_TYPE_RECV, align 4
  %48 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %49 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %52 = load i64, i64* @SCTP_FROM_SCTP_INDATA, align 8
  %53 = load i64, i64* @SCTP_LOC_17, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @sctp_timer_stop(i32 %47, i32 %50, %struct.sctp_tcb* %51, i32* null, i64 %54)
  br label %56

56:                                               ; preds = %46, %39
  %57 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %58 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %59 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %59, i32 0, i32 9
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %65 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %65, i32 0, i32 9
  %67 = load i64, i64* %66, align 8
  br label %73

68:                                               ; preds = %56
  %69 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %70 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %70, i32 0, i32 8
  %72 = load i64, i64* %71, align 8
  br label %73

73:                                               ; preds = %68, %63
  %74 = phi i64 [ %67, %63 ], [ %72, %68 ]
  %75 = call i32 @sctp_send_shutdown(%struct.sctp_tcb* %57, i64 %74)
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %80 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %81 = call i32 @sctp_send_sack(%struct.sctp_tcb* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %73
  br label %193

83:                                               ; preds = %28
  %84 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %85 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %90 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %125, label %94

94:                                               ; preds = %83
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* %7, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %125, label %100

100:                                              ; preds = %97, %94
  %101 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %102 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %125, label %106

106:                                              ; preds = %100
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %125, label %109

109:                                              ; preds = %106
  %110 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %111 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %109
  %116 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %117 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %121 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = icmp sge i64 %119, %123
  br i1 %124, label %125, label %177

125:                                              ; preds = %115, %109, %106, %100, %97, %83
  %126 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %127 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = icmp sgt i64 %129, 0
  br i1 %130, label %131, label %167

131:                                              ; preds = %125
  %132 = load i32, i32* @sctp_cmt_use_dac, align 4
  %133 = call i64 @SCTP_BASE_SYSCTL(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %167

135:                                              ; preds = %131
  %136 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %137 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %167

141:                                              ; preds = %135
  %142 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %143 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %167

147:                                              ; preds = %141
  %148 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %149 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %147
  %154 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %155 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %155, i32 0, i32 6
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = call i64 @SCTP_OS_TIMER_PENDING(i32* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %167, label %160

160:                                              ; preds = %153
  %161 = load i32, i32* @SCTP_TIMER_TYPE_RECV, align 4
  %162 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %163 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %166 = call i32 @sctp_timer_start(i32 %161, i32 %164, %struct.sctp_tcb* %165, i32* null)
  br label %176

167:                                              ; preds = %153, %147, %141, %135, %131, %125
  %168 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %169 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %169, i32 0, i32 6
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = call i32 @SCTP_OS_TIMER_STOP(i32* %171)
  %173 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %174 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %175 = call i32 @sctp_send_sack(%struct.sctp_tcb* %173, i32 %174)
  br label %176

176:                                              ; preds = %167, %160
  br label %192

177:                                              ; preds = %115
  %178 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %179 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %179, i32 0, i32 6
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  %182 = call i64 @SCTP_OS_TIMER_PENDING(i32* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %191, label %184

184:                                              ; preds = %177
  %185 = load i32, i32* @SCTP_TIMER_TYPE_RECV, align 4
  %186 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %187 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %190 = call i32 @sctp_timer_start(i32 %185, i32 %188, %struct.sctp_tcb* %189, i32* null)
  br label %191

191:                                              ; preds = %184, %177
  br label %192

192:                                              ; preds = %191, %176
  br label %193

193:                                              ; preds = %192, %82
  ret void
}

declare dso_local i32 @sctp_slide_mapping_arrays(%struct.sctp_tcb*) #1

declare dso_local i32 @SCTP_TSN_GT(i32, i32) #1

declare dso_local i64 @SCTP_GET_STATE(%struct.sctp_tcb*) #1

declare dso_local i64 @SCTP_OS_TIMER_PENDING(i32*) #1

declare dso_local i32 @sctp_timer_stop(i32, i32, %struct.sctp_tcb*, i32*, i64) #1

declare dso_local i32 @sctp_send_shutdown(%struct.sctp_tcb*, i64) #1

declare dso_local i32 @sctp_send_sack(%struct.sctp_tcb*, i32) #1

declare dso_local i64 @SCTP_BASE_SYSCTL(i32) #1

declare dso_local i32 @sctp_timer_start(i32, i32, %struct.sctp_tcb*, i32*) #1

declare dso_local i32 @SCTP_OS_TIMER_STOP(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
