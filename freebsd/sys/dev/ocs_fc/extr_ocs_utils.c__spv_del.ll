; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_utils.c__spv_del.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_utils.c__spv_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPV_ROWLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**, i64, i64)* @_spv_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_spv_del(i32 %0, i8** %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i8**, i8*** %6, align 8
  %11 = icmp ne i8** %10, null
  br i1 %11, label %12, label %42

12:                                               ; preds = %4
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %12
  store i64 0, i64* %9, align 8
  br label %16

16:                                               ; preds = %30, %15
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = load i8**, i8*** %6, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds i8*, i8** %22, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = bitcast i8* %25 to i8**
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = sub i64 %28, 1
  call void @_spv_del(i32 %21, i8** %26, i64 %27, i64 %29)
  br label %30

30:                                               ; preds = %20
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %9, align 8
  br label %16

33:                                               ; preds = %16
  %34 = load i32, i32* %5, align 4
  %35 = load i8**, i8*** %6, align 8
  %36 = load i32, i32* @SPV_ROWLEN, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @ocs_free(i32 %34, i8** %35, i32 %39)
  br label %41

41:                                               ; preds = %33, %12
  br label %42

42:                                               ; preds = %41, %4
  ret void
}

declare dso_local i32 @ocs_free(i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
