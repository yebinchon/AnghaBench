; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_usrclosed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_usrclosed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"sdp_usrclosed: sdp_closed() returned NULL\00", align 1
@SDP_NEEDFIN = common dso_local global i32 0, align 4
@TCPS_FIN_WAIT_1 = common dso_local global i32 0, align 4
@TCPS_LAST_ACK = common dso_local global i32 0, align 4
@TCPS_FIN_WAIT_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdp_sock*)* @sdp_usrclosed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdp_usrclosed(%struct.sdp_sock* %0) #0 {
  %2 = alloca %struct.sdp_sock*, align 8
  store %struct.sdp_sock* %0, %struct.sdp_sock** %2, align 8
  %3 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %4 = call i32 @SDP_WLOCK_ASSERT(%struct.sdp_sock* %3)
  %5 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %6 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %43 [
    i32 130, label %8
    i32 133, label %17
    i32 128, label %24
    i32 129, label %24
    i32 131, label %30
    i32 132, label %39
  ]

8:                                                ; preds = %1
  %9 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %10 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %9, i32 0, i32 0
  store i32 133, i32* %10, align 4
  %11 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %12 = call i32 @SDP_WUNLOCK(%struct.sdp_sock* %11)
  %13 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %14 = call i32 @sdp_destroy_cma(%struct.sdp_sock* %13)
  %15 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %16 = call i32 @SDP_WLOCK(%struct.sdp_sock* %15)
  br label %17

17:                                               ; preds = %1, %8
  %18 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %19 = call %struct.sdp_sock* @sdp_closed(%struct.sdp_sock* %18)
  store %struct.sdp_sock* %19, %struct.sdp_sock** %2, align 8
  %20 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %21 = icmp ne %struct.sdp_sock* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %43

24:                                               ; preds = %1, %1
  %25 = load i32, i32* @SDP_NEEDFIN, align 4
  %26 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %27 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %43

30:                                               ; preds = %1
  %31 = load i32, i32* @SDP_NEEDFIN, align 4
  %32 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %33 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @TCPS_FIN_WAIT_1, align 4
  %37 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %38 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %43

39:                                               ; preds = %1
  %40 = load i32, i32* @TCPS_LAST_ACK, align 4
  %41 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %42 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %1, %39, %30, %24, %17
  %44 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %45 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @TCPS_FIN_WAIT_2, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %51 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @TCPS_FIN_WAIT_2, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %57 = call i32 @sdp_2msl_wait(%struct.sdp_sock* %56)
  br label %63

58:                                               ; preds = %49
  %59 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %60 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @soisdisconnected(i32 %61)
  br label %63

63:                                               ; preds = %58, %55
  br label %64

64:                                               ; preds = %63, %43
  ret void
}

declare dso_local i32 @SDP_WLOCK_ASSERT(%struct.sdp_sock*) #1

declare dso_local i32 @SDP_WUNLOCK(%struct.sdp_sock*) #1

declare dso_local i32 @sdp_destroy_cma(%struct.sdp_sock*) #1

declare dso_local i32 @SDP_WLOCK(%struct.sdp_sock*) #1

declare dso_local %struct.sdp_sock* @sdp_closed(%struct.sdp_sock*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sdp_2msl_wait(%struct.sdp_sock*) #1

declare dso_local i32 @soisdisconnected(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
