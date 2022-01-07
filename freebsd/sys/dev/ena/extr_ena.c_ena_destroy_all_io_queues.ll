; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_destroy_all_io_queues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_destroy_all_io_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, %struct.ena_que* }
%struct.ena_que = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*)* @ena_destroy_all_io_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_destroy_all_io_queues(%struct.ena_adapter* %0) #0 {
  %2 = alloca %struct.ena_adapter*, align 8
  %3 = alloca %struct.ena_que*, align 8
  %4 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %38, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %41

11:                                               ; preds = %5
  %12 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %12, i32 0, i32 1
  %14 = load %struct.ena_que*, %struct.ena_que** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ena_que, %struct.ena_que* %14, i64 %16
  store %struct.ena_que* %17, %struct.ena_que** %3, align 8
  br label %18

18:                                               ; preds = %26, %11
  %19 = load %struct.ena_que*, %struct.ena_que** %3, align 8
  %20 = getelementptr inbounds %struct.ena_que, %struct.ena_que* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ena_que*, %struct.ena_que** %3, align 8
  %23 = getelementptr inbounds %struct.ena_que, %struct.ena_que* %22, i32 0, i32 1
  %24 = call i64 @taskqueue_cancel(i32 %21, i32* %23, i32* null)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load %struct.ena_que*, %struct.ena_que** %3, align 8
  %28 = getelementptr inbounds %struct.ena_que, %struct.ena_que* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ena_que*, %struct.ena_que** %3, align 8
  %31 = getelementptr inbounds %struct.ena_que, %struct.ena_que* %30, i32 0, i32 1
  %32 = call i32 @taskqueue_drain(i32 %29, i32* %31)
  br label %18

33:                                               ; preds = %18
  %34 = load %struct.ena_que*, %struct.ena_que** %3, align 8
  %35 = getelementptr inbounds %struct.ena_que, %struct.ena_que* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @taskqueue_free(i32 %36)
  br label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %5

41:                                               ; preds = %5
  %42 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %43 = call i32 @ena_destroy_all_tx_queues(%struct.ena_adapter* %42)
  %44 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %45 = call i32 @ena_destroy_all_rx_queues(%struct.ena_adapter* %44)
  ret void
}

declare dso_local i64 @taskqueue_cancel(i32, i32*, i32*) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @taskqueue_free(i32) #1

declare dso_local i32 @ena_destroy_all_tx_queues(%struct.ena_adapter*) #1

declare dso_local i32 @ena_destroy_all_rx_queues(%struct.ena_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
