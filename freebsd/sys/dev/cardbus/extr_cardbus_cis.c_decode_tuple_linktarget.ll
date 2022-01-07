; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_cis.c_decode_tuple_linktarget.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_cis.c_decode_tuple_linktarget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuple_callbacks = type { i8* }

@cardbus_cis_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"TUPLE: %s [%d]:\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\0A       0x%02x:\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Invalid data for CIS Link Target!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32*, i32, i32*, %struct.tuple_callbacks*, i8*)* @decode_tuple_linktarget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_tuple_linktarget(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32* %6, %struct.tuple_callbacks* %7, i8* %8) #0 {
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
  %20 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store %struct.tuple_callbacks* %7, %struct.tuple_callbacks** %18, align 8
  store i8* %8, i8** %19, align 8
  %21 = load i64, i64* @cardbus_cis_debug, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %9
  %24 = load %struct.tuple_callbacks*, %struct.tuple_callbacks** %18, align 8
  %25 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* %14, align 4
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %27)
  store i32 0, i32* %20, align 4
  br label %29

29:                                               ; preds = %50, %23
  %30 = load i32, i32* %20, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %29
  %34 = load i32, i32* %20, align 4
  %35 = srem i32 %34, 16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* %14, align 4
  %39 = icmp sgt i32 %38, 16
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %20, align 4
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %40, %37, %33
  %44 = load i32*, i32** %15, align 8
  %45 = load i32, i32* %20, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %20, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %20, align 4
  br label %29

53:                                               ; preds = %29
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %9
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 3
  br i1 %57, label %73, label %58

58:                                               ; preds = %55
  %59 = load i32*, i32** %15, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 67
  br i1 %62, label %73, label %63

63:                                               ; preds = %58
  %64 = load i32*, i32** %15, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 73
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load i32*, i32** %15, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 83
  br i1 %72, label %73, label %86

73:                                               ; preds = %68, %63, %58, %55
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32*, i32** %15, align 8
  %80 = load i32, i32* %16, align 4
  %81 = load i32*, i32** %17, align 8
  %82 = load %struct.tuple_callbacks*, %struct.tuple_callbacks** %18, align 8
  %83 = load i8*, i8** %19, align 8
  %84 = call i32 @decode_tuple_generic(i32 %75, i32 %76, i32 %77, i32 %78, i32* %79, i32 %80, i32* %81, %struct.tuple_callbacks* %82, i8* %83)
  %85 = load i32, i32* @EINVAL, align 4
  store i32 %85, i32* %10, align 4
  br label %87

86:                                               ; preds = %68
  store i32 0, i32* %10, align 4
  br label %87

87:                                               ; preds = %86, %73
  %88 = load i32, i32* %10, align 4
  ret i32 %88
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @decode_tuple_generic(i32, i32, i32, i32, i32*, i32, i32*, %struct.tuple_callbacks*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
