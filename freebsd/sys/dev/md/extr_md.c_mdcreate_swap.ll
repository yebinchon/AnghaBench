; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_mdcreate_swap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_mdcreate_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_s = type { i32, i64, i64, i32, i32* }
%struct.md_req = type { i32, i32, i64, i64 }
%struct.thread = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EDOM = common dso_local global i32 0, align 4
@MD_VERIFY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OBJT_SWAP = common dso_local global i32 0, align 4
@VM_PROT_DEFAULT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MD_FORCE = common dso_local global i32 0, align 4
@MD_RESERVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_s*, %struct.md_req*, %struct.thread*)* @mdcreate_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdcreate_swap(%struct.md_s* %0, %struct.md_req* %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.md_s*, align 8
  %6 = alloca %struct.md_req*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.md_s* %0, %struct.md_s** %5, align 8
  store %struct.md_req* %1, %struct.md_req** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  %10 = load %struct.md_s*, %struct.md_s** %5, align 8
  %11 = getelementptr inbounds %struct.md_s, %struct.md_s* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load %struct.md_s*, %struct.md_s** %5, align 8
  %16 = getelementptr inbounds %struct.md_s, %struct.md_s* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = srem i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14, %3
  %22 = load i32, i32* @EDOM, align 4
  store i32 %22, i32* %4, align 4
  br label %121

23:                                               ; preds = %14
  %24 = load %struct.md_req*, %struct.md_req** %6, align 8
  %25 = getelementptr inbounds %struct.md_req, %struct.md_req* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MD_VERIFY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %4, align 4
  br label %121

32:                                               ; preds = %23
  %33 = load %struct.md_req*, %struct.md_req** %6, align 8
  %34 = getelementptr inbounds %struct.md_req, %struct.md_req* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = sdiv i32 %35, %36
  store i32 %37, i32* %8, align 4
  %38 = load %struct.md_req*, %struct.md_req** %6, align 8
  %39 = getelementptr inbounds %struct.md_req, %struct.md_req* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %32
  %43 = load %struct.md_req*, %struct.md_req** %6, align 8
  %44 = getelementptr inbounds %struct.md_req, %struct.md_req* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.md_s*, %struct.md_s** %5, align 8
  %47 = getelementptr inbounds %struct.md_s, %struct.md_s* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %42, %32
  %49 = load %struct.md_req*, %struct.md_req** %6, align 8
  %50 = getelementptr inbounds %struct.md_req, %struct.md_req* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.md_req*, %struct.md_req** %6, align 8
  %55 = getelementptr inbounds %struct.md_req, %struct.md_req* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.md_s*, %struct.md_s** %5, align 8
  %58 = getelementptr inbounds %struct.md_s, %struct.md_s* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %53, %48
  %60 = load i32, i32* @OBJT_SWAP, align 4
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = load i32, i32* %8, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* @VM_PROT_DEFAULT, align 4
  %65 = load %struct.thread*, %struct.thread** %7, align 8
  %66 = getelementptr inbounds %struct.thread, %struct.thread* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32* @vm_pager_allocate(i32 %60, i32* null, i32 %63, i32 %64, i32 0, i32 %67)
  %69 = load %struct.md_s*, %struct.md_s** %5, align 8
  %70 = getelementptr inbounds %struct.md_s, %struct.md_s* %69, i32 0, i32 4
  store i32* %68, i32** %70, align 8
  %71 = load %struct.md_s*, %struct.md_s** %5, align 8
  %72 = getelementptr inbounds %struct.md_s, %struct.md_s* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %59
  %76 = load i32, i32* @ENOMEM, align 4
  store i32 %76, i32* %4, align 4
  br label %121

77:                                               ; preds = %59
  %78 = load %struct.md_req*, %struct.md_req** %6, align 8
  %79 = getelementptr inbounds %struct.md_req, %struct.md_req* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @MD_FORCE, align 4
  %82 = load i32, i32* @MD_RESERVE, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %80, %83
  %85 = load %struct.md_s*, %struct.md_s** %5, align 8
  %86 = getelementptr inbounds %struct.md_s, %struct.md_s* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load %struct.md_req*, %struct.md_req** %6, align 8
  %88 = getelementptr inbounds %struct.md_req, %struct.md_req* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @MD_RESERVE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %77
  %94 = load %struct.md_s*, %struct.md_s** %5, align 8
  %95 = getelementptr inbounds %struct.md_s, %struct.md_s* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i64 @swap_pager_reserve(i32* %96, i32 0, i32 %97)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i32, i32* @EDOM, align 4
  store i32 %101, i32* %9, align 4
  br label %109

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102, %77
  %104 = load %struct.md_s*, %struct.md_s** %5, align 8
  %105 = load %struct.thread*, %struct.thread** %7, align 8
  %106 = getelementptr inbounds %struct.thread, %struct.thread* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @mdsetcred(%struct.md_s* %104, i32 %107)
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %103, %100
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load %struct.md_s*, %struct.md_s** %5, align 8
  %114 = getelementptr inbounds %struct.md_s, %struct.md_s* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @vm_object_deallocate(i32* %115)
  %117 = load %struct.md_s*, %struct.md_s** %5, align 8
  %118 = getelementptr inbounds %struct.md_s, %struct.md_s* %117, i32 0, i32 4
  store i32* null, i32** %118, align 8
  br label %119

119:                                              ; preds = %112, %109
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %119, %75, %30, %21
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32* @vm_pager_allocate(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @swap_pager_reserve(i32*, i32, i32) #1

declare dso_local i32 @mdsetcred(%struct.md_s*, i32) #1

declare dso_local i32 @vm_object_deallocate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
