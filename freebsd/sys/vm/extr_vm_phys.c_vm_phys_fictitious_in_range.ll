; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c_vm_phys_fictitious_in_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c_vm_phys_fictitious_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_phys_fictitious_seg = type { i64, i64 }

@.str = private unnamed_addr constant [54 x i8] c"Invalid range passed on search for vm_fictitious page\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_phys_fictitious_seg*, %struct.vm_phys_fictitious_seg*)* @vm_phys_fictitious_in_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_phys_fictitious_in_range(%struct.vm_phys_fictitious_seg* %0, %struct.vm_phys_fictitious_seg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_phys_fictitious_seg*, align 8
  %5 = alloca %struct.vm_phys_fictitious_seg*, align 8
  store %struct.vm_phys_fictitious_seg* %0, %struct.vm_phys_fictitious_seg** %4, align 8
  store %struct.vm_phys_fictitious_seg* %1, %struct.vm_phys_fictitious_seg** %5, align 8
  %6 = load %struct.vm_phys_fictitious_seg*, %struct.vm_phys_fictitious_seg** %5, align 8
  %7 = getelementptr inbounds %struct.vm_phys_fictitious_seg, %struct.vm_phys_fictitious_seg* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.vm_phys_fictitious_seg*, %struct.vm_phys_fictitious_seg** %5, align 8
  %12 = getelementptr inbounds %struct.vm_phys_fictitious_seg, %struct.vm_phys_fictitious_seg* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i1 [ false, %2 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.vm_phys_fictitious_seg*, %struct.vm_phys_fictitious_seg** %4, align 8
  %20 = getelementptr inbounds %struct.vm_phys_fictitious_seg, %struct.vm_phys_fictitious_seg* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.vm_phys_fictitious_seg*, %struct.vm_phys_fictitious_seg** %5, align 8
  %23 = getelementptr inbounds %struct.vm_phys_fictitious_seg, %struct.vm_phys_fictitious_seg* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %37

27:                                               ; preds = %15
  %28 = load %struct.vm_phys_fictitious_seg*, %struct.vm_phys_fictitious_seg** %4, align 8
  %29 = getelementptr inbounds %struct.vm_phys_fictitious_seg, %struct.vm_phys_fictitious_seg* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.vm_phys_fictitious_seg*, %struct.vm_phys_fictitious_seg** %5, align 8
  %32 = getelementptr inbounds %struct.vm_phys_fictitious_seg, %struct.vm_phys_fictitious_seg* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %37

36:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %35, %26
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
