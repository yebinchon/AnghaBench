; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_nbt.c_AliasHandleName.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_nbt.c_AliasHandleName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*)* @AliasHandleName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @AliasHandleName(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = load i8*, i8** %5, align 8
  %15 = icmp uge i8* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %2
  store i32* null, i32** %3, align 8
  br label %99

17:                                               ; preds = %11
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 192
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  store i32* %24, i32** %4, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = bitcast i32* %25 to i8*
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ugt i8* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32* null, i32** %3, align 8
  br label %99

30:                                               ; preds = %22
  %31 = load i32*, i32** %4, align 8
  store i32* %31, i32** %3, align 8
  br label %99

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %84, %32
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 63
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %85

38:                                               ; preds = %33
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32* %40, i32** %6, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 32
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 1, i32* %8, align 4
  br label %46

45:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %45, %44
  %47 = load i32*, i32** %4, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 63
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32* %53, i32** %4, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = bitcast i32* %54 to i8*
  %56 = load i8*, i8** %5, align 8
  %57 = icmp ugt i8* %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  store i32* null, i32** %4, align 8
  br label %85

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %83, %59
  %61 = load i32*, i32** %6, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = icmp ult i32* %61, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %60
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 15
  %71 = shl i32 %70, 4
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 15
  %76 = or i32 %71, %75
  %77 = sub nsw i32 %76, 17
  store i32 %77, i32* %7, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  store i32* %79, i32** %6, align 8
  br label %83

80:                                               ; preds = %64
  %81 = load i32*, i32** %6, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %6, align 8
  br label %83

83:                                               ; preds = %80, %67
  br label %60

84:                                               ; preds = %60
  br label %33

85:                                               ; preds = %58, %33
  %86 = load i32*, i32** %4, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = load i32*, i32** %4, align 8
  %90 = bitcast i32* %89 to i8*
  %91 = load i8*, i8** %5, align 8
  %92 = icmp uge i8* %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %88, %85
  store i32* null, i32** %4, align 8
  br label %97

94:                                               ; preds = %88
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %4, align 8
  br label %97

97:                                               ; preds = %94, %93
  %98 = load i32*, i32** %4, align 8
  store i32* %98, i32** %3, align 8
  br label %99

99:                                               ; preds = %97, %30, %29, %16
  %100 = load i32*, i32** %3, align 8
  ret i32* %100
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
