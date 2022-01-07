; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_memcpy_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_memcpy_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_queue_entry = type { i32, i32* }
%struct.mbuf = type { i32 }

@KTR_NTB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"TX: copying %d bytes to offset %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_queue_entry*, i8*)* @ntb_memcpy_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_memcpy_tx(%struct.ntb_queue_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.ntb_queue_entry*, align 8
  %4 = alloca i8*, align 8
  store %struct.ntb_queue_entry* %0, %struct.ntb_queue_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @KTR_NTB, align 4
  %6 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %7 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @CTR2(i32 %5, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %8, i8* %9)
  %11 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %12 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %17 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = bitcast i32* %18 to %struct.mbuf*
  %20 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %21 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @m_copydata(%struct.mbuf* %19, i32 0, i32 %22, i8* %23)
  %25 = call i32 (...) @wmb()
  br label %26

26:                                               ; preds = %15, %2
  %27 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %28 = call i32 @ntb_tx_copy_callback(%struct.ntb_queue_entry* %27)
  ret void
}

declare dso_local i32 @CTR2(i32, i8*, i32, i8*) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i8*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ntb_tx_copy_callback(%struct.ntb_queue_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
