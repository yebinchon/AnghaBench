; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm.c_nvdimm_find_by_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm.c_nvdimm_find_by_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_dev = type { i32 }

@nvdimm_devclass = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nvdimm_dev* @nvdimm_find_by_handle(i64 %0) #0 {
  %2 = alloca %struct.nvdimm_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.nvdimm_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.nvdimm_dev* null, %struct.nvdimm_dev** %4, align 8
  %9 = load i32, i32* @nvdimm_devclass, align 4
  %10 = call i32 @devclass_get_devices(i32 %9, i32** %5, i32* %8)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.nvdimm_dev* null, %struct.nvdimm_dev** %2, align 8
  br label %44

14:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %36, %14
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @nvdimm_root_get_device_handle(i32 %24)
  %26 = load i64, i64* %3, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.nvdimm_dev* @device_get_softc(i32 %33)
  store %struct.nvdimm_dev* %34, %struct.nvdimm_dev** %4, align 8
  br label %39

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %15

39:                                               ; preds = %28, %15
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* @M_TEMP, align 4
  %42 = call i32 @free(i32* %40, i32 %41)
  %43 = load %struct.nvdimm_dev*, %struct.nvdimm_dev** %4, align 8
  store %struct.nvdimm_dev* %43, %struct.nvdimm_dev** %2, align 8
  br label %44

44:                                               ; preds = %39, %13
  %45 = load %struct.nvdimm_dev*, %struct.nvdimm_dev** %2, align 8
  ret %struct.nvdimm_dev* %45
}

declare dso_local i32 @devclass_get_devices(i32, i32**, i32*) #1

declare dso_local i64 @nvdimm_root_get_device_handle(i32) #1

declare dso_local %struct.nvdimm_dev* @device_get_softc(i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
