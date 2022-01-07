; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_zcopy.c_sdp_sendmsg_zcopy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_zcopy.c_sdp_sendmsg_zcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { i32 }
%struct.iovec = type { i64, i64 }
%struct.sdp_sock = type { i32, i64 }
%struct.tx_srcavail_state = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Sending iov: %p, iov_len: 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"sdp_sendmsg_zcopy start\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Deadlock prevent: crossing SrcAvail\0A\00", align 1
@SOCK_REF_ZCOPY = common dso_local global i32 0, align 4
@sendmsg_zcopy_segment = common dso_local global i32 0, align 4
@SDP_SRCAVAIL_ADV_TIMEOUT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Error allocating zcopy context\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@sdp_zcopy_thresh = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"0x%lx bytes left, switching to bcopy\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"sdp_sendmsg_zcopy end rc: %d copied: %d\00", align 1
@ETIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdp_sendmsg_zcopy(%struct.kiocb* %0, %struct.socket* %1, %struct.iovec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kiocb*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca %struct.sdp_sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.tx_srcavail_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store %struct.iovec* %2, %struct.iovec** %7, align 8
  %15 = load %struct.socket*, %struct.socket** %6, align 8
  %16 = call %struct.sdp_sock* @sdp_sk(%struct.socket* %15)
  store %struct.sdp_sock* %16, %struct.sdp_sock** %8, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.socket*, %struct.socket** %6, align 8
  %18 = load %struct.iovec*, %struct.iovec** %7, align 8
  %19 = getelementptr inbounds %struct.iovec, %struct.iovec* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.iovec*, %struct.iovec** %7, align 8
  %22 = getelementptr inbounds %struct.iovec, %struct.iovec* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 (%struct.socket*, i8*, ...) @sdp_dbg_data(%struct.socket* %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %23)
  %25 = load %struct.socket*, %struct.socket** %6, align 8
  %26 = call i32 (%struct.socket*, i32*, i8*, ...) @sdp_prf1(%struct.socket* %25, i32* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.sdp_sock*, %struct.sdp_sock** %8, align 8
  %28 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load %struct.socket*, %struct.socket** %6, align 8
  %33 = call i32 (%struct.socket*, i8*, ...) @sdp_dbg_data(%struct.socket* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %139

34:                                               ; preds = %3
  %35 = load %struct.sdp_sock*, %struct.sdp_sock** %8, align 8
  %36 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SOCK_REF_ZCOPY, align 4
  %39 = call i32 @sock_hold(i32 %37, i32 %38)
  %40 = load i32, i32* @sendmsg_zcopy_segment, align 4
  %41 = call i32 @SDPSTATS_COUNTER_INC(i32 %40)
  %42 = load i64, i64* @SDP_SRCAVAIL_ADV_TIMEOUT, align 8
  store i64 %42, i64* %10, align 8
  %43 = load %struct.iovec*, %struct.iovec** %7, align 8
  %44 = getelementptr inbounds %struct.iovec, %struct.iovec* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = and i64 %45, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.tx_srcavail_state* @kmalloc(i32 4, i32 %51)
  store %struct.tx_srcavail_state* %52, %struct.tx_srcavail_state** %11, align 8
  %53 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %11, align 8
  %54 = icmp ne %struct.tx_srcavail_state* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %34
  %56 = load %struct.socket*, %struct.socket** %6, align 8
  %57 = call i32 @sdp_warn(%struct.socket* %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i32, i32* @EAGAIN, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %9, align 4
  br label %107

60:                                               ; preds = %34
  %61 = load %struct.iovec*, %struct.iovec** %7, align 8
  %62 = getelementptr inbounds %struct.iovec, %struct.iovec* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %13, align 8
  br label %64

64:                                               ; preds = %102, %60
  %65 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %11, align 8
  %66 = call i32 @tx_sa_reset(%struct.tx_srcavail_state* %65)
  %67 = load %struct.socket*, %struct.socket** %6, align 8
  %68 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %11, align 8
  %69 = load %struct.iovec*, %struct.iovec** %7, align 8
  %70 = call i32 @do_sdp_sendmsg_zcopy(%struct.socket* %67, %struct.tx_srcavail_state* %68, %struct.iovec* %69, i64* %10)
  store i32 %70, i32* %9, align 4
  %71 = load %struct.iovec*, %struct.iovec** %7, align 8
  %72 = getelementptr inbounds %struct.iovec, %struct.iovec* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %64
  %76 = load %struct.iovec*, %struct.iovec** %7, align 8
  %77 = getelementptr inbounds %struct.iovec, %struct.iovec* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @sdp_zcopy_thresh, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load %struct.socket*, %struct.socket** %6, align 8
  %83 = load %struct.iovec*, %struct.iovec** %7, align 8
  %84 = getelementptr inbounds %struct.iovec, %struct.iovec* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (%struct.socket*, i8*, ...) @sdp_dbg_data(%struct.socket* %82, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %85)
  br label %104

87:                                               ; preds = %75, %64
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %88
  %92 = load %struct.iovec*, %struct.iovec** %7, align 8
  %93 = getelementptr inbounds %struct.iovec, %struct.iovec* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ugt i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %11, align 8
  %98 = getelementptr inbounds %struct.tx_srcavail_state, %struct.tx_srcavail_state* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  br label %102

102:                                              ; preds = %96, %91, %88
  %103 = phi i1 [ false, %91 ], [ false, %88 ], [ %101, %96 ]
  br i1 %103, label %64, label %104

104:                                              ; preds = %102, %81
  %105 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %11, align 8
  %106 = call i32 @kfree(%struct.tx_srcavail_state* %105)
  br label %107

107:                                              ; preds = %104, %55
  %108 = load i64, i64* %13, align 8
  %109 = load %struct.iovec*, %struct.iovec** %7, align 8
  %110 = getelementptr inbounds %struct.iovec, %struct.iovec* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = sub i64 %108, %111
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %14, align 4
  %114 = load %struct.socket*, %struct.socket** %6, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %14, align 4
  %117 = call i32 (%struct.socket*, i32*, i8*, ...) @sdp_prf1(%struct.socket* %114, i32* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %115, i32 %116)
  %118 = load %struct.sdp_sock*, %struct.sdp_sock** %8, align 8
  %119 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @SOCK_REF_ZCOPY, align 4
  %122 = call i32 @sock_put(i32 %120, i32 %121)
  %123 = load i32, i32* %9, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %107
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @EAGAIN, align 4
  %128 = sub nsw i32 0, %127
  %129 = icmp ne i32 %126, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* @ETIME, align 4
  %133 = sub nsw i32 0, %132
  %134 = icmp ne i32 %131, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i32, i32* %9, align 4
  store i32 %136, i32* %4, align 4
  br label %139

137:                                              ; preds = %130, %125, %107
  %138 = load i32, i32* %14, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %137, %135, %31
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local %struct.sdp_sock* @sdp_sk(%struct.socket*) #1

declare dso_local i32 @sdp_dbg_data(%struct.socket*, i8*, ...) #1

declare dso_local i32 @sdp_prf1(%struct.socket*, i32*, i8*, ...) #1

declare dso_local i32 @sock_hold(i32, i32) #1

declare dso_local i32 @SDPSTATS_COUNTER_INC(i32) #1

declare dso_local %struct.tx_srcavail_state* @kmalloc(i32, i32) #1

declare dso_local i32 @sdp_warn(%struct.socket*, i8*) #1

declare dso_local i32 @tx_sa_reset(%struct.tx_srcavail_state*) #1

declare dso_local i32 @do_sdp_sendmsg_zcopy(%struct.socket*, %struct.tx_srcavail_state*, %struct.iovec*, i64*) #1

declare dso_local i32 @kfree(%struct.tx_srcavail_state*) #1

declare dso_local i32 @sock_put(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
