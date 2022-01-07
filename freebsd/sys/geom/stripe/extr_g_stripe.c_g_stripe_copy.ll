; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/stripe/extr_g_stripe.c_g_stripe_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/stripe/extr_g_stripe.c_g_stripe_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_stripe_softc = type { i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"Length < 0 (stripesize=%ju, offset=%ju, length=%jd).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_stripe_softc*, i8*, i8*, i32, i32, i32)* @g_stripe_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_stripe_copy(%struct.g_stripe_softc* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.g_stripe_softc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.g_stripe_softc* %0, %struct.g_stripe_softc** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %7, align 8
  %16 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %13, align 4
  %21 = sub nsw i32 %20, 1
  %22 = and i32 %19, %21
  %23 = sub nsw i32 %18, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %14, align 8
  br label %25

25:                                               ; preds = %87, %6
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i64, i64* %14, align 8
  %29 = call i32 @bcopy(i8* %26, i8* %27, i64 %28)
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %25
  %33 = load i64, i64* %14, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %7, align 8
  %36 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  %39 = mul nsw i32 %34, %38
  %40 = sext i32 %39 to i64
  %41 = add i64 %33, %40
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 %41
  store i8* %43, i8** %9, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 %44
  store i8* %46, i8** %8, align 8
  br label %62

47:                                               ; preds = %25
  %48 = load i64, i64* %14, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 %48
  store i8* %50, i8** %9, align 8
  %51 = load i64, i64* %14, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %7, align 8
  %54 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 1
  %57 = mul nsw i32 %52, %56
  %58 = sext i32 %57 to i64
  %59 = add i64 %51, %58
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 %59
  store i8* %61, i8** %8, align 8
  br label %62

62:                                               ; preds = %47, %32
  %63 = load i64, i64* %14, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = sub i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp sge i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i8*
  %76 = call i32 @KASSERT(i32 %70, i8* %75)
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %62
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %14, align 8
  br label %86

83:                                               ; preds = %62
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %14, align 8
  br label %86

86:                                               ; preds = %83, %80
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %11, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %25, label %90

90:                                               ; preds = %87
  ret void
}

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
