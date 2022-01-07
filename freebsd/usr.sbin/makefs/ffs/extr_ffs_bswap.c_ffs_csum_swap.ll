; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/ffs/extr_ffs_bswap.c_ffs_csum_swap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/ffs/extr_ffs_bswap.c_ffs_csum_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csum = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ffs_csum_swap(%struct.csum* %0, %struct.csum* %1, i32 %2) #0 {
  %4 = alloca %struct.csum*, align 8
  %5 = alloca %struct.csum*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.csum* %0, %struct.csum** %4, align 8
  store %struct.csum* %1, %struct.csum** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.csum*, %struct.csum** %4, align 8
  %11 = bitcast %struct.csum* %10 to i32*
  store i32* %11, i32** %8, align 8
  %12 = load %struct.csum*, %struct.csum** %5, align 8
  %13 = bitcast %struct.csum* %12 to i32*
  store i32* %13, i32** %9, align 8
  store i64 0, i64* %7, align 8
  br label %14

14:                                               ; preds = %29, %3
  %15 = load i64, i64* %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = udiv i64 %17, 4
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load i32*, i32** %8, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bswap32(i32 %24)
  %26 = load i32*, i32** %9, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32 %25, i32* %28, align 4
  br label %29

29:                                               ; preds = %20
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %7, align 8
  br label %14

32:                                               ; preds = %14
  ret void
}

declare dso_local i32 @bswap32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
