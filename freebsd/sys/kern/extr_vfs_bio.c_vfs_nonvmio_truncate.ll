; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_nonvmio_truncate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_nonvmio_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32, i32 }

@B_MALLOC = common dso_local global i32 0, align 4
@M_BIOBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, i32)* @vfs_nonvmio_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfs_nonvmio_truncate(%struct.buf* %0, i32 %1) #0 {
  %3 = alloca %struct.buf*, align 8
  %4 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.buf*, %struct.buf** %3, align 8
  %6 = getelementptr inbounds %struct.buf, %struct.buf* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @B_MALLOC, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %11
  %15 = load %struct.buf*, %struct.buf** %3, align 8
  %16 = call i32 @bufmallocadjust(%struct.buf* %15, i32 0)
  %17 = load %struct.buf*, %struct.buf** %3, align 8
  %18 = getelementptr inbounds %struct.buf, %struct.buf* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @M_BIOBUF, align 4
  %21 = call i32 @free(i32 %19, i32 %20)
  %22 = load %struct.buf*, %struct.buf** %3, align 8
  %23 = getelementptr inbounds %struct.buf, %struct.buf* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.buf*, %struct.buf** %3, align 8
  %26 = getelementptr inbounds %struct.buf, %struct.buf* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @B_MALLOC, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.buf*, %struct.buf** %3, align 8
  %30 = getelementptr inbounds %struct.buf, %struct.buf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %14, %11
  br label %41

34:                                               ; preds = %2
  %35 = load %struct.buf*, %struct.buf** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @vm_hold_free_pages(%struct.buf* %35, i32 %36)
  %38 = load %struct.buf*, %struct.buf** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @bufspace_adjust(%struct.buf* %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %33
  ret void
}

declare dso_local i32 @bufmallocadjust(%struct.buf*, i32) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @vm_hold_free_pages(%struct.buf*, i32) #1

declare dso_local i32 @bufspace_adjust(%struct.buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
