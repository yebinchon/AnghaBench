; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_transport_tx_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_transport_tx_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_qp = type { i32, i32, i32, i32, i32 }
%struct.ntb_queue_entry = type { i32, i64, i8*, i8* }

@KTR_NTB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"TX: link not up\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"TX: could not get entry from tx_free_q\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"TX: got entry %p from tx_free_q\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"TX: process_tx failed. Returning entry %p to tx_free_q\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntb_transport_tx_enqueue(%struct.ntb_transport_qp* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ntb_transport_qp*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ntb_queue_entry*, align 8
  %11 = alloca i32, align 4
  store %struct.ntb_transport_qp* %0, %struct.ntb_transport_qp** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %13 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16, %4
  %20 = load i32, i32* @KTR_NTB, align 4
  %21 = call i32 @CTR0(i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %5, align 4
  br label %77

23:                                               ; preds = %16
  %24 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %25 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %24, i32 0, i32 1
  %26 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %27 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %26, i32 0, i32 0
  %28 = call %struct.ntb_queue_entry* @ntb_list_rm(i32* %25, i32* %27)
  store %struct.ntb_queue_entry* %28, %struct.ntb_queue_entry** %10, align 8
  %29 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %10, align 8
  %30 = icmp eq %struct.ntb_queue_entry* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load i32, i32* @KTR_NTB, align 4
  %33 = call i32 @CTR0(i32 %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %35 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @EBUSY, align 4
  store i32 %38, i32* %5, align 4
  br label %77

39:                                               ; preds = %23
  %40 = load i32, i32* @KTR_NTB, align 4
  %41 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %10, align 8
  %42 = call i32 @CTR1(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), %struct.ntb_queue_entry* %41)
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %10, align 8
  %45 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %10, align 8
  %48 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %10, align 8
  %51 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %10, align 8
  %53 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %55 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %54, i32 0, i32 2
  %56 = call i32 @mtx_lock(i32* %55)
  %57 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %58 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %10, align 8
  %59 = call i32 @ntb_process_tx(%struct.ntb_transport_qp* %57, %struct.ntb_queue_entry* %58)
  store i32 %59, i32* %11, align 4
  %60 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %61 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %60, i32 0, i32 2
  %62 = call i32 @mtx_unlock(i32* %61)
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %39
  %66 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %67 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %66, i32 0, i32 1
  %68 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %10, align 8
  %69 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %70 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %69, i32 0, i32 0
  %71 = call i32 @ntb_list_add(i32* %67, %struct.ntb_queue_entry* %68, i32* %70)
  %72 = load i32, i32* @KTR_NTB, align 4
  %73 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %10, align 8
  %74 = call i32 @CTR1(i32 %72, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), %struct.ntb_queue_entry* %73)
  br label %75

75:                                               ; preds = %65, %39
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %75, %31, %19
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @CTR0(i32, i8*) #1

declare dso_local %struct.ntb_queue_entry* @ntb_list_rm(i32*, i32*) #1

declare dso_local i32 @CTR1(i32, i8*, %struct.ntb_queue_entry*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ntb_process_tx(%struct.ntb_transport_qp*, %struct.ntb_queue_entry*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ntb_list_add(i32*, %struct.ntb_queue_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
