; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_sys_kmq_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_sys_kmq_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.kmq_open_args = type { i32, i32*, i32, i32 }
%struct.mq_attr = type { i32 }

@O_ACCMODE = common dso_local global i32 0, align 4
@O_EXEC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_kmq_open(%struct.thread* %0, %struct.kmq_open_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.kmq_open_args*, align 8
  %6 = alloca %struct.mq_attr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.kmq_open_args* %1, %struct.kmq_open_args** %5, align 8
  %9 = load %struct.kmq_open_args*, %struct.kmq_open_args** %5, align 8
  %10 = getelementptr inbounds %struct.kmq_open_args, %struct.kmq_open_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @O_ACCMODE, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @O_ACCMODE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.kmq_open_args*, %struct.kmq_open_args** %5, align 8
  %18 = getelementptr inbounds %struct.kmq_open_args, %struct.kmq_open_args* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @O_EXEC, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16, %2
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %3, align 4
  br label %67

25:                                               ; preds = %16
  %26 = load %struct.kmq_open_args*, %struct.kmq_open_args** %5, align 8
  %27 = getelementptr inbounds %struct.kmq_open_args, %struct.kmq_open_args* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @FFLAGS(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @O_CREAT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %25
  %35 = load %struct.kmq_open_args*, %struct.kmq_open_args** %5, align 8
  %36 = getelementptr inbounds %struct.kmq_open_args, %struct.kmq_open_args* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load %struct.kmq_open_args*, %struct.kmq_open_args** %5, align 8
  %41 = getelementptr inbounds %struct.kmq_open_args, %struct.kmq_open_args* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @copyin(i32* %42, %struct.mq_attr* %6, i32 4)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %67

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %34, %25
  %50 = load %struct.thread*, %struct.thread** %4, align 8
  %51 = load %struct.kmq_open_args*, %struct.kmq_open_args** %5, align 8
  %52 = getelementptr inbounds %struct.kmq_open_args, %struct.kmq_open_args* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.kmq_open_args*, %struct.kmq_open_args** %5, align 8
  %56 = getelementptr inbounds %struct.kmq_open_args, %struct.kmq_open_args* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.kmq_open_args*, %struct.kmq_open_args** %5, align 8
  %59 = getelementptr inbounds %struct.kmq_open_args, %struct.kmq_open_args* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  br label %64

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63, %62
  %65 = phi %struct.mq_attr* [ %6, %62 ], [ null, %63 ]
  %66 = call i32 @kern_kmq_open(%struct.thread* %50, i32 %53, i32 %54, i32 %57, %struct.mq_attr* %65)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %46, %23
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @FFLAGS(i32) #1

declare dso_local i32 @copyin(i32*, %struct.mq_attr*, i32) #1

declare dso_local i32 @kern_kmq_open(%struct.thread*, i32, i32, i32, %struct.mq_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
