; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_getresuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_getresuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.ucred* }
%struct.ucred = type { i32, i32, i32 }
%struct.getresuid_args = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_getresuid(%struct.thread* %0, %struct.getresuid_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.getresuid_args*, align 8
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.getresuid_args* %1, %struct.getresuid_args** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.thread*, %struct.thread** %3, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 0
  %11 = load %struct.ucred*, %struct.ucred** %10, align 8
  store %struct.ucred* %11, %struct.ucred** %5, align 8
  %12 = load %struct.getresuid_args*, %struct.getresuid_args** %4, align 8
  %13 = getelementptr inbounds %struct.getresuid_args, %struct.getresuid_args* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.ucred*, %struct.ucred** %5, align 8
  %18 = getelementptr inbounds %struct.ucred, %struct.ucred* %17, i32 0, i32 2
  %19 = load %struct.getresuid_args*, %struct.getresuid_args** %4, align 8
  %20 = getelementptr inbounds %struct.getresuid_args, %struct.getresuid_args* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @copyout(i32* %18, i32 %21, i32 4)
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %16, %2
  %24 = load %struct.getresuid_args*, %struct.getresuid_args** %4, align 8
  %25 = getelementptr inbounds %struct.getresuid_args, %struct.getresuid_args* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.ucred*, %struct.ucred** %5, align 8
  %30 = getelementptr inbounds %struct.ucred, %struct.ucred* %29, i32 0, i32 1
  %31 = load %struct.getresuid_args*, %struct.getresuid_args** %4, align 8
  %32 = getelementptr inbounds %struct.getresuid_args, %struct.getresuid_args* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @copyout(i32* %30, i32 %33, i32 4)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %28, %23
  %36 = load %struct.getresuid_args*, %struct.getresuid_args** %4, align 8
  %37 = getelementptr inbounds %struct.getresuid_args, %struct.getresuid_args* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.ucred*, %struct.ucred** %5, align 8
  %42 = getelementptr inbounds %struct.ucred, %struct.ucred* %41, i32 0, i32 0
  %43 = load %struct.getresuid_args*, %struct.getresuid_args** %4, align 8
  %44 = getelementptr inbounds %struct.getresuid_args, %struct.getresuid_args* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @copyout(i32* %42, i32 %45, i32 4)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %40, %35
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  br label %61

52:                                               ; preds = %47
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  br label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  br label %61

61:                                               ; preds = %59, %50
  %62 = phi i32 [ %51, %50 ], [ %60, %59 ]
  ret i32 %62
}

declare dso_local i32 @copyout(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
