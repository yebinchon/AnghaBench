; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_inout.c_read_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_inout.c_read_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.source = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.source*)* }

@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @read_string(%struct.source* %0) #0 {
  %2 = alloca %struct.source*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.source* %0, %struct.source** %2, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 15, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = add nsw i32 %10, 1
  %12 = call i8* @bmalloc(i32 %11)
  store i8* %12, i8** %3, align 8
  br label %13

13:                                               ; preds = %71, %1
  %14 = load %struct.source*, %struct.source** %2, align 8
  %15 = getelementptr inbounds %struct.source, %struct.source* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.source*)*, i32 (%struct.source*)** %17, align 8
  %19 = load %struct.source*, %struct.source** %2, align 8
  %20 = call i32 %18(%struct.source* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @EOF, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %72

23:                                               ; preds = %13
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 91
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %39

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 93
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %32
  br label %39

39:                                               ; preds = %38, %29
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %72

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43, %23
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 92
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store i32 1, i32* %9, align 4
  br label %71

51:                                               ; preds = %47, %44
  store i32 0, i32* %9, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load i32, i32* %8, align 4
  %57 = mul nsw i32 %56, 2
  store i32 %57, i32* %7, align 4
  %58 = load i8*, i8** %3, align 8
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  %61 = call i8* @breallocarray(i8* %58, i32 1, i32 %60)
  store i8* %61, i8** %3, align 8
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %55, %51
  %64 = load i32, i32* %5, align 4
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %3, align 8
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  store i8 %65, i8* %70, align 1
  br label %71

71:                                               ; preds = %63, %50
  br label %13

72:                                               ; preds = %42, %13
  %73 = load i8*, i8** %3, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  store i8 0, i8* %76, align 1
  %77 = load i8*, i8** %3, align 8
  ret i8* %77
}

declare dso_local i8* @bmalloc(i32) #1

declare dso_local i8* @breallocarray(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
