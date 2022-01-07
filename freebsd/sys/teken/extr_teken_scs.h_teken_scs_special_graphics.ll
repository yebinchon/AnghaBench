; ModuleID = '/home/carl/AnghaBench/freebsd/sys/teken/extr_teken_scs.h_teken_scs_special_graphics.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/teken/extr_teken_scs.h_teken_scs_special_graphics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@TS_8BIT = common dso_local global i32 0, align 4
@teken_boxdrawing_8bit = common dso_local global i8* null, align 8
@teken_boxdrawing_unicode = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.TYPE_3__*, i8)* @teken_scs_special_graphics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @teken_scs_special_graphics(%struct.TYPE_3__* %0, i8 signext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp sge i32 %7, 96
  br i1 %8, label %9, label %41

9:                                                ; preds = %2
  %10 = load i8, i8* %5, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp sle i32 %11, 126
  br i1 %12, label %13, label %41

13:                                               ; preds = %9
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TS_8BIT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %13
  %21 = load i8*, i8** @teken_boxdrawing_8bit, align 8
  %22 = load i8, i8* %5, align 1
  %23 = sext i8 %22 to i32
  %24 = sub nsw i32 %23, 96
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  br label %38

29:                                               ; preds = %13
  %30 = load i8*, i8** @teken_boxdrawing_unicode, align 8
  %31 = load i8, i8* %5, align 1
  %32 = sext i8 %31 to i32
  %33 = sub nsw i32 %32, 96
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %30, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  br label %38

38:                                               ; preds = %29, %20
  %39 = phi i32 [ %28, %20 ], [ %37, %29 ]
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %3, align 1
  br label %43

41:                                               ; preds = %9, %2
  %42 = load i8, i8* %5, align 1
  store i8 %42, i8* %3, align 1
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i8, i8* %3, align 1
  ret i8 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
