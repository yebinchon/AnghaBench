; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_free_single_dumper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_free_single_dumper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dumperinfo = type { i32, i32, %struct.dumperinfo*, %struct.dumperinfo* }

@M_DUMPER = common dso_local global i32 0, align 4
@M_EKCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dumperinfo*)* @free_single_dumper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_single_dumper(%struct.dumperinfo* %0) #0 {
  %2 = alloca %struct.dumperinfo*, align 8
  store %struct.dumperinfo* %0, %struct.dumperinfo** %2, align 8
  %3 = load %struct.dumperinfo*, %struct.dumperinfo** %2, align 8
  %4 = icmp eq %struct.dumperinfo* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %32

6:                                                ; preds = %1
  %7 = load %struct.dumperinfo*, %struct.dumperinfo** %2, align 8
  %8 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %7, i32 0, i32 3
  %9 = load %struct.dumperinfo*, %struct.dumperinfo** %8, align 8
  %10 = icmp ne %struct.dumperinfo* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = load %struct.dumperinfo*, %struct.dumperinfo** %2, align 8
  %13 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %12, i32 0, i32 3
  %14 = load %struct.dumperinfo*, %struct.dumperinfo** %13, align 8
  %15 = load %struct.dumperinfo*, %struct.dumperinfo** %2, align 8
  %16 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @explicit_bzero(%struct.dumperinfo* %14, i32 %17)
  %19 = load %struct.dumperinfo*, %struct.dumperinfo** %2, align 8
  %20 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %19, i32 0, i32 3
  %21 = load %struct.dumperinfo*, %struct.dumperinfo** %20, align 8
  %22 = load i32, i32* @M_DUMPER, align 4
  %23 = call i32 @free(%struct.dumperinfo* %21, i32 %22)
  br label %24

24:                                               ; preds = %11, %6
  %25 = load %struct.dumperinfo*, %struct.dumperinfo** %2, align 8
  %26 = call i32 @kerneldumpcomp_destroy(%struct.dumperinfo* %25)
  %27 = load %struct.dumperinfo*, %struct.dumperinfo** %2, align 8
  %28 = call i32 @explicit_bzero(%struct.dumperinfo* %27, i32 24)
  %29 = load %struct.dumperinfo*, %struct.dumperinfo** %2, align 8
  %30 = load i32, i32* @M_DUMPER, align 4
  %31 = call i32 @free(%struct.dumperinfo* %29, i32 %30)
  br label %32

32:                                               ; preds = %24, %5
  ret void
}

declare dso_local i32 @explicit_bzero(%struct.dumperinfo*, i32) #1

declare dso_local i32 @free(%struct.dumperinfo*, i32) #1

declare dso_local i32 @kerneldumpcomp_destroy(%struct.dumperinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
