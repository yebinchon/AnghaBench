; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_core.c_proto_mmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_core.c_proto_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.proto_res* }
%struct.proto_res = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PROT_EXEC = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@VM_MEMATTR_UNCACHEABLE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32*, i32, i32*)* @proto_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proto_mmap(%struct.cdev* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.proto_res*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @PAGE_MASK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %6, align 4
  br label %68

19:                                               ; preds = %5
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @PROT_EXEC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @EACCES, align 4
  store i32 %25, i32* %6, align 4
  br label %68

26:                                               ; preds = %19
  %27 = load %struct.cdev*, %struct.cdev** %7, align 8
  %28 = getelementptr inbounds %struct.cdev, %struct.cdev* %27, i32 0, i32 0
  %29 = load %struct.proto_res*, %struct.proto_res** %28, align 8
  store %struct.proto_res* %29, %struct.proto_res** %12, align 8
  %30 = load %struct.proto_res*, %struct.proto_res** %12, align 8
  %31 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %65 [
    i32 128, label %33
    i32 129, label %52
  ]

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.proto_res*, %struct.proto_res** %12, align 8
  %36 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %34, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %6, align 4
  br label %68

41:                                               ; preds = %33
  %42 = load %struct.proto_res*, %struct.proto_res** %12, align 8
  %43 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @rman_get_start(i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @VM_MEMATTR_UNCACHEABLE, align 4
  %51 = load i32*, i32** %11, align 8
  store i32 %50, i32* %51, align 4
  br label %67

52:                                               ; preds = %26
  %53 = load %struct.proto_res*, %struct.proto_res** %12, align 8
  %54 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @proto_busdma_mmap_allowed(i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %52
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %6, align 4
  br label %68

62:                                               ; preds = %52
  %63 = load i32, i32* %8, align 4
  %64 = load i32*, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  br label %67

65:                                               ; preds = %26
  %66 = load i32, i32* @ENXIO, align 4
  store i32 %66, i32* %6, align 4
  br label %68

67:                                               ; preds = %62, %41
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %67, %65, %60, %39, %24, %17
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @rman_get_start(i32) #1

declare dso_local i32 @proto_busdma_mmap_allowed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
