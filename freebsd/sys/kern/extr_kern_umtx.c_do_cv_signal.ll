; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_cv_signal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_cv_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.ucond = type { i32, i32 }
%struct.umtx_key = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@TYPE_CV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.ucond*)* @do_cv_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_cv_signal(%struct.thread* %0, %struct.ucond* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.ucond*, align 8
  %6 = alloca %struct.umtx_key, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.ucond* %1, %struct.ucond** %5, align 8
  %11 = load %struct.ucond*, %struct.ucond** %5, align 8
  %12 = getelementptr inbounds %struct.ucond, %struct.ucond* %11, i32 0, i32 1
  %13 = call i32 @fueword32(i32* %12, i32* %10)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @EFAULT, align 4
  store i32 %17, i32* %3, align 4
  br label %51

18:                                               ; preds = %2
  %19 = load %struct.ucond*, %struct.ucond** %5, align 8
  %20 = load i32, i32* @TYPE_CV, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @GET_SHARE(i32 %21)
  %23 = call i32 @umtx_key_get(%struct.ucond* %19, i32 %20, i32 %22, %struct.umtx_key* %6)
  store i32 %23, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %51

27:                                               ; preds = %18
  %28 = call i32 @umtxq_lock(%struct.umtx_key* %6)
  %29 = call i32 @umtxq_busy(%struct.umtx_key* %6)
  %30 = call i32 @umtxq_count(%struct.umtx_key* %6)
  store i32 %30, i32* %8, align 4
  %31 = call i32 @umtxq_signal(%struct.umtx_key* %6, i32 1)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %27
  %36 = call i32 @umtxq_unlock(%struct.umtx_key* %6)
  %37 = load %struct.ucond*, %struct.ucond** %5, align 8
  %38 = getelementptr inbounds %struct.ucond, %struct.ucond* %37, i32 0, i32 0
  %39 = call i32 @suword32(i32* %38, i32 0)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @EFAULT, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %42, %35
  %45 = call i32 @umtxq_lock(%struct.umtx_key* %6)
  br label %46

46:                                               ; preds = %44, %27
  %47 = call i32 @umtxq_unbusy(%struct.umtx_key* %6)
  %48 = call i32 @umtxq_unlock(%struct.umtx_key* %6)
  %49 = call i32 @umtx_key_release(%struct.umtx_key* %6)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %25, %16
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @fueword32(i32*, i32*) #1

declare dso_local i32 @umtx_key_get(%struct.ucond*, i32, i32, %struct.umtx_key*) #1

declare dso_local i32 @GET_SHARE(i32) #1

declare dso_local i32 @umtxq_lock(%struct.umtx_key*) #1

declare dso_local i32 @umtxq_busy(%struct.umtx_key*) #1

declare dso_local i32 @umtxq_count(%struct.umtx_key*) #1

declare dso_local i32 @umtxq_signal(%struct.umtx_key*, i32) #1

declare dso_local i32 @umtxq_unlock(%struct.umtx_key*) #1

declare dso_local i32 @suword32(i32*, i32) #1

declare dso_local i32 @umtxq_unbusy(%struct.umtx_key*) #1

declare dso_local i32 @umtx_key_release(%struct.umtx_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
