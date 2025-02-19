; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ns.c_nvme_ns_strategy_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ns.c_nvme_ns_strategy_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_completion = type { i32 }
%struct.bio = type { i64, i64, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@BIO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.nvme_completion*)* @nvme_ns_strategy_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_ns_strategy_done(i8* %0, %struct.nvme_completion* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.nvme_completion*, align 8
  %5 = alloca %struct.bio*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.nvme_completion* %1, %struct.nvme_completion** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.bio*
  store %struct.bio* %7, %struct.bio** %5, align 8
  %8 = load %struct.nvme_completion*, %struct.nvme_completion** %4, align 8
  %9 = call i64 @nvme_completion_is_error(%struct.nvme_completion* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load i32, i32* @EIO, align 4
  %13 = load %struct.bio*, %struct.bio** %5, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @BIO_ERROR, align 4
  %16 = load %struct.bio*, %struct.bio** %5, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.bio*, %struct.bio** %5, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.bio*, %struct.bio** %5, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %28

25:                                               ; preds = %2
  %26 = load %struct.bio*, %struct.bio** %5, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %25, %11
  %29 = load %struct.bio*, %struct.bio** %5, align 8
  %30 = call i32 @biodone(%struct.bio* %29)
  ret void
}

declare dso_local i64 @nvme_completion_is_error(%struct.nvme_completion*) #1

declare dso_local i32 @biodone(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
