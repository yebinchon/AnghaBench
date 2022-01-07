; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_private.h__nvme_allocate_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_private.h__nvme_allocate_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_request = type { i32, i8*, i32 }

@nvme_request_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvme_request* (i32, i8*)* @_nvme_allocate_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvme_request* @_nvme_allocate_request(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nvme_request*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @nvme_request_zone, align 4
  %7 = load i32, i32* @M_NOWAIT, align 4
  %8 = load i32, i32* @M_ZERO, align 4
  %9 = or i32 %7, %8
  %10 = call %struct.nvme_request* @uma_zalloc(i32 %6, i32 %9)
  store %struct.nvme_request* %10, %struct.nvme_request** %5, align 8
  %11 = load %struct.nvme_request*, %struct.nvme_request** %5, align 8
  %12 = icmp ne %struct.nvme_request* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.nvme_request*, %struct.nvme_request** %5, align 8
  %16 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load %struct.nvme_request*, %struct.nvme_request** %5, align 8
  %19 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* @TRUE, align 4
  %21 = load %struct.nvme_request*, %struct.nvme_request** %5, align 8
  %22 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  br label %23

23:                                               ; preds = %13, %2
  %24 = load %struct.nvme_request*, %struct.nvme_request** %5, align 8
  ret %struct.nvme_request* %24
}

declare dso_local %struct.nvme_request* @uma_zalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
