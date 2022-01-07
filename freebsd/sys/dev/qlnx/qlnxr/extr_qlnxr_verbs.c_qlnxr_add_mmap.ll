; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_add_mmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_add_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_ucontext = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.qlnxr_mm = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"mm = NULL\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"added (addr=0x%llx,len=0x%lx) for ctx=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_ucontext*, i64, i64)* @qlnxr_add_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_add_mmap(%struct.qlnxr_ucontext* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlnxr_ucontext*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qlnxr_mm*, align 8
  %9 = alloca i32*, align 8
  store %struct.qlnxr_ucontext* %0, %struct.qlnxr_ucontext** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.qlnxr_ucontext*, %struct.qlnxr_ucontext** %5, align 8
  %11 = getelementptr inbounds %struct.qlnxr_ucontext, %struct.qlnxr_ucontext* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.qlnxr_mm* @kzalloc(i32 24, i32 %17)
  store %struct.qlnxr_mm* %18, %struct.qlnxr_mm** %8, align 8
  %19 = load %struct.qlnxr_mm*, %struct.qlnxr_mm** %8, align 8
  %20 = icmp eq %struct.qlnxr_mm* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @QL_DPRINT11(i32* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %62

26:                                               ; preds = %3
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.qlnxr_mm*, %struct.qlnxr_mm** %8, align 8
  %29 = getelementptr inbounds %struct.qlnxr_mm, %struct.qlnxr_mm* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i64 %27, i64* %30, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = call i64 @roundup(i64 %31, i32 %32)
  %34 = load %struct.qlnxr_mm*, %struct.qlnxr_mm** %8, align 8
  %35 = getelementptr inbounds %struct.qlnxr_mm, %struct.qlnxr_mm* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i64 %33, i64* %36, align 8
  %37 = load %struct.qlnxr_mm*, %struct.qlnxr_mm** %8, align 8
  %38 = getelementptr inbounds %struct.qlnxr_mm, %struct.qlnxr_mm* %37, i32 0, i32 1
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.qlnxr_ucontext*, %struct.qlnxr_ucontext** %5, align 8
  %41 = getelementptr inbounds %struct.qlnxr_ucontext, %struct.qlnxr_ucontext* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.qlnxr_mm*, %struct.qlnxr_mm** %8, align 8
  %44 = getelementptr inbounds %struct.qlnxr_mm, %struct.qlnxr_mm* %43, i32 0, i32 1
  %45 = load %struct.qlnxr_ucontext*, %struct.qlnxr_ucontext** %5, align 8
  %46 = getelementptr inbounds %struct.qlnxr_ucontext, %struct.qlnxr_ucontext* %45, i32 0, i32 1
  %47 = call i32 @list_add(i32* %44, i32* %46)
  %48 = load %struct.qlnxr_ucontext*, %struct.qlnxr_ucontext** %5, align 8
  %49 = getelementptr inbounds %struct.qlnxr_ucontext, %struct.qlnxr_ucontext* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32*, i32** %9, align 8
  %52 = load %struct.qlnxr_mm*, %struct.qlnxr_mm** %8, align 8
  %53 = getelementptr inbounds %struct.qlnxr_mm, %struct.qlnxr_mm* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.qlnxr_mm*, %struct.qlnxr_mm** %8, align 8
  %57 = getelementptr inbounds %struct.qlnxr_mm, %struct.qlnxr_mm* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.qlnxr_ucontext*, %struct.qlnxr_ucontext** %5, align 8
  %61 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %55, i64 %59, %struct.qlnxr_ucontext* %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %26, %21
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local %struct.qlnxr_mm* @kzalloc(i32, i32) #1

declare dso_local i32 @QL_DPRINT11(i32*, i8*) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
