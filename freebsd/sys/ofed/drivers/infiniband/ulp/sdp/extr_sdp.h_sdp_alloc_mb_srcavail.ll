; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp.h_sdp_alloc_mb_srcavail.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp.h_sdp_alloc_mb_srcavail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.socket = type { i32 }
%struct.sdp_srcah = type { i32, i8*, i8* }

@SDP_MID_SRCAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.socket*, i32, i32, i32, i32)* @sdp_alloc_mb_srcavail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @sdp_alloc_mb_srcavail(%struct.socket* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca %struct.sdp_srcah*, align 8
  store %struct.socket* %0, %struct.socket** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.socket*, %struct.socket** %7, align 8
  %15 = load i32, i32* @SDP_MID_SRCAVAIL, align 4
  %16 = load i32, i32* %11, align 4
  %17 = call %struct.mbuf* @sdp_alloc_mb(%struct.socket* %14, i32 %15, i32 24, i32 %16)
  store %struct.mbuf* %17, %struct.mbuf** %12, align 8
  %18 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %19 = icmp eq %struct.mbuf* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store %struct.mbuf* null, %struct.mbuf** %6, align 8
  br label %38

21:                                               ; preds = %5
  %22 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %23 = call i64 @mb_put(%struct.mbuf* %22, i32 24)
  %24 = inttoptr i64 %23 to %struct.sdp_srcah*
  store %struct.sdp_srcah* %24, %struct.sdp_srcah** %13, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i8* @htonl(i32 %25)
  %27 = load %struct.sdp_srcah*, %struct.sdp_srcah** %13, align 8
  %28 = getelementptr inbounds %struct.sdp_srcah, %struct.sdp_srcah* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i8* @htonl(i32 %29)
  %31 = load %struct.sdp_srcah*, %struct.sdp_srcah** %13, align 8
  %32 = getelementptr inbounds %struct.sdp_srcah, %struct.sdp_srcah* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @cpu_to_be64(i32 %33)
  %35 = load %struct.sdp_srcah*, %struct.sdp_srcah** %13, align 8
  %36 = getelementptr inbounds %struct.sdp_srcah, %struct.sdp_srcah* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  store %struct.mbuf* %37, %struct.mbuf** %6, align 8
  br label %38

38:                                               ; preds = %21, %20
  %39 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  ret %struct.mbuf* %39
}

declare dso_local %struct.mbuf* @sdp_alloc_mb(%struct.socket*, i32, i32, i32) #1

declare dso_local i64 @mb_put(%struct.mbuf*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
