; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_bucket_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_bucket_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uma_bucket_zone = type { i32, i32 }

@bucket_zones = common dso_local global %struct.uma_bucket_zone* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bucket_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bucket_select(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.uma_bucket_zone*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** @bucket_zones, align 8
  %6 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %5, i64 0
  store %struct.uma_bucket_zone* %6, %struct.uma_bucket_zone** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %4, align 8
  %9 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sgt i32 %7, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %4, align 8
  %14 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %4, align 8
  %17 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %15, %18
  %20 = load i32, i32* %3, align 4
  %21 = sdiv i32 %19, %20
  %22 = call i32 @MAX(i32 %21, i32 1)
  store i32 %22, i32* %2, align 4
  br label %46

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %37, %23
  %25 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %4, align 8
  %26 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %4, align 8
  %31 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %40

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %4, align 8
  %39 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %38, i32 1
  store %struct.uma_bucket_zone* %39, %struct.uma_bucket_zone** %4, align 8
  br label %24

40:                                               ; preds = %35, %24
  %41 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %4, align 8
  %42 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %41, i32 -1
  store %struct.uma_bucket_zone* %42, %struct.uma_bucket_zone** %4, align 8
  %43 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %4, align 8
  %44 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %40, %12
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
