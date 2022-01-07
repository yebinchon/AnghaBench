; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_unbind_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_unbind_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_softc = type { i32 }

@AGP_PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @agp_unbind_pages(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.agp_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %12 = sub nsw i32 %11, 1
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %18 = sub nsw i32 %17, 1
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15, %3
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %49

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.agp_softc* @device_get_softc(i32 %24)
  store %struct.agp_softc* %25, %struct.agp_softc** %8, align 8
  %26 = load %struct.agp_softc*, %struct.agp_softc** %8, align 8
  %27 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %26, i32 0, i32 0
  %28 = call i32 @mtx_lock(i32* %27)
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %39, %23
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %35, %36
  %38 = call i32 @AGP_UNBIND_PAGE(i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %29

43:                                               ; preds = %29
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @AGP_FLUSH_TLB(i32 %44)
  %46 = load %struct.agp_softc*, %struct.agp_softc** %8, align 8
  %47 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %46, i32 0, i32 0
  %48 = call i32 @mtx_unlock(i32* %47)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %43, %21
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.agp_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @AGP_UNBIND_PAGE(i32, i32) #1

declare dso_local i32 @AGP_FLUSH_TLB(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
