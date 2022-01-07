; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_split_cri.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_split_cri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptoini = type { i32, %struct.cryptoini* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cryptoini*, %struct.cryptoini**, %struct.cryptoini**)* @sec_split_cri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_split_cri(%struct.cryptoini* %0, %struct.cryptoini** %1, %struct.cryptoini** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cryptoini*, align 8
  %6 = alloca %struct.cryptoini**, align 8
  %7 = alloca %struct.cryptoini**, align 8
  %8 = alloca %struct.cryptoini*, align 8
  %9 = alloca %struct.cryptoini*, align 8
  store %struct.cryptoini* %0, %struct.cryptoini** %5, align 8
  store %struct.cryptoini** %1, %struct.cryptoini*** %6, align 8
  store %struct.cryptoini** %2, %struct.cryptoini*** %7, align 8
  %10 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  store %struct.cryptoini* %10, %struct.cryptoini** %8, align 8
  %11 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %12 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %11, i32 0, i32 1
  %13 = load %struct.cryptoini*, %struct.cryptoini** %12, align 8
  store %struct.cryptoini* %13, %struct.cryptoini** %9, align 8
  %14 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  %15 = icmp ne %struct.cryptoini* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  %18 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %17, i32 0, i32 1
  %19 = load %struct.cryptoini*, %struct.cryptoini** %18, align 8
  %20 = icmp ne %struct.cryptoini* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %49

23:                                               ; preds = %16, %3
  %24 = load %struct.cryptoini*, %struct.cryptoini** %8, align 8
  %25 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @sec_mdeu_can_handle(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  store %struct.cryptoini* %30, %struct.cryptoini** %5, align 8
  %31 = load %struct.cryptoini*, %struct.cryptoini** %8, align 8
  store %struct.cryptoini* %31, %struct.cryptoini** %9, align 8
  %32 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  store %struct.cryptoini* %32, %struct.cryptoini** %8, align 8
  br label %33

33:                                               ; preds = %29, %23
  %34 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  %35 = icmp ne %struct.cryptoini* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  %38 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @sec_mdeu_can_handle(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %4, align 4
  br label %49

44:                                               ; preds = %36, %33
  %45 = load %struct.cryptoini*, %struct.cryptoini** %8, align 8
  %46 = load %struct.cryptoini**, %struct.cryptoini*** %6, align 8
  store %struct.cryptoini* %45, %struct.cryptoini** %46, align 8
  %47 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  %48 = load %struct.cryptoini**, %struct.cryptoini*** %7, align 8
  store %struct.cryptoini* %47, %struct.cryptoini** %48, align 8
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %44, %42, %21
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i64 @sec_mdeu_can_handle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
