; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_add.c_fix_unmerged_status.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_add.c_fix_unmerged_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_filepair = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.update_callback_data = type { i32 }

@DIFF_STATUS_UNMERGED = common dso_local global i64 0, align 8
@ADD_CACHE_IGNORE_REMOVAL = common dso_local global i32 0, align 4
@DIFF_STATUS_DELETED = common dso_local global i32 0, align 4
@DIFF_STATUS_MODIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.diff_filepair*, %struct.update_callback_data*)* @fix_unmerged_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fix_unmerged_status(%struct.diff_filepair* %0, %struct.update_callback_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.diff_filepair*, align 8
  %5 = alloca %struct.update_callback_data*, align 8
  store %struct.diff_filepair* %0, %struct.diff_filepair** %4, align 8
  store %struct.update_callback_data* %1, %struct.update_callback_data** %5, align 8
  %6 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %7 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DIFF_STATUS_UNMERGED, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %13 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %3, align 4
  br label %34

16:                                               ; preds = %2
  %17 = load %struct.update_callback_data*, %struct.update_callback_data** %5, align 8
  %18 = getelementptr inbounds %struct.update_callback_data, %struct.update_callback_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ADD_CACHE_IGNORE_REMOVAL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %16
  %24 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %25 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @DIFF_STATUS_DELETED, align 4
  store i32 %31, i32* %3, align 4
  br label %34

32:                                               ; preds = %23, %16
  %33 = load i32, i32* @DIFF_STATUS_MODIFIED, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %30, %11
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
