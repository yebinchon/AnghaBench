; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_zcopy.c_sdp_handle_sendsm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_zcopy.c_sdp_handle_sendsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { i32, i32, %struct.TYPE_2__*, %struct.socket* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.socket = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"SendSM for cancelled/finished SrcAvail\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"SendSM arrived for old SrcAvail. SendSM mseq_ack: 0x%x, SrcAvail mseq: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Got SendSM - aborting SrcAvail\0A\00", align 1
@TX_SA_SENDSM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"woke up sleepers\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdp_handle_sendsm(%struct.sdp_sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sdp_sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i64, align 8
  store %struct.sdp_sock* %0, %struct.sdp_sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %8 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %7, i32 0, i32 3
  %9 = load %struct.socket*, %struct.socket** %8, align 8
  store %struct.socket* %9, %struct.socket** %5, align 8
  %10 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %11 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %15 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load %struct.socket*, %struct.socket** %5, align 8
  %20 = call i32 @sdp_prf1(%struct.socket* %19, i32* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %57

21:                                               ; preds = %2
  %22 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %23 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load %struct.socket*, %struct.socket** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %33 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (%struct.socket*, i8*, ...) @sdp_dbg_data(%struct.socket* %30, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %36)
  br label %57

38:                                               ; preds = %21
  %39 = load %struct.socket*, %struct.socket** %5, align 8
  %40 = call i32 (%struct.socket*, i8*, ...) @sdp_dbg_data(%struct.socket* %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @TX_SA_SENDSM, align 4
  %42 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %43 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %41
  store i32 %47, i32* %45, align 4
  %48 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %49 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %48, i32 0, i32 1
  %50 = call i32 @cancel_delayed_work(i32* %49)
  %51 = load %struct.socket*, %struct.socket** %5, align 8
  %52 = getelementptr inbounds %struct.socket, %struct.socket* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @wake_up(i32 %53)
  %55 = load %struct.socket*, %struct.socket** %5, align 8
  %56 = call i32 (%struct.socket*, i8*, ...) @sdp_dbg_data(%struct.socket* %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %38, %29, %18
  %58 = load %struct.sdp_sock*, %struct.sdp_sock** %3, align 8
  %59 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %58, i32 0, i32 0
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sdp_prf1(%struct.socket*, i32*, i8*) #1

declare dso_local i32 @sdp_dbg_data(%struct.socket*, i8*, ...) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @wake_up(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
