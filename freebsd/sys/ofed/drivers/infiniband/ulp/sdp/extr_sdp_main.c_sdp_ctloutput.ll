; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_ctloutput.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_ctloutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockopt = type { i64, i32, i32 }
%struct.sdp_sock = type { i32 }

@SOL_SOCKET = common dso_local global i64 0, align 8
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@SDP_TIMEWAIT = common dso_local global i32 0, align 4
@SDP_DROPPED = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@SDP_NODELAY = common dso_local global i32 0, align 4
@ENOPROTOOPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockopt*)* @sdp_ctloutput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdp_ctloutput(%struct.socket* %0, %struct.sockopt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockopt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sdp_sock*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockopt* %1, %struct.sockopt** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.socket*, %struct.socket** %4, align 8
  %11 = call %struct.sdp_sock* @sdp_sk(%struct.socket* %10)
  store %struct.sdp_sock* %11, %struct.sdp_sock** %9, align 8
  %12 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %13 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SOL_SOCKET, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %2
  %18 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %19 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SO_KEEPALIVE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %25 = call i32 @SDP_WLOCK(%struct.sdp_sock* %24)
  %26 = load %struct.socket*, %struct.socket** %4, align 8
  %27 = getelementptr inbounds %struct.socket, %struct.socket* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SO_KEEPALIVE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load %struct.socket*, %struct.socket** %4, align 8
  %34 = call i32 @sdp_start_keepalive_timer(%struct.socket* %33)
  br label %38

35:                                               ; preds = %23
  %36 = load %struct.socket*, %struct.socket** %4, align 8
  %37 = call i32 @sdp_stop_keepalive_timer(%struct.socket* %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %40 = call i32 @SDP_WUNLOCK(%struct.sdp_sock* %39)
  br label %41

41:                                               ; preds = %38, %17, %2
  %42 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %43 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IPPROTO_TCP, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %131

49:                                               ; preds = %41
  %50 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %51 = call i32 @SDP_WLOCK(%struct.sdp_sock* %50)
  %52 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %53 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SDP_TIMEWAIT, align 4
  %56 = load i32, i32* @SDP_DROPPED, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %62 = call i32 @SDP_WUNLOCK(%struct.sdp_sock* %61)
  %63 = load i32, i32* @ECONNRESET, align 4
  store i32 %63, i32* %3, align 4
  br label %131

64:                                               ; preds = %49
  %65 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %66 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %129 [
    i32 129, label %68
    i32 130, label %110
  ]

68:                                               ; preds = %64
  %69 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %70 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  switch i32 %71, label %105 [
    i32 128, label %72
  ]

72:                                               ; preds = %68
  %73 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %74 = call i32 @SDP_WUNLOCK(%struct.sdp_sock* %73)
  %75 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %76 = call i32 @sooptcopyin(%struct.sockopt* %75, i32* %8, i32 4, i32 4)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %131

81:                                               ; preds = %72
  %82 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %83 = call i32 @SDP_WLOCK_RECHECK(%struct.sdp_sock* %82)
  %84 = load i32, i32* @SDP_NODELAY, align 4
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %90 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %100

93:                                               ; preds = %81
  %94 = load i32, i32* %7, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %97 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %93, %87
  %101 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %102 = call i32 @sdp_do_posts(%struct.sdp_sock* %101)
  %103 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %104 = call i32 @SDP_WUNLOCK(%struct.sdp_sock* %103)
  br label %109

105:                                              ; preds = %68
  %106 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %107 = call i32 @SDP_WUNLOCK(%struct.sdp_sock* %106)
  %108 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %105, %100
  br label %129

110:                                              ; preds = %64
  %111 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %112 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  switch i32 %113, label %124 [
    i32 128, label %114
  ]

114:                                              ; preds = %110
  %115 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %116 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @SDP_NODELAY, align 4
  %119 = and i32 %117, %118
  store i32 %119, i32* %8, align 4
  %120 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %121 = call i32 @SDP_WUNLOCK(%struct.sdp_sock* %120)
  %122 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %123 = call i32 @sooptcopyout(%struct.sockopt* %122, i32* %8, i32 4)
  store i32 %123, i32* %6, align 4
  br label %128

124:                                              ; preds = %110
  %125 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %126 = call i32 @SDP_WUNLOCK(%struct.sdp_sock* %125)
  %127 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %124, %114
  br label %129

129:                                              ; preds = %64, %128, %109
  %130 = load i32, i32* %6, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %129, %79, %60, %47
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.sdp_sock* @sdp_sk(%struct.socket*) #1

declare dso_local i32 @SDP_WLOCK(%struct.sdp_sock*) #1

declare dso_local i32 @sdp_start_keepalive_timer(%struct.socket*) #1

declare dso_local i32 @sdp_stop_keepalive_timer(%struct.socket*) #1

declare dso_local i32 @SDP_WUNLOCK(%struct.sdp_sock*) #1

declare dso_local i32 @sooptcopyin(%struct.sockopt*, i32*, i32, i32) #1

declare dso_local i32 @SDP_WLOCK_RECHECK(%struct.sdp_sock*) #1

declare dso_local i32 @sdp_do_posts(%struct.sdp_sock*) #1

declare dso_local i32 @sooptcopyout(%struct.sockopt*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
