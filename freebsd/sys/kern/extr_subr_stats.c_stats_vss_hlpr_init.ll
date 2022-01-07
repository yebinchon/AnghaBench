; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_vss_hlpr_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_vss_hlpr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.voistatspec = type { i32 (i32, %struct.voistatspec*, i32)*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stats_vss_hlpr_init(i32 %0, i32 %1, %struct.voistatspec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.voistatspec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.voistatspec* %2, %struct.voistatspec** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %8, align 4
  br label %12

12:                                               ; preds = %46, %3
  %13 = load i32, i32* %8, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %12
  %16 = load %struct.voistatspec*, %struct.voistatspec** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %16, i64 %18
  %20 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %19, i32 0, i32 0
  %21 = load i32 (i32, %struct.voistatspec*, i32)*, i32 (i32, %struct.voistatspec*, i32)** %20, align 8
  %22 = icmp ne i32 (i32, %struct.voistatspec*, i32)* %21, null
  br i1 %22, label %23, label %45

23:                                               ; preds = %15
  %24 = load %struct.voistatspec*, %struct.voistatspec** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %24, i64 %26
  %28 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %27, i32 0, i32 0
  %29 = load i32 (i32, %struct.voistatspec*, i32)*, i32 (i32, %struct.voistatspec*, i32)** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.voistatspec*, %struct.voistatspec** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %31, i64 %33
  %35 = load %struct.voistatspec*, %struct.voistatspec** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %35, i64 %37
  %39 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 %29(i32 %30, %struct.voistatspec* %34, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %23
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %50

45:                                               ; preds = %23, %15
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %8, align 4
  br label %12

49:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %43
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
