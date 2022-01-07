; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_bucket_zone_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_bucket_zone_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uma_bucket_zone = type { i32 }

@bucket_zones = common dso_local global %struct.uma_bucket_zone* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uma_bucket_zone* (i32)* @bucket_zone_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uma_bucket_zone* @bucket_zone_lookup(i32 %0) #0 {
  %2 = alloca %struct.uma_bucket_zone*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.uma_bucket_zone*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** @bucket_zones, align 8
  %6 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %5, i64 0
  store %struct.uma_bucket_zone* %6, %struct.uma_bucket_zone** %4, align 8
  br label %7

7:                                                ; preds = %21, %1
  %8 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %4, align 8
  %9 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %4, align 8
  %14 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %4, align 8
  store %struct.uma_bucket_zone* %19, %struct.uma_bucket_zone** %2, align 8
  br label %28

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %4, align 8
  %23 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %22, i32 1
  store %struct.uma_bucket_zone* %23, %struct.uma_bucket_zone** %4, align 8
  br label %7

24:                                               ; preds = %7
  %25 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %4, align 8
  %26 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %25, i32 -1
  store %struct.uma_bucket_zone* %26, %struct.uma_bucket_zone** %4, align 8
  %27 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %4, align 8
  store %struct.uma_bucket_zone* %27, %struct.uma_bucket_zone** %2, align 8
  br label %28

28:                                               ; preds = %24, %18
  %29 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %2, align 8
  ret %struct.uma_bucket_zone* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
