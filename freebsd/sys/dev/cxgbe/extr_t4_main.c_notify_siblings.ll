; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_notify_siblings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_notify_siblings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCI_FUNCMAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @notify_siblings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @notify_siblings(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %48, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @PCI_FUNCMAX, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %51

12:                                               ; preds = %8
  %13 = load i32, i32* %7, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @pci_get_function(i32* %14)
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %48

18:                                               ; preds = %12
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @pci_get_domain(i32* %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @pci_get_bus(i32* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @pci_get_slot(i32* %23)
  %25 = load i32, i32* %7, align 4
  %26 = call i32* @pci_find_dbsf(i32 %20, i32 %22, i32 %24, i32 %25)
  store i32* %26, i32** %5, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %18
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @device_is_attached(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29, %18
  br label %48

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @T4_DETACH_CHILD(i32* %38)
  store i32 %39, i32* %6, align 4
  br label %43

40:                                               ; preds = %34
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @T4_ATTACH_CHILD(i32* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %51

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %47, %33, %17
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %8

51:                                               ; preds = %46, %8
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @pci_get_function(i32*) #1

declare dso_local i32* @pci_find_dbsf(i32, i32, i32, i32) #1

declare dso_local i32 @pci_get_domain(i32*) #1

declare dso_local i32 @pci_get_bus(i32*) #1

declare dso_local i32 @pci_get_slot(i32*) #1

declare dso_local i32 @device_is_attached(i32*) #1

declare dso_local i32 @T4_DETACH_CHILD(i32*) #1

declare dso_local i32 @T4_ATTACH_CHILD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
