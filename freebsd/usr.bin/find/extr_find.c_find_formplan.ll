; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/find/extr_find.c_find_formplan.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/find/extr_find.c_find_formplan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_20__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__* (%struct.TYPE_21__*, i8***)* }

@isoutput = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"-print\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @find_formplan(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %8

8:                                                ; preds = %26, %15, %1
  %9 = load i8**, i8*** %2, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = call %struct.TYPE_20__* @find_create(i8*** %2)
  store %struct.TYPE_20__* %13, %struct.TYPE_20__** %5, align 8
  %14 = icmp ne %struct.TYPE_20__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  br label %8

16:                                               ; preds = %12
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %18 = icmp eq %struct.TYPE_20__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %4, align 8
  br label %26

21:                                               ; preds = %16
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  store %struct.TYPE_20__* %22, %struct.TYPE_20__** %24, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* %25, %struct.TYPE_20__** %4, align 8
  br label %26

26:                                               ; preds = %21, %19
  br label %8

27:                                               ; preds = %8
  %28 = load i32, i32* @isoutput, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %73, label %30

30:                                               ; preds = %27
  store i8** null, i8*** %7, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %32 = icmp eq %struct.TYPE_20__* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = call %struct.TYPE_21__* @lookup_option(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_21__* %34, %struct.TYPE_21__** %6, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_20__* (%struct.TYPE_21__*, i8***)*, %struct.TYPE_20__* (%struct.TYPE_21__*, i8***)** %36, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %39 = call %struct.TYPE_20__* %37(%struct.TYPE_21__* %38, i8*** %7)
  store %struct.TYPE_20__* %39, %struct.TYPE_20__** %5, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* %40, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_20__* %40, %struct.TYPE_20__** %4, align 8
  br label %72

41:                                               ; preds = %30
  %42 = call %struct.TYPE_21__* @lookup_option(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_21__* %42, %struct.TYPE_21__** %6, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_20__* (%struct.TYPE_21__*, i8***)*, %struct.TYPE_20__* (%struct.TYPE_21__*, i8***)** %44, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %47 = call %struct.TYPE_20__* %45(%struct.TYPE_21__* %46, i8*** %7)
  store %struct.TYPE_20__* %47, %struct.TYPE_20__** %5, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  store %struct.TYPE_20__* %48, %struct.TYPE_20__** %50, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* %51, %struct.TYPE_20__** %3, align 8
  %52 = call %struct.TYPE_21__* @lookup_option(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_21__* %52, %struct.TYPE_21__** %6, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_20__* (%struct.TYPE_21__*, i8***)*, %struct.TYPE_20__* (%struct.TYPE_21__*, i8***)** %54, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %57 = call %struct.TYPE_20__* %55(%struct.TYPE_21__* %56, i8*** %7)
  store %struct.TYPE_20__* %57, %struct.TYPE_20__** %5, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  store %struct.TYPE_20__* %58, %struct.TYPE_20__** %60, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* %61, %struct.TYPE_20__** %4, align 8
  %62 = call %struct.TYPE_21__* @lookup_option(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_21__* %62, %struct.TYPE_21__** %6, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_20__* (%struct.TYPE_21__*, i8***)*, %struct.TYPE_20__* (%struct.TYPE_21__*, i8***)** %64, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %67 = call %struct.TYPE_20__* %65(%struct.TYPE_21__* %66, i8*** %7)
  store %struct.TYPE_20__* %67, %struct.TYPE_20__** %5, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  store %struct.TYPE_20__* %68, %struct.TYPE_20__** %70, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* %71, %struct.TYPE_20__** %4, align 8
  br label %72

72:                                               ; preds = %41, %33
  br label %73

73:                                               ; preds = %72, %27
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %75 = call %struct.TYPE_20__* @paren_squish(%struct.TYPE_20__* %74)
  store %struct.TYPE_20__* %75, %struct.TYPE_20__** %3, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %77 = call %struct.TYPE_20__* @not_squish(%struct.TYPE_20__* %76)
  store %struct.TYPE_20__* %77, %struct.TYPE_20__** %3, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %79 = call %struct.TYPE_20__* @or_squish(%struct.TYPE_20__* %78)
  store %struct.TYPE_20__* %79, %struct.TYPE_20__** %3, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  ret %struct.TYPE_20__* %80
}

declare dso_local %struct.TYPE_20__* @find_create(i8***) #1

declare dso_local %struct.TYPE_21__* @lookup_option(i8*) #1

declare dso_local %struct.TYPE_20__* @paren_squish(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @not_squish(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @or_squish(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
