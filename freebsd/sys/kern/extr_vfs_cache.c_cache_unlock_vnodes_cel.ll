; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_unlock_vnodes_cel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_unlock_vnodes_cel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.celockstate = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.celockstate*)* @cache_unlock_vnodes_cel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_unlock_vnodes_cel(%struct.celockstate* %0) #0 {
  %2 = alloca %struct.celockstate*, align 8
  store %struct.celockstate* %0, %struct.celockstate** %2, align 8
  %3 = load %struct.celockstate*, %struct.celockstate** %2, align 8
  %4 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %3, i32 0, i32 0
  %5 = load i32**, i32*** %4, align 8
  %6 = getelementptr inbounds i32*, i32** %5, i64 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.celockstate*, %struct.celockstate** %2, align 8
  %11 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %10, i32 0, i32 0
  %12 = load i32**, i32*** %11, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br label %16

16:                                               ; preds = %9, %1
  %17 = phi i1 [ true, %1 ], [ %15, %9 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @MPASS(i32 %18)
  %20 = load %struct.celockstate*, %struct.celockstate** %2, align 8
  %21 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %20, i32 0, i32 0
  %22 = load i32**, i32*** %21, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %16
  %27 = load %struct.celockstate*, %struct.celockstate** %2, align 8
  %28 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %27, i32 0, i32 0
  %29 = load i32**, i32*** %28, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @mtx_unlock(i32* %31)
  br label %33

33:                                               ; preds = %26, %16
  %34 = load %struct.celockstate*, %struct.celockstate** %2, align 8
  %35 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load %struct.celockstate*, %struct.celockstate** %2, align 8
  %42 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @mtx_unlock(i32* %45)
  br label %47

47:                                               ; preds = %40, %33
  %48 = load %struct.celockstate*, %struct.celockstate** %2, align 8
  %49 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %48, i32 0, i32 0
  %50 = load i32**, i32*** %49, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 2
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load %struct.celockstate*, %struct.celockstate** %2, align 8
  %56 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %55, i32 0, i32 0
  %57 = load i32**, i32*** %56, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 2
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @mtx_unlock(i32* %59)
  br label %61

61:                                               ; preds = %54, %47
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
