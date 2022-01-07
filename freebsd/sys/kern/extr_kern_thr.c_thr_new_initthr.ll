; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thr.c_thr_new_initthr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thr.c_thr_new_initthr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.thr_param = type { i32, i32, i32, i32, i32, i32*, i32* }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i8*)* @thr_new_initthr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thr_new_initthr(%struct.thread* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca %struct.thr_param*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.thr_param*
  store %struct.thr_param* %9, %struct.thr_param** %7, align 8
  %10 = load %struct.thr_param*, %struct.thr_param** %7, align 8
  %11 = getelementptr inbounds %struct.thr_param, %struct.thr_param* %10, i32 0, i32 6
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.thr_param*, %struct.thr_param** %7, align 8
  %16 = getelementptr inbounds %struct.thr_param, %struct.thr_param* %15, i32 0, i32 6
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.thread*, %struct.thread** %4, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @suword_lwpid(i32* %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %14, %2
  %24 = load %struct.thr_param*, %struct.thr_param** %7, align 8
  %25 = getelementptr inbounds %struct.thr_param, %struct.thr_param* %24, i32 0, i32 5
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.thr_param*, %struct.thr_param** %7, align 8
  %30 = getelementptr inbounds %struct.thr_param, %struct.thr_param* %29, i32 0, i32 5
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.thread*, %struct.thread** %4, align 8
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @suword_lwpid(i32* %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28, %14
  %38 = load i32, i32* @EFAULT, align 4
  store i32 %38, i32* %3, align 4
  br label %61

39:                                               ; preds = %28, %23
  %40 = load %struct.thr_param*, %struct.thr_param** %7, align 8
  %41 = getelementptr inbounds %struct.thr_param, %struct.thr_param* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load %struct.thr_param*, %struct.thr_param** %7, align 8
  %45 = getelementptr inbounds %struct.thr_param, %struct.thr_param* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load %struct.thread*, %struct.thread** %4, align 8
  %49 = load %struct.thr_param*, %struct.thr_param** %7, align 8
  %50 = getelementptr inbounds %struct.thr_param, %struct.thr_param* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.thr_param*, %struct.thr_param** %7, align 8
  %53 = getelementptr inbounds %struct.thr_param, %struct.thr_param* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cpu_set_upcall(%struct.thread* %48, i32 %51, i32 %54, %struct.TYPE_3__* %6)
  %56 = load %struct.thread*, %struct.thread** %4, align 8
  %57 = load %struct.thr_param*, %struct.thr_param** %7, align 8
  %58 = getelementptr inbounds %struct.thr_param, %struct.thr_param* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @cpu_set_user_tls(%struct.thread* %56, i32 %59)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %39, %37
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @suword_lwpid(i32*, i32) #1

declare dso_local i32 @cpu_set_upcall(%struct.thread*, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @cpu_set_user_tls(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
