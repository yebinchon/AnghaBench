; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_append_phys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_append_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sglist = type { i64, i32, %struct.sglist_seg* }
%struct.sglist_seg = type { i64, i32 }
%struct.sgsave = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sglist_append_phys(%struct.sglist* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sglist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.sglist_seg*, align 8
  %9 = alloca %struct.sgsave, align 4
  %10 = alloca i32, align 4
  store %struct.sglist* %0, %struct.sglist** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.sglist*, %struct.sglist** %5, align 8
  %12 = getelementptr inbounds %struct.sglist, %struct.sglist* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %4, align 4
  br label %68

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %68

21:                                               ; preds = %17
  %22 = load %struct.sglist*, %struct.sglist** %5, align 8
  %23 = getelementptr inbounds %struct.sglist, %struct.sglist* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.sglist*, %struct.sglist** %5, align 8
  %29 = getelementptr inbounds %struct.sglist, %struct.sglist* %28, i32 0, i32 2
  %30 = load %struct.sglist_seg*, %struct.sglist_seg** %29, align 8
  %31 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %30, i64 0
  %32 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %31, i32 0, i32 1
  store i32 %27, i32* %32, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.sglist*, %struct.sglist** %5, align 8
  %35 = getelementptr inbounds %struct.sglist, %struct.sglist* %34, i32 0, i32 2
  %36 = load %struct.sglist_seg*, %struct.sglist_seg** %35, align 8
  %37 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %36, i64 0
  %38 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %37, i32 0, i32 0
  store i64 %33, i64* %38, align 8
  %39 = load %struct.sglist*, %struct.sglist** %5, align 8
  %40 = getelementptr inbounds %struct.sglist, %struct.sglist* %39, i32 0, i32 1
  store i32 1, i32* %40, align 8
  store i32 0, i32* %4, align 4
  br label %68

41:                                               ; preds = %21
  %42 = load %struct.sglist*, %struct.sglist** %5, align 8
  %43 = getelementptr inbounds %struct.sglist, %struct.sglist* %42, i32 0, i32 2
  %44 = load %struct.sglist_seg*, %struct.sglist_seg** %43, align 8
  %45 = load %struct.sglist*, %struct.sglist** %5, align 8
  %46 = getelementptr inbounds %struct.sglist, %struct.sglist* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %44, i64 %49
  store %struct.sglist_seg* %50, %struct.sglist_seg** %8, align 8
  %51 = load %struct.sglist*, %struct.sglist** %5, align 8
  %52 = getelementptr inbounds %struct.sgsave, %struct.sgsave* %9, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @SGLIST_SAVE(%struct.sglist* %51, i32 %53)
  %55 = load %struct.sglist*, %struct.sglist** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @_sglist_append_range(%struct.sglist* %55, %struct.sglist_seg** %8, i32 %56, i64 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %41
  %62 = load %struct.sglist*, %struct.sglist** %5, align 8
  %63 = getelementptr inbounds %struct.sgsave, %struct.sgsave* %9, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @SGLIST_RESTORE(%struct.sglist* %62, i32 %64)
  br label %66

66:                                               ; preds = %61, %41
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %26, %20, %15
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @SGLIST_SAVE(%struct.sglist*, i32) #1

declare dso_local i32 @_sglist_append_range(%struct.sglist*, %struct.sglist_seg**, i32, i64) #1

declare dso_local i32 @SGLIST_RESTORE(%struct.sglist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
