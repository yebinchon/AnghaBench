; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_construct_admin_qpair.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_construct_admin_qpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i64, %struct.nvme_qpair }
%struct.nvme_qpair = type { i64, i64, i64 }

@cpuset_domain = common dso_local global i32* null, align 8
@NVME_ADMIN_ENTRIES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"hw.nvme.admin_entries\00", align 1
@NVME_MIN_ADMIN_ENTRIES = common dso_local global i64 0, align 8
@NVME_MAX_ADMIN_ENTRIES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"invalid hw.nvme.admin_entries=%d specified\0A\00", align 1
@NVME_ADMIN_TRACKERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_controller*)* @nvme_ctrlr_construct_admin_qpair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_ctrlr_construct_admin_qpair(%struct.nvme_controller* %0) #0 {
  %2 = alloca %struct.nvme_controller*, align 8
  %3 = alloca %struct.nvme_qpair*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.nvme_controller* %0, %struct.nvme_controller** %2, align 8
  %6 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %7 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %6, i32 0, i32 1
  store %struct.nvme_qpair* %7, %struct.nvme_qpair** %3, align 8
  %8 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %9 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load i32*, i32** @cpuset_domain, align 8
  %11 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %12 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = call i64 @CPU_FFS(i32* %14)
  %16 = sub nsw i64 %15, 1
  %17 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %18 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %20 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %23 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* @NVME_ADMIN_ENTRIES, align 8
  store i64 %24, i64* %4, align 8
  %25 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64* %4)
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @NVME_MIN_ADMIN_ENTRIES, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %1
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @NVME_MAX_ADMIN_ENTRIES, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29, %1
  %34 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @nvme_printf(%struct.nvme_controller* %34, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load i64, i64* @NVME_ADMIN_ENTRIES, align 8
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %33, %29
  %39 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %40 = load i64, i64* %4, align 8
  %41 = load i32, i32* @NVME_ADMIN_TRACKERS, align 4
  %42 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %43 = call i32 @nvme_qpair_construct(%struct.nvme_qpair* %39, i64 %40, i32 %41, %struct.nvme_controller* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i64 @CPU_FFS(i32*) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i64*) #1

declare dso_local i32 @nvme_printf(%struct.nvme_controller*, i8*, i64) #1

declare dso_local i32 @nvme_qpair_construct(%struct.nvme_qpair*, i64, i32, %struct.nvme_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
