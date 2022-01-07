; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_start_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_start_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { i64, i32, %struct.socket* }
%struct.socket = type { i32, i64, i32 }

@TCPS_ESTABLISHED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"sdp_start_disconnect: sdp_close() returned NULL\00", align 1
@SO_LINGER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"sdp_start_disconnect: sdp_drop() returned NULL\00", align 1
@SDP_DROPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdp_sock*)* @sdp_start_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdp_start_disconnect(%struct.sdp_sock* %0) #0 {
  %2 = alloca %struct.sdp_sock*, align 8
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  store %struct.sdp_sock* %0, %struct.sdp_sock** %2, align 8
  %5 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %6 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %5, i32 0, i32 2
  %7 = load %struct.socket*, %struct.socket** %6, align 8
  store %struct.socket* %7, %struct.socket** %3, align 8
  %8 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %9 = call i32 @SDP_WLOCK_ASSERT(%struct.sdp_sock* %8)
  %10 = load %struct.socket*, %struct.socket** %3, align 8
  %11 = call i32 @sdp_stop_keepalive_timer(%struct.socket* %10)
  %12 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %13 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %19 = call %struct.sdp_sock* @sdp_closed(%struct.sdp_sock* %18)
  store %struct.sdp_sock* %19, %struct.sdp_sock** %2, align 8
  %20 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %21 = icmp ne %struct.sdp_sock* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %72

24:                                               ; preds = %1
  %25 = load %struct.socket*, %struct.socket** %3, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SO_LINGER, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %24
  %32 = load %struct.socket*, %struct.socket** %3, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %38 = call %struct.sdp_sock* @sdp_drop(%struct.sdp_sock* %37, i32 0)
  store %struct.sdp_sock* %38, %struct.sdp_sock** %2, align 8
  %39 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %40 = icmp ne %struct.sdp_sock* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @KASSERT(i32 %41, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %71

43:                                               ; preds = %31, %24
  %44 = load %struct.socket*, %struct.socket** %3, align 8
  %45 = call i32 @soisdisconnecting(%struct.socket* %44)
  %46 = load %struct.socket*, %struct.socket** %3, align 8
  %47 = getelementptr inbounds %struct.socket, %struct.socket* %46, i32 0, i32 2
  %48 = call i32 @sbused(i32* %47)
  store i32 %48, i32* %4, align 4
  %49 = load %struct.socket*, %struct.socket** %3, align 8
  %50 = getelementptr inbounds %struct.socket, %struct.socket* %49, i32 0, i32 2
  %51 = call i32 @sbflush(i32* %50)
  %52 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %53 = call i32 @sdp_usrclosed(%struct.sdp_sock* %52)
  %54 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %55 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SDP_DROPPED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %43
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %65 = call i32 @sdp_output_reset(%struct.sdp_sock* %64)
  br label %69

66:                                               ; preds = %60
  %67 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %68 = call i32 @sdp_output_disconnect(%struct.sdp_sock* %67)
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %69, %43
  br label %71

71:                                               ; preds = %70, %36
  br label %72

72:                                               ; preds = %71, %17
  ret void
}

declare dso_local i32 @SDP_WLOCK_ASSERT(%struct.sdp_sock*) #1

declare dso_local i32 @sdp_stop_keepalive_timer(%struct.socket*) #1

declare dso_local %struct.sdp_sock* @sdp_closed(%struct.sdp_sock*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.sdp_sock* @sdp_drop(%struct.sdp_sock*, i32) #1

declare dso_local i32 @soisdisconnecting(%struct.socket*) #1

declare dso_local i32 @sbused(i32*) #1

declare dso_local i32 @sbflush(i32*) #1

declare dso_local i32 @sdp_usrclosed(%struct.sdp_sock*) #1

declare dso_local i32 @sdp_output_reset(%struct.sdp_sock*) #1

declare dso_local i32 @sdp_output_disconnect(%struct.sdp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
