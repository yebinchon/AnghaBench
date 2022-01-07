; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_join.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sglist = type { i32, i32, %struct.sglist_seg* }
%struct.sglist_seg = type { i64, i64 }

@EFBIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sglist_join(%struct.sglist* %0, %struct.sglist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sglist*, align 8
  %5 = alloca %struct.sglist*, align 8
  %6 = alloca %struct.sglist_seg*, align 8
  %7 = alloca %struct.sglist_seg*, align 8
  %8 = alloca i32, align 4
  store %struct.sglist* %0, %struct.sglist** %4, align 8
  store %struct.sglist* %1, %struct.sglist** %5, align 8
  %9 = load %struct.sglist*, %struct.sglist** %5, align 8
  %10 = getelementptr inbounds %struct.sglist, %struct.sglist* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %107

14:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %15 = load %struct.sglist*, %struct.sglist** %4, align 8
  %16 = getelementptr inbounds %struct.sglist, %struct.sglist* %15, i32 0, i32 2
  %17 = load %struct.sglist_seg*, %struct.sglist_seg** %16, align 8
  %18 = load %struct.sglist*, %struct.sglist** %4, align 8
  %19 = getelementptr inbounds %struct.sglist, %struct.sglist* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %17, i64 %22
  store %struct.sglist_seg* %23, %struct.sglist_seg** %6, align 8
  %24 = load %struct.sglist*, %struct.sglist** %5, align 8
  %25 = getelementptr inbounds %struct.sglist, %struct.sglist* %24, i32 0, i32 2
  %26 = load %struct.sglist_seg*, %struct.sglist_seg** %25, align 8
  %27 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %26, i64 0
  store %struct.sglist_seg* %27, %struct.sglist_seg** %7, align 8
  %28 = load %struct.sglist*, %struct.sglist** %4, align 8
  %29 = getelementptr inbounds %struct.sglist, %struct.sglist* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %14
  %33 = load %struct.sglist_seg*, %struct.sglist_seg** %6, align 8
  %34 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.sglist_seg*, %struct.sglist_seg** %6, align 8
  %37 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = load %struct.sglist_seg*, %struct.sglist_seg** %7, align 8
  %41 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  store i32 1, i32* %8, align 4
  br label %45

45:                                               ; preds = %44, %32, %14
  %46 = load %struct.sglist*, %struct.sglist** %4, align 8
  %47 = getelementptr inbounds %struct.sglist, %struct.sglist* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.sglist*, %struct.sglist** %5, align 8
  %50 = getelementptr inbounds %struct.sglist, %struct.sglist* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %48, %51
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 %52, %53
  %55 = load %struct.sglist*, %struct.sglist** %4, align 8
  %56 = getelementptr inbounds %struct.sglist, %struct.sglist* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %54, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = load i32, i32* @EFBIG, align 4
  store i32 %60, i32* %3, align 4
  br label %107

61:                                               ; preds = %45
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load %struct.sglist_seg*, %struct.sglist_seg** %7, align 8
  %66 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.sglist_seg*, %struct.sglist_seg** %6, align 8
  %69 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, %67
  store i64 %71, i64* %69, align 8
  br label %72

72:                                               ; preds = %64, %61
  %73 = load %struct.sglist*, %struct.sglist** %4, align 8
  %74 = getelementptr inbounds %struct.sglist, %struct.sglist* %73, i32 0, i32 2
  %75 = load %struct.sglist_seg*, %struct.sglist_seg** %74, align 8
  %76 = load %struct.sglist*, %struct.sglist** %4, align 8
  %77 = getelementptr inbounds %struct.sglist, %struct.sglist* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %75, i64 %79
  %81 = load %struct.sglist*, %struct.sglist** %5, align 8
  %82 = getelementptr inbounds %struct.sglist, %struct.sglist* %81, i32 0, i32 2
  %83 = load %struct.sglist_seg*, %struct.sglist_seg** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %83, i64 %85
  %87 = load %struct.sglist*, %struct.sglist** %5, align 8
  %88 = getelementptr inbounds %struct.sglist, %struct.sglist* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sub nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 16
  %94 = trunc i64 %93 to i32
  %95 = call i32 @bcopy(%struct.sglist_seg* %80, %struct.sglist_seg* %86, i32 %94)
  %96 = load %struct.sglist*, %struct.sglist** %5, align 8
  %97 = getelementptr inbounds %struct.sglist, %struct.sglist* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load %struct.sglist*, %struct.sglist** %4, align 8
  %102 = getelementptr inbounds %struct.sglist, %struct.sglist* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load %struct.sglist*, %struct.sglist** %5, align 8
  %106 = call i32 @sglist_reset(%struct.sglist* %105)
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %72, %59, %13
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @bcopy(%struct.sglist_seg*, %struct.sglist_seg*, i32) #1

declare dso_local i32 @sglist_reset(%struct.sglist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
