; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_msi.c_msix_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_msi.c_msix_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_intsrc = type { i64, i64, i64, i64, i32, i32, i32*, i32*, i32 }

@msi_lock = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"unowned message\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msix_release(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.msi_intsrc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i32 @mtx_lock(i32* @msi_lock)
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @intr_lookup_source(i32 %6)
  %8 = inttoptr i64 %7 to %struct.msi_intsrc*
  store %struct.msi_intsrc* %8, %struct.msi_intsrc** %4, align 8
  %9 = load %struct.msi_intsrc*, %struct.msi_intsrc** %4, align 8
  %10 = icmp eq %struct.msi_intsrc* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = call i32 @mtx_unlock(i32* @msi_lock)
  %13 = load i32, i32* @ENOENT, align 4
  store i32 %13, i32* %2, align 4
  br label %52

14:                                               ; preds = %1
  %15 = load %struct.msi_intsrc*, %struct.msi_intsrc** %4, align 8
  %16 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = call i32 @mtx_unlock(i32* @msi_lock)
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %2, align 4
  br label %52

22:                                               ; preds = %14
  %23 = load %struct.msi_intsrc*, %struct.msi_intsrc** %4, align 8
  %24 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %23, i32 0, i32 6
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @KASSERT(i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.msi_intsrc*, %struct.msi_intsrc** %4, align 8
  %30 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %29, i32 0, i32 7
  store i32* null, i32** %30, align 8
  %31 = load %struct.msi_intsrc*, %struct.msi_intsrc** %4, align 8
  %32 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %31, i32 0, i32 6
  store i32* null, i32** %32, align 8
  %33 = load %struct.msi_intsrc*, %struct.msi_intsrc** %4, align 8
  %34 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.msi_intsrc*, %struct.msi_intsrc** %4, align 8
  %37 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.msi_intsrc*, %struct.msi_intsrc** %4, align 8
  %40 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @apic_free_vector(i32 %35, i64 %38, i32 %41)
  %43 = load %struct.msi_intsrc*, %struct.msi_intsrc** %4, align 8
  %44 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.msi_intsrc*, %struct.msi_intsrc** %4, align 8
  %46 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.msi_intsrc*, %struct.msi_intsrc** %4, align 8
  %48 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.msi_intsrc*, %struct.msi_intsrc** %4, align 8
  %50 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = call i32 @mtx_unlock(i32* @msi_lock)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %22, %19, %11
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @intr_lookup_source(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @apic_free_vector(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
