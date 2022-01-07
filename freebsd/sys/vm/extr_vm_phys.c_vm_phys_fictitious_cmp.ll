; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c_vm_phys_fictitious_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c_vm_phys_fictitious_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_phys_fictitious_seg = type { i64, i64 }

@.str = private unnamed_addr constant [69 x i8] c"Invalid range passed as second parameter to vm fictitious comparison\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"Trying to add overlapping vm fictitious ranges:\0A[%#jx:%#jx] and [%#jx:%#jx]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_phys_fictitious_seg*, %struct.vm_phys_fictitious_seg*)* @vm_phys_fictitious_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_phys_fictitious_cmp(%struct.vm_phys_fictitious_seg* %0, %struct.vm_phys_fictitious_seg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_phys_fictitious_seg*, align 8
  %5 = alloca %struct.vm_phys_fictitious_seg*, align 8
  store %struct.vm_phys_fictitious_seg* %0, %struct.vm_phys_fictitious_seg** %4, align 8
  store %struct.vm_phys_fictitious_seg* %1, %struct.vm_phys_fictitious_seg** %5, align 8
  %6 = load %struct.vm_phys_fictitious_seg*, %struct.vm_phys_fictitious_seg** %4, align 8
  %7 = getelementptr inbounds %struct.vm_phys_fictitious_seg, %struct.vm_phys_fictitious_seg* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.vm_phys_fictitious_seg*, %struct.vm_phys_fictitious_seg** %4, align 8
  %12 = load %struct.vm_phys_fictitious_seg*, %struct.vm_phys_fictitious_seg** %5, align 8
  %13 = call i32 @vm_phys_fictitious_in_range(%struct.vm_phys_fictitious_seg* %11, %struct.vm_phys_fictitious_seg* %12)
  store i32 %13, i32* %3, align 4
  br label %56

14:                                               ; preds = %2
  %15 = load %struct.vm_phys_fictitious_seg*, %struct.vm_phys_fictitious_seg** %5, align 8
  %16 = getelementptr inbounds %struct.vm_phys_fictitious_seg, %struct.vm_phys_fictitious_seg* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.vm_phys_fictitious_seg*, %struct.vm_phys_fictitious_seg** %4, align 8
  %22 = getelementptr inbounds %struct.vm_phys_fictitious_seg, %struct.vm_phys_fictitious_seg* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.vm_phys_fictitious_seg*, %struct.vm_phys_fictitious_seg** %5, align 8
  %25 = getelementptr inbounds %struct.vm_phys_fictitious_seg, %struct.vm_phys_fictitious_seg* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %56

29:                                               ; preds = %14
  %30 = load %struct.vm_phys_fictitious_seg*, %struct.vm_phys_fictitious_seg** %4, align 8
  %31 = getelementptr inbounds %struct.vm_phys_fictitious_seg, %struct.vm_phys_fictitious_seg* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.vm_phys_fictitious_seg*, %struct.vm_phys_fictitious_seg** %5, align 8
  %34 = getelementptr inbounds %struct.vm_phys_fictitious_seg, %struct.vm_phys_fictitious_seg* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %56

38:                                               ; preds = %29
  %39 = load %struct.vm_phys_fictitious_seg*, %struct.vm_phys_fictitious_seg** %4, align 8
  %40 = getelementptr inbounds %struct.vm_phys_fictitious_seg, %struct.vm_phys_fictitious_seg* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load %struct.vm_phys_fictitious_seg*, %struct.vm_phys_fictitious_seg** %4, align 8
  %44 = getelementptr inbounds %struct.vm_phys_fictitious_seg, %struct.vm_phys_fictitious_seg* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.vm_phys_fictitious_seg*, %struct.vm_phys_fictitious_seg** %5, align 8
  %48 = getelementptr inbounds %struct.vm_phys_fictitious_seg, %struct.vm_phys_fictitious_seg* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.vm_phys_fictitious_seg*, %struct.vm_phys_fictitious_seg** %5, align 8
  %52 = getelementptr inbounds %struct.vm_phys_fictitious_seg, %struct.vm_phys_fictitious_seg* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @panic(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %46, i32 %50, i32 %54)
  br label %56

56:                                               ; preds = %38, %37, %28, %10
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @vm_phys_fictitious_in_range(%struct.vm_phys_fictitious_seg*, %struct.vm_phys_fictitious_seg*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @panic(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
