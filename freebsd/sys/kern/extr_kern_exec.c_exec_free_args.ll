; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_exec_free_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_exec_free_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_args = type { i32*, i32*, i32*, i32 }

@M_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exec_free_args(%struct.image_args* %0) #0 {
  %2 = alloca %struct.image_args*, align 8
  store %struct.image_args* %0, %struct.image_args** %2, align 8
  %3 = load %struct.image_args*, %struct.image_args** %2, align 8
  %4 = getelementptr inbounds %struct.image_args, %struct.image_args* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.image_args*, %struct.image_args** %2, align 8
  %9 = getelementptr inbounds %struct.image_args, %struct.image_args* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @exec_free_args_kva(i32 %10)
  %12 = load %struct.image_args*, %struct.image_args** %2, align 8
  %13 = getelementptr inbounds %struct.image_args, %struct.image_args* %12, i32 0, i32 2
  store i32* null, i32** %13, align 8
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.image_args*, %struct.image_args** %2, align 8
  %16 = getelementptr inbounds %struct.image_args, %struct.image_args* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.image_args*, %struct.image_args** %2, align 8
  %21 = getelementptr inbounds %struct.image_args, %struct.image_args* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* @M_TEMP, align 4
  %24 = call i32 @free(i32* %22, i32 %23)
  %25 = load %struct.image_args*, %struct.image_args** %2, align 8
  %26 = getelementptr inbounds %struct.image_args, %struct.image_args* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %19, %14
  %28 = load %struct.image_args*, %struct.image_args** %2, align 8
  %29 = getelementptr inbounds %struct.image_args, %struct.image_args* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.image_args*, %struct.image_args** %2, align 8
  %34 = getelementptr inbounds %struct.image_args, %struct.image_args* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @fdescfree_remapped(i32* %35)
  br label %37

37:                                               ; preds = %32, %27
  ret void
}

declare dso_local i32 @exec_free_args_kva(i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @fdescfree_remapped(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
