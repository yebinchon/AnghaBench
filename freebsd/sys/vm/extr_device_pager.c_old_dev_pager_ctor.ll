; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_device_pager.c_old_dev_pager_ctor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_device_pager.c_old_dev_pager_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.cdev = type { i32 }
%struct.cdevsw = type { i64 (%struct.cdev.0*, i64, i64*, i32, i32*)* }
%struct.cdev.0 = type opaque

@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64, i64, %struct.ucred*, i64*)* @old_dev_pager_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @old_dev_pager_ctor(i8* %0, i64 %1, i64 %2, i64 %3, %struct.ucred* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ucred*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.cdev*, align 8
  %15 = alloca %struct.cdevsw*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.ucred* %4, %struct.ucred** %12, align 8
  store i64* %5, i64** %13, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = bitcast i8* %21 to %struct.cdev*
  store %struct.cdev* %22, %struct.cdev** %14, align 8
  %23 = load %struct.cdev*, %struct.cdev** %14, align 8
  %24 = call %struct.cdevsw* @dev_refthread(%struct.cdev* %23, i32* %20)
  store %struct.cdevsw* %24, %struct.cdevsw** %15, align 8
  %25 = load %struct.cdevsw*, %struct.cdevsw** %15, align 8
  %26 = icmp eq %struct.cdevsw* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %7, align 4
  br label %73

29:                                               ; preds = %6
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @OFF_TO_IDX(i64 %30)
  store i32 %31, i32* %19, align 4
  store i64 0, i64* %18, align 8
  %32 = load i64, i64* %11, align 8
  store i64 %32, i64* %17, align 8
  br label %33

33:                                               ; preds = %54, %29
  %34 = load i32, i32* %19, align 4
  %35 = add i32 %34, -1
  store i32 %35, i32* %19, align 4
  %36 = icmp ne i32 %34, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %33
  %38 = load %struct.cdevsw*, %struct.cdevsw** %15, align 8
  %39 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %38, i32 0, i32 0
  %40 = load i64 (%struct.cdev.0*, i64, i64*, i32, i32*)*, i64 (%struct.cdev.0*, i64, i64*, i32, i32*)** %39, align 8
  %41 = load %struct.cdev*, %struct.cdev** %14, align 8
  %42 = bitcast %struct.cdev* %41 to %struct.cdev.0*
  %43 = load i64, i64* %17, align 8
  %44 = load i64, i64* %10, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i64 %40(%struct.cdev.0* %42, i64 %43, i64* %18, i32 %45, i32* %16)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load %struct.cdev*, %struct.cdev** %14, align 8
  %50 = load i32, i32* %20, align 4
  %51 = call i32 @dev_relthread(%struct.cdev* %49, i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %7, align 4
  br label %73

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* @PAGE_SIZE, align 8
  %56 = load i64, i64* %17, align 8
  %57 = add nsw i64 %56, %55
  store i64 %57, i64* %17, align 8
  br label %33

58:                                               ; preds = %33
  %59 = load %struct.cdev*, %struct.cdev** %14, align 8
  %60 = call i32 @dev_ref(%struct.cdev* %59)
  %61 = load %struct.cdev*, %struct.cdev** %14, align 8
  %62 = load i32, i32* %20, align 4
  %63 = call i32 @dev_relthread(%struct.cdev* %61, i32 %62)
  %64 = load i64, i64* %18, align 8
  %65 = call i64 @atop(i64 %64)
  %66 = load i64, i64* %17, align 8
  %67 = load i64, i64* @PAGE_SIZE, align 8
  %68 = sub nsw i64 %66, %67
  %69 = call i32 @OFF_TO_IDX(i64 %68)
  %70 = zext i32 %69 to i64
  %71 = sub nsw i64 %65, %70
  %72 = load i64*, i64** %13, align 8
  store i64 %71, i64* %72, align 8
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %58, %48, %27
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local %struct.cdevsw* @dev_refthread(%struct.cdev*, i32*) #1

declare dso_local i32 @OFF_TO_IDX(i64) #1

declare dso_local i32 @dev_relthread(%struct.cdev*, i32) #1

declare dso_local i32 @dev_ref(%struct.cdev*) #1

declare dso_local i64 @atop(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
