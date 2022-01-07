; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/getfmac/extr_getfmac.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/getfmac/extr_getfmac.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"hl:\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"mac_prepare\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"mac_to_text\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@EX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %35, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %9, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %36

18:                                               ; preds = %13
  %19 = load i32, i32* %9, align 4
  switch i32 %19, label %33 [
    i32 104, label %20
    i32 108, label %21
  ]

20:                                               ; preds = %18
  store i32 1, i32* %10, align 4
  br label %35

21:                                               ; preds = %18
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 (...) @usage()
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i8**, i8*** %5, align 8
  %28 = load i32, i32* @optind, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %27, i64 %30
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %6, align 8
  br label %35

33:                                               ; preds = %18
  %34 = call i32 (...) @usage()
  br label %35

35:                                               ; preds = %33, %26, %20
  br label %13

36:                                               ; preds = %13
  %37 = load i32, i32* @optind, align 4
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %106, %36
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %109

42:                                               ; preds = %38
  %43 = load i8*, i8** %6, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @mac_prepare(i32* %8, i8* %46)
  store i32 %47, i32* %11, align 4
  br label %50

48:                                               ; preds = %42
  %49 = call i32 @mac_prepare_file_label(i32* %8)
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %48, %45
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  ret i32 -1

55:                                               ; preds = %50
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i8**, i8*** %5, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @mac_get_link(i8* %63, i32 %64)
  store i32 %65, i32* %11, align 4
  br label %74

66:                                               ; preds = %55
  %67 = load i8**, i8*** %5, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @mac_get_file(i8* %71, i32 %72)
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %66, %58
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load i8**, i8*** %5, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @perror(i8* %82)
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @mac_free(i32 %84)
  br label %106

86:                                               ; preds = %74
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @mac_to_text(i32 %87, i8** %7)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %103

93:                                               ; preds = %86
  %94 = load i8**, i8*** %5, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %98, i8* %99)
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @free(i8* %101)
  br label %103

103:                                              ; preds = %93, %91
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @mac_free(i32 %104)
  br label %106

106:                                              ; preds = %103, %77
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %38

109:                                              ; preds = %38
  %110 = load i32, i32* @EX_OK, align 4
  %111 = call i32 @exit(i32 %110) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @mac_prepare(i32*, i8*) #1

declare dso_local i32 @mac_prepare_file_label(i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @mac_get_link(i8*, i32) #1

declare dso_local i32 @mac_get_file(i8*, i32) #1

declare dso_local i32 @mac_free(i32) #1

declare dso_local i32 @mac_to_text(i32, i8**) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
