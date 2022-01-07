; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_rucollect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_rucollect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rusage = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rucollect(%struct.rusage* %0, %struct.rusage* %1) #0 {
  %3 = alloca %struct.rusage*, align 8
  %4 = alloca %struct.rusage*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.rusage* %0, %struct.rusage** %3, align 8
  store %struct.rusage* %1, %struct.rusage** %4, align 8
  %8 = load %struct.rusage*, %struct.rusage** %3, align 8
  %9 = getelementptr inbounds %struct.rusage, %struct.rusage* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.rusage*, %struct.rusage** %4, align 8
  %12 = getelementptr inbounds %struct.rusage, %struct.rusage* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.rusage*, %struct.rusage** %4, align 8
  %17 = getelementptr inbounds %struct.rusage, %struct.rusage* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.rusage*, %struct.rusage** %3, align 8
  %20 = getelementptr inbounds %struct.rusage, %struct.rusage* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %15, %2
  %22 = load %struct.rusage*, %struct.rusage** %3, align 8
  %23 = getelementptr inbounds %struct.rusage, %struct.rusage* %22, i32 0, i32 1
  store i64* %23, i64** %5, align 8
  %24 = load %struct.rusage*, %struct.rusage** %4, align 8
  %25 = getelementptr inbounds %struct.rusage, %struct.rusage* %24, i32 0, i32 1
  store i64* %25, i64** %6, align 8
  %26 = load %struct.rusage*, %struct.rusage** %3, align 8
  %27 = getelementptr inbounds %struct.rusage, %struct.rusage* %26, i32 0, i32 2
  %28 = load %struct.rusage*, %struct.rusage** %3, align 8
  %29 = getelementptr inbounds %struct.rusage, %struct.rusage* %28, i32 0, i32 1
  %30 = ptrtoint i64* %27 to i64
  %31 = ptrtoint i64* %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %46, %21
  %36 = load i32, i32* %7, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load i64*, i64** %6, align 8
  %40 = getelementptr inbounds i64, i64* %39, i32 1
  store i64* %40, i64** %6, align 8
  %41 = load i64, i64* %39, align 8
  %42 = load i64*, i64** %5, align 8
  %43 = getelementptr inbounds i64, i64* %42, i32 1
  store i64* %43, i64** %5, align 8
  %44 = load i64, i64* %42, align 8
  %45 = add nsw i64 %44, %41
  store i64 %45, i64* %42, align 8
  br label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %7, align 4
  br label %35

49:                                               ; preds = %35
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
