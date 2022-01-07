; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_zcopy.c_do_sdp_sendmsg_zcopy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_zcopy.c_do_sdp_sendmsg_zcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.tx_srcavail_state = type { i32, i32, i32, i32 }
%struct.iovec = type { i32, i32 }
%struct.sdp_sock = type { i32, i32*, i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"Error allocating fmr: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Couldn't get send buffer\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Error posting SrcAvail\0A\00", align 1
@TX_SA_SENDSM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Got SendSM. use SEND verb.\0A\00", align 1
@TX_SA_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"SrcAvail error completion\0A\00", align 1
@zcopy_tx_error = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Waiting for SendSM\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"finished waiting\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"QP was destroyed while waiting\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"got RdmaRdCompl\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.tx_srcavail_state*, %struct.iovec*, i64*)* @do_sdp_sendmsg_zcopy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_sdp_sendmsg_zcopy(%struct.socket* %0, %struct.tx_srcavail_state* %1, %struct.iovec* %2, i64* %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.tx_srcavail_state*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.sdp_sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.tx_srcavail_state* %1, %struct.tx_srcavail_state** %6, align 8
  store %struct.iovec* %2, %struct.iovec** %7, align 8
  store i64* %3, i64** %8, align 8
  %13 = load %struct.socket*, %struct.socket** %5, align 8
  %14 = call %struct.sdp_sock* @sdp_sk(%struct.socket* %13)
  store %struct.sdp_sock* %14, %struct.sdp_sock** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.socket*, %struct.socket** %5, align 8
  %16 = load %struct.iovec*, %struct.iovec** %7, align 8
  %17 = getelementptr inbounds %struct.iovec, %struct.iovec* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.iovec*, %struct.iovec** %7, align 8
  %20 = getelementptr inbounds %struct.iovec, %struct.iovec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %6, align 8
  %23 = getelementptr inbounds %struct.tx_srcavail_state, %struct.tx_srcavail_state* %22, i32 0, i32 2
  %24 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %6, align 8
  %25 = getelementptr inbounds %struct.tx_srcavail_state, %struct.tx_srcavail_state* %24, i32 0, i32 1
  %26 = call i32 @sdp_alloc_fmr(%struct.socket* %15, i32 %18, i32 %21, i32* %23, i32* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load %struct.socket*, %struct.socket** %5, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 (%struct.socket*, i8*, ...) @sdp_warn(%struct.socket* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %142

33:                                               ; preds = %4
  %34 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %35 = call i64 @tx_slots_free(%struct.sdp_sock* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load %struct.socket*, %struct.socket** %5, align 8
  %39 = load i64*, i64** %8, align 8
  %40 = call i32 @wait_for_sndbuf(%struct.socket* %38, i64* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.socket*, %struct.socket** %5, align 8
  %45 = call i32 (%struct.socket*, i8*, ...) @sdp_warn(%struct.socket* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %135

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %33
  %48 = load %struct.socket*, %struct.socket** %5, align 8
  %49 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %6, align 8
  %50 = call i32 @sdp_post_srcavail(%struct.socket* %48, %struct.tx_srcavail_state* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.socket*, %struct.socket** %5, align 8
  %55 = call i32 @sdp_dbg(%struct.socket* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %128

56:                                               ; preds = %47
  %57 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %58 = load i64*, i64** %8, align 8
  %59 = call i32 @sdp_wait_rdmardcompl(%struct.sdp_sock* %57, i64* %58, i32 0)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %114

63:                                               ; preds = %56
  %64 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %6, align 8
  %65 = getelementptr inbounds %struct.tx_srcavail_state, %struct.tx_srcavail_state* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @TX_SA_SENDSM, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load %struct.socket*, %struct.socket** %5, align 8
  %73 = call i32 @sdp_dbg_data(%struct.socket* %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %113

74:                                               ; preds = %63
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @TX_SA_ERROR, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load %struct.socket*, %struct.socket** %5, align 8
  %81 = call i32 @sdp_dbg_data(%struct.socket* %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %82 = load %struct.socket*, %struct.socket** %5, align 8
  %83 = call i32 @sdp_reset(%struct.socket* %82)
  %84 = load i32, i32* @zcopy_tx_error, align 4
  %85 = call i32 @SDPSTATS_COUNTER_INC(i32 %84)
  br label %112

86:                                               ; preds = %74
  %87 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %88 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %86
  %92 = load %struct.socket*, %struct.socket** %5, align 8
  %93 = call i32 @sdp_post_srcavail_cancel(%struct.socket* %92)
  %94 = load i32, i32* @HZ, align 4
  %95 = mul nsw i32 2, %94
  %96 = sext i32 %95 to i64
  %97 = load i64*, i64** %8, align 8
  store i64 %96, i64* %97, align 8
  %98 = load %struct.socket*, %struct.socket** %5, align 8
  %99 = call i32 @sdp_dbg_data(%struct.socket* %98, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %100 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %101 = load i64*, i64** %8, align 8
  %102 = call i32 @sdp_wait_rdmardcompl(%struct.sdp_sock* %100, i64* %101, i32 1)
  %103 = load %struct.socket*, %struct.socket** %5, align 8
  %104 = call i32 @sdp_dbg_data(%struct.socket* %103, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %105 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %106 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %105, i32 0, i32 2
  %107 = call i32 @cancel_delayed_work(i32* %106)
  br label %111

108:                                              ; preds = %86
  %109 = load %struct.socket*, %struct.socket** %5, align 8
  %110 = call i32 @sdp_dbg_data(%struct.socket* %109, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %91
  br label %112

112:                                              ; preds = %111, %79
  br label %113

113:                                              ; preds = %112, %71
  br label %117

114:                                              ; preds = %56
  %115 = load %struct.socket*, %struct.socket** %5, align 8
  %116 = call i32 @sdp_dbg_data(%struct.socket* %115, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %113
  %118 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %119 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %118, i32 0, i32 0
  %120 = load i64, i64* %11, align 8
  %121 = call i32 @spin_lock_irqsave(i32* %119, i64 %120)
  %122 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %123 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %122, i32 0, i32 1
  store i32* null, i32** %123, align 8
  %124 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %125 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %124, i32 0, i32 0
  %126 = load i64, i64* %11, align 8
  %127 = call i32 @spin_unlock_irqrestore(i32* %125, i64 %126)
  br label %128

128:                                              ; preds = %117, %53
  %129 = load %struct.socket*, %struct.socket** %5, align 8
  %130 = load %struct.iovec*, %struct.iovec** %7, align 8
  %131 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %6, align 8
  %132 = getelementptr inbounds %struct.tx_srcavail_state, %struct.tx_srcavail_state* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @sdp_update_iov_used(%struct.socket* %129, %struct.iovec* %130, i32 %133)
  br label %135

135:                                              ; preds = %128, %43
  %136 = load %struct.socket*, %struct.socket** %5, align 8
  %137 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %6, align 8
  %138 = getelementptr inbounds %struct.tx_srcavail_state, %struct.tx_srcavail_state* %137, i32 0, i32 2
  %139 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %6, align 8
  %140 = getelementptr inbounds %struct.tx_srcavail_state, %struct.tx_srcavail_state* %139, i32 0, i32 1
  %141 = call i32 @sdp_free_fmr(%struct.socket* %136, i32* %138, i32* %140)
  br label %142

142:                                              ; preds = %135, %29
  %143 = load i32, i32* %10, align 4
  ret i32 %143
}

declare dso_local %struct.sdp_sock* @sdp_sk(%struct.socket*) #1

declare dso_local i32 @sdp_alloc_fmr(%struct.socket*, i32, i32, i32*, i32*) #1

declare dso_local i32 @sdp_warn(%struct.socket*, i8*, ...) #1

declare dso_local i64 @tx_slots_free(%struct.sdp_sock*) #1

declare dso_local i32 @wait_for_sndbuf(%struct.socket*, i64*) #1

declare dso_local i32 @sdp_post_srcavail(%struct.socket*, %struct.tx_srcavail_state*) #1

declare dso_local i32 @sdp_dbg(%struct.socket*, i8*) #1

declare dso_local i32 @sdp_wait_rdmardcompl(%struct.sdp_sock*, i64*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sdp_dbg_data(%struct.socket*, i8*) #1

declare dso_local i32 @sdp_reset(%struct.socket*) #1

declare dso_local i32 @SDPSTATS_COUNTER_INC(i32) #1

declare dso_local i32 @sdp_post_srcavail_cancel(%struct.socket*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sdp_update_iov_used(%struct.socket*, %struct.iovec*, i32) #1

declare dso_local i32 @sdp_free_fmr(%struct.socket*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
