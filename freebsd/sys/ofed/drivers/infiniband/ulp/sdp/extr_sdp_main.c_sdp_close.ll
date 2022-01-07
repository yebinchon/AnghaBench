; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sdp_sock = type { i32 }

@SDP_TIMEWAIT = common dso_local global i32 0, align 4
@SDP_DROPPED = common dso_local global i32 0, align 4
@SS_PROTOREF = common dso_local global i32 0, align 4
@SDP_SOCKREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*)* @sdp_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdp_close(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.sdp_sock*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %4 = load %struct.socket*, %struct.socket** %2, align 8
  %5 = call %struct.sdp_sock* @sdp_sk(%struct.socket* %4)
  store %struct.sdp_sock* %5, %struct.sdp_sock** %3, align 8
  %6 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %7 = call i32 @SDP_WLOCK(%struct.sdp_sock* %6)
  %8 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %9 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SDP_TIMEWAIT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %1
  %15 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %16 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SDP_DROPPED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %23 = call i32 @sdp_start_disconnect(%struct.sdp_sock* %22)
  br label %24

24:                                               ; preds = %21, %14, %1
  %25 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %26 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SDP_DROPPED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %24
  %32 = load %struct.socket*, %struct.socket** %2, align 8
  %33 = call i32 @SOCK_LOCK(%struct.socket* %32)
  %34 = load i32, i32* @SS_PROTOREF, align 4
  %35 = load %struct.socket*, %struct.socket** %2, align 8
  %36 = getelementptr inbounds %struct.socket, %struct.socket* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.socket*, %struct.socket** %2, align 8
  %40 = call i32 @SOCK_UNLOCK(%struct.socket* %39)
  %41 = load i32, i32* @SDP_SOCKREF, align 4
  %42 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %43 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %31, %24
  %47 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %48 = call i32 @SDP_WUNLOCK(%struct.sdp_sock* %47)
  ret void
}

declare dso_local %struct.sdp_sock* @sdp_sk(%struct.socket*) #1

declare dso_local i32 @SDP_WLOCK(%struct.sdp_sock*) #1

declare dso_local i32 @sdp_start_disconnect(%struct.sdp_sock*) #1

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i32 @SOCK_UNLOCK(%struct.socket*) #1

declare dso_local i32 @SDP_WUNLOCK(%struct.sdp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
