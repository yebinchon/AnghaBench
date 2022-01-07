; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_vss_hlpr_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_vss_hlpr_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.voistatspec = type { i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stats_vss_hlpr_cleanup(i32 %0, %struct.voistatspec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.voistatspec*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.voistatspec* %1, %struct.voistatspec** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sub nsw i32 %6, 1
  store i32 %7, i32* %5, align 4
  br label %8

8:                                                ; preds = %34, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %8
  %12 = load %struct.voistatspec*, %struct.voistatspec** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %12, i64 %14
  %16 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %11
  %20 = load %struct.voistatspec*, %struct.voistatspec** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %20, i64 %22
  %24 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = bitcast i32* %25 to i8*
  %27 = call i32 @stats_free(i8* %26)
  %28 = load %struct.voistatspec*, %struct.voistatspec** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %28, i64 %30
  %32 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %19, %11
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %5, align 4
  br label %8

37:                                               ; preds = %8
  ret void
}

declare dso_local i32 @stats_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
