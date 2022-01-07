; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rev-parse.c_show_rev.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rev-parse.c_show_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }

@filter = common dso_local global i32 0, align 4
@DO_REVS = common dso_local global i32 0, align 4
@def = common dso_local global i32* null, align 8
@symbolic = common dso_local global i64 0, align 8
@abbrev_ref = common dso_local global i64 0, align 8
@SHOW_SYMBOLIC_FULL = common dso_local global i64 0, align 8
@abbrev_ref_strict = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"refname '%s' is ambiguous\00", align 1
@abbrev = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.object_id*, i8*)* @show_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_rev(i32 %0, %struct.object_id* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id, align 4
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* @filter, align 4
  %10 = load i32, i32* @DO_REVS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %73

14:                                               ; preds = %3
  store i32* null, i32** @def, align 8
  %15 = load i64, i64* @symbolic, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* @abbrev_ref, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %58

20:                                               ; preds = %17, %14
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %58

23:                                               ; preds = %20
  %24 = load i64, i64* @symbolic, align 8
  %25 = load i64, i64* @SHOW_SYMBOLIC_FULL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* @abbrev_ref, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %27, %23
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = call i32 @dwim_ref(i8* %31, i32 %33, %struct.object_id* %7, i8** %8)
  switch i32 %34, label %47 [
    i32 0, label %35
    i32 1, label %36
  ]

35:                                               ; preds = %30
  br label %50

36:                                               ; preds = %30
  %37 = load i64, i64* @abbrev_ref, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* @abbrev_ref_strict, align 4
  %42 = call i8* @shorten_unambiguous_ref(i8* %40, i32 %41)
  store i8* %42, i8** %8, align 8
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %4, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @show_with_type(i32 %44, i8* %45)
  br label %50

47:                                               ; preds = %30
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %47, %43, %35
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @free(i8* %51)
  br label %57

53:                                               ; preds = %27
  %54 = load i32, i32* %4, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @show_with_type(i32 %54, i8* %55)
  br label %57

57:                                               ; preds = %53, %50
  br label %73

58:                                               ; preds = %20, %17
  %59 = load i64, i64* @abbrev, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.object_id*, %struct.object_id** %5, align 8
  %64 = load i64, i64* @abbrev, align 8
  %65 = call i8* @find_unique_abbrev(%struct.object_id* %63, i64 %64)
  %66 = call i32 @show_with_type(i32 %62, i8* %65)
  br label %72

67:                                               ; preds = %58
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.object_id*, %struct.object_id** %5, align 8
  %70 = call i8* @oid_to_hex(%struct.object_id* %69)
  %71 = call i32 @show_with_type(i32 %68, i8* %70)
  br label %72

72:                                               ; preds = %67, %61
  br label %73

73:                                               ; preds = %13, %72, %57
  ret void
}

declare dso_local i32 @dwim_ref(i8*, i32, %struct.object_id*, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @shorten_unambiguous_ref(i8*, i32) #1

declare dso_local i32 @show_with_type(i32, i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @find_unique_abbrev(%struct.object_id*, i64) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
