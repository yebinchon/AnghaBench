; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_pcbbind.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_pcbbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.ucred = type { i32 }
%struct.sockaddr_in = type { i32, i64, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i64 }

@INADDR_ANY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@sdp_cma_handler = common dso_local global i32 0, align 4
@RDMA_PS_SDP = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdp_sock*, %struct.sockaddr*, %struct.ucred*)* @sdp_pcbbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdp_pcbbind(%struct.sdp_sock* %0, %struct.sockaddr* %1, %struct.ucred* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdp_sock*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.sockaddr_in, align 8
  %10 = alloca i32, align 4
  store %struct.sdp_sock* %0, %struct.sdp_sock** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.ucred* %2, %struct.ucred** %7, align 8
  %11 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %12 = call i32 @SDP_WLOCK_ASSERT(%struct.sdp_sock* %11)
  %13 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %14 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %19 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @INADDR_ANY, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17, %3
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %4, align 4
  br label %98

25:                                               ; preds = %17
  %26 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %27 = call i32 @SDP_WUNLOCK(%struct.sdp_sock* %26)
  %28 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %29 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %28, i32 0, i32 2
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = icmp eq %struct.TYPE_9__* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load i32, i32* @sdp_cma_handler, align 4
  %34 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %35 = load i32, i32* @RDMA_PS_SDP, align 4
  %36 = load i32, i32* @IB_QPT_RC, align 4
  %37 = call %struct.TYPE_9__* @rdma_create_id(i32* @init_net, i32 %33, %struct.sdp_sock* %34, i32 %35, i32 %36)
  %38 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %39 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %38, i32 0, i32 2
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %39, align 8
  br label %40

40:                                               ; preds = %32, %25
  %41 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %42 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %41, i32 0, i32 2
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = icmp eq %struct.TYPE_9__* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %47 = call i32 @SDP_WLOCK(%struct.sdp_sock* %46)
  %48 = load i32, i32* @ENOMEM, align 4
  store i32 %48, i32* %4, align 4
  br label %98

49:                                               ; preds = %40
  %50 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %51 = icmp eq %struct.sockaddr* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load i32, i32* @AF_INET, align 4
  %54 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 4
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i32 32, i32* %55, align 8
  %56 = load i64, i64* @INADDR_ANY, align 8
  %57 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 3
  %61 = call i32 @bzero(i32* %60, i32 4)
  %62 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  store %struct.sockaddr* %62, %struct.sockaddr** %6, align 8
  br label %63

63:                                               ; preds = %52, %49
  %64 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %65 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %64, i32 0, i32 2
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %68 = call i32 @rdma_bind_addr(%struct.TYPE_9__* %66, %struct.sockaddr* %67)
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %10, align 4
  %70 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %71 = call i32 @SDP_WLOCK(%struct.sdp_sock* %70)
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %63
  %75 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %76 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %75, i32 0, i32 2
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = bitcast i32* %80 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %81, %struct.sockaddr_in** %8, align 8
  %82 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %83 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %87 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %89 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %92 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  br label %96

93:                                               ; preds = %63
  %94 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %95 = call i32 @sdp_destroy_cma(%struct.sdp_sock* %94)
  br label %96

96:                                               ; preds = %93, %74
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %45, %23
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @SDP_WLOCK_ASSERT(%struct.sdp_sock*) #1

declare dso_local i32 @SDP_WUNLOCK(%struct.sdp_sock*) #1

declare dso_local %struct.TYPE_9__* @rdma_create_id(i32*, i32, %struct.sdp_sock*, i32, i32) #1

declare dso_local i32 @SDP_WLOCK(%struct.sdp_sock*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @rdma_bind_addr(%struct.TYPE_9__*, %struct.sockaddr*) #1

declare dso_local i32 @sdp_destroy_cma(%struct.sdp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
