; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/lex/extr_initparse.c_yygrowstack.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/lex/extr_initparse.c_yygrowstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i16*, i16*, i16*, i16*, i16* }

@YYINITSTACKSIZE = common dso_local global i32 0, align 4
@YYMAXDEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @yygrowstack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yygrowstack(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  %7 = alloca i16*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @YYINITSTACKSIZE, align 4
  store i32 %13, i32* %5, align 4
  br label %28

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @YYMAXDEPTH, align 4
  %17 = icmp uge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 -1, i32* %2, align 4
  br label %96

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = mul i32 %20, 2
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @YYMAXDEPTH, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @YYMAXDEPTH, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %19
  br label %27

27:                                               ; preds = %26
  br label %28

28:                                               ; preds = %27, %12
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i16*, i16** %30, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i16*, i16** %33, align 8
  %35 = ptrtoint i16* %31 to i64
  %36 = ptrtoint i16* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 2
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %4, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i16*, i16** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = mul i64 %44, 2
  %46 = trunc i64 %45 to i32
  %47 = call i64 @realloc(i16* %42, i32 %46)
  %48 = inttoptr i64 %47 to i16*
  store i16* %48, i16** %6, align 8
  %49 = load i16*, i16** %6, align 8
  %50 = icmp eq i16* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %28
  store i32 -1, i32* %2, align 4
  br label %96

52:                                               ; preds = %28
  %53 = load i16*, i16** %6, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  store i16* %53, i16** %55, align 8
  %56 = load i16*, i16** %6, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i16, i16* %56, i64 %58
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i16* %59, i16** %61, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = load i16*, i16** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = zext i32 %65 to i64
  %67 = mul i64 %66, 2
  %68 = trunc i64 %67 to i32
  %69 = call i64 @realloc(i16* %64, i32 %68)
  %70 = inttoptr i64 %69 to i16*
  store i16* %70, i16** %7, align 8
  %71 = load i16*, i16** %7, align 8
  %72 = icmp eq i16* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %52
  store i32 -1, i32* %2, align 4
  br label %96

74:                                               ; preds = %52
  %75 = load i16*, i16** %7, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  store i16* %75, i16** %77, align 8
  %78 = load i16*, i16** %7, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i16, i16* %78, i64 %80
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 4
  store i16* %81, i16** %83, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i16*, i16** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i16, i16* %89, i64 %91
  %93 = getelementptr inbounds i16, i16* %92, i64 -1
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 5
  store i16* %93, i16** %95, align 8
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %74, %73, %51, %18
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i64 @realloc(i16*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
