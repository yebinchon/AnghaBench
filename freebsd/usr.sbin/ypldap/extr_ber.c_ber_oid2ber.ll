; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_oid2ber.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_oid2ber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ber_oid = type { i64, i32* }

@BER_MIN_OID_LEN = common dso_local global i64 0, align 8
@BER_MAX_OID_LEN = common dso_local global i64 0, align 8
@BER_TAG_MORE = common dso_local global i64 0, align 8
@BER_TAG_TYPE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ber_oid2ber(%struct.ber_oid* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ber_oid*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ber_oid* %0, %struct.ber_oid** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %10, align 8
  %12 = load %struct.ber_oid*, %struct.ber_oid** %5, align 8
  %13 = getelementptr inbounds %struct.ber_oid, %struct.ber_oid* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BER_MIN_OID_LEN, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %37, label %17

17:                                               ; preds = %3
  %18 = load %struct.ber_oid*, %struct.ber_oid** %5, align 8
  %19 = getelementptr inbounds %struct.ber_oid, %struct.ber_oid* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BER_MAX_OID_LEN, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %37, label %23

23:                                               ; preds = %17
  %24 = load %struct.ber_oid*, %struct.ber_oid** %5, align 8
  %25 = getelementptr inbounds %struct.ber_oid, %struct.ber_oid* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 2
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = load %struct.ber_oid*, %struct.ber_oid** %5, align 8
  %32 = getelementptr inbounds %struct.ber_oid, %struct.ber_oid* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, 40
  br i1 %36, label %37, label %38

37:                                               ; preds = %30, %23, %17, %3
  store i64 0, i64* %4, align 8
  br label %113

38:                                               ; preds = %30
  %39 = load %struct.ber_oid*, %struct.ber_oid** %5, align 8
  %40 = getelementptr inbounds %struct.ber_oid, %struct.ber_oid* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 40
  %45 = load %struct.ber_oid*, %struct.ber_oid** %5, align 8
  %46 = getelementptr inbounds %struct.ber_oid, %struct.ber_oid* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %44, %49
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %8, align 8
  store i64 2, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %52

52:                                               ; preds = %101, %38
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.ber_oid*, %struct.ber_oid** %5, align 8
  %55 = getelementptr inbounds %struct.ber_oid, %struct.ber_oid* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ule i64 %53, %56
  br i1 %57, label %58, label %111

58:                                               ; preds = %52
  store i64 28, i64* %11, align 8
  br label %59

59:                                               ; preds = %85, %58
  %60 = load i64, i64* %11, align 8
  %61 = icmp uge i64 %60, 7
  br i1 %61, label %62, label %88

62:                                               ; preds = %59
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %11, align 8
  %65 = trunc i64 %64 to i32
  %66 = shl i32 1, %65
  %67 = sext i32 %66 to i64
  %68 = icmp uge i64 %63, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %62
  %70 = load i64, i64* %7, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %11, align 8
  %75 = lshr i64 %73, %74
  %76 = load i64, i64* @BER_TAG_MORE, align 8
  %77 = or i64 %75, %76
  %78 = load i64*, i64** %6, align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  store i64 %77, i64* %80, align 8
  br label %81

81:                                               ; preds = %72, %69
  %82 = load i64, i64* %10, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %10, align 8
  br label %84

84:                                               ; preds = %81, %62
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %11, align 8
  %87 = sub i64 %86, 7
  store i64 %87, i64* %11, align 8
  br label %59

88:                                               ; preds = %59
  %89 = load i64, i64* %7, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* @BER_TAG_TYPE_MASK, align 8
  %94 = and i64 %92, %93
  %95 = load i64*, i64** %6, align 8
  %96 = load i64, i64* %10, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  store i64 %94, i64* %97, align 8
  br label %98

98:                                               ; preds = %91, %88
  %99 = load i64, i64* %10, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %10, align 8
  br label %101

101:                                              ; preds = %98
  %102 = load %struct.ber_oid*, %struct.ber_oid** %5, align 8
  %103 = getelementptr inbounds %struct.ber_oid, %struct.ber_oid* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %8, align 8
  %109 = load i64, i64* %9, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %9, align 8
  br label %52

111:                                              ; preds = %52
  %112 = load i64, i64* %10, align 8
  store i64 %112, i64* %4, align 8
  br label %113

113:                                              ; preds = %111, %37
  %114 = load i64, i64* %4, align 8
  ret i64 %114
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
