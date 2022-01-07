; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_verbs.c_iser_conn_terminate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_verbs.c_iser_conn_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.iser_conn = type { i32, %struct.ib_conn }
%struct.ib_conn = type { %struct.TYPE_6__, i32*, i64 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.ib_send_wr = type { i32 }
%struct.ib_recv_wr = type { i32 }

@ISER_CONN_UP = common dso_local global i32 0, align 4
@ISER_CONN_TERMINATING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"iser_conn %p state %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"qp wasn't created\00", align 1
@ig = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to disconnect, conn: 0x%p err %d\00", align 1
@ISER_BEACON_WRID = common dso_local global i8* null, align 8
@IB_WR_SEND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"conn %p failed to post send_beacon\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"before send cv_wait: %p\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"after send cv_wait: %p\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"conn %p failed to post recv_beacon\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"before recv cv_wait: %p\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"after recv cv_wait: %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_conn_terminate(%struct.iser_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iser_conn*, align 8
  %4 = alloca %struct.ib_conn*, align 8
  %5 = alloca %struct.ib_send_wr*, align 8
  %6 = alloca %struct.ib_recv_wr*, align 8
  %7 = alloca i32, align 4
  store %struct.iser_conn* %0, %struct.iser_conn** %3, align 8
  %8 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %9 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %8, i32 0, i32 1
  store %struct.ib_conn* %9, %struct.ib_conn** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %11 = load i32, i32* @ISER_CONN_UP, align 4
  %12 = load i32, i32* @ISER_CONN_TERMINATING, align 4
  %13 = call i32 @iser_conn_state_comp_exch(%struct.iser_conn* %10, i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %136

16:                                               ; preds = %1
  %17 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %18 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %19 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ISER_INFO(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.iser_conn* %17, i32 %20)
  %22 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %23 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = call i32 @ISER_WARN(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %136

28:                                               ; preds = %16
  %29 = call i32 @sx_xlock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ig, i32 0, i32 0))
  %30 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %31 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %133

34:                                               ; preds = %28
  %35 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %36 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @rdma_disconnect(i64 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i8*, ...) @ISER_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), %struct.iser_conn* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %34
  %46 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %47 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = call i32 @mtx_lock(i32* %48)
  %50 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %51 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = call i32 @memset(%struct.TYPE_7__* %52, i32 0, i32 4)
  %54 = load i8*, i8** @ISER_BEACON_WRID, align 8
  %55 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %56 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i8* %54, i8** %58, align 8
  %59 = load i32, i32* @IB_WR_SEND, align 4
  %60 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %61 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  store i32 %59, i32* %63, align 8
  %64 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %65 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %68 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = call i32 @ib_post_send(i32* %66, %struct.TYPE_7__* %69, %struct.ib_send_wr** %5)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %45
  %74 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %75 = call i32 (i8*, ...) @ISER_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), %struct.ib_conn* %74)
  %76 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %77 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = call i32 @mtx_unlock(i32* %78)
  br label %134

80:                                               ; preds = %45
  %81 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %82 = call i32 @ISER_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), %struct.iser_conn* %81)
  %83 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %84 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %87 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = call i32 @cv_wait(i32* %85, i32* %88)
  %90 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %91 = call i32 @ISER_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), %struct.iser_conn* %90)
  %92 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %93 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = call i32 @memset(%struct.TYPE_7__* %94, i32 0, i32 4)
  %96 = load i8*, i8** @ISER_BEACON_WRID, align 8
  %97 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %98 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  store i8* %96, i8** %100, align 8
  %101 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %102 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %105 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = call i32 @ib_post_recv(i32* %103, %struct.TYPE_7__* %106, %struct.ib_recv_wr** %6)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %80
  %111 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %112 = call i32 (i8*, ...) @ISER_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), %struct.ib_conn* %111)
  %113 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %114 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = call i32 @mtx_unlock(i32* %115)
  br label %134

117:                                              ; preds = %80
  %118 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %119 = call i32 @ISER_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), %struct.iser_conn* %118)
  %120 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %121 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %124 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = call i32 @cv_wait(i32* %122, i32* %125)
  %127 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %128 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = call i32 @mtx_unlock(i32* %129)
  %131 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %132 = call i32 @ISER_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), %struct.iser_conn* %131)
  br label %133

133:                                              ; preds = %117, %28
  br label %134

134:                                              ; preds = %133, %110, %73
  %135 = call i32 @sx_xunlock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ig, i32 0, i32 0))
  store i32 1, i32* %2, align 4
  br label %136

136:                                              ; preds = %134, %26, %15
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @iser_conn_state_comp_exch(%struct.iser_conn*, i32, i32) #1

declare dso_local i32 @ISER_INFO(i8*, %struct.iser_conn*, i32) #1

declare dso_local i32 @ISER_WARN(i8*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @rdma_disconnect(i64) #1

declare dso_local i32 @ISER_ERR(i8*, ...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @ib_post_send(i32*, %struct.TYPE_7__*, %struct.ib_send_wr**) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ISER_DBG(i8*, %struct.iser_conn*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @ib_post_recv(i32*, %struct.TYPE_7__*, %struct.ib_recv_wr**) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
