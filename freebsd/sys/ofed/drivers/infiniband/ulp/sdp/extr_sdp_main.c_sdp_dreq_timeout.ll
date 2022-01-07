; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_dreq_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_dreq_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { i64, i32, i64, i32 }

@TCPS_FIN_WAIT_1 = common dso_local global i64 0, align 8
@TCPS_LAST_ACK = common dso_local global i64 0, align 8
@SDP_DREQWAIT = common dso_local global i32 0, align 4
@SDP_DISCON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sdp_dreq_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdp_dreq_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sdp_sock*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.sdp_sock*
  store %struct.sdp_sock* %5, %struct.sdp_sock** %3, align 8
  %6 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %7 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %6, i32 0, i32 3
  %8 = call i32 @callout_active(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %57

11:                                               ; preds = %1
  %12 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %13 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %12, i32 0, i32 3
  %14 = call i64 @callout_pending(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %57

17:                                               ; preds = %11
  %18 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %19 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %18, i32 0, i32 3
  %20 = call i32 @callout_deactivate(i32* %19)
  %21 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %22 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TCPS_FIN_WAIT_1, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %28 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TCPS_LAST_ACK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %57

33:                                               ; preds = %26, %17
  %34 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %35 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SDP_DREQWAIT, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %57

41:                                               ; preds = %33
  %42 = load i32, i32* @SDP_DREQWAIT, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %45 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load i32, i32* @SDP_DISCON, align 4
  %49 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %50 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %54 = call i32 @sdp_2msl_wait(%struct.sdp_sock* %53)
  %55 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %56 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %41, %40, %32, %16, %10
  %58 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %59 = call i32 @SDP_WUNLOCK(%struct.sdp_sock* %58)
  ret void
}

declare dso_local i32 @callout_active(i32*) #1

declare dso_local i64 @callout_pending(i32*) #1

declare dso_local i32 @callout_deactivate(i32*) #1

declare dso_local i32 @sdp_2msl_wait(%struct.sdp_sock*) #1

declare dso_local i32 @SDP_WUNLOCK(%struct.sdp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
