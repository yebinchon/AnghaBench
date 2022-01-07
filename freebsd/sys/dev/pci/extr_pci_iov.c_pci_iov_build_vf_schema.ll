; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_iov_build_vf_schema.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_iov_build_vf_schema.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@DRIVER_CONFIG_NAME = common dso_local global i32 0, align 4
@IOV_CONFIG_NAME = common dso_local global i32 0, align 4
@VF_SCHEMA_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32**)* @pci_iov_build_vf_schema to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_iov_build_vf_schema(i32* %0, i32** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32** %1, i32*** %4, align 8
  %7 = call i32* (...) @pci_iov_schema_alloc_node()
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = call i32 @nvlist_set_error(i32* %11, i32 %12)
  br label %30

14:                                               ; preds = %2
  %15 = call i32* (...) @pci_iov_get_vf_subsystem_schema()
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @DRIVER_CONFIG_NAME, align 4
  %18 = load i32**, i32*** %4, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @nvlist_move_nvlist(i32* %16, i32 %17, i32* %19)
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @IOV_CONFIG_NAME, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @nvlist_move_nvlist(i32* %21, i32 %22, i32* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @VF_SCHEMA_NAME, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @nvlist_move_nvlist(i32* %25, i32 %26, i32* %27)
  %29 = load i32**, i32*** %4, align 8
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %14, %10
  ret void
}

declare dso_local i32* @pci_iov_schema_alloc_node(...) #1

declare dso_local i32 @nvlist_set_error(i32*, i32) #1

declare dso_local i32* @pci_iov_get_vf_subsystem_schema(...) #1

declare dso_local i32 @nvlist_move_nvlist(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
