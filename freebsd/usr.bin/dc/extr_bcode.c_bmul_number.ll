; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_bmul_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_bmul_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.number = type { i64, i32 }

@bmachine = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bmul_number(%struct.number* %0, %struct.number* %1, %struct.number* %2, i64 %3) #0 {
  %5 = alloca %struct.number*, align 8
  %6 = alloca %struct.number*, align 8
  %7 = alloca %struct.number*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.number* %0, %struct.number** %5, align 8
  store %struct.number* %1, %struct.number** %6, align 8
  store %struct.number* %2, %struct.number** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.number*, %struct.number** %6, align 8
  %14 = getelementptr inbounds %struct.number, %struct.number* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %10, align 8
  %16 = load %struct.number*, %struct.number** %7, align 8
  %17 = getelementptr inbounds %struct.number, %struct.number* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %11, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %11, align 8
  %21 = add nsw i64 %19, %20
  store i64 %21, i64* %12, align 8
  %22 = call i32* (...) @BN_CTX_new()
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @bn_checkp(i32* %23)
  %25 = load %struct.number*, %struct.number** %5, align 8
  %26 = getelementptr inbounds %struct.number, %struct.number* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.number*, %struct.number** %6, align 8
  %29 = getelementptr inbounds %struct.number, %struct.number* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.number*, %struct.number** %7, align 8
  %32 = getelementptr inbounds %struct.number, %struct.number* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @BN_mul(i32 %27, i32 %30, i32 %33, i32* %34)
  %36 = call i32 @bn_check(i32 %35)
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @BN_CTX_free(i32* %37)
  %39 = load i64, i64* %12, align 8
  %40 = load %struct.number*, %struct.number** %5, align 8
  %41 = getelementptr inbounds %struct.number, %struct.number* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 0), align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %4
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load %struct.number*, %struct.number** %5, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = call i64 @max(i64 %56, i64 %57)
  %59 = call i64 @max(i64 %55, i64 %58)
  %60 = call i32 @normalize(%struct.number* %54, i64 %59)
  br label %61

61:                                               ; preds = %53, %49, %45, %4
  ret void
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @bn_checkp(i32*) #1

declare dso_local i32 @bn_check(i32) #1

declare dso_local i32 @BN_mul(i32, i32, i32, i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @normalize(%struct.number*, i64) #1

declare dso_local i64 @max(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
