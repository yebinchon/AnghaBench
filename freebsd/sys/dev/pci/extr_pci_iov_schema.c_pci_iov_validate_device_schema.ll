; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov_schema.c_pci_iov_validate_device_schema.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov_schema.c_pci_iov_validate_device_schema.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@IOV_CONFIG_NAME = common dso_local global i32 0, align 4
@DRIVER_CONFIG_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @pci_iov_validate_device_schema to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_iov_validate_device_schema(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @nvlist_exists_nvlist(i32* %8, i8* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %43

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32* @nvlist_get_nvlist(i32* %15, i8* %16)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @IOV_CONFIG_NAME, align 4
  %20 = call i32 @pci_iov_validate_subsystem_schema(i32* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %43

25:                                               ; preds = %14
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @DRIVER_CONFIG_NAME, align 4
  %28 = call i32 @pci_iov_validate_subsystem_schema(i32* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %43

33:                                               ; preds = %25
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @pci_iov_validate_param_collisions(i32* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %43

40:                                               ; preds = %33
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @pci_iov_validate_schema_subsystems(i32* %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %38, %31, %23, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @nvlist_exists_nvlist(i32*, i8*) #1

declare dso_local i32* @nvlist_get_nvlist(i32*, i8*) #1

declare dso_local i32 @pci_iov_validate_subsystem_schema(i32*, i32) #1

declare dso_local i32 @pci_iov_validate_param_collisions(i32*) #1

declare dso_local i32 @pci_iov_validate_schema_subsystems(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
