; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { i32, i64, i32 }

@SDP_TIMEWAIT = common dso_local global i32 0, align 4
@SDP_DROPPED = common dso_local global i32 0, align 4
@TCPS_ESTABLISHED = common dso_local global i64 0, align 8
@EHOSTUNREACH = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@EHOSTDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sdp_sock* @sdp_notify(%struct.sdp_sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sdp_sock*, align 8
  %4 = alloca %struct.sdp_sock*, align 8
  %5 = alloca i32, align 4
  store %struct.sdp_sock* %0, %struct.sdp_sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %7 = call i32 @SDP_WLOCK_ASSERT(%struct.sdp_sock* %6)
  %8 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %9 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SDP_TIMEWAIT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %16 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SDP_DROPPED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14, %2
  %22 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  store %struct.sdp_sock* %22, %struct.sdp_sock** %3, align 8
  br label %50

23:                                               ; preds = %14
  %24 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %25 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @EHOSTUNREACH, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @ENETUNREACH, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @EHOSTDOWN, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %33, %29
  %42 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  store %struct.sdp_sock* %42, %struct.sdp_sock** %3, align 8
  br label %50

43:                                               ; preds = %37, %23
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %46 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call %struct.sdp_sock* @sdp_drop(%struct.sdp_sock* %47, i32 %48)
  store %struct.sdp_sock* %49, %struct.sdp_sock** %3, align 8
  br label %50

50:                                               ; preds = %43, %41, %21
  %51 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  ret %struct.sdp_sock* %51
}

declare dso_local i32 @SDP_WLOCK_ASSERT(%struct.sdp_sock*) #1

declare dso_local %struct.sdp_sock* @sdp_drop(%struct.sdp_sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
