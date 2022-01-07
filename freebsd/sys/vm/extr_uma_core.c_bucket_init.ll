; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_bucket_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_bucket_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uma_bucket_zone = type { i32, i32, i32 }

@bucket_zones = common dso_local global %struct.uma_bucket_zone* null, align 8
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@UMA_ZONE_MTXCLASS = common dso_local global i32 0, align 4
@UMA_ZFLAG_BUCKET = common dso_local global i32 0, align 4
@UMA_ZONE_NUMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bucket_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bucket_init() #0 {
  %1 = alloca %struct.uma_bucket_zone*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** @bucket_zones, align 8
  %4 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %3, i64 0
  store %struct.uma_bucket_zone* %4, %struct.uma_bucket_zone** %1, align 8
  br label %5

5:                                                ; preds = %34, %0
  %6 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %1, align 8
  %7 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %37

10:                                               ; preds = %5
  %11 = call i32 @roundup(i32 4, i32 8)
  store i32 %11, i32* %2, align 4
  %12 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %1, align 8
  %13 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 8, %15
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %2, align 4
  %21 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %1, align 8
  %22 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %26 = load i32, i32* @UMA_ZONE_MTXCLASS, align 4
  %27 = load i32, i32* @UMA_ZFLAG_BUCKET, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @UMA_ZONE_NUMA, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @uma_zcreate(i32 %23, i32 %24, i32* null, i32* null, i32* null, i32* null, i32 %25, i32 %30)
  %32 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %1, align 8
  %33 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %10
  %35 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %1, align 8
  %36 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %35, i32 1
  store %struct.uma_bucket_zone* %36, %struct.uma_bucket_zone** %1, align 8
  br label %5

37:                                               ; preds = %5
  ret void
}

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @uma_zcreate(i32, i32, i32*, i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
