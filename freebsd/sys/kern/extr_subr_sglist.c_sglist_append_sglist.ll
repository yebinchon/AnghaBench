; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_append_sglist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_append_sglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sglist = type { i64, i32, %struct.sglist_seg* }
%struct.sglist_seg = type { i64, i64 }
%struct.sgsave = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sglist_append_sglist(%struct.sglist* %0, %struct.sglist* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sglist*, align 8
  %7 = alloca %struct.sglist*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sgsave, align 4
  %11 = alloca %struct.sglist_seg*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sglist* %0, %struct.sglist** %6, align 8
  store %struct.sglist* %1, %struct.sglist** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.sglist*, %struct.sglist** %6, align 8
  %16 = getelementptr inbounds %struct.sglist, %struct.sglist* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* %9, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %4
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %5, align 4
  br label %126

24:                                               ; preds = %19
  %25 = load %struct.sglist*, %struct.sglist** %6, align 8
  %26 = getelementptr inbounds %struct.sgsave, %struct.sgsave* %10, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SGLIST_SAVE(%struct.sglist* %25, i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %13, align 4
  %30 = load %struct.sglist*, %struct.sglist** %6, align 8
  %31 = getelementptr inbounds %struct.sglist, %struct.sglist* %30, i32 0, i32 2
  %32 = load %struct.sglist_seg*, %struct.sglist_seg** %31, align 8
  %33 = load %struct.sglist*, %struct.sglist** %6, align 8
  %34 = getelementptr inbounds %struct.sglist, %struct.sglist* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %32, i64 %37
  store %struct.sglist_seg* %38, %struct.sglist_seg** %11, align 8
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %108, %24
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.sglist*, %struct.sglist** %7, align 8
  %42 = getelementptr inbounds %struct.sglist, %struct.sglist* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %111

45:                                               ; preds = %39
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.sglist*, %struct.sglist** %7, align 8
  %48 = getelementptr inbounds %struct.sglist, %struct.sglist* %47, i32 0, i32 2
  %49 = load %struct.sglist_seg*, %struct.sglist_seg** %48, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %49, i64 %51
  %53 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp uge i64 %46, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %45
  %57 = load %struct.sglist*, %struct.sglist** %7, align 8
  %58 = getelementptr inbounds %struct.sglist, %struct.sglist* %57, i32 0, i32 2
  %59 = load %struct.sglist_seg*, %struct.sglist_seg** %58, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %59, i64 %61
  %63 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = sub i64 %65, %64
  store i64 %66, i64* %8, align 8
  br label %108

67:                                               ; preds = %45
  %68 = load %struct.sglist*, %struct.sglist** %7, align 8
  %69 = getelementptr inbounds %struct.sglist, %struct.sglist* %68, i32 0, i32 2
  %70 = load %struct.sglist_seg*, %struct.sglist_seg** %69, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %70, i64 %72
  %74 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = sub i64 %75, %76
  store i64 %77, i64* %12, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* %9, align 8
  %80 = icmp ugt i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %67
  %82 = load i64, i64* %9, align 8
  store i64 %82, i64* %12, align 8
  br label %83

83:                                               ; preds = %81, %67
  %84 = load %struct.sglist*, %struct.sglist** %6, align 8
  %85 = load %struct.sglist*, %struct.sglist** %7, align 8
  %86 = getelementptr inbounds %struct.sglist, %struct.sglist* %85, i32 0, i32 2
  %87 = load %struct.sglist_seg*, %struct.sglist_seg** %86, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %87, i64 %89
  %91 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %8, align 8
  %94 = add i64 %92, %93
  %95 = load i64, i64* %12, align 8
  %96 = call i32 @_sglist_append_range(%struct.sglist* %84, %struct.sglist_seg** %11, i64 %94, i64 %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %83
  br label %111

100:                                              ; preds = %83
  store i64 0, i64* %8, align 8
  %101 = load i64, i64* %12, align 8
  %102 = load i64, i64* %9, align 8
  %103 = sub i64 %102, %101
  store i64 %103, i64* %9, align 8
  %104 = load i64, i64* %9, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %111

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %107, %56
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %14, align 4
  br label %39

111:                                              ; preds = %106, %99, %39
  %112 = load i64, i64* %9, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i32, i32* @EINVAL, align 4
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %114, %111
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load %struct.sglist*, %struct.sglist** %6, align 8
  %121 = getelementptr inbounds %struct.sgsave, %struct.sgsave* %10, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @SGLIST_RESTORE(%struct.sglist* %120, i32 %122)
  br label %124

124:                                              ; preds = %119, %116
  %125 = load i32, i32* %13, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %124, %22
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @SGLIST_SAVE(%struct.sglist*, i32) #1

declare dso_local i32 @_sglist_append_range(%struct.sglist*, %struct.sglist_seg**, i64, i64) #1

declare dso_local i32 @SGLIST_RESTORE(%struct.sglist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
