; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_init_pte_prot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_init_pte_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@VM_PROT_WRITE = common dso_local global i32 0, align 4
@PTE_V = common dso_local global i32 0, align 4
@PTE_RO = common dso_local global i32 0, align 4
@VPO_UNMANAGED = common dso_local global i32 0, align 4
@PTE_D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32)* @init_pte_prot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_pte_prot(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @VM_PROT_WRITE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @PTE_V, align 4
  %14 = load i32, i32* @PTE_RO, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %7, align 4
  br label %40

16:                                               ; preds = %3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @VPO_UNMANAGED, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @VM_PROT_WRITE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @PTE_V, align 4
  %30 = load i32, i32* @PTE_D, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %7, align 4
  br label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @PTE_V, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %32, %28
  br label %39

35:                                               ; preds = %16
  %36 = load i32, i32* @PTE_V, align 4
  %37 = load i32, i32* @PTE_D, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %35, %34
  br label %40

40:                                               ; preds = %39, %12
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
