; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_eval.c_handledash.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_eval.c_handledash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*)* @handledash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @handledash(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %8, align 8
  br label %11

11:                                               ; preds = %105, %3
  %12 = load i8*, i8** %7, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %106

15:                                               ; preds = %11
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 45
  br i1 %20, label %21, label %94

21:                                               ; preds = %15
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %94

27:                                               ; preds = %21
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp sle i32 %31, %35
  br i1 %36, label %37, label %64

37:                                               ; preds = %27
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %9, align 1
  br label %41

41:                                               ; preds = %60, %37
  %42 = load i8, i8* %9, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp sle i32 %43, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %41
  %50 = load i8, i8* %9, align 1
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %8, align 8
  store i8 %50, i8* %51, align 1
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = icmp eq i8* %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i8*, i8** %8, align 8
  store i8 0, i8* %57, align 1
  %58 = load i8*, i8** %5, align 8
  store i8* %58, i8** %4, align 8
  br label %109

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59
  %61 = load i8, i8* %9, align 1
  %62 = add i8 %61, 1
  store i8 %62, i8* %9, align 1
  br label %41

63:                                               ; preds = %41
  br label %91

64:                                               ; preds = %27
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  store i8 %67, i8* %9, align 1
  br label %68

68:                                               ; preds = %87, %64
  %69 = load i8, i8* %9, align 1
  %70 = zext i8 %69 to i32
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 2
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp sge i32 %70, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %68
  %77 = load i8, i8* %9, align 1
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %8, align 8
  store i8 %77, i8* %78, align 1
  %80 = load i8*, i8** %8, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = icmp eq i8* %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i8*, i8** %8, align 8
  store i8 0, i8* %84, align 1
  %85 = load i8*, i8** %5, align 8
  store i8* %85, i8** %4, align 8
  br label %109

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86
  %88 = load i8, i8* %9, align 1
  %89 = add i8 %88, -1
  store i8 %89, i8* %9, align 1
  br label %68

90:                                               ; preds = %68
  br label %91

91:                                               ; preds = %90, %63
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 3
  store i8* %93, i8** %7, align 8
  br label %100

94:                                               ; preds = %21, %15
  %95 = load i8*, i8** %7, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %7, align 8
  %97 = load i8, i8* %95, align 1
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %8, align 8
  store i8 %97, i8* %98, align 1
  br label %100

100:                                              ; preds = %94, %91
  %101 = load i8*, i8** %8, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = icmp eq i8* %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %106

105:                                              ; preds = %100
  br label %11

106:                                              ; preds = %104, %11
  %107 = load i8*, i8** %8, align 8
  store i8 0, i8* %107, align 1
  %108 = load i8*, i8** %5, align 8
  store i8* %108, i8** %4, align 8
  br label %109

109:                                              ; preds = %106, %83, %56
  %110 = load i8*, i8** %4, align 8
  ret i8* %110
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
