; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_lock.c_ttm_read_trylock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_lock.c_ttm_read_trylock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_lock = type { i32 }

@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ttmrti\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ttmrt\00", align 1
@EINTR = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_read_trylock(%struct.ttm_lock* %0, i32 %1) #0 {
  %3 = alloca %struct.ttm_lock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ttm_lock* %0, %struct.ttm_lock** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @PCATCH, align 4
  store i32 %12, i32* %6, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %14

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %14

14:                                               ; preds = %13, %11
  %15 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %16 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %15, i32 0, i32 0
  %17 = call i32 @mtx_lock(i32* %16)
  br label %18

18:                                               ; preds = %47, %14
  %19 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %20 = call i32 @__ttm_read_trylock(%struct.ttm_lock* %19, i32* %8)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %48

23:                                               ; preds = %18
  %24 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %25 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %26 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %25, i32 0, i32 0
  %27 = load i32, i32* %6, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @msleep(%struct.ttm_lock* %24, i32* %26, i32 %27, i8* %28, i32 0)
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @EINTR, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %23
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @ERESTART, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35, %23
  %41 = load i32, i32* @ERESTARTSYS, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %48

47:                                               ; preds = %43
  br label %18

48:                                               ; preds = %46, %18
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 0
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi i1 [ true, %48 ], [ %53, %51 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @MPASS(i32 %56)
  %58 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %59 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %58, i32 0, i32 0
  %60 = call i32 @mtx_unlock(i32* %59)
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %67

64:                                               ; preds = %54
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  br label %67

67:                                               ; preds = %64, %63
  %68 = phi i32 [ 0, %63 ], [ %66, %64 ]
  ret i32 %68
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @__ttm_read_trylock(%struct.ttm_lock*, i32*) #1

declare dso_local i32 @msleep(%struct.ttm_lock*, i32*, i32, i8*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
