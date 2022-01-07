; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_bus_subr.c_ofw_bus_string_list_to_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_bus_subr.c_ofw_bus_string_list_to_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_OFWPROP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ofw_bus_string_list_to_array(i32 %0, i8* %1, i8*** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8***, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8*** %2, i8**** %7, align 8
  store i8* null, i8** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @OF_getprop_alloc(i32 %15, i8* %16, i8** %8)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %4, align 4
  br label %95

22:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %36, %22
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = call i32 @strlen(i8* %31)
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %12, align 4
  br label %23

39:                                               ; preds = %23
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %43, %45
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @M_OFWPROP, align 4
  %49 = load i32, i32* @M_WAITOK, align 4
  %50 = call i8** @malloc(i32 %47, i32 %48, i32 %49)
  store i8** %50, i8*** %10, align 8
  %51 = load i8**, i8*** %10, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = bitcast i8** %55 to i8*
  store i8* %56, i8** %9, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @memcpy(i8* %57, i8* %58, i32 %59)
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* @M_OFWPROP, align 4
  %63 = call i32 @free(i8* %61, i32 %62)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %84, %39
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %64
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @strlen(i8* %69)
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %14, align 4
  %72 = load i8*, i8** %9, align 8
  %73 = load i8**, i8*** %10, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  store i8* %72, i8** %76, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i8*, i8** %9, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8* %83, i8** %9, align 8
  br label %84

84:                                               ; preds = %68
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %64

87:                                               ; preds = %64
  %88 = load i8**, i8*** %10, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  store i8* null, i8** %91, align 8
  %92 = load i8**, i8*** %10, align 8
  %93 = load i8***, i8**** %7, align 8
  store i8** %92, i8*** %93, align 8
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %87, %20
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @OF_getprop_alloc(i32, i8*, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8** @malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
