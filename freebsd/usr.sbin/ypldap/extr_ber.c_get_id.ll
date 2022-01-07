; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_get_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ber = type { i32 }

@BER_CLASS_SHIFT = common dso_local global i32 0, align 4
@BER_CLASS_MASK = common dso_local global i32 0, align 4
@BER_TYPE_CONSTRUCTED = common dso_local global i32 0, align 4
@BER_TAG_MASK = common dso_local global i32 0, align 4
@BER_TAG_MORE = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ber*, i64*, i32*, i32*)* @get_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_id(%struct.ber* %0, i64* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ber*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ber* %0, %struct.ber** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.ber*, %struct.ber** %6, align 8
  %14 = call i32 @ber_getc(%struct.ber* %13, i32* %10)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %75

17:                                               ; preds = %4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @BER_CLASS_SHIFT, align 4
  %20 = ashr i32 %18, %19
  %21 = load i32, i32* @BER_CLASS_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32*, i32** %8, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @BER_TYPE_CONSTRUCTED, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @BER_TYPE_CONSTRUCTED, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32*, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @BER_TAG_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @BER_TAG_MASK, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %17
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @BER_TAG_MASK, align 4
  %39 = and i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = load i64*, i64** %7, align 8
  store i64 %40, i64* %41, align 8
  store i32 1, i32* %5, align 4
  br label %75

42:                                               ; preds = %17
  br label %43

43:                                               ; preds = %59, %42
  %44 = load %struct.ber*, %struct.ber** %6, align 8
  %45 = call i32 @ber_getc(%struct.ber* %44, i32* %10)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 -1, i32* %5, align 4
  br label %75

48:                                               ; preds = %43
  %49 = load i64, i64* %12, align 8
  %50 = shl i64 %49, 7
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @BER_TAG_MORE, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = sext i32 %54 to i64
  %56 = or i64 %50, %55
  store i64 %56, i64* %12, align 8
  %57 = load i64, i64* %11, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %11, align 8
  br label %59

59:                                               ; preds = %48
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @BER_TAG_MORE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %43, label %64

64:                                               ; preds = %59
  %65 = load i64, i64* %11, align 8
  %66 = icmp ugt i64 %65, 8
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @ERANGE, align 4
  store i32 %68, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %75

69:                                               ; preds = %64
  %70 = load i64, i64* %12, align 8
  %71 = load i64*, i64** %7, align 8
  store i64 %70, i64* %71, align 8
  %72 = load i64, i64* %11, align 8
  %73 = add i64 %72, 1
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %69, %67, %47, %36, %16
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @ber_getc(%struct.ber*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
