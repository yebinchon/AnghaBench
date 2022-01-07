; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_abort_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_abort_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_completion = type { i32 }
%struct.nvme_tracker = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32** }

@.str = private unnamed_addr constant [49 x i8] c"abort command failed, aborting command manually\0A\00", align 1
@NVME_SCT_GENERIC = common dso_local global i32 0, align 4
@NVME_SC_ABORTED_BY_REQUEST = common dso_local global i32 0, align 4
@ERROR_PRINT_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.nvme_completion*)* @nvme_abort_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_abort_complete(i8* %0, %struct.nvme_completion* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.nvme_completion*, align 8
  %5 = alloca %struct.nvme_tracker*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.nvme_completion* %1, %struct.nvme_completion** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.nvme_tracker*
  store %struct.nvme_tracker* %7, %struct.nvme_tracker** %5, align 8
  %8 = load %struct.nvme_completion*, %struct.nvme_completion** %4, align 8
  %9 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %39

12:                                               ; preds = %2
  %13 = load %struct.nvme_tracker*, %struct.nvme_tracker** %5, align 8
  %14 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32**, i32*** %16, align 8
  %18 = load %struct.nvme_tracker*, %struct.nvme_tracker** %5, align 8
  %19 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32*, i32** %17, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %12
  %25 = load %struct.nvme_tracker*, %struct.nvme_tracker** %5, align 8
  %26 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @nvme_printf(i32 %29, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.nvme_tracker*, %struct.nvme_tracker** %5, align 8
  %32 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load %struct.nvme_tracker*, %struct.nvme_tracker** %5, align 8
  %35 = load i32, i32* @NVME_SCT_GENERIC, align 4
  %36 = load i32, i32* @NVME_SC_ABORTED_BY_REQUEST, align 4
  %37 = load i32, i32* @ERROR_PRINT_ALL, align 4
  %38 = call i32 @nvme_qpair_manual_complete_tracker(%struct.TYPE_2__* %33, %struct.nvme_tracker* %34, i32 %35, i32 %36, i32 0, i32 %37)
  br label %39

39:                                               ; preds = %24, %12, %2
  ret void
}

declare dso_local i32 @nvme_printf(i32, i8*) #1

declare dso_local i32 @nvme_qpair_manual_complete_tracker(%struct.TYPE_2__*, %struct.nvme_tracker*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
