; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_setdirty_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_setdirty_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32, i8*, i8*, i8*, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*)* @vfs_setdirty_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfs_setdirty_range(%struct.buf* %0) #0 {
  %2 = alloca %struct.buf*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %21, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.buf*, %struct.buf** %2, align 8
  %9 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %6
  %13 = load %struct.buf*, %struct.buf** %2, align 8
  %14 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 5
  %15 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %15, i64 %17
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = call i32 @vm_page_test_dirty(%struct.TYPE_2__* %19)
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %6

24:                                               ; preds = %6
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %44, %24
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.buf*, %struct.buf** %2, align 8
  %28 = getelementptr inbounds %struct.buf, %struct.buf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load %struct.buf*, %struct.buf** %2, align 8
  %33 = getelementptr inbounds %struct.buf, %struct.buf* %32, i32 0, i32 5
  %34 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %34, i64 %36
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %47

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %25

47:                                               ; preds = %42, %25
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @PAGE_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load %struct.buf*, %struct.buf** %2, align 8
  %52 = getelementptr inbounds %struct.buf, %struct.buf* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PAGE_MASK, align 4
  %55 = and i32 %53, %54
  %56 = sub nsw i32 %50, %55
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  store i8* %58, i8** %3, align 8
  %59 = load %struct.buf*, %struct.buf** %2, align 8
  %60 = getelementptr inbounds %struct.buf, %struct.buf* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %79, %47
  %64 = load i32, i32* %5, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  %67 = load %struct.buf*, %struct.buf** %2, align 8
  %68 = getelementptr inbounds %struct.buf, %struct.buf* %67, i32 0, i32 5
  %69 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %69, i64 %71
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %82

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %5, align 4
  br label %63

82:                                               ; preds = %77, %63
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  %85 = load i32, i32* @PAGE_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = load %struct.buf*, %struct.buf** %2, align 8
  %88 = getelementptr inbounds %struct.buf, %struct.buf* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @PAGE_MASK, align 4
  %91 = and i32 %89, %90
  %92 = sub nsw i32 %86, %91
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i8*
  store i8* %94, i8** %4, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = load %struct.buf*, %struct.buf** %2, align 8
  %97 = getelementptr inbounds %struct.buf, %struct.buf* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ugt i8* %95, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %82
  %101 = load %struct.buf*, %struct.buf** %2, align 8
  %102 = getelementptr inbounds %struct.buf, %struct.buf* %101, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  store i8* %103, i8** %4, align 8
  br label %104

104:                                              ; preds = %100, %82
  %105 = load i8*, i8** %3, align 8
  %106 = load i8*, i8** %4, align 8
  %107 = icmp ult i8* %105, %106
  br i1 %107, label %108, label %129

108:                                              ; preds = %104
  %109 = load %struct.buf*, %struct.buf** %2, align 8
  %110 = getelementptr inbounds %struct.buf, %struct.buf* %109, i32 0, i32 3
  %111 = load i8*, i8** %110, align 8
  %112 = load i8*, i8** %3, align 8
  %113 = icmp ugt i8* %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load i8*, i8** %3, align 8
  %116 = load %struct.buf*, %struct.buf** %2, align 8
  %117 = getelementptr inbounds %struct.buf, %struct.buf* %116, i32 0, i32 3
  store i8* %115, i8** %117, align 8
  br label %118

118:                                              ; preds = %114, %108
  %119 = load %struct.buf*, %struct.buf** %2, align 8
  %120 = getelementptr inbounds %struct.buf, %struct.buf* %119, i32 0, i32 4
  %121 = load i8*, i8** %120, align 8
  %122 = load i8*, i8** %4, align 8
  %123 = icmp ult i8* %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load i8*, i8** %4, align 8
  %126 = load %struct.buf*, %struct.buf** %2, align 8
  %127 = getelementptr inbounds %struct.buf, %struct.buf* %126, i32 0, i32 4
  store i8* %125, i8** %127, align 8
  br label %128

128:                                              ; preds = %124, %118
  br label %129

129:                                              ; preds = %128, %104
  ret void
}

declare dso_local i32 @vm_page_test_dirty(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
