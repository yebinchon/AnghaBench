; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ns.c_nvme_ns_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ns.c_nvme_ns_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvme_namespace* }
%struct.nvme_namespace = type { i32 }

@nvme_ns_strategy_done = common dso_local global i32 0, align 4
@BIO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @nvme_ns_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_ns_strategy(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.nvme_namespace*, align 8
  %4 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.nvme_namespace*, %struct.nvme_namespace** %8, align 8
  store %struct.nvme_namespace* %9, %struct.nvme_namespace** %3, align 8
  %10 = load %struct.nvme_namespace*, %struct.nvme_namespace** %3, align 8
  %11 = load %struct.bio*, %struct.bio** %2, align 8
  %12 = load i32, i32* @nvme_ns_strategy_done, align 4
  %13 = call i32 @nvme_ns_bio_process(%struct.nvme_namespace* %10, %struct.bio* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.bio*, %struct.bio** %2, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @BIO_ERROR, align 4
  %21 = load %struct.bio*, %struct.bio** %2, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.bio*, %struct.bio** %2, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.bio*, %struct.bio** %2, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.bio*, %struct.bio** %2, align 8
  %31 = call i32 @biodone(%struct.bio* %30)
  br label %32

32:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @nvme_ns_bio_process(%struct.nvme_namespace*, %struct.bio*, i32) #1

declare dso_local i32 @biodone(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
