; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sdp_sock = type { i32 }

@SDP_TIMEWAIT = common dso_local global i32 0, align 4
@SDP_DROPPED = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @sdp_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdp_shutdown(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdp_sock*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.socket*, %struct.socket** %2, align 8
  %6 = call %struct.sdp_sock* @sdp_sk(%struct.socket* %5)
  store %struct.sdp_sock* %6, %struct.sdp_sock** %4, align 8
  %7 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %8 = call i32 @SDP_WLOCK(%struct.sdp_sock* %7)
  %9 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %10 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SDP_TIMEWAIT, align 4
  %13 = load i32, i32* @SDP_DROPPED, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @ECONNRESET, align 4
  store i32 %18, i32* %3, align 4
  br label %34

19:                                               ; preds = %1
  %20 = load %struct.socket*, %struct.socket** %2, align 8
  %21 = call i32 @socantsendmore(%struct.socket* %20)
  %22 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %23 = call i32 @sdp_usrclosed(%struct.sdp_sock* %22)
  %24 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %25 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SDP_DROPPED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %19
  %31 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %32 = call i32 @sdp_output_disconnect(%struct.sdp_sock* %31)
  br label %33

33:                                               ; preds = %30, %19
  br label %34

34:                                               ; preds = %33, %17
  %35 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %36 = call i32 @SDP_WUNLOCK(%struct.sdp_sock* %35)
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.sdp_sock* @sdp_sk(%struct.socket*) #1

declare dso_local i32 @SDP_WLOCK(%struct.sdp_sock*) #1

declare dso_local i32 @socantsendmore(%struct.socket*) #1

declare dso_local i32 @sdp_usrclosed(%struct.sdp_sock*) #1

declare dso_local i32 @sdp_output_disconnect(%struct.sdp_sock*) #1

declare dso_local i32 @SDP_WUNLOCK(%struct.sdp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
