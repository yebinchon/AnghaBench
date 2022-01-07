; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c_vm_phys_alloc_contig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c_vm_phys_alloc_contig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_phys_seg = type { i64, i32, i64 }

@.str = private unnamed_addr constant [12 x i8] c"npages is 0\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"alignment is not a power of 2\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"boundary is not a power of 2\00", align 1
@vm_phys_nsegs = common dso_local global i32 0, align 4
@vm_phys_segs = common dso_local global %struct.vm_phys_seg* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @vm_phys_alloc_contig(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.vm_phys_seg*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp sgt i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %23 = load i64, i64* %12, align 8
  %24 = call i32 @powerof2(i64 %23)
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i64, i64* %13, align 8
  %27 = call i32 @powerof2(i64 %26)
  %28 = call i32 @KASSERT(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @VM_DOMAIN(i32 %29)
  %31 = call i32 @vm_domain_free_assert_locked(i32 %30)
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %6
  store i32* null, i32** %7, align 8
  br label %115

36:                                               ; preds = %6
  store i32* null, i32** %16, align 8
  %37 = load i32, i32* @vm_phys_nsegs, align 4
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %18, align 4
  br label %39

39:                                               ; preds = %110, %36
  %40 = load i32, i32* %18, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %113

42:                                               ; preds = %39
  %43 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** @vm_phys_segs, align 8
  %44 = load i32, i32* %18, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %43, i64 %45
  store %struct.vm_phys_seg* %46, %struct.vm_phys_seg** %17, align 8
  %47 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %17, align 8
  %48 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %42
  %53 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %17, align 8
  %54 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52, %42
  br label %110

59:                                               ; preds = %52
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %17, align 8
  %62 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp sge i64 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %113

66:                                               ; preds = %59
  %67 = load i64, i64* %10, align 8
  %68 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %17, align 8
  %69 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sle i64 %67, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %17, align 8
  %74 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %15, align 8
  br label %78

76:                                               ; preds = %66
  %77 = load i64, i64* %10, align 8
  store i64 %77, i64* %15, align 8
  br label %78

78:                                               ; preds = %76, %72
  %79 = load i64, i64* %11, align 8
  %80 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %17, align 8
  %81 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i64, i64* %11, align 8
  store i64 %85, i64* %14, align 8
  br label %90

86:                                               ; preds = %78
  %87 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %17, align 8
  %88 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %14, align 8
  br label %90

90:                                               ; preds = %86, %84
  %91 = load i64, i64* %14, align 8
  %92 = load i64, i64* %15, align 8
  %93 = sub nsw i64 %91, %92
  %94 = load i64, i64* %9, align 8
  %95 = call i64 @ptoa(i64 %94)
  %96 = icmp slt i64 %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %110

98:                                               ; preds = %90
  %99 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %17, align 8
  %100 = load i64, i64* %9, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* %12, align 8
  %104 = load i64, i64* %13, align 8
  %105 = call i32* @vm_phys_alloc_seg_contig(%struct.vm_phys_seg* %99, i64 %100, i64 %101, i64 %102, i64 %103, i64 %104)
  store i32* %105, i32** %16, align 8
  %106 = load i32*, i32** %16, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %98
  br label %113

109:                                              ; preds = %98
  br label %110

110:                                              ; preds = %109, %97, %58
  %111 = load i32, i32* %18, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %18, align 4
  br label %39

113:                                              ; preds = %108, %65, %39
  %114 = load i32*, i32** %16, align 8
  store i32* %114, i32** %7, align 8
  br label %115

115:                                              ; preds = %113, %35
  %116 = load i32*, i32** %7, align 8
  ret i32* %116
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @powerof2(i64) #1

declare dso_local i32 @vm_domain_free_assert_locked(i32) #1

declare dso_local i32 @VM_DOMAIN(i32) #1

declare dso_local i64 @ptoa(i64) #1

declare dso_local i32* @vm_phys_alloc_seg_contig(%struct.vm_phys_seg*, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
