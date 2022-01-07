; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_camdd_get_next_lba_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_camdd_get_next_lba_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camdd_dev = type { i64, i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.camdd_dev_pass }
%struct.camdd_dev_pass = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @camdd_get_next_lba_len(%struct.camdd_dev* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.camdd_dev*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.camdd_dev_pass*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.camdd_dev* %0, %struct.camdd_dev** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %12 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.camdd_dev_pass* %13, %struct.camdd_dev_pass** %7, align 8
  %14 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %15 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %18 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sdiv i64 %16, %19
  %21 = load i64*, i64** %5, align 8
  store i64 %20, i64* %21, align 8
  %22 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %23 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** %6, align 8
  store i64 %24, i64* %25, align 8
  %26 = load i64*, i64** %6, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %29 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = sdiv i64 %27, %30
  store i64 %31, i64* %8, align 8
  %32 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %33 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %3
  %37 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %38 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %110

41:                                               ; preds = %36, %3
  %42 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %43 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %48 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %53 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %56 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @min(i64 %54, i64 %57)
  store i64 %58, i64* %10, align 8
  br label %73

59:                                               ; preds = %46, %41
  %60 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %61 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %66 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %10, align 8
  br label %72

68:                                               ; preds = %59
  %69 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %70 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %10, align 8
  br label %72

72:                                               ; preds = %68, %64
  br label %73

73:                                               ; preds = %72, %51
  %74 = load i64*, i64** %5, align 8
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i64*, i64** %6, align 8
  store i64 0, i64* %79, align 8
  store i32 1, i32* %9, align 4
  br label %109

80:                                               ; preds = %73
  %81 = load i64*, i64** %5, align 8
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = add nsw i64 %82, %83
  %85 = load i64, i64* %10, align 8
  %86 = add nsw i64 %85, 1
  %87 = icmp sgt i64 %84, %86
  br i1 %87, label %96, label %88

88:                                               ; preds = %80
  %89 = load i64*, i64** %5, align 8
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %8, align 8
  %92 = add nsw i64 %90, %91
  %93 = load i64*, i64** %5, align 8
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %92, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %88, %80
  %97 = load i64, i64* %10, align 8
  %98 = add nsw i64 %97, 1
  %99 = load i64*, i64** %5, align 8
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %98, %100
  store i64 %101, i64* %8, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %104 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = mul nsw i64 %102, %105
  %107 = load i64*, i64** %6, align 8
  store i64 %106, i64* %107, align 8
  store i32 1, i32* %9, align 4
  br label %108

108:                                              ; preds = %96, %88
  br label %109

109:                                              ; preds = %108, %78
  br label %110

110:                                              ; preds = %109, %36
  %111 = load i64*, i64** %6, align 8
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %114 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, %112
  store i64 %116, i64* %114, align 8
  %117 = load i32, i32* %9, align 4
  ret i32 %117
}

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
