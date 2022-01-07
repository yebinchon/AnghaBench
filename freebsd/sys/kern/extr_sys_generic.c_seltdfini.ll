; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_seltdfini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_seltdfini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.seltd* }
%struct.seltd = type { i32, i32, i64, i64 }

@selfd_zone = common dso_local global i32 0, align 4
@M_SELECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seltdfini(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.seltd*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %4 = load %struct.thread*, %struct.thread** %2, align 8
  %5 = getelementptr inbounds %struct.thread, %struct.thread* %4, i32 0, i32 0
  %6 = load %struct.seltd*, %struct.seltd** %5, align 8
  store %struct.seltd* %6, %struct.seltd** %3, align 8
  %7 = load %struct.seltd*, %struct.seltd** %3, align 8
  %8 = icmp eq %struct.seltd* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %44

10:                                               ; preds = %1
  %11 = load %struct.seltd*, %struct.seltd** %3, align 8
  %12 = getelementptr inbounds %struct.seltd, %struct.seltd* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i32, i32* @selfd_zone, align 4
  %17 = load %struct.seltd*, %struct.seltd** %3, align 8
  %18 = getelementptr inbounds %struct.seltd, %struct.seltd* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @uma_zfree(i32 %16, i64 %19)
  br label %21

21:                                               ; preds = %15, %10
  %22 = load %struct.seltd*, %struct.seltd** %3, align 8
  %23 = getelementptr inbounds %struct.seltd, %struct.seltd* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32, i32* @selfd_zone, align 4
  %28 = load %struct.seltd*, %struct.seltd** %3, align 8
  %29 = getelementptr inbounds %struct.seltd, %struct.seltd* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @uma_zfree(i32 %27, i64 %30)
  br label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.thread*, %struct.thread** %2, align 8
  %34 = getelementptr inbounds %struct.thread, %struct.thread* %33, i32 0, i32 0
  store %struct.seltd* null, %struct.seltd** %34, align 8
  %35 = load %struct.seltd*, %struct.seltd** %3, align 8
  %36 = getelementptr inbounds %struct.seltd, %struct.seltd* %35, i32 0, i32 1
  %37 = call i32 @cv_destroy(i32* %36)
  %38 = load %struct.seltd*, %struct.seltd** %3, align 8
  %39 = getelementptr inbounds %struct.seltd, %struct.seltd* %38, i32 0, i32 0
  %40 = call i32 @mtx_destroy(i32* %39)
  %41 = load %struct.seltd*, %struct.seltd** %3, align 8
  %42 = load i32, i32* @M_SELECT, align 4
  %43 = call i32 @free(%struct.seltd* %41, i32 %42)
  br label %44

44:                                               ; preds = %32, %9
  ret void
}

declare dso_local i32 @uma_zfree(i32, i64) #1

declare dso_local i32 @cv_destroy(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.seltd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
