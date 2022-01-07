; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/console/extr_xen_console.c_xencons_tx_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/console/extr_xen_console.c_xencons_tx_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xencons_priv = type { i64, i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.xencons_priv*, i32*, i32)* }

@WBUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xencons_priv*, i32)* @xencons_tx_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xencons_tx_flush(%struct.xencons_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.xencons_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xencons_priv* %0, %struct.xencons_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.xencons_priv*, %struct.xencons_priv** %3, align 8
  %8 = call i32 @xencons_lock(%struct.xencons_priv* %7)
  br label %9

9:                                                ; preds = %82, %2
  %10 = load %struct.xencons_priv*, %struct.xencons_priv** %3, align 8
  %11 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.xencons_priv*, %struct.xencons_priv** %3, align 8
  %14 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %89

17:                                               ; preds = %9
  %18 = load %struct.xencons_priv*, %struct.xencons_priv** %3, align 8
  %19 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.xencons_priv*, %struct.xencons_priv** %3, align 8
  %22 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = load i32, i32* @WBUF_SIZE, align 4
  %29 = sext i32 %28 to i64
  %30 = load %struct.xencons_priv*, %struct.xencons_priv** %3, align 8
  %31 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i64 @WBUF_MASK(i32 %33)
  %35 = sub i64 %29, %34
  %36 = icmp ugt i64 %27, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %17
  %38 = load i32, i32* @WBUF_SIZE, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct.xencons_priv*, %struct.xencons_priv** %3, align 8
  %41 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i64 @WBUF_MASK(i32 %43)
  %45 = sub i64 %39, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %37, %17
  %48 = load %struct.xencons_priv*, %struct.xencons_priv** %3, align 8
  %49 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (%struct.xencons_priv*, i32*, i32)*, i32 (%struct.xencons_priv*, i32*, i32)** %51, align 8
  %53 = load %struct.xencons_priv*, %struct.xencons_priv** %3, align 8
  %54 = load %struct.xencons_priv*, %struct.xencons_priv** %3, align 8
  %55 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.xencons_priv*, %struct.xencons_priv** %3, align 8
  %58 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i64 @WBUF_MASK(i32 %60)
  %62 = getelementptr inbounds i32, i32* %56, i64 %61
  %63 = load i32, i32* %5, align 4
  %64 = call i32 %52(%struct.xencons_priv* %53, i32* %62, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i64 @__predict_false(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %47
  br label %89

71:                                               ; preds = %47
  %72 = load i32, i32* %6, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i64 @__predict_true(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %89

82:                                               ; preds = %74, %71
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = load %struct.xencons_priv*, %struct.xencons_priv** %3, align 8
  %86 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, %84
  store i64 %88, i64* %86, align 8
  br label %9

89:                                               ; preds = %81, %70, %9
  %90 = load %struct.xencons_priv*, %struct.xencons_priv** %3, align 8
  %91 = call i32 @xencons_unlock(%struct.xencons_priv* %90)
  ret void
}

declare dso_local i32 @xencons_lock(%struct.xencons_priv*) #1

declare dso_local i64 @WBUF_MASK(i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @xencons_unlock(%struct.xencons_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
