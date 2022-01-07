; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_watermarks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_watermarks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@CREAD = common dso_local global i32 0, align 4
@TTYBUF_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*)* @tty_watermarks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_watermarks(%struct.tty* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %3, align 8
  store i64 0, i64* %4, align 8
  %6 = load %struct.tty*, %struct.tty** %3, align 8
  %7 = getelementptr inbounds %struct.tty, %struct.tty* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CREAD, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.tty*, %struct.tty** %3, align 8
  %15 = getelementptr inbounds %struct.tty, %struct.tty* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %17, 5
  %19 = load i32, i32* @TTYBUF_MAX, align 4
  %20 = call i64 @MIN(i32 %18, i32 %19)
  store i64 %20, i64* %4, align 8
  br label %21

21:                                               ; preds = %13, %1
  %22 = load %struct.tty*, %struct.tty** %3, align 8
  %23 = getelementptr inbounds %struct.tty, %struct.tty* %22, i32 0, i32 4
  %24 = load %struct.tty*, %struct.tty** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @ttyinq_setsize(i32* %23, %struct.tty* %24, i64 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %63

31:                                               ; preds = %21
  %32 = load %struct.tty*, %struct.tty** %3, align 8
  %33 = getelementptr inbounds %struct.tty, %struct.tty* %32, i32 0, i32 4
  %34 = call i32 @ttyinq_getallocatedsize(i32* %33)
  %35 = mul nsw i32 %34, 9
  %36 = sdiv i32 %35, 10
  %37 = load %struct.tty*, %struct.tty** %3, align 8
  %38 = getelementptr inbounds %struct.tty, %struct.tty* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.tty*, %struct.tty** %3, align 8
  %40 = getelementptr inbounds %struct.tty, %struct.tty* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 %42, 5
  %44 = load i32, i32* @TTYBUF_MAX, align 4
  %45 = call i64 @MIN(i32 %43, i32 %44)
  store i64 %45, i64* %4, align 8
  %46 = load %struct.tty*, %struct.tty** %3, align 8
  %47 = getelementptr inbounds %struct.tty, %struct.tty* %46, i32 0, i32 2
  %48 = load %struct.tty*, %struct.tty** %3, align 8
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @ttyoutq_setsize(i32* %47, %struct.tty* %48, i64 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %31
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %63

55:                                               ; preds = %31
  %56 = load %struct.tty*, %struct.tty** %3, align 8
  %57 = getelementptr inbounds %struct.tty, %struct.tty* %56, i32 0, i32 2
  %58 = call i32 @ttyoutq_getallocatedsize(i32* %57)
  %59 = mul nsw i32 %58, 9
  %60 = sdiv i32 %59, 10
  %61 = load %struct.tty*, %struct.tty** %3, align 8
  %62 = getelementptr inbounds %struct.tty, %struct.tty* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %55, %53, %29
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i32 @ttyinq_setsize(i32*, %struct.tty*, i64) #1

declare dso_local i32 @ttyinq_getallocatedsize(i32*) #1

declare dso_local i32 @ttyoutq_setsize(i32*, %struct.tty*, i64) #1

declare dso_local i32 @ttyoutq_getallocatedsize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
