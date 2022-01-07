; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c_vm_phys_paddr_to_vm_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c_vm_phys_paddr_to_vm_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_phys_seg = type { i64, i64, i32* }

@vm_phys_nsegs = common dso_local global i32 0, align 4
@vm_phys_segs = common dso_local global %struct.vm_phys_seg* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @vm_phys_paddr_to_vm_page(i64 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.vm_phys_seg*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %38, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @vm_phys_nsegs, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %41

10:                                               ; preds = %6
  %11 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** @vm_phys_segs, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %11, i64 %13
  store %struct.vm_phys_seg* %14, %struct.vm_phys_seg** %4, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %4, align 8
  %17 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %15, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %10
  %21 = load i64, i64* %3, align 8
  %22 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %4, align 8
  %23 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %4, align 8
  %28 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %3, align 8
  %31 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %4, align 8
  %32 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = call i64 @atop(i64 %34)
  %36 = getelementptr inbounds i32, i32* %29, i64 %35
  store i32* %36, i32** %2, align 8
  br label %42

37:                                               ; preds = %20, %10
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %6

41:                                               ; preds = %6
  store i32* null, i32** %2, align 8
  br label %42

42:                                               ; preds = %41, %26
  %43 = load i32*, i32** %2, align 8
  ret i32* %43
}

declare dso_local i64 @atop(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
