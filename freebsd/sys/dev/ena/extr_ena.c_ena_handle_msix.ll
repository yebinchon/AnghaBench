; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_handle_msix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_handle_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_que = type { i32, i32, %struct.ena_adapter* }
%struct.ena_adapter = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@FILTER_STRAY = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ena_handle_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_handle_msix(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ena_que*, align 8
  %5 = alloca %struct.ena_adapter*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.ena_que*
  store %struct.ena_que* %8, %struct.ena_que** %4, align 8
  %9 = load %struct.ena_que*, %struct.ena_que** %4, align 8
  %10 = getelementptr inbounds %struct.ena_que, %struct.ena_que* %9, i32 0, i32 2
  %11 = load %struct.ena_adapter*, %struct.ena_adapter** %10, align 8
  store %struct.ena_adapter* %11, %struct.ena_adapter** %5, align 8
  %12 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @if_getdrvflags(i32 %15)
  %17 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @FILTER_STRAY, align 4
  store i32 %24, i32* %2, align 4
  br label %33

25:                                               ; preds = %1
  %26 = load %struct.ena_que*, %struct.ena_que** %4, align 8
  %27 = getelementptr inbounds %struct.ena_que, %struct.ena_que* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ena_que*, %struct.ena_que** %4, align 8
  %30 = getelementptr inbounds %struct.ena_que, %struct.ena_que* %29, i32 0, i32 0
  %31 = call i32 @taskqueue_enqueue(i32 %28, i32* %30)
  %32 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %25, %23
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
