; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctddk.c_ct_set_baud.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctddk.c_ct_set_baud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@M_E1 = common dso_local global i64 0, align 8
@M_G703 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ct_set_baud(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @M_E1, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %51

12:                                               ; preds = %2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @M_G703, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %12
  %19 = load i64, i64* %4, align 8
  %20 = icmp uge i64 %19, 2048000
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i64 2048, i64* %5, align 8
  br label %43

22:                                               ; preds = %18
  %23 = load i64, i64* %4, align 8
  %24 = icmp uge i64 %23, 1024000
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i64 1024, i64* %5, align 8
  br label %42

26:                                               ; preds = %22
  %27 = load i64, i64* %4, align 8
  %28 = icmp uge i64 %27, 512000
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i64 512, i64* %5, align 8
  br label %41

30:                                               ; preds = %26
  %31 = load i64, i64* %4, align 8
  %32 = icmp uge i64 %31, 256000
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i64 256, i64* %5, align 8
  br label %40

34:                                               ; preds = %30
  %35 = load i64, i64* %4, align 8
  %36 = icmp uge i64 %35, 128000
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i64 128, i64* %5, align 8
  br label %39

38:                                               ; preds = %34
  store i64 64, i64* %5, align 8
  br label %39

39:                                               ; preds = %38, %37
  br label %40

40:                                               ; preds = %39, %33
  br label %41

41:                                               ; preds = %40, %29
  br label %42

42:                                               ; preds = %41, %25
  br label %43

43:                                               ; preds = %42, %21
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @ct_g703_rate(%struct.TYPE_5__* %44, i64 %45)
  br label %51

47:                                               ; preds = %12
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @ct_chan_baud(%struct.TYPE_5__* %48, i64 %49)
  br label %51

51:                                               ; preds = %11, %47, %43
  ret void
}

declare dso_local i32 @ct_g703_rate(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @ct_chan_baud(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
