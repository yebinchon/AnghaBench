; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_keepalive_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_keepalive_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SDP_DROPPED = common dso_local global i32 0, align 4
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@SDP_KEEPALIVE_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sdp_keepalive_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdp_keepalive_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sdp_sock*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.sdp_sock*
  store %struct.sdp_sock* %5, %struct.sdp_sock** %3, align 8
  %6 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %7 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %6, i32 0, i32 1
  %8 = call i32 @callout_active(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %48

11:                                               ; preds = %1
  %12 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %13 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %12, i32 0, i32 1
  %14 = call i64 @callout_pending(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %45

17:                                               ; preds = %11
  %18 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %19 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %18, i32 0, i32 1
  %20 = call i32 @callout_deactivate(i32* %19)
  %21 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %22 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SDP_DROPPED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %17
  %28 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %29 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SO_KEEPALIVE, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27, %17
  br label %45

37:                                               ; preds = %27
  %38 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %39 = call i32 @sdp_post_keepalive(%struct.sdp_sock* %38)
  %40 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %41 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %40, i32 0, i32 1
  %42 = load i32, i32* @SDP_KEEPALIVE_TIME, align 4
  %43 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %44 = call i32 @callout_reset(i32* %41, i32 %42, void (i8*)* @sdp_keepalive_timeout, %struct.sdp_sock* %43)
  br label %45

45:                                               ; preds = %37, %36, %16
  %46 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %47 = call i32 @SDP_WUNLOCK(%struct.sdp_sock* %46)
  br label %48

48:                                               ; preds = %45, %10
  ret void
}

declare dso_local i32 @callout_active(i32*) #1

declare dso_local i64 @callout_pending(i32*) #1

declare dso_local i32 @callout_deactivate(i32*) #1

declare dso_local i32 @sdp_post_keepalive(%struct.sdp_sock*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.sdp_sock*) #1

declare dso_local i32 @SDP_WUNLOCK(%struct.sdp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
