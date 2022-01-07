; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_bman_fdt.c_bman_portal_find_cpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_bman_fdt.c_bman_portal_find_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"/cpus\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bman_portal_find_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bman_portal_find_cpu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = call i32 @OF_finddevice(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %33

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @OF_child(i32 %12)
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %29, %11
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @OF_getprop(i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %5, i32 4)
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %29

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %33

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %21
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @OF_peer(i32 %30)
  store i32 %31, i32* %4, align 4
  br label %14

32:                                               ; preds = %14
  store i32 -1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %26, %9
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @OF_child(i32) #1

declare dso_local i64 @OF_getprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @OF_peer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
