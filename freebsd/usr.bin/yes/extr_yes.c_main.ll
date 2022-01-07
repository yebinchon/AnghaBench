; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/yes/extr_yes.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/yes/extr_yes.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.y = private unnamed_addr constant [2 x i8] c"y\0A", align 1
@.str = private unnamed_addr constant [9 x i8] c"capsicum\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [8192 x i8], align 16
  %7 = alloca [2 x i8], align 1
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = bitcast [2 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.main.y, i32 0, i32 0), i64 2, i1 false)
  %14 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8* %14, i8** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 2, i64* %10, align 8
  %15 = call i64 (...) @caph_limit_stdio()
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = call i64 (...) @caph_enter()
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %2
  %21 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i32, i32* %4, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %10, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i64, i64* %10, align 8
  %35 = sub i64 %34, 1
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8 10, i8* %36, align 1
  br label %37

37:                                               ; preds = %25, %22
  %38 = load i64, i64* %10, align 8
  %39 = icmp ule i64 %38, 8192
  br i1 %39, label %40, label %59

40:                                               ; preds = %37
  br label %41

41:                                               ; preds = %46, %40
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = sub i64 8192, %43
  %45 = icmp ult i64 %42, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 0
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8*, i8** %8, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @memcpy(i8* %49, i8* %50, i64 %51)
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %9, align 8
  br label %41

56:                                               ; preds = %41
  %57 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 0
  store i8* %57, i8** %8, align 8
  %58 = load i64, i64* %9, align 8
  store i64 %58, i64* %10, align 8
  br label %59

59:                                               ; preds = %56, %37
  %60 = load i64, i64* %10, align 8
  store i64 %60, i64* %11, align 8
  br label %61

61:                                               ; preds = %78, %59
  %62 = load i32, i32* @STDOUT_FILENO, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %11, align 8
  %66 = sub i64 %64, %65
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  %68 = load i64, i64* %11, align 8
  %69 = call i64 @write(i32 %62, i8* %67, i64 %68)
  store i64 %69, i64* %12, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %61
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* %11, align 8
  %74 = sub i64 %73, %72
  store i64 %74, i64* %11, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i64, i64* %10, align 8
  store i64 %77, i64* %11, align 8
  br label %78

78:                                               ; preds = %76, %71
  br label %61

79:                                               ; preds = %61
  %80 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @caph_limit_stdio(...) #2

declare dso_local i64 @caph_enter(...) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i64 @write(i32, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
