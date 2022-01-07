; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_tx_copy_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_tx_copy_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_queue_entry = type { i32, i64, i32*, %struct.ntb_payload_header*, %struct.ntb_transport_qp* }
%struct.ntb_payload_header = type { i32, i32 }
%struct.ntb_transport_qp = type { i64, i32, i32, i32, i32 (%struct.ntb_transport_qp*, i32, i32*, i64)*, i32, i32 }

@NTBT_DESC_DONE_FLAG = common dso_local global i32 0, align 4
@KTR_NTB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"TX: hdr %p set DESC_DONE\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"TX: entry %p sent. hdr->ver = %u, hdr->flags = 0x%x, Returning to tx_free_q\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ntb_tx_copy_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_tx_copy_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ntb_queue_entry*, align 8
  %4 = alloca %struct.ntb_transport_qp*, align 8
  %5 = alloca %struct.ntb_payload_header*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ntb_queue_entry*
  store %struct.ntb_queue_entry* %7, %struct.ntb_queue_entry** %3, align 8
  %8 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %9 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %8, i32 0, i32 4
  %10 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %9, align 8
  store %struct.ntb_transport_qp* %10, %struct.ntb_transport_qp** %4, align 8
  %11 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %12 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %11, i32 0, i32 3
  %13 = load %struct.ntb_payload_header*, %struct.ntb_payload_header** %12, align 8
  store %struct.ntb_payload_header* %13, %struct.ntb_payload_header** %5, align 8
  %14 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %15 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @NTBT_DESC_DONE_FLAG, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.ntb_payload_header*, %struct.ntb_payload_header** %5, align 8
  %20 = getelementptr inbounds %struct.ntb_payload_header, %struct.ntb_payload_header* %19, i32 0, i32 0
  %21 = call i32 @iowrite32(i32 %18, i32* %20)
  %22 = load i32, i32* @KTR_NTB, align 4
  %23 = load %struct.ntb_payload_header*, %struct.ntb_payload_header** %5, align 8
  %24 = call i32 @CTR1(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.ntb_payload_header* %23)
  %25 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %26 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %29 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = shl i64 1, %30
  %32 = call i32 @ntb_peer_db_set(i32 %27, i64 %31)
  %33 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %34 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %74

37:                                               ; preds = %1
  %38 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %39 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %42 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 8
  %47 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %48 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %47, i32 0, i32 4
  %49 = load i32 (%struct.ntb_transport_qp*, i32, i32*, i64)*, i32 (%struct.ntb_transport_qp*, i32, i32*, i64)** %48, align 8
  %50 = icmp ne i32 (%struct.ntb_transport_qp*, i32, i32*, i64)* %49, null
  br i1 %50, label %51, label %66

51:                                               ; preds = %37
  %52 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %53 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %52, i32 0, i32 4
  %54 = load i32 (%struct.ntb_transport_qp*, i32, i32*, i64)*, i32 (%struct.ntb_transport_qp*, i32, i32*, i64)** %53, align 8
  %55 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %56 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %57 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %60 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %63 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 %54(%struct.ntb_transport_qp* %55, i32 %58, i32* %61, i64 %64)
  br label %71

66:                                               ; preds = %37
  %67 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %68 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @m_freem(i32* %69)
  br label %71

71:                                               ; preds = %66, %51
  %72 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %73 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %72, i32 0, i32 2
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %71, %1
  %75 = load i32, i32* @KTR_NTB, align 4
  %76 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %77 = load %struct.ntb_payload_header*, %struct.ntb_payload_header** %5, align 8
  %78 = getelementptr inbounds %struct.ntb_payload_header, %struct.ntb_payload_header* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ntb_payload_header*, %struct.ntb_payload_header** %5, align 8
  %81 = getelementptr inbounds %struct.ntb_payload_header, %struct.ntb_payload_header* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @CTR3(i32 %75, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), %struct.ntb_queue_entry* %76, i32 %79, i32 %82)
  %84 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %85 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %84, i32 0, i32 2
  %86 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %87 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %88 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %87, i32 0, i32 1
  %89 = call i32 @ntb_list_add(i32* %85, %struct.ntb_queue_entry* %86, i32* %88)
  ret void
}

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @CTR1(i32, i8*, %struct.ntb_payload_header*) #1

declare dso_local i32 @ntb_peer_db_set(i32, i64) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @CTR3(i32, i8*, %struct.ntb_queue_entry*, i32, i32) #1

declare dso_local i32 @ntb_list_add(i32*, %struct.ntb_queue_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
