; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_ruadd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_ruadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rusage = type { i32 }
%struct.rusage_ext = type { i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ruadd(%struct.rusage* %0, %struct.rusage_ext* %1, %struct.rusage* %2, %struct.rusage_ext* %3) #0 {
  %5 = alloca %struct.rusage*, align 8
  %6 = alloca %struct.rusage_ext*, align 8
  %7 = alloca %struct.rusage*, align 8
  %8 = alloca %struct.rusage_ext*, align 8
  store %struct.rusage* %0, %struct.rusage** %5, align 8
  store %struct.rusage_ext* %1, %struct.rusage_ext** %6, align 8
  store %struct.rusage* %2, %struct.rusage** %7, align 8
  store %struct.rusage_ext* %3, %struct.rusage_ext** %8, align 8
  %9 = load %struct.rusage_ext*, %struct.rusage_ext** %8, align 8
  %10 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %9, i32 0, i32 6
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.rusage_ext*, %struct.rusage_ext** %6, align 8
  %13 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, %11
  store i64 %15, i64* %13, align 8
  %16 = load %struct.rusage_ext*, %struct.rusage_ext** %8, align 8
  %17 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.rusage_ext*, %struct.rusage_ext** %6, align 8
  %20 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, %18
  store i64 %22, i64* %20, align 8
  %23 = load %struct.rusage_ext*, %struct.rusage_ext** %8, align 8
  %24 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.rusage_ext*, %struct.rusage_ext** %6, align 8
  %27 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, %25
  store i64 %29, i64* %27, align 8
  %30 = load %struct.rusage_ext*, %struct.rusage_ext** %8, align 8
  %31 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.rusage_ext*, %struct.rusage_ext** %6, align 8
  %34 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, %32
  store i64 %36, i64* %34, align 8
  %37 = load %struct.rusage_ext*, %struct.rusage_ext** %8, align 8
  %38 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.rusage_ext*, %struct.rusage_ext** %6, align 8
  %41 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, %39
  store i64 %43, i64* %41, align 8
  %44 = load %struct.rusage_ext*, %struct.rusage_ext** %8, align 8
  %45 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.rusage_ext*, %struct.rusage_ext** %6, align 8
  %48 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, %46
  store i64 %50, i64* %48, align 8
  %51 = load %struct.rusage_ext*, %struct.rusage_ext** %8, align 8
  %52 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.rusage_ext*, %struct.rusage_ext** %6, align 8
  %55 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load %struct.rusage*, %struct.rusage** %5, align 8
  %59 = load %struct.rusage*, %struct.rusage** %7, align 8
  %60 = call i32 @rucollect(%struct.rusage* %58, %struct.rusage* %59)
  ret void
}

declare dso_local i32 @rucollect(%struct.rusage*, %struct.rusage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
