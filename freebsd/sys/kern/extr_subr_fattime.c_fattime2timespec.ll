; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_fattime.c_fattime2timespec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_fattime.c_fattime2timespec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }

@LYC = common dso_local global i32 0, align 4
@daytab = common dso_local global i64* null, align 8
@FEB = common dso_local global i32 0, align 4
@T1980 = common dso_local global i64 0, align 8
@DAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fattime2timespec(i32 %0, i32 %1, i32 %2, i32 %3, %struct.timespec* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.timespec*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.timespec* %4, %struct.timespec** %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, 31
  %14 = shl i32 %13, 1
  %15 = load %struct.timespec*, %struct.timespec** %10, align 8
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 2016
  %19 = lshr i32 %18, 5
  %20 = mul i32 %19, 60
  %21 = load %struct.timespec*, %struct.timespec** %10, align 8
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 63488
  %27 = lshr i32 %26, 11
  %28 = mul i32 %27, 3600
  %29 = load %struct.timespec*, %struct.timespec** %10, align 8
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %8, align 4
  %34 = udiv i32 %33, 100
  %35 = load %struct.timespec*, %struct.timespec** %10, align 8
  %36 = getelementptr inbounds %struct.timespec, %struct.timespec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %8, align 4
  %40 = urem i32 %39, 100
  %41 = mul i32 %40, 10000000
  %42 = load %struct.timespec*, %struct.timespec** %10, align 8
  %43 = getelementptr inbounds %struct.timespec, %struct.timespec* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, 31
  %46 = sub i32 %45, 1
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* @LYC, align 4
  %48 = load i32, i32* %6, align 4
  %49 = lshr i32 %48, 11
  %50 = and i32 %49, 31
  %51 = mul i32 %47, %50
  %52 = load i32, i32* %11, align 4
  %53 = add i32 %52, %51
  store i32 %53, i32* %11, align 4
  %54 = load i64*, i64** @daytab, align 8
  %55 = load i32, i32* %6, align 4
  %56 = lshr i32 %55, 5
  %57 = and i32 %56, 63
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %54, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = zext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @LYC, align 4
  %67 = mul i32 30, %66
  %68 = load i32, i32* @FEB, align 4
  %69 = add i32 %67, %68
  %70 = icmp uge i32 %65, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %5
  %72 = load i32, i32* %11, align 4
  %73 = add i32 %72, -1
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %71, %5
  %75 = load i64, i64* @T1980, align 8
  %76 = load i32, i32* %11, align 4
  %77 = zext i32 %76 to i64
  %78 = add nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* @DAY, align 4
  %81 = load i32, i32* %11, align 4
  %82 = mul i32 %80, %81
  %83 = load %struct.timespec*, %struct.timespec** %10, align 8
  %84 = getelementptr inbounds %struct.timespec, %struct.timespec* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %74
  %90 = call i64 (...) @utc_offset()
  %91 = load %struct.timespec*, %struct.timespec** %10, align 8
  %92 = getelementptr inbounds %struct.timespec, %struct.timespec* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = zext i32 %93 to i64
  %95 = add nsw i64 %94, %90
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 4
  br label %97

97:                                               ; preds = %89, %74
  ret void
}

declare dso_local i64 @utc_offset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
