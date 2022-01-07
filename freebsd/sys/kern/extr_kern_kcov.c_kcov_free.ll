; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_kcov.c_kcov_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_kcov.c_kcov_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcov_info = type { i64, i64, i32* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@M_KCOV_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kcov_info*)* @kcov_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kcov_free(%struct.kcov_info* %0) #0 {
  %2 = alloca %struct.kcov_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.kcov_info* %0, %struct.kcov_info** %2, align 8
  %5 = load %struct.kcov_info*, %struct.kcov_info** %2, align 8
  %6 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load %struct.kcov_info*, %struct.kcov_info** %2, align 8
  %11 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.kcov_info*, %struct.kcov_info** %2, align 8
  %14 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PAGE_SIZE, align 8
  %17 = udiv i64 %15, %16
  %18 = call i32 @pmap_qremove(i64 %12, i64 %17)
  %19 = load %struct.kcov_info*, %struct.kcov_info** %2, align 8
  %20 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.kcov_info*, %struct.kcov_info** %2, align 8
  %23 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @kva_free(i64 %21, i64 %24)
  br label %26

26:                                               ; preds = %9, %1
  %27 = load %struct.kcov_info*, %struct.kcov_info** %2, align 8
  %28 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %65

31:                                               ; preds = %26
  %32 = load %struct.kcov_info*, %struct.kcov_info** %2, align 8
  %33 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @VM_OBJECT_WLOCK(i32* %34)
  %36 = load %struct.kcov_info*, %struct.kcov_info** %2, align 8
  %37 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @vm_page_lookup(i32* %38, i32 0)
  store i32 %39, i32* %3, align 4
  store i64 0, i64* %4, align 8
  br label %40

40:                                               ; preds = %53, %31
  %41 = load i64, i64* %4, align 8
  %42 = load %struct.kcov_info*, %struct.kcov_info** %2, align 8
  %43 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PAGE_SIZE, align 8
  %46 = udiv i64 %44, %45
  %47 = icmp ult i64 %41, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @vm_page_unwire_noq(i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @vm_page_next(i32 %51)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %48
  %54 = load i64, i64* %4, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %4, align 8
  br label %40

56:                                               ; preds = %40
  %57 = load %struct.kcov_info*, %struct.kcov_info** %2, align 8
  %58 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @VM_OBJECT_WUNLOCK(i32* %59)
  %61 = load %struct.kcov_info*, %struct.kcov_info** %2, align 8
  %62 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @vm_object_deallocate(i32* %63)
  br label %65

65:                                               ; preds = %56, %26
  %66 = load %struct.kcov_info*, %struct.kcov_info** %2, align 8
  %67 = load i32, i32* @M_KCOV_INFO, align 4
  %68 = call i32 @free(%struct.kcov_info* %66, i32 %67)
  ret void
}

declare dso_local i32 @pmap_qremove(i64, i64) #1

declare dso_local i32 @kva_free(i64, i64) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32*) #1

declare dso_local i32 @vm_page_lookup(i32*, i32) #1

declare dso_local i32 @vm_page_unwire_noq(i32) #1

declare dso_local i32 @vm_page_next(i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32*) #1

declare dso_local i32 @vm_object_deallocate(i32*) #1

declare dso_local i32 @free(%struct.kcov_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
