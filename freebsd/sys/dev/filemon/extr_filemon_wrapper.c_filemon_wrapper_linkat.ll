; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/filemon/extr_filemon_wrapper.c_filemon_wrapper_linkat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/filemon/extr_filemon_wrapper.c_filemon_wrapper_linkat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linkat_args = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.linkat_args*)* @filemon_wrapper_linkat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filemon_wrapper_linkat(%struct.thread* %0, %struct.linkat_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.linkat_args*, align 8
  %5 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.linkat_args* %1, %struct.linkat_args** %4, align 8
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = load %struct.linkat_args*, %struct.linkat_args** %4, align 8
  %8 = call i32 @sys_linkat(%struct.thread* %6, %struct.linkat_args* %7)
  store i32 %8, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.thread*, %struct.thread** %3, align 8
  %12 = load %struct.linkat_args*, %struct.linkat_args** %4, align 8
  %13 = getelementptr inbounds %struct.linkat_args, %struct.linkat_args* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.linkat_args*, %struct.linkat_args** %4, align 8
  %16 = getelementptr inbounds %struct.linkat_args, %struct.linkat_args* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @_filemon_wrapper_link(%struct.thread* %11, i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %10, %2
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

declare dso_local i32 @sys_linkat(%struct.thread*, %struct.linkat_args*) #1

declare dso_local i32 @_filemon_wrapper_link(%struct.thread*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
