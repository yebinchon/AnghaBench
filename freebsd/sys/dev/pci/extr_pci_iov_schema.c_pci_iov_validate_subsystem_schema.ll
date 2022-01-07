; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov_schema.c_pci_iov_validate_subsystem_schema.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov_schema.c_pci_iov_validate_subsystem_schema.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@NV_TYPE_NVLIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @pci_iov_validate_subsystem_schema to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_iov_validate_subsystem_schema(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @nvlist_exists_nvlist(i32* %12, i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %44

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32* @nvlist_get_nvlist(i32* %19, i8* %20)
  store i32* %21, i32** %6, align 8
  store i8* null, i8** %9, align 8
  br label %22

22:                                               ; preds = %42, %18
  %23 = load i32*, i32** %6, align 8
  %24 = call i8* @nvlist_next(i32* %23, i32* %10, i8** %9)
  store i8* %24, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @NV_TYPE_NVLIST, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %3, align 4
  br label %44

32:                                               ; preds = %26
  %33 = load i32*, i32** %6, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i32* @nvlist_get_nvlist(i32* %33, i8* %34)
  store i32* %35, i32** %7, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @pci_iov_validate_param_schema(i32* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %3, align 4
  br label %44

42:                                               ; preds = %32
  br label %22

43:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %40, %30, %16
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @nvlist_exists_nvlist(i32*, i8*) #1

declare dso_local i32* @nvlist_get_nvlist(i32*, i8*) #1

declare dso_local i8* @nvlist_next(i32*, i32*, i8**) #1

declare dso_local i32 @pci_iov_validate_param_schema(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
