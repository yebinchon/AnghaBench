; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_sq_add_gather_subdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_sq_add_gather_subdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sq_gather_subdesc = type { i32, i32, i32, i32 }

@SND_QUEUE_DESC_SIZE = common dso_local global i32 0, align 4
@SQ_DESC_TYPE_GATHER = common dso_local global i32 0, align 4
@NIC_SEND_LD_TYPE_E_LDD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_queue*, i32, i32, i32)* @nicvf_sq_add_gather_subdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_sq_add_gather_subdesc(%struct.snd_queue* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sq_gather_subdesc*, align 8
  store %struct.snd_queue* %0, %struct.snd_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %11 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 1
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %6, align 4
  %17 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @GET_SQ_DESC(%struct.snd_queue* %17, i32 %18)
  %20 = inttoptr i64 %19 to %struct.sq_gather_subdesc*
  store %struct.sq_gather_subdesc* %20, %struct.sq_gather_subdesc** %9, align 8
  %21 = load %struct.sq_gather_subdesc*, %struct.sq_gather_subdesc** %9, align 8
  %22 = load i32, i32* @SND_QUEUE_DESC_SIZE, align 4
  %23 = call i32 @memset(%struct.sq_gather_subdesc* %21, i32 0, i32 %22)
  %24 = load i32, i32* @SQ_DESC_TYPE_GATHER, align 4
  %25 = load %struct.sq_gather_subdesc*, %struct.sq_gather_subdesc** %9, align 8
  %26 = getelementptr inbounds %struct.sq_gather_subdesc, %struct.sq_gather_subdesc* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @NIC_SEND_LD_TYPE_E_LDD, align 4
  %28 = load %struct.sq_gather_subdesc*, %struct.sq_gather_subdesc** %9, align 8
  %29 = getelementptr inbounds %struct.sq_gather_subdesc, %struct.sq_gather_subdesc* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.sq_gather_subdesc*, %struct.sq_gather_subdesc** %9, align 8
  %32 = getelementptr inbounds %struct.sq_gather_subdesc, %struct.sq_gather_subdesc* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.sq_gather_subdesc*, %struct.sq_gather_subdesc** %9, align 8
  %35 = getelementptr inbounds %struct.sq_gather_subdesc, %struct.sq_gather_subdesc* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  ret void
}

declare dso_local i64 @GET_SQ_DESC(%struct.snd_queue*, i32) #1

declare dso_local i32 @memset(%struct.sq_gather_subdesc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
