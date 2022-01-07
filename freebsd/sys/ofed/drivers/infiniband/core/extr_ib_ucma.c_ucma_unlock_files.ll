; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_ucma.c_ucma_unlock_files.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_ucma.c_ucma_unlock_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucma_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucma_file*, %struct.ucma_file*)* @ucma_unlock_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucma_unlock_files(%struct.ucma_file* %0, %struct.ucma_file* %1) #0 {
  %3 = alloca %struct.ucma_file*, align 8
  %4 = alloca %struct.ucma_file*, align 8
  store %struct.ucma_file* %0, %struct.ucma_file** %3, align 8
  store %struct.ucma_file* %1, %struct.ucma_file** %4, align 8
  %5 = load %struct.ucma_file*, %struct.ucma_file** %3, align 8
  %6 = load %struct.ucma_file*, %struct.ucma_file** %4, align 8
  %7 = icmp ult %struct.ucma_file* %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.ucma_file*, %struct.ucma_file** %4, align 8
  %10 = getelementptr inbounds %struct.ucma_file, %struct.ucma_file* %9, i32 0, i32 0
  %11 = call i32 @mutex_unlock(i32* %10)
  %12 = load %struct.ucma_file*, %struct.ucma_file** %3, align 8
  %13 = getelementptr inbounds %struct.ucma_file, %struct.ucma_file* %12, i32 0, i32 0
  %14 = call i32 @mutex_unlock(i32* %13)
  br label %22

15:                                               ; preds = %2
  %16 = load %struct.ucma_file*, %struct.ucma_file** %3, align 8
  %17 = getelementptr inbounds %struct.ucma_file, %struct.ucma_file* %16, i32 0, i32 0
  %18 = call i32 @mutex_unlock(i32* %17)
  %19 = load %struct.ucma_file*, %struct.ucma_file** %4, align 8
  %20 = getelementptr inbounds %struct.ucma_file, %struct.ucma_file* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  br label %22

22:                                               ; preds = %15, %8
  ret void
}

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
