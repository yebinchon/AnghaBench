; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_tracker = type { i32, %struct.nvme_qpair* }
%struct.nvme_qpair = type { i32, %struct.nvme_controller* }
%struct.nvme_controller = type { i64 }

@NVME_CSTS_REG_CFS_SHIFT = common dso_local global i32 0, align 4
@NVME_CSTS_REG_CFS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Missing interrupt\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Aborting command due to a timeout.\0A\00", align 1
@nvme_abort_complete = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Resetting controller due to a timeout%s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c" and possible hot unplug\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c" and fatal error status\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nvme_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nvme_tracker*, align 8
  %4 = alloca %struct.nvme_qpair*, align 8
  %5 = alloca %struct.nvme_controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.nvme_tracker*
  store %struct.nvme_tracker* %9, %struct.nvme_tracker** %3, align 8
  %10 = load %struct.nvme_tracker*, %struct.nvme_tracker** %3, align 8
  %11 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %10, i32 0, i32 1
  %12 = load %struct.nvme_qpair*, %struct.nvme_qpair** %11, align 8
  store %struct.nvme_qpair* %12, %struct.nvme_qpair** %4, align 8
  %13 = load %struct.nvme_qpair*, %struct.nvme_qpair** %4, align 8
  %14 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %13, i32 0, i32 1
  %15 = load %struct.nvme_controller*, %struct.nvme_controller** %14, align 8
  store %struct.nvme_controller* %15, %struct.nvme_controller** %5, align 8
  %16 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @nvme_mmio_read_4(%struct.nvme_controller* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @NVME_CSTS_REG_CFS_SHIFT, align 4
  %21 = ashr i32 %19, %20
  %22 = load i32, i32* @NVME_CSTS_REG_CFS_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load %struct.nvme_qpair*, %struct.nvme_qpair** %4, align 8
  %28 = call i64 @nvme_qpair_process_completions(%struct.nvme_qpair* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %32 = call i32 (%struct.nvme_controller*, i8*, ...) @nvme_printf(%struct.nvme_controller* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %69

33:                                               ; preds = %26, %1
  %34 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %35 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %43 = call i32 (%struct.nvme_controller*, i8*, ...) @nvme_printf(%struct.nvme_controller* %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %45 = load %struct.nvme_tracker*, %struct.nvme_tracker** %3, align 8
  %46 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.nvme_qpair*, %struct.nvme_qpair** %4, align 8
  %49 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @nvme_abort_complete, align 4
  %52 = load %struct.nvme_tracker*, %struct.nvme_tracker** %3, align 8
  %53 = call i32 @nvme_ctrlr_cmd_abort(%struct.nvme_controller* %44, i32 %47, i32 %50, i32 %51, %struct.nvme_tracker* %52)
  br label %69

54:                                               ; preds = %38, %33
  %55 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %64

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  br label %64

64:                                               ; preds = %59, %58
  %65 = phi i8* [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), %58 ], [ %63, %59 ]
  %66 = call i32 (%struct.nvme_controller*, i8*, ...) @nvme_printf(%struct.nvme_controller* %55, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %65)
  %67 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %68 = call i32 @nvme_ctrlr_reset(%struct.nvme_controller* %67)
  br label %69

69:                                               ; preds = %30, %64, %41
  ret void
}

declare dso_local i32 @nvme_mmio_read_4(%struct.nvme_controller*, i32) #1

declare dso_local i64 @nvme_qpair_process_completions(%struct.nvme_qpair*) #1

declare dso_local i32 @nvme_printf(%struct.nvme_controller*, i8*, ...) #1

declare dso_local i32 @nvme_ctrlr_cmd_abort(%struct.nvme_controller*, i32, i32, i32, %struct.nvme_tracker*) #1

declare dso_local i32 @nvme_ctrlr_reset(%struct.nvme_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
