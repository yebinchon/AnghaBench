; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_send_link_down.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_send_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_qp = type { i32, i32, i32, i32 }
%struct.ntb_queue_entry = type { i32, i64, i32*, i32* }

@NTB_LINK_DOWN_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"NTB Wait for link down\00", align 1
@hz = common dso_local global i32 0, align 4
@NTBT_LINK_DOWN_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"ntb: Failed to send link down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_transport_qp*)* @ntb_send_link_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_send_link_down(%struct.ntb_transport_qp* %0) #0 {
  %2 = alloca %struct.ntb_transport_qp*, align 8
  %3 = alloca %struct.ntb_queue_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ntb_transport_qp* %0, %struct.ntb_transport_qp** %2, align 8
  %6 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %7 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %62

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %29, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @NTB_LINK_DOWN_TIMEOUT, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %18 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %17, i32 0, i32 2
  %19 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %20 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %19, i32 0, i32 1
  %21 = call %struct.ntb_queue_entry* @ntb_list_rm(i32* %18, i32* %20)
  store %struct.ntb_queue_entry* %21, %struct.ntb_queue_entry** %3, align 8
  %22 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %23 = icmp ne %struct.ntb_queue_entry* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %32

25:                                               ; preds = %16
  %26 = load i32, i32* @hz, align 4
  %27 = sdiv i32 %26, 10
  %28 = call i32 @pause(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %12

32:                                               ; preds = %24, %12
  %33 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %34 = icmp eq %struct.ntb_queue_entry* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %62

36:                                               ; preds = %32
  %37 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %38 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %37, i32 0, i32 3
  store i32* null, i32** %38, align 8
  %39 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %40 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %39, i32 0, i32 2
  store i32* null, i32** %40, align 8
  %41 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %42 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @NTBT_LINK_DOWN_FLAG, align 4
  %44 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %45 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %47 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %46, i32 0, i32 0
  %48 = call i32 @mtx_lock(i32* %47)
  %49 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %50 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %51 = call i32 @ntb_process_tx(%struct.ntb_transport_qp* %49, %struct.ntb_queue_entry* %50)
  store i32 %51, i32* %5, align 4
  %52 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %53 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %52, i32 0, i32 0
  %54 = call i32 @mtx_unlock(i32* %53)
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %36
  %58 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %36
  %60 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %61 = call i32 @ntb_qp_link_down_reset(%struct.ntb_transport_qp* %60)
  br label %62

62:                                               ; preds = %59, %35, %10
  ret void
}

declare dso_local %struct.ntb_queue_entry* @ntb_list_rm(i32*, i32*) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ntb_process_tx(%struct.ntb_transport_qp*, %struct.ntb_queue_entry*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ntb_qp_link_down_reset(%struct.ntb_transport_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
