; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_cis.c_decode_tuple_funce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_cis.c_decode_tuple_funce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuple_callbacks = type { i32 }
%struct.cardbus_devinfo = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@cardbus_cis_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Function Extension: \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32*, i32, i32*, %struct.tuple_callbacks*, i8*)* @decode_tuple_funce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_tuple_funce(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32* %6, %struct.tuple_callbacks* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.tuple_callbacks*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.cardbus_devinfo*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store %struct.tuple_callbacks* %7, %struct.tuple_callbacks** %18, align 8
  store i8* %8, i8** %19, align 8
  %23 = load i32, i32* %12, align 4
  %24 = call %struct.cardbus_devinfo* @device_get_ivars(i32 %23)
  store %struct.cardbus_devinfo* %24, %struct.cardbus_devinfo** %20, align 8
  %25 = load i64, i64* @cardbus_cis_debug, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %9
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %22, align 4
  br label %29

29:                                               ; preds = %40, %27
  %30 = load i32, i32* %22, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load i32*, i32** %15, align 8
  %35 = load i32, i32* %22, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %22, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %22, align 4
  br label %29

43:                                               ; preds = %29
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %9
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 0, i32* %10, align 4
  br label %85

49:                                               ; preds = %45
  %50 = load i32*, i32** %15, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %21, align 4
  %53 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %20, align 8
  %54 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %84 [
    i32 129, label %56
  ]

56:                                               ; preds = %49
  %57 = load i32, i32* %21, align 4
  switch i32 %57, label %77 [
    i32 128, label %58
  ]

58:                                               ; preds = %56
  %59 = load i32*, i32** %15, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp ugt i64 %62, 4
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 0, i32* %10, align 4
  br label %85

65:                                               ; preds = %58
  %66 = load i32*, i32** %15, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %20, align 8
  %69 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %15, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @bcopy(i32* %67, i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %56, %65
  %78 = load i32, i32* %21, align 4
  %79 = shl i32 1, %78
  %80 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %20, align 8
  %81 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %49, %77
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %84, %64, %48
  %86 = load i32, i32* %10, align 4
  ret i32 %86
}

declare dso_local %struct.cardbus_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @bcopy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
