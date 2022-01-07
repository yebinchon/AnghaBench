; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_timer.c_tcp_timers_unsuspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_timer.c_tcp_timers_unsuspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, %struct.TYPE_8__*, i32, %struct.TYPE_5__*, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@TT_DELACK_SUS = common dso_local global i32 0, align 4
@TF_DELACK = common dso_local global i32 0, align 4
@tcp_delacktime = common dso_local global i32 0, align 4
@TT_REXMT_SUS = common dso_local global i32 0, align 4
@TT_PERSIST_SUS = common dso_local global i32 0, align 4
@TT_KEEP_SUS = common dso_local global i32 0, align 4
@TT_2MSL_SUS = common dso_local global i32 0, align 4
@TCPS_FIN_WAIT_2 = common dso_local global i32 0, align 4
@SBS_CANTRCVMORE = common dso_local global i32 0, align 4
@tcp_fast_finwait2_recycle = common dso_local global i32 0, align 4
@tcp_finwait2_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"tp:%p bad timer_type 0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_timers_unsuspend(%struct.tcpcb* %0, i32 %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %204 [
    i32 131, label %6
    i32 128, label %42
    i32 129, label %85
    i32 130, label %114
    i32 132, label %148
  ]

6:                                                ; preds = %2
  %7 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %8 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %7, i32 0, i32 3
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TT_DELACK_SUS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %6
  %16 = load i32, i32* @TT_DELACK_SUS, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %19 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %18, i32 0, i32 3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %17
  store i32 %23, i32* %21, align 4
  %24 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %25 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @TF_DELACK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %15
  %31 = load i32, i32* @TF_DELACK, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %34 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %38 = load i32, i32* @tcp_delacktime, align 4
  %39 = call i32 @tcp_timer_activate(%struct.tcpcb* %37, i32 131, i32 %38)
  br label %40

40:                                               ; preds = %30, %15
  br label %41

41:                                               ; preds = %40, %6
  br label %208

42:                                               ; preds = %2
  %43 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %44 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %43, i32 0, i32 3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @TT_REXMT_SUS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %84

51:                                               ; preds = %42
  %52 = load i32, i32* @TT_REXMT_SUS, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %55 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %54, i32 0, i32 3
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %53
  store i32 %59, i32* %57, align 4
  %60 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %61 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %64 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @SEQ_GT(i32 %62, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %51
  %69 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %70 = call i32 @tcp_timer_active(%struct.tcpcb* %69, i32 129)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %74 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %79 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %80 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @tcp_timer_activate(%struct.tcpcb* %78, i32 128, i32 %81)
  br label %83

83:                                               ; preds = %77, %72, %68, %51
  br label %84

84:                                               ; preds = %83, %42
  br label %208

85:                                               ; preds = %2
  %86 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %87 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %86, i32 0, i32 3
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @TT_PERSIST_SUS, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %85
  %95 = load i32, i32* @TT_PERSIST_SUS, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %98 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %97, i32 0, i32 3
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, %96
  store i32 %102, i32* %100, align 4
  %103 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %104 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %94
  %108 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %109 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %108, i32 0, i32 4
  store i32 0, i32* %109, align 8
  %110 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %111 = call i32 @tcp_setpersist(%struct.tcpcb* %110)
  br label %112

112:                                              ; preds = %107, %94
  br label %113

113:                                              ; preds = %112, %85
  br label %208

114:                                              ; preds = %2
  %115 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %116 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %115, i32 0, i32 3
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @TT_KEEP_SUS, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %147

123:                                              ; preds = %114
  %124 = load i32, i32* @TT_KEEP_SUS, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %127 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %126, i32 0, i32 3
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, %125
  store i32 %131, i32* %129, align 4
  %132 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %133 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %134 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @TCPS_HAVEESTABLISHED(i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %123
  %139 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %140 = call i32 @TP_KEEPIDLE(%struct.tcpcb* %139)
  br label %144

141:                                              ; preds = %123
  %142 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %143 = call i32 @TP_KEEPINIT(%struct.tcpcb* %142)
  br label %144

144:                                              ; preds = %141, %138
  %145 = phi i32 [ %140, %138 ], [ %143, %141 ]
  %146 = call i32 @tcp_timer_activate(%struct.tcpcb* %132, i32 130, i32 %145)
  br label %147

147:                                              ; preds = %144, %114
  br label %208

148:                                              ; preds = %2
  %149 = load i32, i32* @TT_2MSL_SUS, align 4
  %150 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %151 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %150, i32 0, i32 3
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, %149
  store i32 %155, i32* %153, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %203

157:                                              ; preds = %148
  %158 = load i32, i32* @TT_2MSL_SUS, align 4
  %159 = xor i32 %158, -1
  %160 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %161 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %160, i32 0, i32 3
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, %159
  store i32 %165, i32* %163, align 4
  %166 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %167 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @TCPS_FIN_WAIT_2, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %202

171:                                              ; preds = %157
  %172 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %173 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %172, i32 0, i32 1
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = icmp eq %struct.TYPE_7__* %176, null
  br i1 %177, label %190, label %178

178:                                              ; preds = %171
  %179 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %180 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %179, i32 0, i32 1
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @SBS_CANTRCVMORE, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %202

190:                                              ; preds = %178, %171
  %191 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %192 = load i32, i32* @tcp_fast_finwait2_recycle, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = load i32, i32* @tcp_finwait2_timeout, align 4
  br label %199

196:                                              ; preds = %190
  %197 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %198 = call i32 @TP_MAXIDLE(%struct.tcpcb* %197)
  br label %199

199:                                              ; preds = %196, %194
  %200 = phi i32 [ %195, %194 ], [ %198, %196 ]
  %201 = call i32 @tcp_timer_activate(%struct.tcpcb* %191, i32 132, i32 %200)
  br label %202

202:                                              ; preds = %199, %178, %157
  br label %203

203:                                              ; preds = %202, %148
  br label %208

204:                                              ; preds = %2
  %205 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %206 = load i32, i32* %4, align 4
  %207 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.tcpcb* %205, i32 %206)
  br label %208

208:                                              ; preds = %204, %203, %147, %113, %84, %41
  ret void
}

declare dso_local i32 @tcp_timer_activate(%struct.tcpcb*, i32, i32) #1

declare dso_local i32 @SEQ_GT(i32, i32) #1

declare dso_local i32 @tcp_timer_active(%struct.tcpcb*, i32) #1

declare dso_local i32 @tcp_setpersist(%struct.tcpcb*) #1

declare dso_local i32 @TCPS_HAVEESTABLISHED(i32) #1

declare dso_local i32 @TP_KEEPIDLE(%struct.tcpcb*) #1

declare dso_local i32 @TP_KEEPINIT(%struct.tcpcb*) #1

declare dso_local i32 @TP_MAXIDLE(%struct.tcpcb*) #1

declare dso_local i32 @panic(i8*, %struct.tcpcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
