; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_shutdown_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_shutdown_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { i32, i32* }

@SDP_DESTROY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"sdp_shutdown_task: Racing with pcbfree for ssk %p\00", align 1
@SDP_DISCON = common dso_local global i32 0, align 4
@SDP_TIMEWAIT = common dso_local global i32 0, align 4
@SDP_DREQWAIT = common dso_local global i32 0, align 4
@SDP_DROPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @sdp_shutdown_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdp_shutdown_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdp_sock*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.sdp_sock*
  store %struct.sdp_sock* %7, %struct.sdp_sock** %5, align 8
  %8 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %9 = call i32 @SDP_WLOCK(%struct.sdp_sock* %8)
  %10 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %11 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SDP_DESTROY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %18 = call i32 @panic(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.sdp_sock* %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %21 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SDP_DISCON, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %28 = call i32 @sdp_output_reset(%struct.sdp_sock* %27)
  br label %29

29:                                               ; preds = %26, %19
  %30 = load i32, i32* @SDP_TIMEWAIT, align 4
  %31 = load i32, i32* @SDP_DREQWAIT, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %35 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %39 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SDP_DROPPED, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %29
  %45 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %46 = call i32* @sdp_closed(%struct.sdp_sock* %45)
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %60

49:                                               ; preds = %44, %29
  %50 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %51 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %56 = call i32 @sdp_pcbfree(%struct.sdp_sock* %55)
  br label %60

57:                                               ; preds = %49
  %58 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %59 = call i32 @SDP_WUNLOCK(%struct.sdp_sock* %58)
  br label %60

60:                                               ; preds = %57, %54, %48
  ret void
}

declare dso_local i32 @SDP_WLOCK(%struct.sdp_sock*) #1

declare dso_local i32 @panic(i8*, %struct.sdp_sock*) #1

declare dso_local i32 @sdp_output_reset(%struct.sdp_sock*) #1

declare dso_local i32* @sdp_closed(%struct.sdp_sock*) #1

declare dso_local i32 @sdp_pcbfree(%struct.sdp_sock*) #1

declare dso_local i32 @SDP_WUNLOCK(%struct.sdp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
