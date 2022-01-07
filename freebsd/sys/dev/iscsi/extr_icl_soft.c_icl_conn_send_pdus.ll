; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_conn_send_pdus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_conn_send_pdus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_conn = type { %struct.socket* }
%struct.socket = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64 }
%struct.icl_pdu_stailq = type { i32 }
%struct.icl_pdu = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [37 x i8] c"no space to send; have %ld, need %ld\00", align 1
@ip_next = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"failed to finalize PDU; dropping connection\00", align 1
@coalesce = common dso_local global i64 0, align 8
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"failed to send PDU, error %d; dropping connection\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icl_conn*, %struct.icl_pdu_stailq*)* @icl_conn_send_pdus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_conn_send_pdus(%struct.icl_conn* %0, %struct.icl_pdu_stailq* %1) #0 {
  %3 = alloca %struct.icl_conn*, align 8
  %4 = alloca %struct.icl_pdu_stailq*, align 8
  %5 = alloca %struct.icl_pdu*, align 8
  %6 = alloca %struct.icl_pdu*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.icl_conn* %0, %struct.icl_conn** %3, align 8
  store %struct.icl_pdu_stailq* %1, %struct.icl_pdu_stailq** %4, align 8
  %13 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %14 = call i32 @ICL_CONN_LOCK_ASSERT_NOT(%struct.icl_conn* %13)
  %15 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %16 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %15, i32 0, i32 0
  %17 = load %struct.socket*, %struct.socket** %16, align 8
  store %struct.socket* %17, %struct.socket** %7, align 8
  %18 = load %struct.socket*, %struct.socket** %7, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 0
  %20 = call i32 @SOCKBUF_LOCK(%struct.TYPE_10__* %19)
  %21 = load %struct.socket*, %struct.socket** %7, align 8
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %21, i32 0, i32 0
  %23 = call i64 @sbspace(%struct.TYPE_10__* %22)
  store i64 %23, i64* %8, align 8
  %24 = load %struct.socket*, %struct.socket** %7, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  %29 = load %struct.socket*, %struct.socket** %7, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  store i64 %28, i64* %31, align 8
  %32 = load %struct.socket*, %struct.socket** %7, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 0
  %34 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_10__* %33)
  br label %35

35:                                               ; preds = %179, %2
  %36 = load %struct.icl_pdu_stailq*, %struct.icl_pdu_stailq** %4, align 8
  %37 = call i32 @STAILQ_EMPTY(%struct.icl_pdu_stailq* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %183

40:                                               ; preds = %35
  %41 = load %struct.icl_pdu_stailq*, %struct.icl_pdu_stailq** %4, align 8
  %42 = call %struct.icl_pdu* @STAILQ_FIRST(%struct.icl_pdu_stailq* %41)
  store %struct.icl_pdu* %42, %struct.icl_pdu** %5, align 8
  %43 = load %struct.icl_pdu*, %struct.icl_pdu** %5, align 8
  %44 = call i64 @icl_pdu_size(%struct.icl_pdu* %43)
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %40
  %49 = load %struct.socket*, %struct.socket** %7, align 8
  %50 = getelementptr inbounds %struct.socket, %struct.socket* %49, i32 0, i32 0
  %51 = call i32 @SOCKBUF_LOCK(%struct.TYPE_10__* %50)
  %52 = load %struct.socket*, %struct.socket** %7, align 8
  %53 = getelementptr inbounds %struct.socket, %struct.socket* %52, i32 0, i32 0
  %54 = call i64 @sbspace(%struct.TYPE_10__* %53)
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %48
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i32 (i8*, ...) @ICL_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %59, i64 %60)
  %62 = load i64, i64* %9, align 8
  %63 = load %struct.socket*, %struct.socket** %7, align 8
  %64 = getelementptr inbounds %struct.socket, %struct.socket* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  store i64 %62, i64* %65, align 8
  %66 = load %struct.socket*, %struct.socket** %7, align 8
  %67 = getelementptr inbounds %struct.socket, %struct.socket* %66, i32 0, i32 0
  %68 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_10__* %67)
  br label %183

69:                                               ; preds = %48
  %70 = load %struct.socket*, %struct.socket** %7, align 8
  %71 = getelementptr inbounds %struct.socket, %struct.socket* %70, i32 0, i32 0
  %72 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_10__* %71)
  br label %73

73:                                               ; preds = %69, %40
  %74 = load %struct.icl_pdu_stailq*, %struct.icl_pdu_stailq** %4, align 8
  %75 = load i32, i32* @ip_next, align 4
  %76 = call i32 @STAILQ_REMOVE_HEAD(%struct.icl_pdu_stailq* %74, i32 %75)
  %77 = load %struct.icl_pdu*, %struct.icl_pdu** %5, align 8
  %78 = call i32 @icl_pdu_finalize(%struct.icl_pdu* %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %73
  %82 = call i32 (i8*, ...) @ICL_DEBUG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %84 = load %struct.icl_pdu*, %struct.icl_pdu** %5, align 8
  %85 = call i32 @icl_soft_conn_pdu_free(%struct.icl_conn* %83, %struct.icl_pdu* %84)
  %86 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %87 = call i32 @icl_conn_fail(%struct.icl_conn* %86)
  br label %183

88:                                               ; preds = %73
  %89 = load i64, i64* @coalesce, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %156

91:                                               ; preds = %88
  store i32 1, i32* %11, align 4
  br label %92

92:                                               ; preds = %125, %91
  %93 = load %struct.icl_pdu_stailq*, %struct.icl_pdu_stailq** %4, align 8
  %94 = call %struct.icl_pdu* @STAILQ_FIRST(%struct.icl_pdu_stailq* %93)
  store %struct.icl_pdu* %94, %struct.icl_pdu** %6, align 8
  %95 = load %struct.icl_pdu*, %struct.icl_pdu** %6, align 8
  %96 = icmp eq %struct.icl_pdu* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %155

98:                                               ; preds = %92
  %99 = load %struct.icl_pdu*, %struct.icl_pdu** %6, align 8
  %100 = call i64 @icl_pdu_size(%struct.icl_pdu* %99)
  store i64 %100, i64* %10, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* %9, align 8
  %103 = load i64, i64* %10, align 8
  %104 = add nsw i64 %102, %103
  %105 = icmp slt i64 %101, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %155

107:                                              ; preds = %98
  %108 = load %struct.icl_pdu_stailq*, %struct.icl_pdu_stailq** %4, align 8
  %109 = load i32, i32* @ip_next, align 4
  %110 = call i32 @STAILQ_REMOVE_HEAD(%struct.icl_pdu_stailq* %108, i32 %109)
  %111 = load %struct.icl_pdu*, %struct.icl_pdu** %6, align 8
  %112 = call i32 @icl_pdu_finalize(%struct.icl_pdu* %111)
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %107
  %116 = call i32 (i8*, ...) @ICL_DEBUG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %117 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %118 = load %struct.icl_pdu*, %struct.icl_pdu** %5, align 8
  %119 = call i32 @icl_soft_conn_pdu_free(%struct.icl_conn* %117, %struct.icl_pdu* %118)
  %120 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %121 = load %struct.icl_pdu*, %struct.icl_pdu** %6, align 8
  %122 = call i32 @icl_soft_conn_pdu_free(%struct.icl_conn* %120, %struct.icl_pdu* %121)
  %123 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %124 = call i32 @icl_conn_fail(%struct.icl_conn* %123)
  br label %183

125:                                              ; preds = %107
  %126 = load %struct.icl_pdu*, %struct.icl_pdu** %5, align 8
  %127 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %126, i32 0, i32 0
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = load %struct.icl_pdu*, %struct.icl_pdu** %6, align 8
  %130 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %129, i32 0, i32 0
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = call i32 @m_cat(%struct.TYPE_9__* %128, %struct.TYPE_9__* %131)
  %133 = load %struct.icl_pdu*, %struct.icl_pdu** %6, align 8
  %134 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %133, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %134, align 8
  %135 = load i64, i64* %10, align 8
  %136 = load %struct.icl_pdu*, %struct.icl_pdu** %5, align 8
  %137 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %136, i32 0, i32 0
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, %135
  store i64 %142, i64* %140, align 8
  %143 = load i64, i64* %10, align 8
  %144 = load i64, i64* %9, align 8
  %145 = add nsw i64 %144, %143
  store i64 %145, i64* %9, align 8
  %146 = load %struct.icl_pdu_stailq*, %struct.icl_pdu_stailq** %4, align 8
  %147 = load %struct.icl_pdu*, %struct.icl_pdu** %5, align 8
  %148 = load i32, i32* @ip_next, align 4
  %149 = call i32 @STAILQ_REMOVE_AFTER(%struct.icl_pdu_stailq* %146, %struct.icl_pdu* %147, i32 %148)
  %150 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %151 = load %struct.icl_pdu*, %struct.icl_pdu** %6, align 8
  %152 = call i32 @icl_soft_conn_pdu_free(%struct.icl_conn* %150, %struct.icl_pdu* %151)
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %11, align 4
  br label %92

155:                                              ; preds = %106, %97
  br label %156

156:                                              ; preds = %155, %88
  %157 = load i64, i64* %9, align 8
  %158 = load i64, i64* %8, align 8
  %159 = sub nsw i64 %158, %157
  store i64 %159, i64* %8, align 8
  %160 = load %struct.socket*, %struct.socket** %7, align 8
  %161 = load %struct.icl_pdu*, %struct.icl_pdu** %5, align 8
  %162 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %161, i32 0, i32 0
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %162, align 8
  %164 = load i32, i32* @MSG_DONTWAIT, align 4
  %165 = load i32, i32* @curthread, align 4
  %166 = call i32 @sosend(%struct.socket* %160, i32* null, i32* null, %struct.TYPE_9__* %163, i32* null, i32 %164, i32 %165)
  store i32 %166, i32* %12, align 4
  %167 = load %struct.icl_pdu*, %struct.icl_pdu** %5, align 8
  %168 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %167, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %168, align 8
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %156
  %172 = load i32, i32* %12, align 4
  %173 = call i32 (i8*, ...) @ICL_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %172)
  %174 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %175 = load %struct.icl_pdu*, %struct.icl_pdu** %5, align 8
  %176 = call i32 @icl_soft_conn_pdu_free(%struct.icl_conn* %174, %struct.icl_pdu* %175)
  %177 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %178 = call i32 @icl_conn_fail(%struct.icl_conn* %177)
  br label %183

179:                                              ; preds = %156
  %180 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %181 = load %struct.icl_pdu*, %struct.icl_pdu** %5, align 8
  %182 = call i32 @icl_soft_conn_pdu_free(%struct.icl_conn* %180, %struct.icl_pdu* %181)
  br label %35

183:                                              ; preds = %58, %81, %115, %171, %35
  ret void
}

declare dso_local i32 @ICL_CONN_LOCK_ASSERT_NOT(%struct.icl_conn*) #1

declare dso_local i32 @SOCKBUF_LOCK(%struct.TYPE_10__*) #1

declare dso_local i64 @sbspace(%struct.TYPE_10__*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(%struct.TYPE_10__*) #1

declare dso_local i32 @STAILQ_EMPTY(%struct.icl_pdu_stailq*) #1

declare dso_local %struct.icl_pdu* @STAILQ_FIRST(%struct.icl_pdu_stailq*) #1

declare dso_local i64 @icl_pdu_size(%struct.icl_pdu*) #1

declare dso_local i32 @ICL_DEBUG(i8*, ...) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(%struct.icl_pdu_stailq*, i32) #1

declare dso_local i32 @icl_pdu_finalize(%struct.icl_pdu*) #1

declare dso_local i32 @icl_soft_conn_pdu_free(%struct.icl_conn*, %struct.icl_pdu*) #1

declare dso_local i32 @icl_conn_fail(%struct.icl_conn*) #1

declare dso_local i32 @m_cat(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @STAILQ_REMOVE_AFTER(%struct.icl_pdu_stailq*, %struct.icl_pdu*, i32) #1

declare dso_local i32 @sosend(%struct.socket*, i32*, i32*, %struct.TYPE_9__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
