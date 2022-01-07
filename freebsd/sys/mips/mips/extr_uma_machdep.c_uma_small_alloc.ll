; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_uma_machdep.c_uma_small_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_uma_machdep.c_uma_small_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@UMA_SLAB_PRIV = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VM_ALLOC_WAITOK = common dso_local global i32 0, align 4
@VM_ALLOC_WAITFAIL = common dso_local global i32 0, align 4
@VM_ALLOC_NOWAIT = common dso_local global i32 0, align 4
@VM_FREELIST_DIRECT = common dso_local global i32 0, align 4
@MIPS_KSEG0_LARGEST_PHYS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_NODUMP = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PG_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @uma_small_alloc(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* @UMA_SLAB_PRIV, align 4
  %17 = load i32*, i32** %10, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @malloc2vm_flags(i32 %18)
  %20 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* @VM_ALLOC_WAITOK, align 4
  %23 = load i32, i32* @VM_ALLOC_WAITFAIL, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %14, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* @VM_ALLOC_NOWAIT, align 4
  %29 = load i32, i32* %14, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %14, align 4
  br label %31

31:                                               ; preds = %55, %44, %5
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @VM_FREELIST_DIRECT, align 4
  %34 = load i32, i32* %14, align 4
  %35 = call %struct.TYPE_4__* @vm_page_alloc_freelist_domain(i32 %32, i32 %33, i32 %34)
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %13, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %37 = icmp eq %struct.TYPE_4__* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* @MIPS_KSEG0_LARGEST_PHYS, align 4
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = call i64 @vm_page_reclaim_contig(i32 %39, i32 1, i32 0, i32 %40, i32 %41, i32 0)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %31

45:                                               ; preds = %38, %31
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %47 = icmp ne %struct.TYPE_4__* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %57

49:                                               ; preds = %45
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @M_NOWAIT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i8* null, i8** %6, align 8
  br label %88

55:                                               ; preds = %49
  %56 = call i32 @vm_wait(i32* null)
  br label %31

57:                                               ; preds = %48
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %59 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_4__* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @M_NODUMP, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @dump_add_page(i32 %65)
  br label %67

67:                                               ; preds = %64, %57
  %68 = load i32, i32* %12, align 4
  %69 = call i64 @MIPS_PHYS_TO_DIRECT(i32 %68)
  %70 = inttoptr i64 %69 to i8*
  store i8* %70, i8** %15, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @M_ZERO, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %67
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @PG_ZERO, align 4
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load i8*, i8** %15, align 8
  %84 = load i32, i32* @PAGE_SIZE, align 4
  %85 = call i32 @bzero(i8* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %75, %67
  %87 = load i8*, i8** %15, align 8
  store i8* %87, i8** %6, align 8
  br label %88

88:                                               ; preds = %86, %54
  %89 = load i8*, i8** %6, align 8
  ret i8* %89
}

declare dso_local i32 @malloc2vm_flags(i32) #1

declare dso_local %struct.TYPE_4__* @vm_page_alloc_freelist_domain(i32, i32, i32) #1

declare dso_local i64 @vm_page_reclaim_contig(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vm_wait(i32*) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_4__*) #1

declare dso_local i32 @dump_add_page(i32) #1

declare dso_local i64 @MIPS_PHYS_TO_DIRECT(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
