; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_find_field_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_find_field_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.bwstring = type { i32 }
%struct.key_specs = type { i64, i64, i32 }

@sort_opts_vals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bwstring*, %struct.key_specs*)* @find_field_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_field_end(%struct.bwstring* %0, %struct.key_specs* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.bwstring*, align 8
  %5 = alloca %struct.key_specs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bwstring* %0, %struct.bwstring** %4, align 8
  store %struct.key_specs* %1, %struct.key_specs** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.key_specs*, %struct.key_specs** %5, align 8
  %12 = getelementptr inbounds %struct.key_specs, %struct.key_specs* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %18 = call i64 @BWSLEN(%struct.bwstring* %17)
  %19 = add i64 %18, 1
  store i64 %19, i64* %3, align 8
  br label %90

20:                                               ; preds = %2
  %21 = load %struct.key_specs*, %struct.key_specs** %5, align 8
  %22 = getelementptr inbounds %struct.key_specs, %struct.key_specs* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %20
  %26 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %27, 1
  %29 = call i64 @skip_fields_to_start(%struct.bwstring* %26, i64 %28, i32* %9)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sort_opts_vals, i32 0, i32 1), align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sort_opts_vals, i32 0, i32 0), align 8
  %37 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %38 = load i64, i64* %7, align 8
  %39 = sub i64 %38, 1
  %40 = call i64 @BWS_GET(%struct.bwstring* %37, i64 %39)
  %41 = icmp eq i64 %36, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, -1
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %42, %35, %32, %25
  br label %50

46:                                               ; preds = %20
  %47 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i64 @skip_fields_to_start(%struct.bwstring* %47, i64 %48, i32* %9)
  store i64 %49, i64* %7, align 8
  br label %50

50:                                               ; preds = %46, %45
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %57 = call i64 @BWSLEN(%struct.bwstring* %56)
  %58 = icmp uge i64 %55, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %54, %51
  %60 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %61 = call i64 @BWSLEN(%struct.bwstring* %60)
  %62 = add i64 %61, 1
  store i64 %62, i64* %3, align 8
  br label %90

63:                                               ; preds = %54
  %64 = load %struct.key_specs*, %struct.key_specs** %5, align 8
  %65 = getelementptr inbounds %struct.key_specs, %struct.key_specs* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %63
  %69 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %70 = load %struct.key_specs*, %struct.key_specs** %5, align 8
  %71 = getelementptr inbounds %struct.key_specs, %struct.key_specs* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.key_specs*, %struct.key_specs** %5, align 8
  %75 = getelementptr inbounds %struct.key_specs, %struct.key_specs* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @skip_cols_to_start(%struct.bwstring* %69, i64 %72, i64 %73, i32 %76, i32* %10)
  store i64 %77, i64* %8, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %80 = call i64 @BWSLEN(%struct.bwstring* %79)
  %81 = icmp ult i64 %78, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %68
  %83 = load i64, i64* %8, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %8, align 8
  br label %85

85:                                               ; preds = %82, %68
  br label %88

86:                                               ; preds = %63
  %87 = load i64, i64* %7, align 8
  store i64 %87, i64* %8, align 8
  br label %88

88:                                               ; preds = %86, %85
  %89 = load i64, i64* %8, align 8
  store i64 %89, i64* %3, align 8
  br label %90

90:                                               ; preds = %88, %59, %16
  %91 = load i64, i64* %3, align 8
  ret i64 %91
}

declare dso_local i64 @BWSLEN(%struct.bwstring*) #1

declare dso_local i64 @skip_fields_to_start(%struct.bwstring*, i64, i32*) #1

declare dso_local i64 @BWS_GET(%struct.bwstring*, i64) #1

declare dso_local i64 @skip_cols_to_start(%struct.bwstring*, i64, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
