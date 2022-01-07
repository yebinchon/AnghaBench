; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_read_rss.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_read_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RSS_TABLE_SIZE = common dso_local global i32 0, align 4
@A_TP_RSS_LKP_TABLE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@A_TP_RSS_MAP_TABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_read_rss(i32* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i8**, i8*** %6, align 8
  %11 = icmp ne i8** %10, null
  br i1 %11, label %12, label %48

12:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %44, %12
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @RSS_TABLE_SIZE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %13
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @A_TP_RSS_LKP_TABLE, align 4
  %20 = load i32, i32* %8, align 4
  %21 = or i32 -65536, %20
  %22 = call i32 @t3_write_reg(i32* %18, i32 %19, i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @A_TP_RSS_LKP_TABLE, align 4
  %25 = call i32 @t3_read_reg(i32* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, -2147483648
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %17
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %81

32:                                               ; preds = %17
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = load i8**, i8*** %6, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i32 1
  store i8** %37, i8*** %6, align 8
  store i8* %35, i8** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = ashr i32 %38, 8
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = load i8**, i8*** %6, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i32 1
  store i8** %43, i8*** %6, align 8
  store i8* %41, i8** %42, align 8
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %13

47:                                               ; preds = %13
  br label %48

48:                                               ; preds = %47, %3
  %49 = load i64*, i64** %7, align 8
  %50 = icmp ne i64* %49, null
  br i1 %50, label %51, label %80

51:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %76, %51
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @RSS_TABLE_SIZE, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %52
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* @A_TP_RSS_MAP_TABLE, align 4
  %59 = load i32, i32* %8, align 4
  %60 = or i32 -65536, %59
  %61 = call i32 @t3_write_reg(i32* %57, i32 %58, i32 %60)
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* @A_TP_RSS_MAP_TABLE, align 4
  %64 = call i32 @t3_read_reg(i32* %62, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %65, -2147483648
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %56
  %69 = load i32, i32* @EAGAIN, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %81

71:                                               ; preds = %56
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64*, i64** %7, align 8
  %75 = getelementptr inbounds i64, i64* %74, i32 1
  store i64* %75, i64** %7, align 8
  store i64 %73, i64* %74, align 8
  br label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %52

79:                                               ; preds = %52
  br label %80

80:                                               ; preds = %79, %48
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %68, %29
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @t3_write_reg(i32*, i32, i32) #1

declare dso_local i32 @t3_read_reg(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
