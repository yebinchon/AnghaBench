; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_cleanup_rb_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_cleanup_rb_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@umtx_max_rb = common dso_local global i32 0, align 4
@umtx_verbose_rb = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"comm %s pid %d: reached umtx %smax rb %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"comm %s pid %d: handling %srb error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, i64, i64*, i8*)* @umtx_cleanup_rb_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umtx_cleanup_rb_list(%struct.thread* %0, i64 %1, i64* %2, i8* %3) #0 {
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %89

16:                                               ; preds = %4
  %17 = load %struct.thread*, %struct.thread** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @umtx_read_uptr(%struct.thread* %17, i64 %18, i64* %11)
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %45, %16
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i64, i64* %11, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @umtx_max_rb, align 4
  %29 = icmp slt i32 %27, %28
  br label %30

30:                                               ; preds = %26, %23, %20
  %31 = phi i1 [ false, %23 ], [ false, %20 ], [ %29, %26 ]
  br i1 %31, label %32, label %48

32:                                               ; preds = %30
  %33 = load i64, i64* %11, align 8
  %34 = load i64*, i64** %7, align 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  store i32 1, i32* %12, align 4
  %38 = load i64*, i64** %7, align 8
  store i64 0, i64* %38, align 8
  br label %40

39:                                               ; preds = %32
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %39, %37
  %41 = load %struct.thread*, %struct.thread** %5, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @umtx_handle_rb(%struct.thread* %41, i64 %42, i64* %11, i32 %43)
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %20

48:                                               ; preds = %30
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @umtx_max_rb, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %48
  %53 = load i64, i64* @umtx_verbose_rb, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %52
  %56 = load %struct.thread*, %struct.thread** %5, align 8
  %57 = getelementptr inbounds %struct.thread, %struct.thread* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.thread*, %struct.thread** %5, align 8
  %62 = getelementptr inbounds %struct.thread, %struct.thread* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* @umtx_max_rb, align 4
  %68 = call i32 @uprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %65, i8* %66, i32 %67)
  br label %69

69:                                               ; preds = %55, %52, %48
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %69
  %73 = load i64, i64* @umtx_verbose_rb, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %72
  %76 = load %struct.thread*, %struct.thread** %5, align 8
  %77 = getelementptr inbounds %struct.thread, %struct.thread* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.thread*, %struct.thread** %5, align 8
  %82 = getelementptr inbounds %struct.thread, %struct.thread* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i8*, i8** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @uprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %85, i8* %86, i32 %87)
  br label %89

89:                                               ; preds = %15, %75, %72, %69
  ret void
}

declare dso_local i32 @umtx_read_uptr(%struct.thread*, i64, i64*) #1

declare dso_local i32 @umtx_handle_rb(%struct.thread*, i64, i64*, i32) #1

declare dso_local i32 @uprintf(i8*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
