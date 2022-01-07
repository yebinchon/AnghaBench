; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_zcopy.c_sdp_wait_rdma_wr_finished.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_zcopy.c_sdp_wait_rdma_wr_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { %struct.socket*, %struct.TYPE_4__, i32 }
%struct.socket = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@HZ = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Sleep till RDMA wr finished.\0A\00", align 1
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"got rdma cqe\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"QP destroyed\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Panic: Timed out waiting for RDMA read\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Going to sleep\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Woke up\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"woke up sleepers\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Finished waiting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdp_sock*)* @sdp_wait_rdma_wr_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdp_wait_rdma_wr_finished(%struct.sdp_sock* %0) #0 {
  %2 = alloca %struct.sdp_sock*, align 8
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i64, align 8
  store %struct.sdp_sock* %0, %struct.sdp_sock** %2, align 8
  %5 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %6 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %5, i32 0, i32 0
  %7 = load %struct.socket*, %struct.socket** %6, align 8
  store %struct.socket* %7, %struct.socket** %3, align 8
  %8 = load i32, i32* @HZ, align 4
  %9 = mul nsw i32 %8, 5
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %4, align 8
  %11 = load i32, i32* @wait, align 4
  %12 = call i32 @DEFINE_WAIT(i32 %11)
  %13 = load %struct.socket*, %struct.socket** %3, align 8
  %14 = call i32 @sdp_dbg_data(%struct.socket* %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %1, %46
  %16 = load %struct.socket*, %struct.socket** %3, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %20 = call i32 @prepare_to_wait(i32 %18, i32* @wait, i32 %19)
  %21 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %22 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %15
  %29 = load %struct.socket*, %struct.socket** %3, align 8
  %30 = call i32 @sdp_dbg_data(%struct.socket* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %70

31:                                               ; preds = %15
  %32 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %33 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load %struct.socket*, %struct.socket** %3, align 8
  %38 = call i32 @sdp_dbg_data(%struct.socket* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %70

39:                                               ; preds = %31
  %40 = load i64, i64* %4, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load %struct.socket*, %struct.socket** %3, align 8
  %44 = call i32 @sdp_warn(%struct.socket* %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %45 = call i32 @WARN_ON(i32 1)
  br label %70

46:                                               ; preds = %39
  %47 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %48 = call i32 @posts_handler_put(%struct.sdp_sock* %47)
  %49 = load %struct.socket*, %struct.socket** %3, align 8
  %50 = call i32 @sdp_prf1(%struct.socket* %49, i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %51 = load %struct.socket*, %struct.socket** %3, align 8
  %52 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %53 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 @sk_wait_event(%struct.socket* %51, i64* %4, i32 %60)
  %62 = load %struct.socket*, %struct.socket** %3, align 8
  %63 = call i32 @sdp_prf1(%struct.socket* %62, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %64 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %65 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %64, i32 0, i32 0
  %66 = load %struct.socket*, %struct.socket** %65, align 8
  %67 = call i32 @sdp_dbg_data(%struct.socket* %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %68 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %69 = call i32 @posts_handler_get(%struct.sdp_sock* %68)
  br label %15

70:                                               ; preds = %42, %36, %28
  %71 = load %struct.socket*, %struct.socket** %3, align 8
  %72 = getelementptr inbounds %struct.socket, %struct.socket* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @finish_wait(i32 %73, i32* @wait)
  %75 = load %struct.socket*, %struct.socket** %3, align 8
  %76 = call i32 @sdp_dbg_data(%struct.socket* %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @sdp_dbg_data(%struct.socket*, i8*) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @sdp_warn(%struct.socket*, i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @posts_handler_put(%struct.sdp_sock*) #1

declare dso_local i32 @sdp_prf1(%struct.socket*, i32*, i8*) #1

declare dso_local i32 @sk_wait_event(%struct.socket*, i64*, i32) #1

declare dso_local i32 @posts_handler_get(%struct.sdp_sock*) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
