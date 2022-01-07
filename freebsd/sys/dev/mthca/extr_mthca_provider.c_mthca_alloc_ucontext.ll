; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_provider.c_mthca_alloc_ucontext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_provider.c_mthca_alloc_ucontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mthca_alloc_ucontext_resp = type { i64, i32 }
%struct.mthca_ucontext = type { %struct.ib_ucontext, i64, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_ucontext* (%struct.ib_device*, %struct.ib_udata*)* @mthca_alloc_ucontext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_ucontext* @mthca_alloc_ucontext(%struct.ib_device* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_ucontext*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  %6 = alloca %struct.mthca_alloc_ucontext_resp, align 8
  %7 = alloca %struct.mthca_ucontext*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %9 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %10 = call %struct.TYPE_11__* @to_mdev(%struct.ib_device* %9)
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EAGAIN, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.ib_ucontext* @ERR_PTR(i32 %16)
  store %struct.ib_ucontext* %17, %struct.ib_ucontext** %3, align 8
  br label %114

18:                                               ; preds = %2
  %19 = call i32 @memset(%struct.mthca_alloc_ucontext_resp* %6, i32 0, i32 16)
  %20 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %21 = call %struct.TYPE_11__* @to_mdev(%struct.ib_device* %20)
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.mthca_alloc_ucontext_resp, %struct.mthca_alloc_ucontext_resp* %6, i32 0, i32 1
  store i32 %24, i32* %25, align 8
  %26 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %27 = call %struct.TYPE_11__* @to_mdev(%struct.ib_device* %26)
  %28 = call i64 @mthca_is_memfree(%struct.TYPE_11__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %18
  %31 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %32 = call %struct.TYPE_11__* @to_mdev(%struct.ib_device* %31)
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.mthca_alloc_ucontext_resp, %struct.mthca_alloc_ucontext_resp* %6, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  br label %39

37:                                               ; preds = %18
  %38 = getelementptr inbounds %struct.mthca_alloc_ucontext_resp, %struct.mthca_alloc_ucontext_resp* %6, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %37, %30
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.mthca_ucontext* @kmalloc(i32 24, i32 %40)
  store %struct.mthca_ucontext* %41, %struct.mthca_ucontext** %7, align 8
  %42 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %7, align 8
  %43 = icmp ne %struct.mthca_ucontext* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  %47 = call %struct.ib_ucontext* @ERR_PTR(i32 %46)
  store %struct.ib_ucontext* %47, %struct.ib_ucontext** %3, align 8
  br label %114

48:                                               ; preds = %39
  %49 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %50 = call %struct.TYPE_11__* @to_mdev(%struct.ib_device* %49)
  %51 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %7, align 8
  %52 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %51, i32 0, i32 2
  %53 = call i32 @mthca_uar_alloc(%struct.TYPE_11__* %50, i32* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %7, align 8
  %58 = call i32 @kfree(%struct.mthca_ucontext* %57)
  %59 = load i32, i32* %8, align 4
  %60 = call %struct.ib_ucontext* @ERR_PTR(i32 %59)
  store %struct.ib_ucontext* %60, %struct.ib_ucontext** %3, align 8
  br label %114

61:                                               ; preds = %48
  %62 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %63 = call %struct.TYPE_11__* @to_mdev(%struct.ib_device* %62)
  %64 = call i32 @mthca_init_user_db_tab(%struct.TYPE_11__* %63)
  %65 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %7, align 8
  %66 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %7, align 8
  %68 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @IS_ERR(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %61
  %73 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %7, align 8
  %74 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @PTR_ERR(i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %78 = call %struct.TYPE_11__* @to_mdev(%struct.ib_device* %77)
  %79 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %7, align 8
  %80 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %79, i32 0, i32 2
  %81 = call i32 @mthca_uar_free(%struct.TYPE_11__* %78, i32* %80)
  %82 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %7, align 8
  %83 = call i32 @kfree(%struct.mthca_ucontext* %82)
  %84 = load i32, i32* %8, align 4
  %85 = call %struct.ib_ucontext* @ERR_PTR(i32 %84)
  store %struct.ib_ucontext* %85, %struct.ib_ucontext** %3, align 8
  br label %114

86:                                               ; preds = %61
  %87 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %88 = call i64 @ib_copy_to_udata(%struct.ib_udata* %87, %struct.mthca_alloc_ucontext_resp* %6, i32 16)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %86
  %91 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %92 = call %struct.TYPE_11__* @to_mdev(%struct.ib_device* %91)
  %93 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %7, align 8
  %94 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %93, i32 0, i32 2
  %95 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %7, align 8
  %96 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @mthca_cleanup_user_db_tab(%struct.TYPE_11__* %92, i32* %94, i32 %97)
  %99 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %100 = call %struct.TYPE_11__* @to_mdev(%struct.ib_device* %99)
  %101 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %7, align 8
  %102 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %101, i32 0, i32 2
  %103 = call i32 @mthca_uar_free(%struct.TYPE_11__* %100, i32* %102)
  %104 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %7, align 8
  %105 = call i32 @kfree(%struct.mthca_ucontext* %104)
  %106 = load i32, i32* @EFAULT, align 4
  %107 = sub nsw i32 0, %106
  %108 = call %struct.ib_ucontext* @ERR_PTR(i32 %107)
  store %struct.ib_ucontext* %108, %struct.ib_ucontext** %3, align 8
  br label %114

109:                                              ; preds = %86
  %110 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %7, align 8
  %111 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %110, i32 0, i32 1
  store i64 0, i64* %111, align 8
  %112 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %7, align 8
  %113 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %112, i32 0, i32 0
  store %struct.ib_ucontext* %113, %struct.ib_ucontext** %3, align 8
  br label %114

114:                                              ; preds = %109, %90, %72, %56, %44, %14
  %115 = load %struct.ib_ucontext*, %struct.ib_ucontext** %3, align 8
  ret %struct.ib_ucontext* %115
}

declare dso_local %struct.TYPE_11__* @to_mdev(%struct.ib_device*) #1

declare dso_local %struct.ib_ucontext* @ERR_PTR(i32) #1

declare dso_local i32 @memset(%struct.mthca_alloc_ucontext_resp*, i32, i32) #1

declare dso_local i64 @mthca_is_memfree(%struct.TYPE_11__*) #1

declare dso_local %struct.mthca_ucontext* @kmalloc(i32, i32) #1

declare dso_local i32 @mthca_uar_alloc(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @kfree(%struct.mthca_ucontext*) #1

declare dso_local i32 @mthca_init_user_db_tab(%struct.TYPE_11__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mthca_uar_free(%struct.TYPE_11__*, i32*) #1

declare dso_local i64 @ib_copy_to_udata(%struct.ib_udata*, %struct.mthca_alloc_ucontext_resp*, i32) #1

declare dso_local i32 @mthca_cleanup_user_db_tab(%struct.TYPE_11__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
