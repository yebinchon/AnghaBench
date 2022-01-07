; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_abort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sdp_sock = type { i32 }

@SDP_TIMEWAIT = common dso_local global i32 0, align 4
@SDP_DROPPED = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"sdp_abort: %p not dropped 0x%X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdp_abort(%struct.socket* %0) #0 {
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
  br i1 %13, label %25, label %14

14:                                               ; preds = %1
  %15 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %16 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SDP_DROPPED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %14
  %22 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %23 = load i32, i32* @ECONNABORTED, align 4
  %24 = call i32 @sdp_drop(%struct.sdp_sock* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %14, %1
  %26 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %27 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SDP_DROPPED, align 4
  %30 = and i32 %28, %29
  %31 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %32 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %33 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @KASSERT(i32 %30, i8* %36)
  %38 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %39 = call i32 @SDP_WUNLOCK(%struct.sdp_sock* %38)
  ret void
}

declare dso_local %struct.sdp_sock* @sdp_sk(%struct.socket*) #1

declare dso_local i32 @SDP_WLOCK(%struct.sdp_sock*) #1

declare dso_local i32 @sdp_drop(%struct.sdp_sock*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SDP_WUNLOCK(%struct.sdp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
