; ModuleID = '/home/carl/AnghaBench/freebsd/sys/xdr/extr_xdr.c_xdr_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/xdr/extr_xdr.c_xdr_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"xdr_string: out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_string(%struct.TYPE_5__* %0, i8** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8**, i8*** %6, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %8, align 8
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %29 [
    i32 128, label %19
    i32 129, label %25
    i32 130, label %28
  ]

19:                                               ; preds = %3
  %20 = load i8*, i8** %8, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %4, align 4
  br label %103

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %3, %24
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @strlen(i8* %26)
  store i64 %27, i64* %9, align 8
  br label %29

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %3, %28, %25
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = call i32 @xdr_u_int(%struct.TYPE_5__* %30, i64* %9)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %4, align 4
  br label %103

35:                                               ; preds = %29
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %4, align 4
  br label %103

41:                                               ; preds = %35
  %42 = load i64, i64* %9, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %10, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %101 [
    i32 130, label %47
    i32 129, label %70
    i32 128, label %95
  ]

47:                                               ; preds = %41
  %48 = load i64, i64* %10, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %4, align 4
  br label %103

52:                                               ; preds = %47
  %53 = load i8*, i8** %8, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i64, i64* %10, align 8
  %57 = call i8* @mem_alloc(i64 %56)
  store i8* %57, i8** %8, align 8
  %58 = load i8**, i8*** %6, align 8
  store i8* %57, i8** %58, align 8
  %59 = load i32, i32* @TRUE, align 4
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %55, %52
  %61 = load i8*, i8** %8, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %4, align 4
  br label %103

66:                                               ; preds = %60
  %67 = load i8*, i8** %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8 0, i8* %69, align 1
  br label %70

70:                                               ; preds = %41, %66
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @xdr_opaque(%struct.TYPE_5__* %71, i8* %72, i64 %73)
  store i32 %74, i32* %11, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 130
  br i1 %78, label %79, label %93

79:                                               ; preds = %70
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @FALSE, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @TRUE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i8*, i8** %8, align 8
  %89 = load i64, i64* %10, align 8
  %90 = call i32 @mem_free(i8* %88, i64 %89)
  %91 = load i8**, i8*** %6, align 8
  store i8* null, i8** %91, align 8
  br label %92

92:                                               ; preds = %87, %83
  br label %93

93:                                               ; preds = %92, %79, %70
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %4, align 4
  br label %103

95:                                               ; preds = %41
  %96 = load i8*, i8** %8, align 8
  %97 = load i64, i64* %10, align 8
  %98 = call i32 @mem_free(i8* %96, i64 %97)
  %99 = load i8**, i8*** %6, align 8
  store i8* null, i8** %99, align 8
  %100 = load i32, i32* @TRUE, align 4
  store i32 %100, i32* %4, align 4
  br label %103

101:                                              ; preds = %41
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %101, %95, %93, %63, %50, %39, %33, %22
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @xdr_u_int(%struct.TYPE_5__*, i64*) #1

declare dso_local i8* @mem_alloc(i64) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @xdr_opaque(%struct.TYPE_5__*, i8*, i64) #1

declare dso_local i32 @mem_free(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
