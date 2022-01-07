; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_conn_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_conn_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_conn = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.sockopt = type { i32*, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ICL_CONN_STATE_BHS = common dso_local global i32 0, align 4
@ISCSI_HEADER_DIGEST_SIZE = common dso_local global i32 0, align 4
@ISCSI_DATA_DIGEST_SIZE = common dso_local global i32 0, align 4
@sendspace = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"kern.icl.sendspace too low; must be at least %zd\00", align 1
@recvspace = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"kern.icl.recvspace too low; must be at least %zd\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"soreserve failed with error %d\00", align 1
@SB_AUTOSIZE = common dso_local global i32 0, align 4
@SOPT_SET = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"disabling TCP_NODELAY failed with error %d\00", align 1
@SO_SND = common dso_local global i32 0, align 4
@icl_soupcall_send = common dso_local global i32 0, align 4
@SO_RCV = common dso_local global i32 0, align 4
@icl_soupcall_receive = common dso_local global i32 0, align 4
@icl_send_thread = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"%stx\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"kthread_add(9) failed with error %d\00", align 1
@icl_receive_thread = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"%srx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icl_conn*)* @icl_conn_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_conn_start(%struct.icl_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.icl_conn*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sockopt, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.icl_conn* %0, %struct.icl_conn** %3, align 8
  store i32 1, i32* %7, align 4
  %8 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %9 = call i32 @ICL_CONN_LOCK(%struct.icl_conn* %8)
  %10 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %11 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %10, i32 0, i32 7
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = icmp eq %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %16 = call i32 @ICL_CONN_UNLOCK(%struct.icl_conn* %15)
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %2, align 4
  br label %203

18:                                               ; preds = %1
  %19 = load i32, i32* @ICL_CONN_STATE_BHS, align 4
  %20 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %21 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %20, i32 0, i32 8
  store i32 %19, i32* %21, align 8
  %22 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %23 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %22, i32 0, i32 0
  store i32 4, i32* %23, align 8
  %24 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %25 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %24, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %27 = call i32 @ICL_CONN_UNLOCK(%struct.icl_conn* %26)
  %28 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %29 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = add i64 4, %31
  %33 = load i32, i32* @ISCSI_HEADER_DIGEST_SIZE, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 %32, %34
  %36 = load i32, i32* @ISCSI_DATA_DIGEST_SIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %35, %37
  %39 = add i64 %38, 4
  store i64 %39, i64* %4, align 8
  %40 = load i64, i64* @sendspace, align 8
  %41 = load i64, i64* %4, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %18
  %44 = load i64, i64* %4, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @ICL_WARN(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i64, i64* %4, align 8
  store i64 %47, i64* @sendspace, align 8
  br label %48

48:                                               ; preds = %43, %18
  %49 = load i64, i64* @recvspace, align 8
  %50 = load i64, i64* %4, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i64, i64* %4, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @ICL_WARN(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i64, i64* %4, align 8
  store i64 %56, i64* @recvspace, align 8
  br label %57

57:                                               ; preds = %52, %48
  %58 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %59 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %58, i32 0, i32 7
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load i64, i64* @sendspace, align 8
  %62 = load i64, i64* @recvspace, align 8
  %63 = call i32 @soreserve(%struct.TYPE_6__* %60, i64 %61, i64 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %57
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @ICL_WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %70 = call i32 @icl_soft_conn_close(%struct.icl_conn* %69)
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %203

72:                                               ; preds = %57
  %73 = load i32, i32* @SB_AUTOSIZE, align 4
  %74 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %75 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %74, i32 0, i32 7
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %73
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* @SB_AUTOSIZE, align 4
  %82 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %83 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %82, i32 0, i32 7
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %81
  store i32 %88, i32* %86, align 4
  %89 = call i32 @bzero(%struct.sockopt* %5, i32 24)
  %90 = load i32, i32* @SOPT_SET, align 4
  %91 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %5, i32 0, i32 4
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* @IPPROTO_TCP, align 4
  %93 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %5, i32 0, i32 3
  store i32 %92, i32* %93, align 8
  %94 = load i32, i32* @TCP_NODELAY, align 4
  %95 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %5, i32 0, i32 2
  store i32 %94, i32* %95, align 4
  %96 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %5, i32 0, i32 0
  store i32* %7, i32** %96, align 8
  %97 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %5, i32 0, i32 1
  store i32 4, i32* %97, align 8
  %98 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %99 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %98, i32 0, i32 7
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = call i32 @sosetopt(%struct.TYPE_6__* %100, %struct.sockopt* %5)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %72
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @ICL_WARN(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  %107 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %108 = call i32 @icl_soft_conn_close(%struct.icl_conn* %107)
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %2, align 4
  br label %203

110:                                              ; preds = %72
  %111 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %112 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %111, i32 0, i32 7
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = call i32 @SOCKBUF_LOCK(%struct.TYPE_7__* %114)
  %116 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %117 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %116, i32 0, i32 7
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = load i32, i32* @SO_SND, align 4
  %120 = load i32, i32* @icl_soupcall_send, align 4
  %121 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %122 = call i32 @soupcall_set(%struct.TYPE_6__* %118, i32 %119, i32 %120, %struct.icl_conn* %121)
  %123 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %124 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %123, i32 0, i32 7
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_7__* %126)
  %128 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %129 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %128, i32 0, i32 7
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = call i32 @SOCKBUF_LOCK(%struct.TYPE_7__* %131)
  %133 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %134 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %133, i32 0, i32 7
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = load i32, i32* @SO_RCV, align 4
  %137 = load i32, i32* @icl_soupcall_receive, align 4
  %138 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %139 = call i32 @soupcall_set(%struct.TYPE_6__* %135, i32 %136, i32 %137, %struct.icl_conn* %138)
  %140 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %141 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %140, i32 0, i32 7
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_7__* %143)
  %145 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %146 = call i32 @ICL_CONN_LOCK(%struct.icl_conn* %145)
  %147 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %148 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %147, i32 0, i32 4
  store i32 1, i32* %148, align 8
  %149 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %150 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %149, i32 0, i32 3
  store i32 1, i32* %150, align 4
  %151 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %152 = call i32 @ICL_CONN_UNLOCK(%struct.icl_conn* %151)
  %153 = load i32, i32* @icl_send_thread, align 4
  %154 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %155 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %156 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @kthread_add(i32 %153, %struct.icl_conn* %154, i32* null, i32* null, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %157)
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %6, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %178

161:                                              ; preds = %110
  %162 = load i32, i32* %6, align 4
  %163 = call i32 @ICL_WARN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %162)
  %164 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %165 = call i32 @ICL_CONN_LOCK(%struct.icl_conn* %164)
  %166 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %167 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %166, i32 0, i32 4
  store i32 0, i32* %167, align 8
  %168 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %169 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %168, i32 0, i32 3
  store i32 0, i32* %169, align 4
  %170 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %171 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %170, i32 0, i32 5
  %172 = call i32 @cv_signal(i32* %171)
  %173 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %174 = call i32 @ICL_CONN_UNLOCK(%struct.icl_conn* %173)
  %175 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %176 = call i32 @icl_soft_conn_close(%struct.icl_conn* %175)
  %177 = load i32, i32* %6, align 4
  store i32 %177, i32* %2, align 4
  br label %203

178:                                              ; preds = %110
  %179 = load i32, i32* @icl_receive_thread, align 4
  %180 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %181 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %182 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @kthread_add(i32 %179, %struct.icl_conn* %180, i32* null, i32* null, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %183)
  store i32 %184, i32* %6, align 4
  %185 = load i32, i32* %6, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %202

187:                                              ; preds = %178
  %188 = load i32, i32* %6, align 4
  %189 = call i32 @ICL_WARN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %188)
  %190 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %191 = call i32 @ICL_CONN_LOCK(%struct.icl_conn* %190)
  %192 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %193 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %192, i32 0, i32 4
  store i32 0, i32* %193, align 8
  %194 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %195 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %194, i32 0, i32 5
  %196 = call i32 @cv_signal(i32* %195)
  %197 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %198 = call i32 @ICL_CONN_UNLOCK(%struct.icl_conn* %197)
  %199 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %200 = call i32 @icl_soft_conn_close(%struct.icl_conn* %199)
  %201 = load i32, i32* %6, align 4
  store i32 %201, i32* %2, align 4
  br label %203

202:                                              ; preds = %178
  store i32 0, i32* %2, align 4
  br label %203

203:                                              ; preds = %202, %187, %161, %104, %66, %14
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local i32 @ICL_CONN_LOCK(%struct.icl_conn*) #1

declare dso_local i32 @ICL_CONN_UNLOCK(%struct.icl_conn*) #1

declare dso_local i32 @ICL_WARN(i8*, i32) #1

declare dso_local i32 @soreserve(%struct.TYPE_6__*, i64, i64) #1

declare dso_local i32 @icl_soft_conn_close(%struct.icl_conn*) #1

declare dso_local i32 @bzero(%struct.sockopt*, i32) #1

declare dso_local i32 @sosetopt(%struct.TYPE_6__*, %struct.sockopt*) #1

declare dso_local i32 @SOCKBUF_LOCK(%struct.TYPE_7__*) #1

declare dso_local i32 @soupcall_set(%struct.TYPE_6__*, i32, i32, %struct.icl_conn*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(%struct.TYPE_7__*) #1

declare dso_local i32 @kthread_add(i32, %struct.icl_conn*, i32*, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @cv_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
