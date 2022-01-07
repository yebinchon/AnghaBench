; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c_vm_phys_scan_contig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c_vm_phys_scan_contig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_phys_seg = type { i32, i64, i64, i32* }

@.str = private unnamed_addr constant [12 x i8] c"npages is 0\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"alignment is not a power of 2\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"boundary is not a power of 2\00", align 1
@vm_phys_nsegs = common dso_local global i32 0, align 4
@vm_phys_segs = common dso_local global %struct.vm_phys_seg* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @vm_phys_scan_contig(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.vm_phys_seg*, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %22 = load i64, i64* %10, align 8
  %23 = icmp sgt i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %26 = load i64, i64* %13, align 8
  %27 = call i32 @powerof2(i64 %26)
  %28 = call i32 @KASSERT(i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i64, i64* %14, align 8
  %30 = call i32 @powerof2(i64 %29)
  %31 = call i32 @KASSERT(i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %12, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %7
  store i32* null, i32** %8, align 8
  br label %135

36:                                               ; preds = %7
  store i32 0, i32* %21, align 4
  br label %37

37:                                               ; preds = %131, %36
  %38 = load i32, i32* %21, align 4
  %39 = load i32, i32* @vm_phys_nsegs, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %134

41:                                               ; preds = %37
  %42 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** @vm_phys_segs, align 8
  %43 = load i32, i32* %21, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %42, i64 %44
  store %struct.vm_phys_seg* %45, %struct.vm_phys_seg** %20, align 8
  %46 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %20, align 8
  %47 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %131

52:                                               ; preds = %41
  %53 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %20, align 8
  %54 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %12, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %134

59:                                               ; preds = %52
  %60 = load i64, i64* %11, align 8
  %61 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %20, align 8
  %62 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp sge i64 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %131

66:                                               ; preds = %59
  %67 = load i64, i64* %11, align 8
  %68 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %20, align 8
  %69 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sle i64 %67, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %20, align 8
  %74 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %19, align 8
  br label %87

76:                                               ; preds = %66
  %77 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %20, align 8
  %78 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %20, align 8
  %82 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %80, %83
  %85 = call i64 @atop(i64 %84)
  %86 = getelementptr inbounds i32, i32* %79, i64 %85
  store i32* %86, i32** %19, align 8
  br label %87

87:                                               ; preds = %76, %72
  %88 = load i64, i64* %12, align 8
  %89 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %20, align 8
  %90 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %88, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i64, i64* %12, align 8
  store i64 %94, i64* %16, align 8
  br label %99

95:                                               ; preds = %87
  %96 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %20, align 8
  %97 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %16, align 8
  br label %99

99:                                               ; preds = %95, %93
  %100 = load i64, i64* %16, align 8
  %101 = load i32*, i32** %19, align 8
  %102 = call i64 @VM_PAGE_TO_PHYS(i32* %101)
  %103 = sub nsw i64 %100, %102
  %104 = load i64, i64* %10, align 8
  %105 = call i64 @ptoa(i64 %104)
  %106 = icmp slt i64 %103, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %131

108:                                              ; preds = %99
  %109 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %20, align 8
  %110 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* %16, align 8
  %113 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %20, align 8
  %114 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = sub nsw i64 %112, %115
  %117 = call i64 @atop(i64 %116)
  %118 = getelementptr inbounds i32, i32* %111, i64 %117
  store i32* %118, i32** %17, align 8
  %119 = load i64, i64* %10, align 8
  %120 = load i32*, i32** %19, align 8
  %121 = load i32*, i32** %17, align 8
  %122 = load i64, i64* %13, align 8
  %123 = load i64, i64* %14, align 8
  %124 = load i32, i32* %15, align 4
  %125 = call i32* @vm_page_scan_contig(i64 %119, i32* %120, i32* %121, i64 %122, i64 %123, i32 %124)
  store i32* %125, i32** %18, align 8
  %126 = load i32*, i32** %18, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %108
  %129 = load i32*, i32** %18, align 8
  store i32* %129, i32** %8, align 8
  br label %135

130:                                              ; preds = %108
  br label %131

131:                                              ; preds = %130, %107, %65, %51
  %132 = load i32, i32* %21, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %21, align 4
  br label %37

134:                                              ; preds = %58, %37
  store i32* null, i32** %8, align 8
  br label %135

135:                                              ; preds = %134, %128, %35
  %136 = load i32*, i32** %8, align 8
  ret i32* %136
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @powerof2(i64) #1

declare dso_local i64 @atop(i64) #1

declare dso_local i64 @VM_PAGE_TO_PHYS(i32*) #1

declare dso_local i64 @ptoa(i64) #1

declare dso_local i32* @vm_page_scan_contig(i64, i32*, i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
