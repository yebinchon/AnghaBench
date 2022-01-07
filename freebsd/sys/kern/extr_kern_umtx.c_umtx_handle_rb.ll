; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_handle_rb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_handle_rb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64, i32 }
%struct.umutex = type { i32, i32 }

@curproc = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"need current vmspace\00", align 1
@UMUTEX_ROBUST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UMUTEX_CONTESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i64, i64*, i32)* @umtx_handle_rb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umtx_handle_rb(%struct.thread* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.umutex, align 4
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.thread*, %struct.thread** %6, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @curproc, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* %7, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @copyin(i8* %20, %struct.umutex* %10, i32 8)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %5, align 4
  br label %64

26:                                               ; preds = %4
  %27 = load i64*, i64** %8, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.thread*, %struct.thread** %6, align 8
  %31 = load i64*, i64** %8, align 8
  %32 = call i32 @umtx_read_rb_list(%struct.thread* %30, %struct.umutex* %10, i64* %31)
  br label %33

33:                                               ; preds = %29, %26
  %34 = getelementptr inbounds %struct.umutex, %struct.umutex* %10, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @UMUTEX_ROBUST, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %5, align 4
  br label %64

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.umutex, %struct.umutex* %10, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = load %struct.thread*, %struct.thread** %6, align 8
  %48 = getelementptr inbounds %struct.thread, %struct.thread* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %46, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %41
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @EINVAL, align 4
  br label %57

57:                                               ; preds = %55, %54
  %58 = phi i32 [ 0, %54 ], [ %56, %55 ]
  store i32 %58, i32* %5, align 4
  br label %64

59:                                               ; preds = %41
  %60 = load %struct.thread*, %struct.thread** %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = inttoptr i64 %61 to %struct.umutex*
  %63 = call i32 @do_unlock_umutex(%struct.thread* %60, %struct.umutex* %62, i32 1)
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %59, %57, %39, %24
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @copyin(i8*, %struct.umutex*, i32) #1

declare dso_local i32 @umtx_read_rb_list(%struct.thread*, %struct.umutex*, i64*) #1

declare dso_local i32 @do_unlock_umutex(%struct.thread*, %struct.umutex*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
