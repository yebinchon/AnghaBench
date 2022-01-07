; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_private.h_nvme_allocate_request_bio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_private.h_nvme_allocate_request_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_request = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.bio* }
%struct.bio = type { i32 }

@NVME_REQUEST_BIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvme_request* (%struct.bio*, i32, i8*)* @nvme_allocate_request_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvme_request* @nvme_allocate_request_bio(%struct.bio* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nvme_request*, align 8
  store %struct.bio* %0, %struct.bio** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = call %struct.nvme_request* @_nvme_allocate_request(i32 %8, i8* %9)
  store %struct.nvme_request* %10, %struct.nvme_request** %7, align 8
  %11 = load %struct.nvme_request*, %struct.nvme_request** %7, align 8
  %12 = icmp ne %struct.nvme_request* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load i32, i32* @NVME_REQUEST_BIO, align 4
  %15 = load %struct.nvme_request*, %struct.nvme_request** %7, align 8
  %16 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.bio*, %struct.bio** %4, align 8
  %18 = load %struct.nvme_request*, %struct.nvme_request** %7, align 8
  %19 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.bio* %17, %struct.bio** %20, align 8
  br label %21

21:                                               ; preds = %13, %3
  %22 = load %struct.nvme_request*, %struct.nvme_request** %7, align 8
  ret %struct.nvme_request* %22
}

declare dso_local %struct.nvme_request* @_nvme_allocate_request(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
