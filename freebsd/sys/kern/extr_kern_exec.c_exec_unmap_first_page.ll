; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_exec_unmap_first_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_exec_unmap_first_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_params = type { i32* }

@PQ_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exec_unmap_first_page(%struct.image_params* %0) #0 {
  %2 = alloca %struct.image_params*, align 8
  %3 = alloca i32, align 4
  store %struct.image_params* %0, %struct.image_params** %2, align 8
  %4 = load %struct.image_params*, %struct.image_params** %2, align 8
  %5 = getelementptr inbounds %struct.image_params, %struct.image_params* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.image_params*, %struct.image_params** %2, align 8
  %10 = getelementptr inbounds %struct.image_params, %struct.image_params* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @sf_buf_page(i32* %11)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.image_params*, %struct.image_params** %2, align 8
  %14 = getelementptr inbounds %struct.image_params, %struct.image_params* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @sf_buf_free(i32* %15)
  %17 = load %struct.image_params*, %struct.image_params** %2, align 8
  %18 = getelementptr inbounds %struct.image_params, %struct.image_params* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @PQ_ACTIVE, align 4
  %21 = call i32 @vm_page_unwire(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @sf_buf_page(i32*) #1

declare dso_local i32 @sf_buf_free(i32*) #1

declare dso_local i32 @vm_page_unwire(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
