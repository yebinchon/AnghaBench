; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_provider.c_mthca_alloc_pd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_provider.c_mthca_alloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_ucontext = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mthca_pd = type { %struct.ib_pd, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_pd* (%struct.ib_device*, %struct.ib_ucontext*, %struct.ib_udata*)* @mthca_alloc_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_pd* @mthca_alloc_pd(%struct.ib_device* %0, %struct.ib_ucontext* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.ib_ucontext*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.mthca_pd*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %struct.ib_ucontext* %1, %struct.ib_ucontext** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mthca_pd* @kmalloc(i32 8, i32 %10)
  store %struct.mthca_pd* %11, %struct.mthca_pd** %8, align 8
  %12 = load %struct.mthca_pd*, %struct.mthca_pd** %8, align 8
  %13 = icmp ne %struct.mthca_pd* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.ib_pd* @ERR_PTR(i32 %16)
  store %struct.ib_pd* %17, %struct.ib_pd** %4, align 8
  br label %57

18:                                               ; preds = %3
  %19 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %20 = call i32 @to_mdev(%struct.ib_device* %19)
  %21 = load %struct.ib_ucontext*, %struct.ib_ucontext** %6, align 8
  %22 = icmp ne %struct.ib_ucontext* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load %struct.mthca_pd*, %struct.mthca_pd** %8, align 8
  %26 = call i32 @mthca_pd_alloc(i32 %20, i32 %24, %struct.mthca_pd* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load %struct.mthca_pd*, %struct.mthca_pd** %8, align 8
  %31 = call i32 @kfree(%struct.mthca_pd* %30)
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.ib_pd* @ERR_PTR(i32 %32)
  store %struct.ib_pd* %33, %struct.ib_pd** %4, align 8
  br label %57

34:                                               ; preds = %18
  %35 = load %struct.ib_ucontext*, %struct.ib_ucontext** %6, align 8
  %36 = icmp ne %struct.ib_ucontext* %35, null
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %39 = load %struct.mthca_pd*, %struct.mthca_pd** %8, align 8
  %40 = getelementptr inbounds %struct.mthca_pd, %struct.mthca_pd* %39, i32 0, i32 1
  %41 = call i64 @ib_copy_to_udata(%struct.ib_udata* %38, i32* %40, i32 4)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %45 = call i32 @to_mdev(%struct.ib_device* %44)
  %46 = load %struct.mthca_pd*, %struct.mthca_pd** %8, align 8
  %47 = call i32 @mthca_pd_free(i32 %45, %struct.mthca_pd* %46)
  %48 = load %struct.mthca_pd*, %struct.mthca_pd** %8, align 8
  %49 = call i32 @kfree(%struct.mthca_pd* %48)
  %50 = load i32, i32* @EFAULT, align 4
  %51 = sub nsw i32 0, %50
  %52 = call %struct.ib_pd* @ERR_PTR(i32 %51)
  store %struct.ib_pd* %52, %struct.ib_pd** %4, align 8
  br label %57

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53, %34
  %55 = load %struct.mthca_pd*, %struct.mthca_pd** %8, align 8
  %56 = getelementptr inbounds %struct.mthca_pd, %struct.mthca_pd* %55, i32 0, i32 0
  store %struct.ib_pd* %56, %struct.ib_pd** %4, align 8
  br label %57

57:                                               ; preds = %54, %43, %29, %14
  %58 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  ret %struct.ib_pd* %58
}

declare dso_local %struct.mthca_pd* @kmalloc(i32, i32) #1

declare dso_local %struct.ib_pd* @ERR_PTR(i32) #1

declare dso_local i32 @mthca_pd_alloc(i32, i32, %struct.mthca_pd*) #1

declare dso_local i32 @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @kfree(%struct.mthca_pd*) #1

declare dso_local i64 @ib_copy_to_udata(%struct.ib_udata*, i32*, i32) #1

declare dso_local i32 @mthca_pd_free(i32, %struct.mthca_pd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
