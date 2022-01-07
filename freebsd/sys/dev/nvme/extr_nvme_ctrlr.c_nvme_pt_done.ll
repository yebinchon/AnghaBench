; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_pt_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_pt_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_completion = type { i32, i32 }
%struct.nvme_pt_command = type { %struct.mtx*, %struct.TYPE_2__ }
%struct.mtx = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@NVME_STATUS_P_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.nvme_completion*)* @nvme_pt_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_pt_done(i8* %0, %struct.nvme_completion* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.nvme_completion*, align 8
  %5 = alloca %struct.nvme_pt_command*, align 8
  %6 = alloca %struct.mtx*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.nvme_completion* %1, %struct.nvme_completion** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.nvme_pt_command*
  store %struct.nvme_pt_command* %9, %struct.nvme_pt_command** %5, align 8
  %10 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %5, align 8
  %11 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %10, i32 0, i32 0
  %12 = load %struct.mtx*, %struct.mtx** %11, align 8
  store %struct.mtx* %12, %struct.mtx** %6, align 8
  %13 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %5, align 8
  %14 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %13, i32 0, i32 1
  %15 = call i32 @bzero(%struct.TYPE_2__* %14, i32 8)
  %16 = load %struct.nvme_completion*, %struct.nvme_completion** %4, align 8
  %17 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %5, align 8
  %20 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load %struct.nvme_completion*, %struct.nvme_completion** %4, align 8
  %23 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @NVME_STATUS_P_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %5, align 8
  %31 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.mtx*, %struct.mtx** %6, align 8
  %34 = call i32 @mtx_lock(%struct.mtx* %33)
  %35 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %5, align 8
  %36 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %35, i32 0, i32 0
  store %struct.mtx* null, %struct.mtx** %36, align 8
  %37 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %5, align 8
  %38 = call i32 @wakeup(%struct.nvme_pt_command* %37)
  %39 = load %struct.mtx*, %struct.mtx** %6, align 8
  %40 = call i32 @mtx_unlock(%struct.mtx* %39)
  ret void
}

declare dso_local i32 @bzero(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @wakeup(%struct.nvme_pt_command*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
