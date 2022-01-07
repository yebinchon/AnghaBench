; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_sys_getrusage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_sys_getrusage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.getrusage_args = type { i32, i32 }
%struct.rusage = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_getrusage(%struct.thread* %0, %struct.getrusage_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.getrusage_args*, align 8
  %5 = alloca %struct.rusage, align 4
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.getrusage_args* %1, %struct.getrusage_args** %4, align 8
  %7 = load %struct.thread*, %struct.thread** %3, align 8
  %8 = load %struct.getrusage_args*, %struct.getrusage_args** %4, align 8
  %9 = getelementptr inbounds %struct.getrusage_args, %struct.getrusage_args* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @kern_getrusage(%struct.thread* %7, i32 %10, %struct.rusage* %5)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.getrusage_args*, %struct.getrusage_args** %4, align 8
  %16 = getelementptr inbounds %struct.getrusage_args, %struct.getrusage_args* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @copyout(%struct.rusage* %5, i32 %17, i32 4)
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %14, %2
  %20 = load i32, i32* %6, align 4
  ret i32 %20
}

declare dso_local i32 @kern_getrusage(%struct.thread*, i32, %struct.rusage*) #1

declare dso_local i32 @copyout(%struct.rusage*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
