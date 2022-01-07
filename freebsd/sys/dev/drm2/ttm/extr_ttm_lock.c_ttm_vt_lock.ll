; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_lock.c_ttm_vt_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_lock.c_ttm_vt_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_lock = type { %struct.ttm_object_file*, i32, i32, i32 }
%struct.ttm_object_file = type { i32 }

@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ttmwi\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ttmw\00", align 1
@EINTR = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@TTM_VT_LOCK_PENDING = common dso_local global i32 0, align 4
@ttm_lock_type = common dso_local global i32 0, align 4
@ttm_vt_lock_remove = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_vt_lock(%struct.ttm_lock* %0, i32 %1, %struct.ttm_object_file* %2) #0 {
  %4 = alloca %struct.ttm_lock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_object_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ttm_lock* %0, %struct.ttm_lock** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ttm_object_file* %2, %struct.ttm_object_file** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @PCATCH, align 4
  store i32 %13, i32* %8, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %15

14:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %15

15:                                               ; preds = %14, %12
  %16 = load %struct.ttm_lock*, %struct.ttm_lock** %4, align 8
  %17 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %16, i32 0, i32 3
  %18 = call i32 @mtx_lock(i32* %17)
  br label %19

19:                                               ; preds = %59, %15
  %20 = load %struct.ttm_lock*, %struct.ttm_lock** %4, align 8
  %21 = call i32 @__ttm_vt_lock(%struct.ttm_lock* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %60

24:                                               ; preds = %19
  %25 = load %struct.ttm_lock*, %struct.ttm_lock** %4, align 8
  %26 = load %struct.ttm_lock*, %struct.ttm_lock** %4, align 8
  %27 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %26, i32 0, i32 3
  %28 = load i32, i32* %8, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @msleep(%struct.ttm_lock* %25, i32* %27, i32 %28, i8* %29, i32 0)
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @EINTR, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %24
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @ERESTART, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36, %24
  %42 = load i32, i32* @ERESTARTSYS, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i32, i32* @TTM_VT_LOCK_PENDING, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.ttm_lock*, %struct.ttm_lock** %4, align 8
  %54 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.ttm_lock*, %struct.ttm_lock** %4, align 8
  %58 = call i32 @wakeup(%struct.ttm_lock* %57)
  br label %60

59:                                               ; preds = %47, %44
  br label %19

60:                                               ; preds = %50, %19
  %61 = load %struct.ttm_object_file*, %struct.ttm_object_file** %6, align 8
  %62 = load %struct.ttm_lock*, %struct.ttm_lock** %4, align 8
  %63 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %62, i32 0, i32 1
  %64 = load i32, i32* @ttm_lock_type, align 4
  %65 = call i32 @ttm_base_object_init(%struct.ttm_object_file* %61, i32* %63, i32 0, i32 %64, i32* @ttm_vt_lock_remove, i32* null)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load %struct.ttm_lock*, %struct.ttm_lock** %4, align 8
  %70 = call i32 @__ttm_vt_unlock(%struct.ttm_lock* %69)
  br label %75

71:                                               ; preds = %60
  %72 = load %struct.ttm_object_file*, %struct.ttm_object_file** %6, align 8
  %73 = load %struct.ttm_lock*, %struct.ttm_lock** %4, align 8
  %74 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %73, i32 0, i32 0
  store %struct.ttm_object_file* %72, %struct.ttm_object_file** %74, align 8
  br label %75

75:                                               ; preds = %71, %68
  %76 = load i32, i32* %9, align 4
  ret i32 %76
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @__ttm_vt_lock(%struct.ttm_lock*) #1

declare dso_local i32 @msleep(%struct.ttm_lock*, i32*, i32, i8*, i32) #1

declare dso_local i32 @wakeup(%struct.ttm_lock*) #1

declare dso_local i32 @ttm_base_object_init(%struct.ttm_object_file*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @__ttm_vt_unlock(%struct.ttm_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
