; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_get_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_get_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ber_element = type { i64, i32*, i64 }
%struct.ber_oid = type { i32*, i64 }

@BER_TYPE_OBJECT = common dso_local global i64 0, align 8
@BER_MAX_OID_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ber_get_oid(%struct.ber_element* %0, %struct.ber_oid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ber_element*, align 8
  %5 = alloca %struct.ber_oid*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ber_element* %0, %struct.ber_element** %4, align 8
  store %struct.ber_oid* %1, %struct.ber_oid** %5, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %10 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %11 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BER_TYPE_OBJECT, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %101

16:                                               ; preds = %2
  %17 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %18 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %6, align 8
  %20 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %21 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %101

29:                                               ; preds = %16
  %30 = load %struct.ber_oid*, %struct.ber_oid** %5, align 8
  %31 = call i32 @bzero(%struct.ber_oid* %30, i32 16)
  %32 = load i32*, i32** %6, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %35, 40
  %37 = load %struct.ber_oid*, %struct.ber_oid** %5, align 8
  %38 = getelementptr inbounds %struct.ber_oid, %struct.ber_oid* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %9, align 8
  %42 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32 %36, i32* %42, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i64, i64* %8, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %8, align 8
  %46 = getelementptr inbounds i32, i32* %43, i64 %44
  %47 = load i32, i32* %46, align 4
  %48 = srem i32 %47, 40
  %49 = load %struct.ber_oid*, %struct.ber_oid** %5, align 8
  %50 = getelementptr inbounds %struct.ber_oid, %struct.ber_oid* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %9, align 8
  %54 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32 %48, i32* %54, align 4
  br label %55

55:                                               ; preds = %94, %29
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @BER_MAX_OID_LEN, align 8
  %62 = icmp ult i64 %60, %61
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi i1 [ false, %55 ], [ %62, %59 ]
  br i1 %64, label %65, label %97

65:                                               ; preds = %63
  %66 = load %struct.ber_oid*, %struct.ber_oid** %5, align 8
  %67 = getelementptr inbounds %struct.ber_oid, %struct.ber_oid* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 7
  %73 = load i32*, i32** %6, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, -129
  %78 = add nsw i32 %72, %77
  %79 = load %struct.ber_oid*, %struct.ber_oid** %5, align 8
  %80 = getelementptr inbounds %struct.ber_oid, %struct.ber_oid* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32 %78, i32* %83, align 4
  %84 = load i32*, i32** %6, align 8
  %85 = load i64, i64* %8, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 128
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %65
  br label %94

91:                                               ; preds = %65
  %92 = load i64, i64* %9, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %9, align 8
  br label %94

94:                                               ; preds = %91, %90
  %95 = load i64, i64* %8, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %8, align 8
  br label %55

97:                                               ; preds = %63
  %98 = load i64, i64* %9, align 8
  %99 = load %struct.ber_oid*, %struct.ber_oid** %5, align 8
  %100 = getelementptr inbounds %struct.ber_oid, %struct.ber_oid* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %97, %28, %15
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @bzero(%struct.ber_oid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
