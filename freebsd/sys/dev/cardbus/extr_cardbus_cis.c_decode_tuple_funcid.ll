; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_cis.c_decode_tuple_funcid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_cis.c_decode_tuple_funcid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuple_callbacks = type { i32 }
%struct.cardbus_devinfo = type { i32 }

@funcnames = common dso_local global i8** null, align 8
@cardbus_cis_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"Functions: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Unknown(%d)\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32*, i32, i32*, %struct.tuple_callbacks*, i8*)* @decode_tuple_funcid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_tuple_funcid(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32* %6, %struct.tuple_callbacks* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.tuple_callbacks*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.cardbus_devinfo*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store %struct.tuple_callbacks* %7, %struct.tuple_callbacks** %17, align 8
  store i8* %8, i8** %18, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call %struct.cardbus_devinfo* @device_get_ivars(i32 %22)
  store %struct.cardbus_devinfo* %23, %struct.cardbus_devinfo** %19, align 8
  %24 = load i8**, i8*** @funcnames, align 8
  %25 = call i32 @nitems(i8** %24)
  store i32 %25, i32* %20, align 4
  %26 = load i64, i64* @cardbus_cis_debug, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %73

28:                                               ; preds = %9
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %21, align 4
  br label %30

30:                                               ; preds = %68, %28
  %31 = load i32, i32* %21, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %71

34:                                               ; preds = %30
  %35 = load i32*, i32** %14, align 8
  %36 = load i32, i32* %21, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %20, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %34
  %43 = load i8**, i8*** @funcnames, align 8
  %44 = load i32*, i32** %14, align 8
  %45 = load i32, i32* %21, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %43, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  br label %60

53:                                               ; preds = %34
  %54 = load i32*, i32** %14, align 8
  %55 = load i32, i32* %21, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %53, %42
  %61 = load i32, i32* %21, align 4
  %62 = load i32, i32* %13, align 4
  %63 = sub nsw i32 %62, 1
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %60
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %21, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %21, align 4
  br label %30

71:                                               ; preds = %30
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %9
  %74 = load i32, i32* %13, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load i32*, i32** %14, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %19, align 8
  %81 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %76, %73
  ret i32 0
}

declare dso_local %struct.cardbus_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @nitems(i8**) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
