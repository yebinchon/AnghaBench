; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_gntdev_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_gntdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.per_user_data = type { i32, i32, i32, i32 }
%struct.file_offset_struct = type { i32, i64 }

@M_GNTDEV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@MAX_OFFSET_COUNT = common dso_local global i32 0, align 4
@file_offset_head = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"per user data mutex\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @gntdev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gntdev_open(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.per_user_data*, align 8
  %11 = alloca %struct.file_offset_struct*, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.thread* %3, %struct.thread** %8, align 8
  %12 = load i32, i32* @M_GNTDEV, align 4
  %13 = load i32, i32* @M_WAITOK, align 4
  %14 = load i32, i32* @M_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = call i8* @malloc(i32 16, i32 %12, i32 %15)
  %17 = bitcast i8* %16 to %struct.per_user_data*
  store %struct.per_user_data* %17, %struct.per_user_data** %10, align 8
  %18 = load %struct.per_user_data*, %struct.per_user_data** %10, align 8
  %19 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %18, i32 0, i32 3
  %20 = call i32 @RB_INIT(i32* %19)
  %21 = load %struct.per_user_data*, %struct.per_user_data** %10, align 8
  %22 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %21, i32 0, i32 2
  %23 = call i32 @RB_INIT(i32* %22)
  %24 = load %struct.per_user_data*, %struct.per_user_data** %10, align 8
  %25 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %24, i32 0, i32 1
  %26 = call i32 @RB_INIT(i32* %25)
  %27 = load i32, i32* @M_GNTDEV, align 4
  %28 = load i32, i32* @M_WAITOK, align 4
  %29 = load i32, i32* @M_ZERO, align 4
  %30 = or i32 %28, %29
  %31 = call i8* @malloc(i32 16, i32 %27, i32 %30)
  %32 = bitcast i8* %31 to %struct.file_offset_struct*
  store %struct.file_offset_struct* %32, %struct.file_offset_struct** %11, align 8
  %33 = load %struct.file_offset_struct*, %struct.file_offset_struct** %11, align 8
  %34 = getelementptr inbounds %struct.file_offset_struct, %struct.file_offset_struct* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @MAX_OFFSET_COUNT, align 4
  %36 = load %struct.file_offset_struct*, %struct.file_offset_struct** %11, align 8
  %37 = getelementptr inbounds %struct.file_offset_struct, %struct.file_offset_struct* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @file_offset_head, align 4
  %39 = load %struct.per_user_data*, %struct.per_user_data** %10, align 8
  %40 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %39, i32 0, i32 1
  %41 = load %struct.file_offset_struct*, %struct.file_offset_struct** %11, align 8
  %42 = call i32 @RB_INSERT(i32 %38, i32* %40, %struct.file_offset_struct* %41)
  %43 = load %struct.per_user_data*, %struct.per_user_data** %10, align 8
  %44 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %43, i32 0, i32 0
  %45 = load i32, i32* @MTX_DEF, align 4
  %46 = call i32 @mtx_init(i32* %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* null, i32 %45)
  %47 = load %struct.per_user_data*, %struct.per_user_data** %10, align 8
  %48 = call i32 @devfs_set_cdevpriv(%struct.per_user_data* %47, i32 (%struct.per_user_data*)* @per_user_data_dtor)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %4
  %52 = load %struct.per_user_data*, %struct.per_user_data** %10, align 8
  %53 = call i32 @per_user_data_dtor(%struct.per_user_data* %52)
  br label %54

54:                                               ; preds = %51, %4
  %55 = load i32, i32* %9, align 4
  ret i32 %55
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @RB_INIT(i32*) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.file_offset_struct*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @devfs_set_cdevpriv(%struct.per_user_data*, i32 (%struct.per_user_data*)*) #1

declare dso_local i32 @per_user_data_dtor(%struct.per_user_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
