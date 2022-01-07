; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value.c_bhnd_nvram_val_fmt_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value.c_bhnd_nvram_val_fmt_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { {}*, i64 }

@EFTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__**, i8*, i64, i64)* @bhnd_nvram_val_fmt_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_val_fmt_filter(%struct.TYPE_4__** %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @bhnd_nvram_value_check_aligned(i8* %15, i64 %16, i64 %17)
  store i32 %18, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %5, align 4
  br label %67

22:                                               ; preds = %4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (%struct.TYPE_4__**, i8*, i64, i64)**
  %26 = load i32 (%struct.TYPE_4__**, i8*, i64, i64)*, i32 (%struct.TYPE_4__**, i8*, i64, i64)** %25, align 8
  %27 = icmp eq i32 (%struct.TYPE_4__**, i8*, i64, i64)* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %67

35:                                               ; preds = %28
  %36 = load i32, i32* @EFTYPE, align 4
  store i32 %36, i32* %5, align 4
  br label %67

37:                                               ; preds = %22
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = bitcast {}** %39 to i32 (%struct.TYPE_4__**, i8*, i64, i64)**
  %41 = load i32 (%struct.TYPE_4__**, i8*, i64, i64)*, i32 (%struct.TYPE_4__**, i8*, i64, i64)** %40, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 %41(%struct.TYPE_4__** %11, i8* %42, i64 %43, i64 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %5, align 4
  br label %67

50:                                               ; preds = %37
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %53 = icmp ne %struct.TYPE_4__* %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load i8*, i8** %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @bhnd_nvram_val_fmt_filter(%struct.TYPE_4__** %11, i8* %55, i64 %56, i64 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %5, align 4
  br label %67

63:                                               ; preds = %54
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %65 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  store %struct.TYPE_4__* %64, %struct.TYPE_4__** %65, align 8
  br label %66

66:                                               ; preds = %63, %50
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %61, %48, %35, %34, %20
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @bhnd_nvram_value_check_aligned(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
