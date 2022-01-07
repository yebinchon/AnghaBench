; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_iov_build_schema.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_iov_build_schema.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32**)* @pci_iov_build_schema to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pci_iov_build_schema(i32** %0, i32** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store i32** %1, i32*** %5, align 8
  %9 = load i32**, i32*** %4, align 8
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %7, align 8
  %11 = load i32**, i32*** %4, align 8
  store i32* null, i32** %11, align 8
  %12 = load i32**, i32*** %5, align 8
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %8, align 8
  %14 = load i32**, i32*** %5, align 8
  store i32* null, i32** %14, align 8
  %15 = call i32* (...) @pci_iov_schema_alloc_node()
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %30

19:                                               ; preds = %2
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @pci_iov_build_pf_schema(i32* %20, i32** %7)
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @pci_iov_build_vf_schema(i32* %22, i32** %8)
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @nvlist_error(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %30

28:                                               ; preds = %19
  %29 = load i32*, i32** %6, align 8
  store i32* %29, i32** %3, align 8
  br label %37

30:                                               ; preds = %27, %18
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @nvlist_destroy(i32* %31)
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @nvlist_destroy(i32* %33)
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @nvlist_destroy(i32* %35)
  store i32* null, i32** %3, align 8
  br label %37

37:                                               ; preds = %30, %28
  %38 = load i32*, i32** %3, align 8
  ret i32* %38
}

declare dso_local i32* @pci_iov_schema_alloc_node(...) #1

declare dso_local i32 @pci_iov_build_pf_schema(i32*, i32**) #1

declare dso_local i32 @pci_iov_build_vf_schema(i32*, i32**) #1

declare dso_local i64 @nvlist_error(i32*) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
