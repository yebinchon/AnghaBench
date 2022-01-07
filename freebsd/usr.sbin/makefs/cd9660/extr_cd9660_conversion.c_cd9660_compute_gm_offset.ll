; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_cd9660_conversion.c_cd9660_compute_gm_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_cd9660_conversion.c_cd9660_compute_gm_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32)* @cd9660_compute_gm_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @cd9660_compute_gm_offset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tm, align 8
  %4 = alloca %struct.tm, align 8
  store i32 %0, i32* %2, align 4
  %5 = call i32 @localtime_r(i32* %2, %struct.tm* %3)
  %6 = call i32 @gmtime_r(i32* %2, %struct.tm* %4)
  %7 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %10, %8
  store i64 %11, i64* %9, align 8
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, %13
  store i32 %16, i32* %14, align 8
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, %18
  store i32 %21, i32* %19, align 4
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, %23
  store i32 %26, i32* %24, align 8
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  store i32 -1, i32* %31, align 8
  br label %39

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  store i32 1, i32* %37, align 8
  br label %38

38:                                               ; preds = %36, %32
  br label %39

39:                                               ; preds = %38, %30
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 24, %43
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %44, %46
  %48 = mul nsw i32 60, %47
  %49 = add nsw i32 %41, %48
  %50 = sub nsw i32 0, %49
  %51 = sdiv i32 %50, 15
  %52 = trunc i32 %51 to i8
  ret i8 %52
}

declare dso_local i32 @localtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @gmtime_r(i32*, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
