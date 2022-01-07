; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_memcpy_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_memcpy_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_qp = type { i32 }
%struct.ntb_queue_entry = type { i32, i32*, %struct.ifnet* }
%struct.ifnet = type { i32 }

@KTR_NTB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"RX: copying %d bytes from offset %p\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"RX: copied entry %p to mbuf %p.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_transport_qp*, %struct.ntb_queue_entry*, i8*)* @ntb_memcpy_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_memcpy_rx(%struct.ntb_transport_qp* %0, %struct.ntb_queue_entry* %1, i8* %2) #0 {
  %4 = alloca %struct.ntb_transport_qp*, align 8
  %5 = alloca %struct.ntb_queue_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i32, align 4
  store %struct.ntb_transport_qp* %0, %struct.ntb_transport_qp** %4, align 8
  store %struct.ntb_queue_entry* %1, %struct.ntb_queue_entry** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %10 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %9, i32 0, i32 2
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %7, align 8
  %12 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %13 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @KTR_NTB, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 (i32, i8*, ...) @CTR2(i32 %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %16, i8* %17)
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %22 = call i64 @m_devget(i8* %19, i32 %20, i32 0, %struct.ifnet* %21, i32* null)
  %23 = inttoptr i64 %22 to i8*
  %24 = bitcast i8* %23 to i32*
  %25 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %26 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %25, i32 0, i32 1
  store i32* %24, i32** %26, align 8
  %27 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %28 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub i32 0, %32
  %34 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %35 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %31, %3
  %37 = call i32 (...) @wmb()
  %38 = load i32, i32* @KTR_NTB, align 4
  %39 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %40 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %41 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 (i32, i8*, ...) @CTR2(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.ntb_queue_entry* %39, i32* %42)
  %44 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %45 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %46 = call i32 @ntb_rx_copy_callback(%struct.ntb_transport_qp* %44, %struct.ntb_queue_entry* %45)
  ret void
}

declare dso_local i32 @CTR2(i32, i8*, ...) #1

declare dso_local i64 @m_devget(i8*, i32, i32, %struct.ifnet*, i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ntb_rx_copy_callback(%struct.ntb_transport_qp*, %struct.ntb_queue_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
