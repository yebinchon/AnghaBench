; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_cis.c_decode_tuple.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_cis.c_decode_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuple_callbacks = type { i32, {}* }

@CISTPL_GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32*, i32, i32*, %struct.tuple_callbacks*, i8*)* @decode_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_tuple(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32* %6, %struct.tuple_callbacks* %7, i8* %8) #0 {
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
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %61, %9
  %22 = load %struct.tuple_callbacks*, %struct.tuple_callbacks** %18, align 8
  %23 = load i32, i32* %20, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %22, i64 %24
  %26 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CISTPL_GENERIC, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %21
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.tuple_callbacks*, %struct.tuple_callbacks** %18, align 8
  %33 = load i32, i32* %20, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %32, i64 %34
  %36 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %31, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %30
  %40 = load %struct.tuple_callbacks*, %struct.tuple_callbacks** %18, align 8
  %41 = load i32, i32* %20, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %40, i64 %42
  %44 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %43, i32 0, i32 1
  %45 = bitcast {}** %44 to i32 (i32, i32, i32, i32, i32*, i32, i32*, %struct.tuple_callbacks*, i8*)**
  %46 = load i32 (i32, i32, i32, i32, i32*, i32, i32*, %struct.tuple_callbacks*, i8*)*, i32 (i32, i32, i32, i32, i32*, i32, i32*, %struct.tuple_callbacks*, i8*)** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32*, i32** %15, align 8
  %52 = load i32, i32* %16, align 4
  %53 = load i32*, i32** %17, align 8
  %54 = load %struct.tuple_callbacks*, %struct.tuple_callbacks** %18, align 8
  %55 = load i32, i32* %20, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %54, i64 %56
  %58 = load i8*, i8** %19, align 8
  %59 = call i32 %46(i32 %47, i32 %48, i32 %49, i32 %50, i32* %51, i32 %52, i32* %53, %struct.tuple_callbacks* %57, i8* %58)
  store i32 %59, i32* %10, align 4
  br label %81

60:                                               ; preds = %30
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %20, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %20, align 4
  br label %21

64:                                               ; preds = %21
  %65 = load %struct.tuple_callbacks*, %struct.tuple_callbacks** %18, align 8
  %66 = load i32, i32* %20, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %65, i64 %67
  %69 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %68, i32 0, i32 1
  %70 = bitcast {}** %69 to i32 (i32, i32, i32, i32, i32*, i32, i32*, %struct.tuple_callbacks*, i8*)**
  %71 = load i32 (i32, i32, i32, i32, i32*, i32, i32*, %struct.tuple_callbacks*, i8*)*, i32 (i32, i32, i32, i32, i32*, i32, i32*, %struct.tuple_callbacks*, i8*)** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load i32*, i32** %15, align 8
  %77 = load i32, i32* %16, align 4
  %78 = load i32*, i32** %17, align 8
  %79 = load i8*, i8** %19, align 8
  %80 = call i32 %71(i32 %72, i32 %73, i32 %74, i32 %75, i32* %76, i32 %77, i32* %78, %struct.tuple_callbacks* null, i8* %79)
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %64, %39
  %82 = load i32, i32* %10, align 4
  ret i32 %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
