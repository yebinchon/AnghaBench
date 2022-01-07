; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ns.c_nvme_ns_bio_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ns.c_nvme_ns_bio_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_completion = type { i32 }
%struct.bio = type { i32, i64, i64, i64, i64, i32 (%struct.bio*, %struct.nvme_completion*)* }

@M_NVME = common dso_local global i32 0, align 4
@BIO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.nvme_completion*)* @nvme_ns_bio_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_ns_bio_done(i8* %0, %struct.nvme_completion* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.nvme_completion*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32 (%struct.bio*, %struct.nvme_completion*)*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.nvme_completion* %1, %struct.nvme_completion** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.bio*
  store %struct.bio* %8, %struct.bio** %5, align 8
  %9 = load %struct.bio*, %struct.bio** %5, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 5
  %11 = load i32 (%struct.bio*, %struct.nvme_completion*)*, i32 (%struct.bio*, %struct.nvme_completion*)** %10, align 8
  store i32 (%struct.bio*, %struct.nvme_completion*)* %11, i32 (%struct.bio*, %struct.nvme_completion*)** %6, align 8
  %12 = load %struct.bio*, %struct.bio** %5, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.bio*, %struct.bio** %5, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @M_NVME, align 4
  %21 = call i32 @free(i64 %19, i32 %20)
  br label %22

22:                                               ; preds = %16, %2
  %23 = load %struct.nvme_completion*, %struct.nvme_completion** %4, align 8
  %24 = call i64 @nvme_completion_is_error(%struct.nvme_completion* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %22
  %27 = load i32, i32* @BIO_ERROR, align 4
  %28 = load %struct.bio*, %struct.bio** %5, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.bio*, %struct.bio** %5, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load i64, i64* @EIO, align 8
  %38 = load %struct.bio*, %struct.bio** %5, align 8
  %39 = getelementptr inbounds %struct.bio, %struct.bio* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %36, %26
  br label %41

41:                                               ; preds = %40, %22
  %42 = load %struct.bio*, %struct.bio** %5, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @BIO_ERROR, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.bio*, %struct.bio** %5, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  br label %57

51:                                               ; preds = %41
  %52 = load %struct.bio*, %struct.bio** %5, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.bio*, %struct.bio** %5, align 8
  %56 = getelementptr inbounds %struct.bio, %struct.bio* %55, i32 0, i32 3
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %51, %48
  %58 = load i32 (%struct.bio*, %struct.nvme_completion*)*, i32 (%struct.bio*, %struct.nvme_completion*)** %6, align 8
  %59 = load %struct.bio*, %struct.bio** %5, align 8
  %60 = load %struct.nvme_completion*, %struct.nvme_completion** %4, align 8
  %61 = call i32 %58(%struct.bio* %59, %struct.nvme_completion* %60)
  ret void
}

declare dso_local i32 @free(i64, i32) #1

declare dso_local i64 @nvme_completion_is_error(%struct.nvme_completion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
