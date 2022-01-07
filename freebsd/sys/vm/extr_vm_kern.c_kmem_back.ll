; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_kern.c_kmem_back.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_kern.c_kmem_back.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kernel_object = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"kmem_back: only supports kernel object.\00", align 1
@vm_ndomains = common dso_local global i32 0, align 4
@KVA_QUANTUM_SHIFT = common dso_local global i32 0, align 4
@KVA_QUANTUM = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kmem_back(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @kernel_object, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %80, %4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %82

27:                                               ; preds = %23
  %28 = load i32, i32* @vm_ndomains, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %58

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @KVA_QUANTUM_SHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = load i32, i32* @vm_ndomains, align 4
  %35 = srem i32 %33, %34
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %40, %30
  %37 = load i32, i32* %12, align 4
  %38 = call i64 @VM_DOMAIN_EMPTY(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %12, align 4
  br label %36

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  %46 = load i32, i32* @KVA_QUANTUM, align 4
  %47 = call i32 @roundup2(i32 %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51, %43
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %55, %51
  br label %60

58:                                               ; preds = %27
  store i32 0, i32* %12, align 4
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %58, %57
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %6, align 4
  %66 = sub nsw i32 %64, %65
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @kmem_back_domain(i32 %61, i32 %62, i32 %63, i32 %66, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @KERN_SUCCESS, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %60
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %11, align 4
  %77 = sub nsw i32 %75, %76
  %78 = call i32 @kmem_unback(i32 %73, i32 %74, i32 %77)
  br label %82

79:                                               ; preds = %60
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %6, align 4
  br label %23

82:                                               ; preds = %72, %23
  %83 = load i32, i32* %13, align 4
  ret i32 %83
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @VM_DOMAIN_EMPTY(i32) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @kmem_back_domain(i32, i32, i32, i32, i32) #1

declare dso_local i32 @kmem_unback(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
