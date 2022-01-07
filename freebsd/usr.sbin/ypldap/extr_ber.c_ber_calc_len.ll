; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_calc_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_calc_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ber_element = type { i64, i64, i64, %struct.ber_element*, %struct.ber_element* }

@BER_TYPE_SEQUENCE = common dso_local global i64 0, align 8
@BER_TYPE_SET = common dso_local global i64 0, align 8
@BER_TYPE_SINGLE_MAX = common dso_local global i64 0, align 8
@BER_TAG_MORE = common dso_local global i64 0, align 8
@BER_TYPE_EOC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ber_calc_len(%struct.ber_element* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ber_element*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ber_element* %0, %struct.ber_element** %3, align 8
  store i64 2, i64* %6, align 8
  %7 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  %8 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %7, i32 0, i32 4
  %9 = load %struct.ber_element*, %struct.ber_element** %8, align 8
  %10 = icmp ne %struct.ber_element* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  %13 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BER_TYPE_SEQUENCE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  %19 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BER_TYPE_SET, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17, %11
  %24 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  %25 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %24, i32 0, i32 4
  %26 = load %struct.ber_element*, %struct.ber_element** %25, align 8
  %27 = call i64 @ber_calc_len(%struct.ber_element* %26)
  %28 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  %29 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %23, %17, %1
  %31 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  %32 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @BER_TYPE_SINGLE_MAX, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %30
  %37 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  %38 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %4, align 8
  br label %40

40:                                               ; preds = %46, %36
  %41 = load i64, i64* %4, align 8
  %42 = icmp ugt i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %6, align 8
  br label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %4, align 8
  %48 = lshr i64 %47, 7
  store i64 %48, i64* %4, align 8
  br label %40

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %30
  %51 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  %52 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @BER_TAG_MORE, align 8
  %55 = icmp uge i64 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  %58 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %66, %56
  %61 = load i64, i64* %5, align 8
  %62 = icmp ugt i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i64, i64* %6, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %6, align 8
  br label %66

66:                                               ; preds = %63
  %67 = load i64, i64* %5, align 8
  %68 = lshr i64 %67, 8
  store i64 %68, i64* %5, align 8
  br label %60

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %50
  %71 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  %72 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %71, i32 0, i32 3
  %73 = load %struct.ber_element*, %struct.ber_element** %72, align 8
  %74 = icmp ne %struct.ber_element* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  %77 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %76, i32 0, i32 3
  %78 = load %struct.ber_element*, %struct.ber_element** %77, align 8
  %79 = call i64 @ber_calc_len(%struct.ber_element* %78)
  %80 = load i64, i64* %6, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %6, align 8
  br label %82

82:                                               ; preds = %75, %70
  %83 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  %84 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @BER_TYPE_EOC, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  %90 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i64 0, i64* %2, align 8
  br label %100

94:                                               ; preds = %88, %82
  %95 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  %96 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %6, align 8
  %99 = add i64 %97, %98
  store i64 %99, i64* %2, align 8
  br label %100

100:                                              ; preds = %94, %93
  %101 = load i64, i64* %2, align 8
  ret i64 %101
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
