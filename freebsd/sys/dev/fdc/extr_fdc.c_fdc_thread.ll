; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdc_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdc_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdc_data = type { i32, i32, i32, i32* }

@FDC_KTHREAD_ALIVE = common dso_local global i32 0, align 4
@FDC_KTHREAD_EXIT = common dso_local global i32 0, align 4
@debugflags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Retry line %d\0A\00", align 1
@retry_line = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fdc_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdc_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fdc_data*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.fdc_data*
  store %struct.fdc_data* %6, %struct.fdc_data** %3, align 8
  %7 = load %struct.fdc_data*, %struct.fdc_data** %3, align 8
  %8 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %7, i32 0, i32 2
  %9 = call i32 @mtx_lock(i32* %8)
  %10 = load i32, i32* @FDC_KTHREAD_ALIVE, align 4
  %11 = load %struct.fdc_data*, %struct.fdc_data** %3, align 8
  %12 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 8
  br label %15

15:                                               ; preds = %47, %1
  %16 = load %struct.fdc_data*, %struct.fdc_data** %3, align 8
  %17 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @FDC_KTHREAD_EXIT, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %15
  %23 = load %struct.fdc_data*, %struct.fdc_data** %3, align 8
  %24 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %23, i32 0, i32 2
  %25 = call i32 @mtx_unlock(i32* %24)
  %26 = load %struct.fdc_data*, %struct.fdc_data** %3, align 8
  %27 = call i32 @fdc_worker(%struct.fdc_data* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %22
  %31 = load i32, i32* @debugflags, align 4
  %32 = and i32 %31, 32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load %struct.fdc_data*, %struct.fdc_data** %3, align 8
  %36 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.fdc_data*, %struct.fdc_data** %3, align 8
  %41 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @g_print_bio(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %42, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* @retry_line, align 4
  %46 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44, %30, %22
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.fdc_data*, %struct.fdc_data** %3, align 8
  %50 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.fdc_data*, %struct.fdc_data** %3, align 8
  %54 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %53, i32 0, i32 2
  %55 = call i32 @mtx_lock(i32* %54)
  br label %15

56:                                               ; preds = %15
  %57 = load i32, i32* @FDC_KTHREAD_EXIT, align 4
  %58 = load i32, i32* @FDC_KTHREAD_ALIVE, align 4
  %59 = or i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = load %struct.fdc_data*, %struct.fdc_data** %3, align 8
  %62 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.fdc_data*, %struct.fdc_data** %3, align 8
  %66 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %65, i32 0, i32 2
  %67 = call i32 @mtx_unlock(i32* %66)
  %68 = call i32 @kproc_exit(i32 0)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @fdc_worker(%struct.fdc_data*) #1

declare dso_local i32 @g_print_bio(i8*, i32*, i8*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @kproc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
