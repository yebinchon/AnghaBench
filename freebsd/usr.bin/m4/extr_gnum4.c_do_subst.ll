; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_gnum4.c_do_subst.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_gnum4.c_do_subst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32 }

@REG_NOTBOL = common dso_local global i32 0, align 4
@REG_NOMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_11__*, i8*, i8*, %struct.TYPE_10__*)* @do_subst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_subst(i8* %0, %struct.TYPE_11__* %1, i8* %2, i8* %3, %struct.TYPE_10__* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %10, align 8
  store i32 0, i32* %12, align 4
  store i8* null, i8** %13, align 8
  br label %14

14:                                               ; preds = %86, %85, %5
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @regexec(%struct.TYPE_11__* %15, i8* %16, i64 %20, %struct.TYPE_10__* %21, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %112

25:                                               ; preds = %14
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %32, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 10
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  store i32 0, i32* %12, align 4
  br label %46

44:                                               ; preds = %31
  %45 = load i32, i32* @REG_NOTBOL, align 4
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %44, %43
  br label %47

47:                                               ; preds = %46, %25
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %51, %55
  br i1 %56, label %57, label %86

57:                                               ; preds = %47
  %58 = load i8*, i8** %6, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %58, i64 %63
  %65 = load i8*, i8** %13, align 8
  %66 = icmp eq i8* %64, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %57
  %68 = load i8*, i8** %6, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %124

73:                                               ; preds = %67
  %74 = load i8*, i8** %6, align 8
  %75 = load i8, i8* %74, align 1
  %76 = call i32 @addchar(i8 signext %75)
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %6, align 8
  %79 = load i8, i8* %77, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 10
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  store i32 0, i32* %12, align 4
  br label %85

83:                                               ; preds = %73
  %84 = load i32, i32* @REG_NOTBOL, align 4
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %83, %82
  br label %14

86:                                               ; preds = %57, %47
  %87 = load i8*, i8** %6, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %87, i64 %92
  store i8* %93, i8** %13, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @addchars(i8* %94, i32 %98)
  %100 = load i8*, i8** %6, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %104 = call i32 @add_replace(i8* %100, %struct.TYPE_11__* %101, i8* %102, %struct.TYPE_10__* %103)
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i8*, i8** %6, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  store i8* %111, i8** %6, align 8
  br label %14

112:                                              ; preds = %14
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* @REG_NOMATCH, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 @exit_regerror(i32 %117, %struct.TYPE_11__* %118, i8* %119)
  br label %121

121:                                              ; preds = %116, %112
  %122 = load i8*, i8** %6, align 8
  %123 = call i32 @pbstr(i8* %122)
  br label %124

124:                                              ; preds = %121, %72
  ret void
}

declare dso_local i32 @regexec(%struct.TYPE_11__*, i8*, i64, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @addchar(i8 signext) #1

declare dso_local i32 @addchars(i8*, i32) #1

declare dso_local i32 @add_replace(i8*, %struct.TYPE_11__*, i8*, %struct.TYPE_10__*) #1

declare dso_local i32 @exit_regerror(i32, %struct.TYPE_11__*, i8*) #1

declare dso_local i32 @pbstr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
