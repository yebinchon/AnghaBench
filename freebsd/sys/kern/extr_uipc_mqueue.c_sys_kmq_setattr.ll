; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_sys_kmq_setattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_sys_kmq_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.kmq_setattr_args = type { i32*, i32*, i32 }
%struct.mq_attr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_kmq_setattr(%struct.thread* %0, %struct.kmq_setattr_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.kmq_setattr_args*, align 8
  %6 = alloca %struct.mq_attr, align 4
  %7 = alloca %struct.mq_attr, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.kmq_setattr_args* %1, %struct.kmq_setattr_args** %5, align 8
  %9 = load %struct.kmq_setattr_args*, %struct.kmq_setattr_args** %5, align 8
  %10 = getelementptr inbounds %struct.kmq_setattr_args, %struct.kmq_setattr_args* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.kmq_setattr_args*, %struct.kmq_setattr_args** %5, align 8
  %15 = getelementptr inbounds %struct.kmq_setattr_args, %struct.kmq_setattr_args* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @copyin(i32* %16, %struct.mq_attr* %6, i32 4)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %54

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.thread*, %struct.thread** %4, align 8
  %25 = load %struct.kmq_setattr_args*, %struct.kmq_setattr_args** %5, align 8
  %26 = getelementptr inbounds %struct.kmq_setattr_args, %struct.kmq_setattr_args* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.kmq_setattr_args*, %struct.kmq_setattr_args** %5, align 8
  %29 = getelementptr inbounds %struct.kmq_setattr_args, %struct.kmq_setattr_args* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %34

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %32
  %35 = phi %struct.mq_attr* [ %6, %32 ], [ null, %33 ]
  %36 = call i32 @kern_kmq_setattr(%struct.thread* %24, i32 %27, %struct.mq_attr* %35, %struct.mq_attr* %7)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.kmq_setattr_args*, %struct.kmq_setattr_args** %5, align 8
  %41 = getelementptr inbounds %struct.kmq_setattr_args, %struct.kmq_setattr_args* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.mq_attr, %struct.mq_attr* %7, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bzero(i32 %46, i32 4)
  %48 = load %struct.kmq_setattr_args*, %struct.kmq_setattr_args** %5, align 8
  %49 = getelementptr inbounds %struct.kmq_setattr_args, %struct.kmq_setattr_args* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @copyout(%struct.mq_attr* %7, i32* %50, i32 4)
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %44, %39, %34
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %20
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @copyin(i32*, %struct.mq_attr*, i32) #1

declare dso_local i32 @kern_kmq_setattr(%struct.thread*, i32, %struct.mq_attr*, %struct.mq_attr*) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @copyout(%struct.mq_attr*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
