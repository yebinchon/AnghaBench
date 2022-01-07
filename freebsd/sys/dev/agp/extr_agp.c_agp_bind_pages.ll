; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_bind_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_bind_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_softc = type { i32 }

@AGP_PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"agp_bind_pages: page %p hasn't been wired\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"binding offset %#jx to pa %#jx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @agp_bind_pages(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.agp_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %19 = sub nsw i32 %18, 1
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %25 = sub nsw i32 %24, 1
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22, %4
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %5, align 4
  br label %124

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  %32 = call %struct.agp_softc* @device_get_softc(i32 %31)
  store %struct.agp_softc* %32, %struct.agp_softc** %10, align 8
  %33 = load %struct.agp_softc*, %struct.agp_softc** %10, align 8
  %34 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %33, i32 0, i32 0
  %35 = call i32 @mtx_lock(i32* %34)
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %114, %30
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %118

40:                                               ; preds = %36
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i64 @OFF_TO_IDX(i32 %42)
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @vm_page_wired(i32 %46)
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @KASSERT(i32 %47, i8* %50)
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %109, %40
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %59, %60
  br label %62

62:                                               ; preds = %56, %52
  %63 = phi i1 [ false, %52 ], [ %61, %56 ]
  br i1 %63, label %64, label %113

64:                                               ; preds = %62
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @VM_PAGE_TO_PHYS(i32 %65)
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @AGP_DPF(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @AGP_BIND_PAGE(i32 %76, i32 %81, i32 %82)
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %108

86:                                               ; preds = %64
  store i32 0, i32* %13, align 4
  br label %87

87:                                               ; preds = %99, %86
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %89, %90
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %87
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %95, %96
  %98 = call i32 @AGP_UNBIND_PAGE(i32 %94, i32 %97)
  br label %99

99:                                               ; preds = %93
  %100 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %13, align 4
  br label %87

103:                                              ; preds = %87
  %104 = load %struct.agp_softc*, %struct.agp_softc** %10, align 8
  %105 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %104, i32 0, i32 0
  %106 = call i32 @mtx_unlock(i32* %105)
  %107 = load i32, i32* %16, align 4
  store i32 %107, i32* %5, align 4
  br label %124

108:                                              ; preds = %64
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %12, align 4
  br label %52

113:                                              ; preds = %62
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* @PAGE_SIZE, align 4
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %11, align 4
  br label %36

118:                                              ; preds = %36
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @AGP_FLUSH_TLB(i32 %119)
  %121 = load %struct.agp_softc*, %struct.agp_softc** %10, align 8
  %122 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %121, i32 0, i32 0
  %123 = call i32 @mtx_unlock(i32* %122)
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %118, %103, %28
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local %struct.agp_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @OFF_TO_IDX(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_page_wired(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i32 @AGP_DPF(i8*, i32, i32) #1

declare dso_local i32 @AGP_BIND_PAGE(i32, i32, i32) #1

declare dso_local i32 @AGP_UNBIND_PAGE(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @AGP_FLUSH_TLB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
