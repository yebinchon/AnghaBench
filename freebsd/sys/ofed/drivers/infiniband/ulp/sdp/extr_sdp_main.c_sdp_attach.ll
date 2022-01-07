; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i64, i64, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.thread = type { i32 }
%struct.sdp_sock = type { i32, i32, i64, i64, i32, %struct.socket*, i32 }

@.str = private unnamed_addr constant [37 x i8] c"sdp_attach: ssk already set on so %p\00", align 1
@sdp_sendspace = common dso_local global i32 0, align 4
@sdp_recvspace = common dso_local global i32 0, align 4
@SB_AUTOSIZE = common dso_local global i32 0, align 4
@sdp_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"sdpsock\00", align 1
@TCPS_CLOSED = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@sdp_list = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4
@sdp_count = common dso_local global i32 0, align 4
@SO_LINGER = common dso_local global i32 0, align 4
@TCP_LINGERTIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.thread*)* @sdp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdp_attach(%struct.socket* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.sdp_sock*, align 8
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = call %struct.sdp_sock* @sdp_sk(%struct.socket* %10)
  store %struct.sdp_sock* %11, %struct.sdp_sock** %8, align 8
  %12 = load %struct.sdp_sock*, %struct.sdp_sock** %8, align 8
  %13 = icmp eq %struct.sdp_sock* %12, null
  %14 = zext i1 %13 to i32
  %15 = load %struct.socket*, %struct.socket** %5, align 8
  %16 = bitcast %struct.socket* %15 to i8*
  %17 = call i32 @KASSERT(i32 %14, i8* %16)
  %18 = load %struct.socket*, %struct.socket** %5, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %3
  %24 = load %struct.socket*, %struct.socket** %5, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %23, %3
  %30 = load %struct.socket*, %struct.socket** %5, align 8
  %31 = load i32, i32* @sdp_sendspace, align 4
  %32 = load i32, i32* @sdp_recvspace, align 4
  %33 = call i32 @soreserve(%struct.socket* %30, i32 %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %114

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %23
  %40 = load i32, i32* @SB_AUTOSIZE, align 4
  %41 = load %struct.socket*, %struct.socket** %5, align 8
  %42 = getelementptr inbounds %struct.socket, %struct.socket* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %40
  store i32 %45, i32* %43, align 8
  %46 = load i32, i32* @SB_AUTOSIZE, align 4
  %47 = load %struct.socket*, %struct.socket** %5, align 8
  %48 = getelementptr inbounds %struct.socket, %struct.socket* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %46
  store i32 %51, i32* %49, align 8
  %52 = load i32, i32* @sdp_zone, align 4
  %53 = load i32, i32* @M_NOWAIT, align 4
  %54 = load i32, i32* @M_ZERO, align 4
  %55 = or i32 %53, %54
  %56 = call %struct.sdp_sock* @uma_zalloc(i32 %52, i32 %55)
  store %struct.sdp_sock* %56, %struct.sdp_sock** %8, align 8
  %57 = load %struct.sdp_sock*, %struct.sdp_sock** %8, align 8
  %58 = icmp eq %struct.sdp_sock* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %39
  %60 = load i32, i32* @ENOBUFS, align 4
  store i32 %60, i32* %4, align 4
  br label %114

61:                                               ; preds = %39
  %62 = load %struct.sdp_sock*, %struct.sdp_sock** %8, align 8
  %63 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %62, i32 0, i32 6
  %64 = call i32 @rw_init(i32* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.socket*, %struct.socket** %5, align 8
  %66 = load %struct.sdp_sock*, %struct.sdp_sock** %8, align 8
  %67 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %66, i32 0, i32 5
  store %struct.socket* %65, %struct.socket** %67, align 8
  %68 = load %struct.socket*, %struct.socket** %5, align 8
  %69 = getelementptr inbounds %struct.socket, %struct.socket* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @crhold(i32 %70)
  %72 = load %struct.sdp_sock*, %struct.sdp_sock** %8, align 8
  %73 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load %struct.sdp_sock*, %struct.sdp_sock** %8, align 8
  %75 = ptrtoint %struct.sdp_sock* %74 to i64
  %76 = load %struct.socket*, %struct.socket** %5, align 8
  %77 = getelementptr inbounds %struct.socket, %struct.socket* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  %78 = load %struct.socket*, %struct.socket** %5, align 8
  %79 = call i32 @sdp_init_sock(%struct.socket* %78)
  %80 = load %struct.sdp_sock*, %struct.sdp_sock** %8, align 8
  %81 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %80, i32 0, i32 3
  store i64 0, i64* %81, align 8
  %82 = load %struct.sdp_sock*, %struct.sdp_sock** %8, align 8
  %83 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %82, i32 0, i32 2
  store i64 0, i64* %83, align 8
  %84 = load i32, i32* @TCPS_CLOSED, align 4
  %85 = load %struct.sdp_sock*, %struct.sdp_sock** %8, align 8
  %86 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.sdp_sock*, %struct.sdp_sock** %8, align 8
  %88 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %87, i32 0, i32 0
  %89 = load i32, i32* @INT_MAX, align 4
  %90 = call i32 @mbufq_init(i32* %88, i32 %89)
  %91 = call i32 (...) @SDP_LIST_WLOCK()
  %92 = load %struct.sdp_sock*, %struct.sdp_sock** %8, align 8
  %93 = load i32, i32* @list, align 4
  %94 = call i32 @LIST_INSERT_HEAD(i32* @sdp_list, %struct.sdp_sock* %92, i32 %93)
  %95 = load i32, i32* @sdp_count, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* @sdp_count, align 4
  %97 = call i32 (...) @SDP_LIST_WUNLOCK()
  %98 = load %struct.socket*, %struct.socket** %5, align 8
  %99 = getelementptr inbounds %struct.socket, %struct.socket* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @SO_LINGER, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %61
  %105 = load %struct.socket*, %struct.socket** %5, align 8
  %106 = getelementptr inbounds %struct.socket, %struct.socket* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load i64, i64* @TCP_LINGERTIME, align 8
  %111 = load %struct.socket*, %struct.socket** %5, align 8
  %112 = getelementptr inbounds %struct.socket, %struct.socket* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  br label %113

113:                                              ; preds = %109, %104, %61
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %113, %59, %36
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local %struct.sdp_sock* @sdp_sk(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @soreserve(%struct.socket*, i32, i32) #1

declare dso_local %struct.sdp_sock* @uma_zalloc(i32, i32) #1

declare dso_local i32 @rw_init(i32*, i8*) #1

declare dso_local i32 @crhold(i32) #1

declare dso_local i32 @sdp_init_sock(%struct.socket*) #1

declare dso_local i32 @mbufq_init(i32*, i32) #1

declare dso_local i32 @SDP_LIST_WLOCK(...) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.sdp_sock*, i32) #1

declare dso_local i32 @SDP_LIST_WUNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
