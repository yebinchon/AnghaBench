; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c_vm_phys_alloc_freelist_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c_vm_phys_alloc_freelist_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_freelist = type { i32 }

@vm_ndomains = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"vm_phys_alloc_freelist_pages: domain %d is out of range\00", align 1
@VM_NFREELIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"vm_phys_alloc_freelist_pages: freelist %d is out of range\00", align 1
@VM_NFREEPOOL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"vm_phys_alloc_freelist_pages: pool %d is out of range\00", align 1
@VM_NFREEORDER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"vm_phys_alloc_freelist_pages: order %d is out of range\00", align 1
@vm_freelist_to_flind = common dso_local global i32* null, align 8
@vm_phys_free_queues = common dso_local global %struct.vm_freelist**** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @vm_phys_alloc_freelist_pages(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vm_freelist*, align 8
  %11 = alloca %struct.vm_freelist*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @vm_ndomains, align 4
  %21 = icmp slt i32 %19, %20
  br label %22

22:                                               ; preds = %18, %4
  %23 = phi i1 [ false, %4 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @KASSERT(i32 %24, i8* %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @VM_NFREELIST, align 4
  %31 = icmp slt i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @KASSERT(i32 %32, i8* %35)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @VM_NFREEPOOL, align 4
  %39 = icmp slt i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @KASSERT(i32 %40, i8* %43)
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @VM_NFREEORDER, align 4
  %47 = icmp slt i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @KASSERT(i32 %48, i8* %51)
  %53 = load i32*, i32** @vm_freelist_to_flind, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %22
  store i32* null, i32** %5, align 8
  br label %167

61:                                               ; preds = %22
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @VM_DOMAIN(i32 %62)
  %64 = call i32 @vm_domain_free_assert_locked(i32 %63)
  %65 = load %struct.vm_freelist****, %struct.vm_freelist***** @vm_phys_free_queues, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.vm_freelist***, %struct.vm_freelist**** %65, i64 %67
  %69 = load %struct.vm_freelist***, %struct.vm_freelist**** %68, align 8
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.vm_freelist**, %struct.vm_freelist*** %69, i64 %71
  %73 = load %struct.vm_freelist**, %struct.vm_freelist*** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.vm_freelist*, %struct.vm_freelist** %73, i64 %75
  %77 = load %struct.vm_freelist*, %struct.vm_freelist** %76, align 8
  %78 = getelementptr inbounds %struct.vm_freelist, %struct.vm_freelist* %77, i64 0
  store %struct.vm_freelist* %78, %struct.vm_freelist** %11, align 8
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %105, %61
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @VM_NFREEORDER, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %108

84:                                               ; preds = %80
  %85 = load %struct.vm_freelist*, %struct.vm_freelist** %11, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.vm_freelist, %struct.vm_freelist* %85, i64 %87
  %89 = getelementptr inbounds %struct.vm_freelist, %struct.vm_freelist* %88, i32 0, i32 0
  %90 = call i32* @TAILQ_FIRST(i32* %89)
  store i32* %90, i32** %12, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %104

93:                                               ; preds = %84
  %94 = load %struct.vm_freelist*, %struct.vm_freelist** %11, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @vm_freelist_rem(%struct.vm_freelist* %94, i32* %95, i32 %96)
  %98 = load i32*, i32** %12, align 8
  %99 = load i32, i32* %13, align 4
  %100 = load %struct.vm_freelist*, %struct.vm_freelist** %11, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @vm_phys_split_pages(i32* %98, i32 %99, %struct.vm_freelist* %100, i32 %101, i32 1)
  %103 = load i32*, i32** %12, align 8
  store i32* %103, i32** %5, align 8
  br label %167

104:                                              ; preds = %84
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  br label %80

108:                                              ; preds = %80
  %109 = load i32, i32* @VM_NFREEORDER, align 4
  %110 = sub nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %163, %108
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp sge i32 %112, %113
  br i1 %114, label %115, label %166

115:                                              ; preds = %111
  store i32 0, i32* %14, align 4
  br label %116

116:                                              ; preds = %159, %115
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* @VM_NFREEPOOL, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %162

120:                                              ; preds = %116
  %121 = load %struct.vm_freelist****, %struct.vm_freelist***** @vm_phys_free_queues, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.vm_freelist***, %struct.vm_freelist**** %121, i64 %123
  %125 = load %struct.vm_freelist***, %struct.vm_freelist**** %124, align 8
  %126 = load i32, i32* %15, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.vm_freelist**, %struct.vm_freelist*** %125, i64 %127
  %129 = load %struct.vm_freelist**, %struct.vm_freelist*** %128, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.vm_freelist*, %struct.vm_freelist** %129, i64 %131
  %133 = load %struct.vm_freelist*, %struct.vm_freelist** %132, align 8
  %134 = getelementptr inbounds %struct.vm_freelist, %struct.vm_freelist* %133, i64 0
  store %struct.vm_freelist* %134, %struct.vm_freelist** %10, align 8
  %135 = load %struct.vm_freelist*, %struct.vm_freelist** %10, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.vm_freelist, %struct.vm_freelist* %135, i64 %137
  %139 = getelementptr inbounds %struct.vm_freelist, %struct.vm_freelist* %138, i32 0, i32 0
  %140 = call i32* @TAILQ_FIRST(i32* %139)
  store i32* %140, i32** %12, align 8
  %141 = load i32*, i32** %12, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %158

143:                                              ; preds = %120
  %144 = load %struct.vm_freelist*, %struct.vm_freelist** %10, align 8
  %145 = load i32*, i32** %12, align 8
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @vm_freelist_rem(%struct.vm_freelist* %144, i32* %145, i32 %146)
  %148 = load i32, i32* %8, align 4
  %149 = load i32*, i32** %12, align 8
  %150 = load i32, i32* %13, align 4
  %151 = call i32 @vm_phys_set_pool(i32 %148, i32* %149, i32 %150)
  %152 = load i32*, i32** %12, align 8
  %153 = load i32, i32* %13, align 4
  %154 = load %struct.vm_freelist*, %struct.vm_freelist** %11, align 8
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @vm_phys_split_pages(i32* %152, i32 %153, %struct.vm_freelist* %154, i32 %155, i32 1)
  %157 = load i32*, i32** %12, align 8
  store i32* %157, i32** %5, align 8
  br label %167

158:                                              ; preds = %120
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %14, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %14, align 4
  br label %116

162:                                              ; preds = %116
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %13, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %13, align 4
  br label %111

166:                                              ; preds = %111
  store i32* null, i32** %5, align 8
  br label %167

167:                                              ; preds = %166, %143, %93, %60
  %168 = load i32*, i32** %5, align 8
  ret i32* %168
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_domain_free_assert_locked(i32) #1

declare dso_local i32 @VM_DOMAIN(i32) #1

declare dso_local i32* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @vm_freelist_rem(%struct.vm_freelist*, i32*, i32) #1

declare dso_local i32 @vm_phys_split_pages(i32*, i32, %struct.vm_freelist*, i32, i32) #1

declare dso_local i32 @vm_phys_set_pool(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
