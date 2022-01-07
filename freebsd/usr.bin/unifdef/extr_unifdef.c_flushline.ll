; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/unifdef/extr_unifdef.c_flushline.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/unifdef/extr_unifdef.c_flushline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@symlist = common dso_local global i64 0, align 8
@complement = common dso_local global i32 0, align 4
@tline = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1
@compblank = common dso_local global i64 0, align 8
@blankcount = common dso_local global i32 0, align 4
@blankmax = common dso_local global i32 0, align 4
@delcount = common dso_local global i64 0, align 8
@lnnum = common dso_local global i64 0, align 8
@output = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@lnblank = common dso_local global i64 0, align 8
@newline = common dso_local global i8* null, align 8
@altered = common dso_local global i32 0, align 4
@debugging = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @flushline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flushline(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @symlist, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %85

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @complement, align 4
  %10 = xor i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %61

12:                                               ; preds = %7
  %13 = load i8*, i8** @tline, align 8
  %14 = load i8*, i8** @tline, align 8
  %15 = call i64 @strspn(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %12
  %24 = load i64, i64* @compblank, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i32, i32* @blankcount, align 4
  %28 = load i32, i32* @blankmax, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i64, i64* @delcount, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* @delcount, align 8
  %33 = load i32, i32* @blankcount, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @blankcount, align 4
  br label %60

35:                                               ; preds = %26, %23, %12
  %36 = load i64, i64* @lnnum, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i64, i64* @delcount, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 (...) @hashline()
  br label %43

43:                                               ; preds = %41, %38, %35
  %44 = load i8*, i8** @tline, align 8
  %45 = load i32, i32* @output, align 4
  %46 = call i64 @fputs(i8* %44, i32 %45)
  %47 = load i64, i64* @EOF, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 (...) @closeio()
  br label %51

51:                                               ; preds = %49, %43
  store i64 0, i64* @delcount, align 8
  %52 = load i32, i32* %3, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* @blankcount, align 4
  %56 = add nsw i32 %55, 1
  br label %58

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %54
  %59 = phi i32 [ %56, %54 ], [ 0, %57 ]
  store i32 %59, i32* @blankcount, align 4
  store i32 %59, i32* @blankmax, align 4
  br label %60

60:                                               ; preds = %58, %30
  br label %75

61:                                               ; preds = %7
  %62 = load i64, i64* @lnblank, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i8*, i8** @newline, align 8
  %66 = load i32, i32* @output, align 4
  %67 = call i64 @fputs(i8* %65, i32 %66)
  %68 = load i64, i64* @EOF, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = call i32 (...) @closeio()
  br label %72

72:                                               ; preds = %70, %64, %61
  store i32 1, i32* @altered, align 4
  %73 = load i64, i64* @delcount, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* @delcount, align 8
  store i32 0, i32* @blankcount, align 4
  br label %75

75:                                               ; preds = %72, %60
  %76 = load i64, i64* @debugging, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i32, i32* @output, align 4
  %80 = call i64 @fflush(i32 %79)
  %81 = load i64, i64* @EOF, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = call i32 (...) @closeio()
  br label %85

85:                                               ; preds = %6, %83, %78, %75
  ret void
}

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i32 @hashline(...) #1

declare dso_local i64 @fputs(i8*, i32) #1

declare dso_local i32 @closeio(...) #1

declare dso_local i64 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
