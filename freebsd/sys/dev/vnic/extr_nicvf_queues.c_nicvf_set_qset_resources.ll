; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_set_qset_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_set_qset_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32, i32, %struct.queue_set* }
%struct.queue_set = type { i32, i32, i32, i32, i32, i32, i32 }

@M_NICVF = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@RBDR_CNT = common dso_local global i32 0, align 4
@RCV_QUEUE_CNT = common dso_local global i32 0, align 4
@SND_QUEUE_CNT = common dso_local global i32 0, align 4
@CMP_QUEUE_CNT = common dso_local global i32 0, align 4
@RCV_BUF_COUNT = common dso_local global i32 0, align 4
@SND_QUEUE_LEN = common dso_local global i32 0, align 4
@CMP_QUEUE_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nicvf_set_qset_resources(%struct.nicvf* %0) #0 {
  %2 = alloca %struct.nicvf*, align 8
  %3 = alloca %struct.queue_set*, align 8
  store %struct.nicvf* %0, %struct.nicvf** %2, align 8
  %4 = load i32, i32* @M_NICVF, align 4
  %5 = load i32, i32* @M_ZERO, align 4
  %6 = load i32, i32* @M_WAITOK, align 4
  %7 = or i32 %5, %6
  %8 = call %struct.queue_set* @malloc(i32 28, i32 %4, i32 %7)
  store %struct.queue_set* %8, %struct.queue_set** %3, align 8
  %9 = load %struct.queue_set*, %struct.queue_set** %3, align 8
  %10 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %11 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %10, i32 0, i32 2
  store %struct.queue_set* %9, %struct.queue_set** %11, align 8
  %12 = load i32, i32* @RBDR_CNT, align 4
  %13 = load %struct.queue_set*, %struct.queue_set** %3, align 8
  %14 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @RCV_QUEUE_CNT, align 4
  %16 = load %struct.queue_set*, %struct.queue_set** %3, align 8
  %17 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @SND_QUEUE_CNT, align 4
  %19 = load %struct.queue_set*, %struct.queue_set** %3, align 8
  %20 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @CMP_QUEUE_CNT, align 4
  %22 = load %struct.queue_set*, %struct.queue_set** %3, align 8
  %23 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @RCV_BUF_COUNT, align 4
  %25 = load %struct.queue_set*, %struct.queue_set** %3, align 8
  %26 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @SND_QUEUE_LEN, align 4
  %28 = load %struct.queue_set*, %struct.queue_set** %3, align 8
  %29 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @CMP_QUEUE_LEN, align 4
  %31 = load %struct.queue_set*, %struct.queue_set** %3, align 8
  %32 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.queue_set*, %struct.queue_set** %3, align 8
  %34 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %37 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.queue_set*, %struct.queue_set** %3, align 8
  %39 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %42 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  ret i32 0
}

declare dso_local %struct.queue_set* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
