; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_alloc_l3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_alloc_l3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.rwlock = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32, i32, %struct.rwlock**)* @pmap_alloc_l3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @pmap_alloc_l3(i32 %0, i32 %1, %struct.rwlock** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rwlock**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.rwlock** %2, %struct.rwlock*** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @pmap_l2_pindex(i32 %11)
  store i32 %12, i32* %7, align 4
  br label %13

13:                                               ; preds = %43, %3
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32* @pmap_l2(i32 %14, i32 %15)
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  %20 = load i32*, i32** %8, align 8
  %21 = call i64 @pmap_load(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load i32*, i32** %8, align 8
  %25 = call i64 @pmap_load(i32* %24)
  %26 = call i32 @PTE_TO_PHYS(i64 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call %struct.TYPE_5__* @PHYS_TO_VM_PAGE(i32 %27)
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %10, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %45

33:                                               ; preds = %19, %13
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.rwlock**, %struct.rwlock*** %6, align 8
  %37 = call %struct.TYPE_5__* @_pmap_alloc_l3(i32 %34, i32 %35, %struct.rwlock** %36)
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %10, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %39 = icmp eq %struct.TYPE_5__* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.rwlock**, %struct.rwlock*** %6, align 8
  %42 = icmp ne %struct.rwlock** %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %13

44:                                               ; preds = %40, %33
  br label %45

45:                                               ; preds = %44, %23
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  ret %struct.TYPE_5__* %46
}

declare dso_local i32 @pmap_l2_pindex(i32) #1

declare dso_local i32* @pmap_l2(i32, i32) #1

declare dso_local i64 @pmap_load(i32*) #1

declare dso_local i32 @PTE_TO_PHYS(i64) #1

declare dso_local %struct.TYPE_5__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local %struct.TYPE_5__* @_pmap_alloc_l3(i32, i32, %struct.rwlock**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
