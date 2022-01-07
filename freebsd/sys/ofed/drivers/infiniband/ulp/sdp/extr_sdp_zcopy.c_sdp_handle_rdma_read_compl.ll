; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_zcopy.c_sdp_handle_rdma_read_compl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_zcopy.c_sdp_handle_rdma_read_compl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { i32, %struct.TYPE_2__*, %struct.socket* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.socket = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"RdmaRdCompl ssk=%p tx_sa=%p\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"RdmaRdCompl ssk=%p tx_sa=%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Got RdmaRdCompl for aborted SrcAvail\0A\00", align 1
@.str.3 = private unnamed_addr constant [82 x i8] c"RdmaRdCompl arrived for old SrcAvail. SendSM mseq_ack: 0x%x, SrcAvail mseq: 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"woke up sleepers\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdp_handle_rdma_read_compl(%struct.sdp_sock* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.sdp_sock*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i64, align 8
  store %struct.sdp_sock* %0, %struct.sdp_sock** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %10 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %9, i32 0, i32 2
  %11 = load %struct.socket*, %struct.socket** %10, align 8
  store %struct.socket* %11, %struct.socket** %7, align 8
  %12 = load %struct.socket*, %struct.socket** %7, align 8
  %13 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %14 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %15 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = call i32 @sdp_prf1(%struct.socket* %12, i32* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.sdp_sock* %13, %struct.TYPE_2__* %16)
  %18 = load %struct.socket*, %struct.socket** %7, align 8
  %19 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %20 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %21 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i32 (%struct.socket*, i8*, ...) @sdp_dbg_data(%struct.socket* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.sdp_sock* %19, %struct.TYPE_2__* %22)
  %24 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %25 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %24, i32 0, i32 0
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %29 = icmp ne %struct.sdp_sock* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %34 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %3
  %38 = load %struct.socket*, %struct.socket** %7, align 8
  %39 = call i32 (%struct.socket*, i8*, ...) @sdp_dbg_data(%struct.socket* %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %73

40:                                               ; preds = %3
  %41 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %42 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %40
  %49 = load %struct.socket*, %struct.socket** %7, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %52 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (%struct.socket*, i8*, ...) @sdp_dbg_data(%struct.socket* %49, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i64 0, i64 0), i64 %50, i64 %55)
  br label %73

57:                                               ; preds = %40
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %60 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %58
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 8
  %67 = load %struct.socket*, %struct.socket** %7, align 8
  %68 = getelementptr inbounds %struct.socket, %struct.socket* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @wake_up(i32 %69)
  %71 = load %struct.socket*, %struct.socket** %7, align 8
  %72 = call i32 (%struct.socket*, i8*, ...) @sdp_dbg_data(%struct.socket* %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %73

73:                                               ; preds = %57, %48, %37
  %74 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %75 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %74, i32 0, i32 0
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  ret void
}

declare dso_local i32 @sdp_prf1(%struct.socket*, i32*, i8*, %struct.sdp_sock*, %struct.TYPE_2__*) #1

declare dso_local i32 @sdp_dbg_data(%struct.socket*, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wake_up(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
