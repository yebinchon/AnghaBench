; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c___umtx_op_sem2_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c___umtx_op_sem2_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct._umtx_op_args = type { i32*, i32, i64 }
%struct._umtx_time = type { i32, i32 }

@EINTR = common dso_local global i32 0, align 4
@UMTX_ABSTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct._umtx_op_args*)* @__umtx_op_sem2_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__umtx_op_sem2_wait(%struct.thread* %0, %struct._umtx_op_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct._umtx_op_args*, align 8
  %6 = alloca %struct._umtx_time*, align 8
  %7 = alloca %struct._umtx_time, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct._umtx_op_args* %1, %struct._umtx_op_args** %5, align 8
  %10 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %11 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  store %struct._umtx_time* null, %struct._umtx_time** %6, align 8
  br label %29

15:                                               ; preds = %2
  %16 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %17 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %20 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @umtx_copyin_umtx_time(i32* %21, i64 %22, %struct._umtx_time* %7)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %3, align 4
  br label %68

28:                                               ; preds = %15
  store %struct._umtx_time* %7, %struct._umtx_time** %6, align 8
  br label %29

29:                                               ; preds = %28, %14
  %30 = load %struct.thread*, %struct.thread** %4, align 8
  %31 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %32 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct._umtx_time*, %struct._umtx_time** %6, align 8
  %35 = call i32 @do_sem2_wait(%struct.thread* %30, i32 %33, %struct._umtx_time* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @EINTR, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %29
  %40 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %41 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %66

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct._umtx_time, %struct._umtx_time* %7, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @UMTX_ABSTIME, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %44
  %51 = load i64, i64* %8, align 8
  %52 = icmp uge i64 %51, 12
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct._umtx_time, %struct._umtx_time* %7, i32 0, i32 1
  %55 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %56 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = bitcast i32* %57 to %struct._umtx_time*
  %59 = getelementptr inbounds %struct._umtx_time, %struct._umtx_time* %58, i64 1
  %60 = call i32 @copyout(i32* %54, %struct._umtx_time* %59, i32 4)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* @EINTR, align 4
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %63, %53
  br label %66

66:                                               ; preds = %65, %50, %44, %39, %29
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %26
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @umtx_copyin_umtx_time(i32*, i64, %struct._umtx_time*) #1

declare dso_local i32 @do_sem2_wait(%struct.thread*, i32, %struct._umtx_time*) #1

declare dso_local i32 @copyout(i32*, %struct._umtx_time*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
