; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_blacklist_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_blacklist_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_domain = type { i32 }

@blacklist_head = common dso_local global i32 0, align 4
@listq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Skipping page with pa 0x%jx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_page_blacklist_add(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm_domain*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i64, i64* %4, align 8
  %10 = call i32* @vm_phys_paddr_to_vm_page(i64 %9)
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %40

14:                                               ; preds = %2
  %15 = load i32*, i32** %7, align 8
  %16 = call %struct.vm_domain* @vm_pagequeue_domain(i32* %15)
  store %struct.vm_domain* %16, %struct.vm_domain** %6, align 8
  %17 = load %struct.vm_domain*, %struct.vm_domain** %6, align 8
  %18 = call i32 @vm_domain_free_lock(%struct.vm_domain* %17)
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @vm_phys_unfree_page(i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.vm_domain*, %struct.vm_domain** %6, align 8
  %22 = call i32 @vm_domain_free_unlock(%struct.vm_domain* %21)
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %14
  %26 = load %struct.vm_domain*, %struct.vm_domain** %6, align 8
  %27 = call i32 @vm_domain_freecnt_inc(%struct.vm_domain* %26, i32 -1)
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @listq, align 4
  %30 = call i32 @TAILQ_INSERT_TAIL(i32* @blacklist_head, i32* %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i64, i64* %4, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %25
  br label %38

38:                                               ; preds = %37, %14
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %13
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32* @vm_phys_paddr_to_vm_page(i64) #1

declare dso_local %struct.vm_domain* @vm_pagequeue_domain(i32*) #1

declare dso_local i32 @vm_domain_free_lock(%struct.vm_domain*) #1

declare dso_local i32 @vm_phys_unfree_page(i32*) #1

declare dso_local i32 @vm_domain_free_unlock(%struct.vm_domain*) #1

declare dso_local i32 @vm_domain_freecnt_inc(%struct.vm_domain*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
