; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_maxbcachebuf_adjust.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_maxbcachebuf_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@maxbcachebuf = common dso_local global i32 0, align 4
@MAXBSIZE = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@MAXBCACHEBUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"maxbcachebuf=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @maxbcachebuf_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maxbcachebuf_adjust() #0 {
  %1 = alloca i32, align 4
  store i32 2, i32* %1, align 4
  br label %2

2:                                                ; preds = %7, %0
  %3 = load i32, i32* %1, align 4
  %4 = mul nsw i32 %3, 2
  %5 = load i32, i32* @maxbcachebuf, align 4
  %6 = icmp sle i32 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32, i32* %1, align 4
  %9 = mul nsw i32 %8, 2
  store i32 %9, i32* %1, align 4
  br label %2

10:                                               ; preds = %2
  %11 = load i32, i32* %1, align 4
  store i32 %11, i32* @maxbcachebuf, align 4
  %12 = load i32, i32* @maxbcachebuf, align 4
  %13 = load i32, i32* @MAXBSIZE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @MAXBSIZE, align 4
  store i32 %16, i32* @maxbcachebuf, align 4
  br label %17

17:                                               ; preds = %15, %10
  %18 = load i32, i32* @maxbcachebuf, align 4
  %19 = load i32, i32* @MAXPHYS, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @MAXPHYS, align 4
  store i32 %22, i32* @maxbcachebuf, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i64, i64* @bootverbose, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* @maxbcachebuf, align 4
  %28 = load i32, i32* @MAXBCACHEBUF, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @maxbcachebuf, align 4
  %32 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %30, %26, %23
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
