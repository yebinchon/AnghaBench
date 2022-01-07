; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppc/extr_ppc_pci.c_ppc_pci_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppc/extr_ppc_pci.c_ppc_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_id = type { i32, i32, i32 }

@pci_ids = common dso_local global %struct.pci_id* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ppc_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc_pci_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_id*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @pci_get_devid(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.pci_id*, %struct.pci_id** @pci_ids, align 8
  store %struct.pci_id* %8, %struct.pci_id** %4, align 8
  br label %9

9:                                                ; preds = %22, %1
  %10 = load %struct.pci_id*, %struct.pci_id** %4, align 8
  %11 = getelementptr inbounds %struct.pci_id, %struct.pci_id* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 65535
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.pci_id*, %struct.pci_id** %4, align 8
  %16 = getelementptr inbounds %struct.pci_id, %struct.pci_id* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %17, %18
  br label %20

20:                                               ; preds = %14, %9
  %21 = phi i1 [ false, %9 ], [ %19, %14 ]
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = load %struct.pci_id*, %struct.pci_id** %4, align 8
  %24 = getelementptr inbounds %struct.pci_id, %struct.pci_id* %23, i32 1
  store %struct.pci_id* %24, %struct.pci_id** %4, align 8
  br label %9

25:                                               ; preds = %20
  %26 = load %struct.pci_id*, %struct.pci_id** %4, align 8
  %27 = getelementptr inbounds %struct.pci_id, %struct.pci_id* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 65535
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %43

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.pci_id*, %struct.pci_id** %4, align 8
  %35 = getelementptr inbounds %struct.pci_id, %struct.pci_id* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @device_set_desc(i32 %33, i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.pci_id*, %struct.pci_id** %4, align 8
  %40 = getelementptr inbounds %struct.pci_id, %struct.pci_id* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ppc_probe(i32 %38, i32 %41)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %32, %30
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i32 @device_set_desc(i32, i32) #1

declare dso_local i32 @ppc_probe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
