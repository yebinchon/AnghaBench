; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/units/extr_units.c_reduceproduct.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/units/extr_units.c_reduceproduct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unittype = type { i8**, i8** }

@.str = private unnamed_addr constant [19 x i8] c"unknown unit '%s'\0A\00", align 1
@ERROR = common dso_local global i32 0, align 4
@PRIMITIVECHAR = common dso_local global i32 0, align 4
@NULLUNIT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.unittype*, i32)* @reduceproduct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reduceproduct(%struct.unittype* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.unittype*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store %struct.unittype* %0, %struct.unittype** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 2, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.unittype*, %struct.unittype** %4, align 8
  %13 = getelementptr inbounds %struct.unittype, %struct.unittype* %12, i32 0, i32 0
  %14 = load i8**, i8*** %13, align 8
  store i8** %14, i8*** %7, align 8
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.unittype*, %struct.unittype** %4, align 8
  %17 = getelementptr inbounds %struct.unittype, %struct.unittype* %16, i32 0, i32 1
  %18 = load i8**, i8*** %17, align 8
  store i8** %18, i8*** %7, align 8
  br label %19

19:                                               ; preds = %15, %11
  br label %20

20:                                               ; preds = %69, %19
  %21 = load i8**, i8*** %7, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %72

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %67, %24
  %26 = load i8**, i8*** %7, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %68

31:                                               ; preds = %25
  %32 = load i8**, i8*** %7, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @lookupunit(i8* %33)
  store i8* %34, i8** %6, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = load i8**, i8*** %7, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @ERROR, align 4
  store i32 %41, i32* %3, align 4
  br label %74

42:                                               ; preds = %31
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* @PRIMITIVECHAR, align 4
  %45 = call i64 @strchr(i8* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %68

48:                                               ; preds = %42
  store i32 1, i32* %8, align 4
  %49 = load i8**, i8*** %7, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** @NULLUNIT, align 8
  %52 = icmp ne i8* %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i8**, i8*** %7, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @free(i8* %55)
  %57 = load i8*, i8** @NULLUNIT, align 8
  %58 = load i8**, i8*** %7, align 8
  store i8* %57, i8** %58, align 8
  br label %59

59:                                               ; preds = %53, %48
  %60 = load %struct.unittype*, %struct.unittype** %4, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @addunit(%struct.unittype* %60, i8* %61, i32 %62, i32 0)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @ERROR, align 4
  store i32 %66, i32* %3, align 4
  br label %74

67:                                               ; preds = %59
  br label %25

68:                                               ; preds = %47, %30
  br label %69

69:                                               ; preds = %68
  %70 = load i8**, i8*** %7, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i32 1
  store i8** %71, i8*** %7, align 8
  br label %20

72:                                               ; preds = %20
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %65, %37
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @lookupunit(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @strchr(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @addunit(%struct.unittype*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
