; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cesa/extr_cesa.c_cesa_append_tdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cesa/extr_cesa.c_cesa_append_tdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cesa_request = type { i32 }
%struct.cesa_tdma_desc = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@cesa_tdma_desc = common dso_local global i32 0, align 4
@ctd_stq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cesa_request*, %struct.cesa_tdma_desc*)* @cesa_append_tdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cesa_append_tdesc(%struct.cesa_request* %0, %struct.cesa_tdma_desc* %1) #0 {
  %3 = alloca %struct.cesa_request*, align 8
  %4 = alloca %struct.cesa_tdma_desc*, align 8
  %5 = alloca %struct.cesa_tdma_desc*, align 8
  store %struct.cesa_request* %0, %struct.cesa_request** %3, align 8
  store %struct.cesa_tdma_desc* %1, %struct.cesa_tdma_desc** %4, align 8
  %6 = load %struct.cesa_request*, %struct.cesa_request** %3, align 8
  %7 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %6, i32 0, i32 0
  %8 = call i32 @STAILQ_EMPTY(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %2
  %11 = load %struct.cesa_request*, %struct.cesa_request** %3, align 8
  %12 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %11, i32 0, i32 0
  %13 = load i32, i32* @cesa_tdma_desc, align 4
  %14 = load i32, i32* @ctd_stq, align 4
  %15 = call %struct.cesa_tdma_desc* @STAILQ_LAST(i32* %12, i32 %13, i32 %14)
  store %struct.cesa_tdma_desc* %15, %struct.cesa_tdma_desc** %5, align 8
  %16 = load %struct.cesa_tdma_desc*, %struct.cesa_tdma_desc** %4, align 8
  %17 = getelementptr inbounds %struct.cesa_tdma_desc, %struct.cesa_tdma_desc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.cesa_tdma_desc*, %struct.cesa_tdma_desc** %5, align 8
  %20 = getelementptr inbounds %struct.cesa_tdma_desc, %struct.cesa_tdma_desc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i64 %18, i64* %22, align 8
  br label %23

23:                                               ; preds = %10, %2
  %24 = load %struct.cesa_tdma_desc*, %struct.cesa_tdma_desc** %4, align 8
  %25 = getelementptr inbounds %struct.cesa_tdma_desc, %struct.cesa_tdma_desc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.cesa_request*, %struct.cesa_request** %3, align 8
  %29 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %28, i32 0, i32 0
  %30 = load %struct.cesa_tdma_desc*, %struct.cesa_tdma_desc** %4, align 8
  %31 = load i32, i32* @ctd_stq, align 4
  %32 = call i32 @STAILQ_INSERT_TAIL(i32* %29, %struct.cesa_tdma_desc* %30, i32 %31)
  ret void
}

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local %struct.cesa_tdma_desc* @STAILQ_LAST(i32*, i32, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.cesa_tdma_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
