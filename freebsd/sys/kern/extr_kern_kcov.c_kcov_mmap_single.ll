; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_kcov.c_kcov_mmap_single.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_kcov.c_kcov_mmap_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.vm_object = type { i32 }
%struct.kcov_info = type { i64, i32, %struct.vm_object* }

@PROT_EXEC = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KCOV_ELEMENT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i64*, i32, %struct.vm_object**, i32)* @kcov_mmap_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcov_mmap_single(%struct.cdev* %0, i64* %1, i32 %2, %struct.vm_object** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vm_object**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.kcov_info*, align 8
  %13 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.vm_object** %3, %struct.vm_object*** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* @PROT_EXEC, align 4
  %16 = load i32, i32* @PROT_READ, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @PROT_WRITE, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %14, %19
  %21 = load i32, i32* @PROT_READ, align 4
  %22 = load i32, i32* @PROT_WRITE, align 4
  %23 = or i32 %21, %22
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %6, align 4
  br label %58

27:                                               ; preds = %5
  %28 = bitcast %struct.kcov_info** %12 to i8**
  %29 = call i32 @devfs_get_cdevpriv(i8** %28)
  store i32 %29, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %6, align 4
  br label %58

33:                                               ; preds = %27
  %34 = load %struct.kcov_info*, %struct.kcov_info** %12, align 8
  %35 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @KCOV_ELEMENT_SIZE, align 4
  %41 = sdiv i32 %39, %40
  %42 = load %struct.kcov_info*, %struct.kcov_info** %12, align 8
  %43 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %38, %33
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %6, align 4
  br label %58

48:                                               ; preds = %38
  %49 = load %struct.kcov_info*, %struct.kcov_info** %12, align 8
  %50 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %49, i32 0, i32 2
  %51 = load %struct.vm_object*, %struct.vm_object** %50, align 8
  %52 = call i32 @vm_object_reference(%struct.vm_object* %51)
  %53 = load i64*, i64** %8, align 8
  store i64 0, i64* %53, align 8
  %54 = load %struct.kcov_info*, %struct.kcov_info** %12, align 8
  %55 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %54, i32 0, i32 2
  %56 = load %struct.vm_object*, %struct.vm_object** %55, align 8
  %57 = load %struct.vm_object**, %struct.vm_object*** %10, align 8
  store %struct.vm_object* %56, %struct.vm_object** %57, align 8
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %48, %46, %31, %25
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @vm_object_reference(%struct.vm_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
