; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_rate.c_z_feed_zoh.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_rate.c_z_feed_zoh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_info = type { i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.z_info*, i32*)* @z_feed_zoh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @z_feed_zoh(%struct.z_info* %0, i32* %1) #0 {
  %3 = alloca %struct.z_info*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.z_info* %0, %struct.z_info** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.z_info*, %struct.z_info** %3, align 8
  %8 = getelementptr inbounds %struct.z_info, %struct.z_info* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.z_info*, %struct.z_info** %3, align 8
  %11 = getelementptr inbounds %struct.z_info, %struct.z_info* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = mul nsw i32 %9, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.z_info*, %struct.z_info** %3, align 8
  %15 = getelementptr inbounds %struct.z_info, %struct.z_info* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.z_info*, %struct.z_info** %3, align 8
  %18 = getelementptr inbounds %struct.z_info, %struct.z_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %16, i64 %22
  store i32* %23, i32** %6, align 8
  br label %24

24:                                               ; preds = %30, %2
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %6, align 8
  %27 = load i32, i32* %25, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %4, align 8
  store i32 %27, i32* %28, align 4
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %24, label %34

34:                                               ; preds = %30
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
