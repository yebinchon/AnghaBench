; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ns.c_nvme_bio_child_inbed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ns.c_nvme_bio_child_inbed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, i32, i32 }
%struct.nvme_completion = type { i32 }

@BIO_ERROR = common dso_local global i32 0, align 4
@NVME_STATUS_SC_MASK = common dso_local global i32 0, align 4
@NVME_STATUS_SC_SHIFT = common dso_local global i32 0, align 4
@NVME_SC_DATA_TRANSFER_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, i32)* @nvme_bio_child_inbed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_bio_child_inbed(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_completion, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load i32, i32* @BIO_ERROR, align 4
  %12 = load %struct.bio*, %struct.bio** %3, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.bio*, %struct.bio** %3, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %10, %2
  %20 = load %struct.bio*, %struct.bio** %3, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 3
  %22 = call i32 @atomic_load_acq_int(i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.bio*, %struct.bio** %3, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 2
  %25 = call i32 @atomic_fetchadd_int(i32* %24, i32 1)
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %19
  %31 = call i32 @bzero(%struct.nvme_completion* %5, i32 4)
  %32 = load %struct.bio*, %struct.bio** %3, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @BIO_ERROR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %30
  %39 = load i32, i32* @NVME_STATUS_SC_MASK, align 4
  %40 = load i32, i32* @NVME_STATUS_SC_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %5, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %42
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @NVME_SC_DATA_TRANSFER_ERROR, align 4
  %47 = load i32, i32* @NVME_STATUS_SC_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %38, %30
  %53 = load %struct.bio*, %struct.bio** %3, align 8
  %54 = call i32 @nvme_ns_bio_done(%struct.bio* %53, %struct.nvme_completion* %5)
  br label %55

55:                                               ; preds = %52, %19
  ret void
}

declare dso_local i32 @atomic_load_acq_int(i32*) #1

declare dso_local i32 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local i32 @bzero(%struct.nvme_completion*, i32) #1

declare dso_local i32 @nvme_ns_bio_done(%struct.bio*, %struct.nvme_completion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
