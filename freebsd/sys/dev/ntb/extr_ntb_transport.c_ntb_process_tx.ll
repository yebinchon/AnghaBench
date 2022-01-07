; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_process_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_process_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_qp = type { i32, i32, i32, i32, i32, i32, i32, i32 (%struct.ntb_transport_qp*, i32, i32*, i32)*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ntb_queue_entry = type { i32, i32* }

@KTR_NTB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"TX: process_tx: tx_pkts=%lu, tx_index=%u, remote entry=%u\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"TX: ring full\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"TX: frame too big. returning entry %p to tx_free_q\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"TX: copying entry %p to index %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_transport_qp*, %struct.ntb_queue_entry*)* @ntb_process_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_process_tx(%struct.ntb_transport_qp* %0, %struct.ntb_queue_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ntb_transport_qp*, align 8
  %5 = alloca %struct.ntb_queue_entry*, align 8
  store %struct.ntb_transport_qp* %0, %struct.ntb_transport_qp** %4, align 8
  store %struct.ntb_queue_entry* %1, %struct.ntb_queue_entry** %5, align 8
  %6 = load i32, i32* @KTR_NTB, align 4
  %7 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %8 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %11 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %14 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %13, i32 0, i32 9
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CTR3(i32 %6, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12, i32 %17)
  %19 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %20 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %23 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %22, i32 0, i32 9
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %21, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  %29 = load i32, i32* @KTR_NTB, align 4
  %30 = call i32 @CTR0(i32 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %32 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* @EAGAIN, align 4
  store i32 %35, i32* %3, align 4
  br label %107

36:                                               ; preds = %2
  %37 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %38 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %42 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = sub i64 %44, 4
  %46 = icmp ugt i64 %40, %45
  br i1 %46, label %47, label %82

47:                                               ; preds = %36
  %48 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %49 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %48, i32 0, i32 7
  %50 = load i32 (%struct.ntb_transport_qp*, i32, i32*, i32)*, i32 (%struct.ntb_transport_qp*, i32, i32*, i32)** %49, align 8
  %51 = icmp ne i32 (%struct.ntb_transport_qp*, i32, i32*, i32)* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %54 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %53, i32 0, i32 7
  %55 = load i32 (%struct.ntb_transport_qp*, i32, i32*, i32)*, i32 (%struct.ntb_transport_qp*, i32, i32*, i32)** %54, align 8
  %56 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %57 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %58 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %61 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* @EIO, align 4
  %64 = call i32 %55(%struct.ntb_transport_qp* %56, i32 %59, i32* %62, i32 %63)
  br label %70

65:                                               ; preds = %47
  %66 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %67 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @m_freem(i32* %68)
  br label %70

70:                                               ; preds = %65, %52
  %71 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %72 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %71, i32 0, i32 1
  store i32* null, i32** %72, align 8
  %73 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %74 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %73, i32 0, i32 5
  %75 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %76 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %77 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %76, i32 0, i32 4
  %78 = call i32 @ntb_list_add(i32* %74, %struct.ntb_queue_entry* %75, i32* %77)
  %79 = load i32, i32* @KTR_NTB, align 4
  %80 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %81 = call i32 @CTR1(i32 %79, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), %struct.ntb_queue_entry* %80)
  store i32 0, i32* %3, align 4
  br label %107

82:                                               ; preds = %36
  %83 = load i32, i32* @KTR_NTB, align 4
  %84 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %85 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %86 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @CTR2(i32 %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), %struct.ntb_queue_entry* %84, i32 %87)
  %89 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %90 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %91 = call i32 @ntb_async_tx(%struct.ntb_transport_qp* %89, %struct.ntb_queue_entry* %90)
  %92 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %93 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %97 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %100 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = srem i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %104 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %82, %70, %28
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @CTR3(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @CTR0(i32, i8*) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @ntb_list_add(i32*, %struct.ntb_queue_entry*, i32*) #1

declare dso_local i32 @CTR1(i32, i8*, %struct.ntb_queue_entry*) #1

declare dso_local i32 @CTR2(i32, i8*, %struct.ntb_queue_entry*, i32) #1

declare dso_local i32 @ntb_async_tx(%struct.ntb_transport_qp*, %struct.ntb_queue_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
