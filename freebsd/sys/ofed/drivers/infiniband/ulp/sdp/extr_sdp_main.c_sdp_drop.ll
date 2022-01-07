; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_drop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { i32, i32, %struct.socket* }
%struct.socket = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sdp_sock* (%struct.sdp_sock*, i32)* @sdp_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sdp_sock* @sdp_drop(%struct.sdp_sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sdp_sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  store %struct.sdp_sock* %0, %struct.sdp_sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %7 = call i32 @SDP_WLOCK_ASSERT(%struct.sdp_sock* %6)
  %8 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %9 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %8, i32 0, i32 2
  %10 = load %struct.socket*, %struct.socket** %9, align 8
  store %struct.socket* %10, %struct.socket** %5, align 8
  %11 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %12 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @TCPS_HAVERCVDSYN(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %18 = call i32 @sdp_output_reset(%struct.sdp_sock* %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @ETIMEDOUT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %25 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %30 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %28, %23, %19
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.socket*, %struct.socket** %5, align 8
  %35 = getelementptr inbounds %struct.socket, %struct.socket* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %37 = call %struct.sdp_sock* @sdp_closed(%struct.sdp_sock* %36)
  ret %struct.sdp_sock* %37
}

declare dso_local i32 @SDP_WLOCK_ASSERT(%struct.sdp_sock*) #1

declare dso_local i64 @TCPS_HAVERCVDSYN(i32) #1

declare dso_local i32 @sdp_output_reset(%struct.sdp_sock*) #1

declare dso_local %struct.sdp_sock* @sdp_closed(%struct.sdp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
