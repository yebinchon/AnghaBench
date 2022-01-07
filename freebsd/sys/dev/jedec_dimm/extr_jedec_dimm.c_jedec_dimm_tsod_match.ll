; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jedec_dimm/extr_jedec_dimm.c_jedec_dimm_tsod_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jedec_dimm/extr_jedec_dimm.c_jedec_dimm_tsod_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jedec_dimm_tsod_dev = type { i64, i64, i8* }

@known_tsod_devices = common dso_local global %struct.jedec_dimm_tsod_dev* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"TSE2004av compliant TSOD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i64)* @jedec_dimm_tsod_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @jedec_dimm_tsod_match(i64 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.jedec_dimm_tsod_dev*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %35, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.jedec_dimm_tsod_dev*, %struct.jedec_dimm_tsod_dev** @known_tsod_devices, align 8
  %11 = call i32 @nitems(%struct.jedec_dimm_tsod_dev* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %38

13:                                               ; preds = %8
  %14 = load %struct.jedec_dimm_tsod_dev*, %struct.jedec_dimm_tsod_dev** @known_tsod_devices, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.jedec_dimm_tsod_dev, %struct.jedec_dimm_tsod_dev* %14, i64 %16
  store %struct.jedec_dimm_tsod_dev* %17, %struct.jedec_dimm_tsod_dev** %6, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.jedec_dimm_tsod_dev*, %struct.jedec_dimm_tsod_dev** %6, align 8
  %20 = getelementptr inbounds %struct.jedec_dimm_tsod_dev, %struct.jedec_dimm_tsod_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %13
  %24 = load i64, i64* %5, align 8
  %25 = ashr i64 %24, 8
  %26 = load %struct.jedec_dimm_tsod_dev*, %struct.jedec_dimm_tsod_dev** %6, align 8
  %27 = getelementptr inbounds %struct.jedec_dimm_tsod_dev, %struct.jedec_dimm_tsod_dev* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.jedec_dimm_tsod_dev*, %struct.jedec_dimm_tsod_dev** %6, align 8
  %32 = getelementptr inbounds %struct.jedec_dimm_tsod_dev, %struct.jedec_dimm_tsod_dev* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %3, align 8
  br label %44

34:                                               ; preds = %23, %13
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %8

38:                                               ; preds = %8
  %39 = load i64, i64* %5, align 8
  %40 = ashr i64 %39, 8
  %41 = icmp eq i64 %40, 34
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %44

43:                                               ; preds = %38
  store i8* null, i8** %3, align 8
  br label %44

44:                                               ; preds = %43, %42, %30
  %45 = load i8*, i8** %3, align 8
  ret i8* %45
}

declare dso_local i32 @nitems(%struct.jedec_dimm_tsod_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
