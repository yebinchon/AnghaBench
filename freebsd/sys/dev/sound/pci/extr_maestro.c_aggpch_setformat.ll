; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_aggpch_setformat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_aggpch_setformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agg_chinfo = type { i32, i32, i32 }

@AFMT_BIGENDIAN = common dso_local global i32 0, align 4
@AFMT_U16_LE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AFMT_U8 = common dso_local global i32 0, align 4
@AFMT_S8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @aggpch_setformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aggpch_setformat(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.agg_chinfo*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.agg_chinfo*
  store %struct.agg_chinfo* %10, %struct.agg_chinfo** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @AFMT_BIGENDIAN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @AFMT_U16_LE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15, %3
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %58

22:                                               ; preds = %15
  %23 = load %struct.agg_chinfo*, %struct.agg_chinfo** %8, align 8
  %24 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %23, i32 0, i32 2
  store i32 0, i32* %24, align 4
  %25 = load %struct.agg_chinfo*, %struct.agg_chinfo** %8, align 8
  %26 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load %struct.agg_chinfo*, %struct.agg_chinfo** %8, align 8
  %28 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @AFMT_CHANNEL(i32 %29)
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load %struct.agg_chinfo*, %struct.agg_chinfo** %8, align 8
  %34 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %22
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @AFMT_U8, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @AFMT_S8, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40, %35
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @AFMT_U8, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.agg_chinfo*, %struct.agg_chinfo** %8, align 8
  %52 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %51, i32 0, i32 2
  store i32 1, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %45
  br label %57

54:                                               ; preds = %40
  %55 = load %struct.agg_chinfo*, %struct.agg_chinfo** %8, align 8
  %56 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %53
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %20
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @AFMT_CHANNEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
