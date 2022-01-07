; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_wrap_size_limit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_wrap_size_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.krb5_context = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.krb5_encryption_class* }
%struct.krb5_encryption_class = type { i32, i32, i32, i32 }

@GSS_C_QOP_DEFAULT = common dso_local global i64 0, align 8
@GSS_S_BAD_QOP = common dso_local global i64 0, align 8
@krb5_mech_oid = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*, i32, i64, i64, i64*)* @krb5_wrap_size_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @krb5_wrap_size_limit(i64 %0, i64* %1, i32 %2, i64 %3, i64 %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.krb5_context*, align 8
  %15 = alloca %struct.krb5_encryption_class*, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i64* %1, i64** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  %17 = load i64, i64* %8, align 8
  %18 = inttoptr i64 %17 to %struct.krb5_context*
  store %struct.krb5_context* %18, %struct.krb5_context** %14, align 8
  %19 = load i64*, i64** %9, align 8
  store i64 0, i64* %19, align 8
  %20 = load i64*, i64** %13, align 8
  store i64 0, i64* %20, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* @GSS_C_QOP_DEFAULT, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i64, i64* @GSS_S_BAD_QOP, align 8
  store i64 %25, i64* %7, align 8
  br label %89

26:                                               ; preds = %6
  %27 = load %struct.krb5_context*, %struct.krb5_context** %14, align 8
  %28 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %30, align 8
  store %struct.krb5_encryption_class* %31, %struct.krb5_encryption_class** %15, align 8
  %32 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %15, align 8
  %33 = getelementptr inbounds %struct.krb5_encryption_class, %struct.krb5_encryption_class* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %52 [
    i32 128, label %35
    i32 129, label %35
    i32 131, label %35
    i32 130, label %35
  ]

35:                                               ; preds = %26, %26, %26, %26
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @krb5_mech_oid, i32 0, i32 0), align 4
  %37 = add nsw i32 7, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %16, align 8
  %39 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %15, align 8
  %40 = getelementptr inbounds %struct.krb5_encryption_class, %struct.krb5_encryption_class* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 16, %41
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %16, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %16, align 8
  %46 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %15, align 8
  %47 = getelementptr inbounds %struct.krb5_encryption_class, %struct.krb5_encryption_class* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %16, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %16, align 8
  br label %83

52:                                               ; preds = %26
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %52
  %56 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %15, align 8
  %57 = getelementptr inbounds %struct.krb5_encryption_class, %struct.krb5_encryption_class* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 16, %58
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %16, align 8
  %61 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %15, align 8
  %62 = getelementptr inbounds %struct.krb5_encryption_class, %struct.krb5_encryption_class* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %16, align 8
  %67 = add nsw i64 %66, %65
  store i64 %67, i64* %16, align 8
  %68 = load i64, i64* %16, align 8
  %69 = add nsw i64 %68, 16
  store i64 %69, i64* %16, align 8
  %70 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %15, align 8
  %71 = getelementptr inbounds %struct.krb5_encryption_class, %struct.krb5_encryption_class* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %16, align 8
  %75 = add nsw i64 %74, %73
  store i64 %75, i64* %16, align 8
  br label %82

76:                                               ; preds = %52
  %77 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %15, align 8
  %78 = getelementptr inbounds %struct.krb5_encryption_class, %struct.krb5_encryption_class* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 16, %79
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %16, align 8
  br label %82

82:                                               ; preds = %76, %55
  br label %83

83:                                               ; preds = %82, %35
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* %16, align 8
  %86 = sub nsw i64 %84, %85
  %87 = load i64*, i64** %13, align 8
  store i64 %86, i64* %87, align 8
  %88 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %88, i64* %7, align 8
  br label %89

89:                                               ; preds = %83, %24
  %90 = load i64, i64* %7, align 8
  ret i64 %90
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
