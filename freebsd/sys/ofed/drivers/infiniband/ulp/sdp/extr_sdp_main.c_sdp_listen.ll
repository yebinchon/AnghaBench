; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_listen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.thread = type { i32 }
%struct.sdp_sock = type { i32, i64, i32, i32 }
%struct.sockaddr = type { i32 }

@SDP_TIMEWAIT = common dso_local global i32 0, align 4
@SDP_DROPPED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCPS_LISTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.thread*)* @sdp_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdp_listen(%struct.socket* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sdp_sock*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.thread* %2, %struct.thread** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.socket*, %struct.socket** %4, align 8
  %10 = call %struct.sdp_sock* @sdp_sk(%struct.socket* %9)
  store %struct.sdp_sock* %10, %struct.sdp_sock** %8, align 8
  %11 = load %struct.sdp_sock*, %struct.sdp_sock** %8, align 8
  %12 = call i32 @SDP_WLOCK(%struct.sdp_sock* %11)
  %13 = load %struct.sdp_sock*, %struct.sdp_sock** %8, align 8
  %14 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SDP_TIMEWAIT, align 4
  %17 = load i32, i32* @SDP_DROPPED, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %7, align 4
  br label %58

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load %struct.sdp_sock*, %struct.sdp_sock** %8, align 8
  %28 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.sdp_sock*, %struct.sdp_sock** %8, align 8
  %33 = load %struct.thread*, %struct.thread** %6, align 8
  %34 = getelementptr inbounds %struct.thread, %struct.thread* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sdp_pcbbind(%struct.sdp_sock* %32, %struct.sockaddr* null, i32 %35)
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %31, %26, %23
  %38 = load %struct.socket*, %struct.socket** %4, align 8
  %39 = call i32 @SOCK_LOCK(%struct.socket* %38)
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.socket*, %struct.socket** %4, align 8
  %44 = call i32 @solisten_proto_check(%struct.socket* %43)
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load %struct.socket*, %struct.socket** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @solisten_proto(%struct.socket* %49, i32 %50)
  %52 = load i32, i32* @TCPS_LISTEN, align 4
  %53 = load %struct.sdp_sock*, %struct.sdp_sock** %8, align 8
  %54 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %48, %45
  %56 = load %struct.socket*, %struct.socket** %4, align 8
  %57 = call i32 @SOCK_UNLOCK(%struct.socket* %56)
  br label %58

58:                                               ; preds = %55, %21
  %59 = load %struct.sdp_sock*, %struct.sdp_sock** %8, align 8
  %60 = call i32 @SDP_WUNLOCK(%struct.sdp_sock* %59)
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.sdp_sock*, %struct.sdp_sock** %8, align 8
  %65 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @rdma_listen(i32 %66, i32 %67)
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %63, %58
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local %struct.sdp_sock* @sdp_sk(%struct.socket*) #1

declare dso_local i32 @SDP_WLOCK(%struct.sdp_sock*) #1

declare dso_local i32 @sdp_pcbbind(%struct.sdp_sock*, %struct.sockaddr*, i32) #1

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i32 @solisten_proto_check(%struct.socket*) #1

declare dso_local i32 @solisten_proto(%struct.socket*, i32) #1

declare dso_local i32 @SOCK_UNLOCK(%struct.socket*) #1

declare dso_local i32 @SDP_WUNLOCK(%struct.sdp_sock*) #1

declare dso_local i32 @rdma_listen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
