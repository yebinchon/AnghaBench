; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_closed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_closed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { i32, %struct.socket* }
%struct.socket = type { i32 }

@SDP_DROPPED = common dso_local global i32 0, align 4
@SDP_SOCKREF = common dso_local global i32 0, align 4
@SS_PROTOREF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"sdp_closed: !SS_PROTOREF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sdp_sock* (%struct.sdp_sock*)* @sdp_closed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sdp_sock* @sdp_closed(%struct.sdp_sock* %0) #0 {
  %2 = alloca %struct.sdp_sock*, align 8
  %3 = alloca %struct.sdp_sock*, align 8
  %4 = alloca %struct.socket*, align 8
  store %struct.sdp_sock* %0, %struct.sdp_sock** %3, align 8
  %5 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %6 = call i32 @SDP_WLOCK_ASSERT(%struct.sdp_sock* %5)
  %7 = load i32, i32* @SDP_DROPPED, align 4
  %8 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %9 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 8
  %12 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %13 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %12, i32 0, i32 1
  %14 = load %struct.socket*, %struct.socket** %13, align 8
  store %struct.socket* %14, %struct.socket** %4, align 8
  %15 = load %struct.socket*, %struct.socket** %4, align 8
  %16 = call i32 @soisdisconnected(%struct.socket* %15)
  %17 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %18 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SDP_SOCKREF, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %1
  %24 = load %struct.socket*, %struct.socket** %4, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SS_PROTOREF, align 4
  %28 = and i32 %26, %27
  %29 = call i32 @KASSERT(i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @SDP_SOCKREF, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %33 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %37 = call i32 @SDP_WUNLOCK(%struct.sdp_sock* %36)
  %38 = load %struct.socket*, %struct.socket** %4, align 8
  %39 = call i32 @SOCK_LOCK(%struct.socket* %38)
  %40 = load i32, i32* @SS_PROTOREF, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.socket*, %struct.socket** %4, align 8
  %43 = getelementptr inbounds %struct.socket, %struct.socket* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.socket*, %struct.socket** %4, align 8
  %47 = call i32 @sofree(%struct.socket* %46)
  store %struct.sdp_sock* null, %struct.sdp_sock** %2, align 8
  br label %50

48:                                               ; preds = %1
  %49 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  store %struct.sdp_sock* %49, %struct.sdp_sock** %2, align 8
  br label %50

50:                                               ; preds = %48, %23
  %51 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  ret %struct.sdp_sock* %51
}

declare dso_local i32 @SDP_WLOCK_ASSERT(%struct.sdp_sock*) #1

declare dso_local i32 @soisdisconnected(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SDP_WUNLOCK(%struct.sdp_sock*) #1

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i32 @sofree(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
