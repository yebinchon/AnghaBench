; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_async_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_async_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_qp = type { i32, i32, i32, i8* }
%struct.ntb_queue_entry = type { i32, %struct.ntb_payload_header* }
%struct.ntb_payload_header = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_transport_qp*, %struct.ntb_queue_entry*)* @ntb_async_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_async_tx(%struct.ntb_transport_qp* %0, %struct.ntb_queue_entry* %1) #0 {
  %3 = alloca %struct.ntb_transport_qp*, align 8
  %4 = alloca %struct.ntb_queue_entry*, align 8
  %5 = alloca %struct.ntb_payload_header*, align 8
  %6 = alloca i8*, align 8
  store %struct.ntb_transport_qp* %0, %struct.ntb_transport_qp** %3, align 8
  store %struct.ntb_queue_entry* %1, %struct.ntb_queue_entry** %4, align 8
  %7 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %8 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %7, i32 0, i32 3
  %9 = load i8*, i8** %8, align 8
  %10 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %11 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %14 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %12, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr i8, i8* %9, i64 %17
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %21 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %19, i64 %23
  %25 = getelementptr inbounds i8, i8* %24, i64 -8
  %26 = bitcast i8* %25 to %struct.ntb_payload_header*
  store %struct.ntb_payload_header* %26, %struct.ntb_payload_header** %5, align 8
  %27 = load %struct.ntb_payload_header*, %struct.ntb_payload_header** %5, align 8
  %28 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %4, align 8
  %29 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %28, i32 0, i32 1
  store %struct.ntb_payload_header* %27, %struct.ntb_payload_header** %29, align 8
  %30 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %4, align 8
  %31 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ntb_payload_header*, %struct.ntb_payload_header** %5, align 8
  %34 = getelementptr inbounds %struct.ntb_payload_header, %struct.ntb_payload_header* %33, i32 0, i32 1
  %35 = call i32 @iowrite32(i32 %32, i32* %34)
  %36 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %37 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ntb_payload_header*, %struct.ntb_payload_header** %5, align 8
  %40 = getelementptr inbounds %struct.ntb_payload_header, %struct.ntb_payload_header* %39, i32 0, i32 0
  %41 = call i32 @iowrite32(i32 %38, i32* %40)
  %42 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %4, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @ntb_memcpy_tx(%struct.ntb_queue_entry* %42, i8* %43)
  ret void
}

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @ntb_memcpy_tx(%struct.ntb_queue_entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
