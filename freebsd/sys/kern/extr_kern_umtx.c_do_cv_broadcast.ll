; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_cv_broadcast.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_cv_broadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.ucond = type { i32, i32 }
%struct.umtx_key = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@TYPE_CV = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.ucond*)* @do_cv_broadcast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_cv_broadcast(%struct.thread* %0, %struct.ucond* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.ucond*, align 8
  %6 = alloca %struct.umtx_key, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.ucond* %1, %struct.ucond** %5, align 8
  %9 = load %struct.ucond*, %struct.ucond** %5, align 8
  %10 = getelementptr inbounds %struct.ucond, %struct.ucond* %9, i32 0, i32 1
  %11 = call i32 @fueword32(i32* %10, i32* %8)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EFAULT, align 4
  store i32 %15, i32* %3, align 4
  br label %42

16:                                               ; preds = %2
  %17 = load %struct.ucond*, %struct.ucond** %5, align 8
  %18 = load i32, i32* @TYPE_CV, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @GET_SHARE(i32 %19)
  %21 = call i32 @umtx_key_get(%struct.ucond* %17, i32 %18, i32 %20, %struct.umtx_key* %6)
  store i32 %21, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %42

25:                                               ; preds = %16
  %26 = call i32 @umtxq_lock(%struct.umtx_key* %6)
  %27 = call i32 @umtxq_busy(%struct.umtx_key* %6)
  %28 = load i32, i32* @INT_MAX, align 4
  %29 = call i32 @umtxq_signal(%struct.umtx_key* %6, i32 %28)
  %30 = call i32 @umtxq_unlock(%struct.umtx_key* %6)
  %31 = load %struct.ucond*, %struct.ucond** %5, align 8
  %32 = getelementptr inbounds %struct.ucond, %struct.ucond* %31, i32 0, i32 0
  %33 = call i32 @suword32(i32* %32, i32 0)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* @EFAULT, align 4
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %36, %25
  %39 = call i32 @umtxq_unbusy_unlocked(%struct.umtx_key* %6)
  %40 = call i32 @umtx_key_release(%struct.umtx_key* %6)
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %23, %14
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @fueword32(i32*, i32*) #1

declare dso_local i32 @umtx_key_get(%struct.ucond*, i32, i32, %struct.umtx_key*) #1

declare dso_local i32 @GET_SHARE(i32) #1

declare dso_local i32 @umtxq_lock(%struct.umtx_key*) #1

declare dso_local i32 @umtxq_busy(%struct.umtx_key*) #1

declare dso_local i32 @umtxq_signal(%struct.umtx_key*, i32) #1

declare dso_local i32 @umtxq_unlock(%struct.umtx_key*) #1

declare dso_local i32 @suword32(i32*, i32) #1

declare dso_local i32 @umtxq_unbusy_unlocked(%struct.umtx_key*) #1

declare dso_local i32 @umtx_key_release(%struct.umtx_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
