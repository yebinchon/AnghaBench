; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_page_set_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_page_set_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, i32, i32)* @vfs_page_set_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfs_page_set_valid(%struct.buf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = add nsw i32 %8, %9
  %11 = load i32, i32* @PAGE_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.buf*, %struct.buf** %4, align 8
  %16 = getelementptr inbounds %struct.buf, %struct.buf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.buf*, %struct.buf** %4, align 8
  %19 = getelementptr inbounds %struct.buf, %struct.buf* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %17, %20
  %22 = icmp sgt i32 %14, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  %24 = load %struct.buf*, %struct.buf** %4, align 8
  %25 = getelementptr inbounds %struct.buf, %struct.buf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.buf*, %struct.buf** %4, align 8
  %28 = getelementptr inbounds %struct.buf, %struct.buf* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %23, %3
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @PAGE_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %40, %41
  %43 = call i32 @vm_page_set_valid_range(i32 %36, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %35, %31
  ret void
}

declare dso_local i32 @vm_page_set_valid_range(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
