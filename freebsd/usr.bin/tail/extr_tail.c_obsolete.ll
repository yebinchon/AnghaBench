; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tail/extr_tail.c_obsolete.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tail/extr_tail.c_obsolete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"illegal option -- %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @obsolete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obsolete(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  br label %8

8:                                                ; preds = %121, %100, %1
  %9 = load i8**, i8*** %2, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i32 1
  store i8** %10, i8*** %2, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %123

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 45
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 43
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %123

26:                                               ; preds = %19
  br label %35

27:                                               ; preds = %13
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 45
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %123

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %26
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %3, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  switch i32 %39, label %122 [
    i32 48, label %40
    i32 49, label %40
    i32 50, label %40
    i32 51, label %40
    i32 52, label %40
    i32 53, label %40
    i32 54, label %40
    i32 55, label %40
    i32 56, label %40
    i32 57, label %40
    i32 98, label %112
    i32 99, label %112
    i32 110, label %112
    i32 70, label %121
    i32 102, label %121
    i32 114, label %121
  ]

40:                                               ; preds = %35, %35, %35, %35, %35, %35, %35, %35, %35, %35
  %41 = load i8**, i8*** %2, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strlen(i8* %42)
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, 3
  %46 = call i8* @malloc(i64 %45)
  store i8* %46, i8** %4, align 8
  store i8* %46, i8** %7, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %40
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %4, align 8
  store i8 45, i8* %51, align 1
  %53 = load i8**, i8*** %2, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = getelementptr inbounds i8, i8* %56, i64 -1
  store i8* %57, i8** %5, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 70
  br i1 %61, label %72, label %62

62:                                               ; preds = %50
  %63 = load i8*, i8** %5, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 102
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load i8*, i8** %5, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 114
  br i1 %71, label %72, label %79

72:                                               ; preds = %67, %62, %50
  %73 = load i8*, i8** %5, align 8
  %74 = load i8, i8* %73, align 1
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %4, align 8
  store i8 %74, i8* %75, align 1
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 -1
  store i8* %78, i8** %5, align 8
  store i8 0, i8* %77, align 1
  br label %79

79:                                               ; preds = %72, %67
  %80 = load i8*, i8** %5, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  switch i32 %82, label %96 [
    i32 98, label %83
    i32 99, label %87
    i32 108, label %91
    i32 48, label %93
    i32 49, label %93
    i32 50, label %93
    i32 51, label %93
    i32 52, label %93
    i32 53, label %93
    i32 54, label %93
    i32 55, label %93
    i32 56, label %93
    i32 57, label %93
  ]

83:                                               ; preds = %79
  %84 = load i8*, i8** %4, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %4, align 8
  store i8 98, i8* %84, align 1
  %86 = load i8*, i8** %5, align 8
  store i8 0, i8* %86, align 1
  br label %100

87:                                               ; preds = %79
  %88 = load i8*, i8** %4, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %4, align 8
  store i8 99, i8* %88, align 1
  %90 = load i8*, i8** %5, align 8
  store i8 0, i8* %90, align 1
  br label %100

91:                                               ; preds = %79
  %92 = load i8*, i8** %5, align 8
  store i8 0, i8* %92, align 1
  br label %93

93:                                               ; preds = %79, %79, %79, %79, %79, %79, %79, %79, %79, %79, %91
  %94 = load i8*, i8** %4, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %4, align 8
  store i8 110, i8* %94, align 1
  br label %100

96:                                               ; preds = %79
  %97 = load i8**, i8*** %2, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %98)
  br label %100

100:                                              ; preds = %96, %93, %87, %83
  %101 = load i8**, i8*** %2, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i8, i8* %103, align 1
  %105 = load i8*, i8** %4, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %4, align 8
  store i8 %104, i8* %105, align 1
  %107 = load i8*, i8** %4, align 8
  %108 = load i8*, i8** %3, align 8
  %109 = call i32 @strcpy(i8* %107, i8* %108)
  %110 = load i8*, i8** %7, align 8
  %111 = load i8**, i8*** %2, align 8
  store i8* %110, i8** %111, align 8
  br label %8

112:                                              ; preds = %35, %35, %35
  %113 = load i8*, i8** %3, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = icmp ne i8 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %112
  %118 = load i8**, i8*** %2, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i32 1
  store i8** %119, i8*** %2, align 8
  br label %120

120:                                              ; preds = %117, %112
  br label %121

121:                                              ; preds = %35, %35, %35, %120
  br label %8

122:                                              ; preds = %35
  br label %123

123:                                              ; preds = %25, %33, %122, %8
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
