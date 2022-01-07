; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto.c_krb5_find_encryption_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto.c_krb5_find_encryption_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_encryption_class = type { i32 }

@krb5_encryption_classes = common dso_local global %struct.krb5_encryption_class** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.krb5_encryption_class* @krb5_find_encryption_class(i32 %0) #0 {
  %2 = alloca %struct.krb5_encryption_class*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %29, %1
  %6 = load %struct.krb5_encryption_class**, %struct.krb5_encryption_class*** @krb5_encryption_classes, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %6, i64 %8
  %10 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %9, align 8
  %11 = icmp ne %struct.krb5_encryption_class* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %5
  %13 = load %struct.krb5_encryption_class**, %struct.krb5_encryption_class*** @krb5_encryption_classes, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %13, i64 %15
  %17 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %16, align 8
  %18 = getelementptr inbounds %struct.krb5_encryption_class, %struct.krb5_encryption_class* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %12
  %23 = load %struct.krb5_encryption_class**, %struct.krb5_encryption_class*** @krb5_encryption_classes, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %23, i64 %25
  %27 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %26, align 8
  store %struct.krb5_encryption_class* %27, %struct.krb5_encryption_class** %2, align 8
  br label %33

28:                                               ; preds = %12
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %5

32:                                               ; preds = %5
  store %struct.krb5_encryption_class* null, %struct.krb5_encryption_class** %2, align 8
  br label %33

33:                                               ; preds = %32, %22
  %34 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %2, align 8
  ret %struct.krb5_encryption_class* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
