; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ofwdump/extr_ofwdump.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ofwdump/extr_ofwdump.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"-aprP:RS\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@EX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i8* null, i8** %14, align 8
  br label %15

15:                                               ; preds = %56, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %57

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 45
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %57

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %54 [
    i32 97, label %26
    i32 112, label %27
    i32 114, label %33
    i32 80, label %34
    i32 82, label %41
    i32 83, label %47
    i32 63, label %53
  ]

26:                                               ; preds = %24
  store i32 1, i32* %9, align 4
  store i32 1, i32* %11, align 4
  br label %56

27:                                               ; preds = %24
  %28 = load i8*, i8** %14, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 (...) @usage()
  br label %32

32:                                               ; preds = %30, %27
  store i32 1, i32* %10, align 4
  br label %56

33:                                               ; preds = %24
  store i32 1, i32* %11, align 4
  br label %56

34:                                               ; preds = %24
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 (...) @usage()
  br label %39

39:                                               ; preds = %37, %34
  store i32 1, i32* %10, align 4
  %40 = load i8*, i8** @optarg, align 8
  store i8* %40, i8** %14, align 8
  br label %56

41:                                               ; preds = %24
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 (...) @usage()
  br label %46

46:                                               ; preds = %44, %41
  store i32 1, i32* %12, align 4
  br label %56

47:                                               ; preds = %24
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 (...) @usage()
  br label %52

52:                                               ; preds = %50, %47
  store i32 1, i32* %13, align 4
  br label %56

53:                                               ; preds = %24
  br label %54

54:                                               ; preds = %24, %53
  %55 = call i32 (...) @usage()
  br label %56

56:                                               ; preds = %54, %52, %46, %39, %33, %32, %26
  br label %15

57:                                               ; preds = %23, %15
  %58 = load i64, i64* @optind, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = sub nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %4, align 4
  %63 = load i64, i64* @optind, align 8
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 %63
  store i8** %65, i8*** %5, align 8
  %66 = load i32, i32* @O_RDONLY, align 4
  %67 = call i32 @ofw_open(i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %57
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = call i32 (...) @usage()
  br label %75

75:                                               ; preds = %73, %70
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i8*, i8** %14, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @ofw_dump(i32 %76, i8* null, i32 %77, i32 %78, i8* %79, i32 %80, i32 %81)
  br label %105

83:                                               ; preds = %57
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %101, %83
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %84
  %89 = load i32, i32* %8, align 4
  %90 = load i8**, i8*** %5, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i8*, i8** %14, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @ofw_dump(i32 %89, i8* %94, i32 %95, i32 %96, i8* %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %88
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %84

104:                                              ; preds = %84
  br label %105

105:                                              ; preds = %104, %75
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @ofw_close(i32 %106)
  %108 = load i32, i32* @EX_OK, align 4
  ret i32 %108
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @ofw_open(i32) #1

declare dso_local i32 @ofw_dump(i32, i8*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ofw_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
