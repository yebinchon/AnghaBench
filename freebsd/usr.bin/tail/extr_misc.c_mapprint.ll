; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tail/extr_misc.c_mapprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tail/extr_misc.c_mapprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapinfo = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mapprint(%struct.mapinfo* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mapinfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mapinfo* %0, %struct.mapinfo** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  br label %9

9:                                                ; preds = %53, %3
  %10 = load i64, i64* %7, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %73

12:                                               ; preds = %9
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.mapinfo*, %struct.mapinfo** %5, align 8
  %15 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %28, label %18

18:                                               ; preds = %12
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.mapinfo*, %struct.mapinfo** %5, align 8
  %21 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.mapinfo*, %struct.mapinfo** %5, align 8
  %24 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = icmp sge i64 %19, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %18, %12
  %29 = load %struct.mapinfo*, %struct.mapinfo** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @maparound(%struct.mapinfo* %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 1, i32* %4, align 4
  br label %74

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %18
  %36 = load %struct.mapinfo*, %struct.mapinfo** %5, align 8
  %37 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.mapinfo*, %struct.mapinfo** %5, align 8
  %40 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = load i64, i64* %6, align 8
  %44 = sub nsw i64 %42, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %7, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %35
  %51 = load i64, i64* %7, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %50, %35
  %54 = load %struct.mapinfo*, %struct.mapinfo** %5, align 8
  %55 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.mapinfo*, %struct.mapinfo** %5, align 8
  %59 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  %62 = add nsw i64 %56, %61
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @WR(i64 %62, i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %6, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %7, align 8
  %72 = sub nsw i64 %71, %70
  store i64 %72, i64* %7, align 8
  br label %9

73:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %33
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i64 @maparound(%struct.mapinfo*, i64) #1

declare dso_local i32 @WR(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
