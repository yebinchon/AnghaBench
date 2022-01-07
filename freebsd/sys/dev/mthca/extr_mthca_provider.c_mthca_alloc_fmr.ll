; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_provider.c_mthca_alloc_fmr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_provider.c_mthca_alloc_fmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_fmr = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_fmr_attr = type { i32 }
%struct.mthca_fmr = type { %struct.ib_fmr, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_fmr* (%struct.ib_pd*, i32, %struct.ib_fmr_attr*)* @mthca_alloc_fmr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_fmr* @mthca_alloc_fmr(%struct.ib_pd* %0, i32 %1, %struct.ib_fmr_attr* %2) #0 {
  %4 = alloca %struct.ib_fmr*, align 8
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_fmr_attr*, align 8
  %8 = alloca %struct.mthca_fmr*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_fmr_attr* %2, %struct.ib_fmr_attr** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mthca_fmr* @kmalloc(i32 8, i32 %10)
  store %struct.mthca_fmr* %11, %struct.mthca_fmr** %8, align 8
  %12 = load %struct.mthca_fmr*, %struct.mthca_fmr** %8, align 8
  %13 = icmp ne %struct.mthca_fmr* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.ib_fmr* @ERR_PTR(i32 %16)
  store %struct.ib_fmr* %17, %struct.ib_fmr** %4, align 8
  br label %45

18:                                               ; preds = %3
  %19 = load %struct.mthca_fmr*, %struct.mthca_fmr** %8, align 8
  %20 = getelementptr inbounds %struct.mthca_fmr, %struct.mthca_fmr* %19, i32 0, i32 1
  %21 = load %struct.ib_fmr_attr*, %struct.ib_fmr_attr** %7, align 8
  %22 = call i32 @memcpy(i32* %20, %struct.ib_fmr_attr* %21, i32 4)
  %23 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %24 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @to_mdev(i32 %25)
  %27 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %28 = call %struct.TYPE_2__* @to_mpd(%struct.ib_pd* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @convert_access(i32 %31)
  %33 = load %struct.mthca_fmr*, %struct.mthca_fmr** %8, align 8
  %34 = call i32 @mthca_fmr_alloc(i32 %26, i32 %30, i32 %32, %struct.mthca_fmr* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %18
  %38 = load %struct.mthca_fmr*, %struct.mthca_fmr** %8, align 8
  %39 = call i32 @kfree(%struct.mthca_fmr* %38)
  %40 = load i32, i32* %9, align 4
  %41 = call %struct.ib_fmr* @ERR_PTR(i32 %40)
  store %struct.ib_fmr* %41, %struct.ib_fmr** %4, align 8
  br label %45

42:                                               ; preds = %18
  %43 = load %struct.mthca_fmr*, %struct.mthca_fmr** %8, align 8
  %44 = getelementptr inbounds %struct.mthca_fmr, %struct.mthca_fmr* %43, i32 0, i32 0
  store %struct.ib_fmr* %44, %struct.ib_fmr** %4, align 8
  br label %45

45:                                               ; preds = %42, %37, %14
  %46 = load %struct.ib_fmr*, %struct.ib_fmr** %4, align 8
  ret %struct.ib_fmr* %46
}

declare dso_local %struct.mthca_fmr* @kmalloc(i32, i32) #1

declare dso_local %struct.ib_fmr* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.ib_fmr_attr*, i32) #1

declare dso_local i32 @mthca_fmr_alloc(i32, i32, i32, %struct.mthca_fmr*) #1

declare dso_local i32 @to_mdev(i32) #1

declare dso_local %struct.TYPE_2__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @convert_access(i32) #1

declare dso_local i32 @kfree(%struct.mthca_fmr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
