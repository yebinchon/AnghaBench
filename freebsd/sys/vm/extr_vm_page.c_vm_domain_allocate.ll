; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_domain_allocate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_domain_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_domain = type { i64, i64, i64, i64, i64, i32 }

@VM_ALLOC_CLASS_MASK = common dso_local global i32 0, align 4
@curproc = common dso_local global i64 0, align 8
@pageproc = common dso_local global i64 0, align 8
@VM_ALLOC_INTERRUPT = common dso_local global i32 0, align 4
@VM_ALLOC_SYSTEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_domain_allocate(%struct.vm_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.vm_domain* %0, %struct.vm_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @VM_ALLOC_CLASS_MASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load i64, i64* @curproc, align 8
  %15 = load i64, i64* @pageproc, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @VM_ALLOC_INTERRUPT, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @VM_ALLOC_SYSTEM, align 4
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %21, %17, %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @VM_ALLOC_INTERRUPT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i64 0, i64* %8, align 8
  br label %41

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @VM_ALLOC_SYSTEM, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.vm_domain*, %struct.vm_domain** %5, align 8
  %34 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %8, align 8
  br label %40

36:                                               ; preds = %28
  %37 = load %struct.vm_domain*, %struct.vm_domain** %5, align 8
  %38 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %36, %32
  br label %41

41:                                               ; preds = %40, %27
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %8, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %8, align 8
  %46 = load %struct.vm_domain*, %struct.vm_domain** %5, align 8
  %47 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %59, %41
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %108

54:                                               ; preds = %49
  %55 = load i64, i64* %9, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = sub nsw i64 %55, %57
  store i64 %58, i64* %10, align 8
  br label %59

59:                                               ; preds = %54
  %60 = load %struct.vm_domain*, %struct.vm_domain** %5, align 8
  %61 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %60, i32 0, i32 2
  %62 = load i64, i64* %10, align 8
  %63 = call i64 @atomic_fcmpset_int(i64* %61, i64* %9, i64 %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %49, label %65

65:                                               ; preds = %59
  %66 = load %struct.vm_domain*, %struct.vm_domain** %5, align 8
  %67 = load i64, i64* %10, align 8
  %68 = call i64 @vm_paging_needed(%struct.vm_domain* %66, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load %struct.vm_domain*, %struct.vm_domain** %5, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i64 @vm_paging_needed(%struct.vm_domain* %71, i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load %struct.vm_domain*, %struct.vm_domain** %5, align 8
  %77 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @pagedaemon_wakeup(i32 %78)
  br label %80

80:                                               ; preds = %75, %70, %65
  %81 = load i64, i64* %9, align 8
  %82 = load %struct.vm_domain*, %struct.vm_domain** %5, align 8
  %83 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp sge i64 %81, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load i64, i64* %10, align 8
  %88 = load %struct.vm_domain*, %struct.vm_domain** %5, align 8
  %89 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %87, %90
  br i1 %91, label %104, label %92

92:                                               ; preds = %86, %80
  %93 = load i64, i64* %9, align 8
  %94 = load %struct.vm_domain*, %struct.vm_domain** %5, align 8
  %95 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp sge i64 %93, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %92
  %99 = load i64, i64* %10, align 8
  %100 = load %struct.vm_domain*, %struct.vm_domain** %5, align 8
  %101 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = icmp slt i64 %99, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %98, %86
  %105 = load %struct.vm_domain*, %struct.vm_domain** %5, align 8
  %106 = call i32 @vm_domain_set(%struct.vm_domain* %105)
  br label %107

107:                                              ; preds = %104, %98, %92
  store i32 1, i32* %4, align 4
  br label %108

108:                                              ; preds = %107, %53
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i64 @atomic_fcmpset_int(i64*, i64*, i64) #1

declare dso_local i64 @vm_paging_needed(%struct.vm_domain*, i64) #1

declare dso_local i32 @pagedaemon_wakeup(i32) #1

declare dso_local i32 @vm_domain_set(%struct.vm_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
