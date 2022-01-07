; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_provider.c_mthca_ah_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_provider.c_mthca_ah_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_ah_attr = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mthca_ah = type { %struct.ib_ah }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_ah* (%struct.ib_pd*, %struct.ib_ah_attr*, %struct.ib_udata*)* @mthca_ah_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_ah* @mthca_ah_create(%struct.ib_pd* %0, %struct.ib_ah_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_ah*, align 8
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca %struct.ib_ah_attr*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mthca_ah*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %5, align 8
  store %struct.ib_ah_attr* %1, %struct.ib_ah_attr** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.mthca_ah* @kmalloc(i32 4, i32 %10)
  store %struct.mthca_ah* %11, %struct.mthca_ah** %9, align 8
  %12 = load %struct.mthca_ah*, %struct.mthca_ah** %9, align 8
  %13 = icmp ne %struct.mthca_ah* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.ib_ah* @ERR_PTR(i32 %16)
  store %struct.ib_ah* %17, %struct.ib_ah** %4, align 8
  br label %38

18:                                               ; preds = %3
  %19 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %20 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @to_mdev(i32 %21)
  %23 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %24 = call i32 @to_mpd(%struct.ib_pd* %23)
  %25 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %26 = load %struct.mthca_ah*, %struct.mthca_ah** %9, align 8
  %27 = call i32 @mthca_create_ah(i32 %22, i32 %24, %struct.ib_ah_attr* %25, %struct.mthca_ah* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %18
  %31 = load %struct.mthca_ah*, %struct.mthca_ah** %9, align 8
  %32 = call i32 @kfree(%struct.mthca_ah* %31)
  %33 = load i32, i32* %8, align 4
  %34 = call %struct.ib_ah* @ERR_PTR(i32 %33)
  store %struct.ib_ah* %34, %struct.ib_ah** %4, align 8
  br label %38

35:                                               ; preds = %18
  %36 = load %struct.mthca_ah*, %struct.mthca_ah** %9, align 8
  %37 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %36, i32 0, i32 0
  store %struct.ib_ah* %37, %struct.ib_ah** %4, align 8
  br label %38

38:                                               ; preds = %35, %30, %14
  %39 = load %struct.ib_ah*, %struct.ib_ah** %4, align 8
  ret %struct.ib_ah* %39
}

declare dso_local %struct.mthca_ah* @kmalloc(i32, i32) #1

declare dso_local %struct.ib_ah* @ERR_PTR(i32) #1

declare dso_local i32 @mthca_create_ah(i32, i32, %struct.ib_ah_attr*, %struct.mthca_ah*) #1

declare dso_local i32 @to_mdev(i32) #1

declare dso_local i32 @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @kfree(%struct.mthca_ah*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
