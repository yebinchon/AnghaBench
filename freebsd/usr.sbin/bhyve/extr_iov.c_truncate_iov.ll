; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_iov.c_truncate_iov.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_iov.c_truncate_iov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @truncate_iov(%struct.iovec* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.iovec*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.iovec* %0, %struct.iovec** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %48, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %51

15:                                               ; preds = %10
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = sub i64 %16, %17
  %19 = load %struct.iovec*, %struct.iovec** %4, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.iovec, %struct.iovec* %19, i64 %21
  %23 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @MIN(i64 %18, i64 %24)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.iovec*, %struct.iovec** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.iovec, %struct.iovec* %30, i64 %32
  %34 = getelementptr inbounds %struct.iovec, %struct.iovec* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ule i64 %29, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %15
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.iovec*, %struct.iovec** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.iovec, %struct.iovec* %39, i64 %41
  %43 = getelementptr inbounds %struct.iovec, %struct.iovec* %42, i32 0, i32 0
  store i64 %38, i64* %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  br label %51

47:                                               ; preds = %15
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %10

51:                                               ; preds = %37, %10
  ret void
}

declare dso_local i64 @MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
