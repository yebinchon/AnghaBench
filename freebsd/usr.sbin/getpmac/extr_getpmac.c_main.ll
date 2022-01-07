; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/getpmac/extr_getpmac.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/getpmac/extr_getpmac.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"l:p:\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"mac_prepare\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"mac_get_pid\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"mac_get_proc\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"mac_to_text\00", align 1
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@EX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %9, align 8
  store i8* null, i8** %6, align 8
  br label %13

13:                                               ; preds = %45, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %10, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %46

18:                                               ; preds = %13
  %19 = load i32, i32* %10, align 4
  switch i32 %19, label %43 [
    i32 108, label %20
    i32 112, label %31
  ]

20:                                               ; preds = %18
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 (...) @usage()
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i8**, i8*** %5, align 8
  %27 = load i64, i64* @optind, align 8
  %28 = sub i64 %27, 1
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %6, align 8
  br label %45

31:                                               ; preds = %18
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 (...) @usage()
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i8**, i8*** %5, align 8
  %38 = load i64, i64* @optind, align 8
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @atoi(i8* %41)
  store i64 %42, i64* %9, align 8
  store i32 1, i32* %12, align 4
  br label %45

43:                                               ; preds = %18
  %44 = call i32 (...) @usage()
  br label %45

45:                                               ; preds = %43, %36, %25
  br label %13

46:                                               ; preds = %13
  %47 = load i64, i64* @optind, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = sub i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %4, align 4
  %52 = load i64, i64* @optind, align 8
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 %52
  store i8** %54, i8*** %5, align 8
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = call i32 (...) @usage()
  br label %59

59:                                               ; preds = %57, %46
  %60 = load i8*, i8** %6, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @mac_prepare(i32* %8, i8* %63)
  store i32 %64, i32* %11, align 4
  br label %67

65:                                               ; preds = %59
  %66 = call i32 @mac_prepare_process_label(i32* %8)
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  ret i32 -1

72:                                               ; preds = %67
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i64, i64* %9, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @mac_get_pid(i64 %76, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %75
  br label %92

84:                                               ; preds = %72
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @mac_get_proc(i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %84
  br label %92

92:                                               ; preds = %91, %83
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @mac_free(i32 %96)
  %98 = call i32 @exit(i32 -1) #3
  unreachable

99:                                               ; preds = %92
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @mac_to_text(i32 %100, i8** %7)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %106 = load i32, i32* @EX_DATAERR, align 4
  %107 = call i32 @exit(i32 %106) #3
  unreachable

108:                                              ; preds = %99
  %109 = load i8*, i8** %7, align 8
  %110 = call i64 @strlen(i8* %109)
  %111 = icmp sgt i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i8*, i8** %7, align 8
  %114 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %113)
  br label %115

115:                                              ; preds = %112, %108
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @mac_free(i32 %116)
  %118 = load i8*, i8** %7, align 8
  %119 = call i32 @free(i8* %118)
  %120 = load i32, i32* @EX_OK, align 4
  %121 = call i32 @exit(i32 %120) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @mac_prepare(i32*, i8*) #1

declare dso_local i32 @mac_prepare_process_label(i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @mac_get_pid(i64, i32) #1

declare dso_local i32 @mac_get_proc(i32) #1

declare dso_local i32 @mac_free(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @mac_to_text(i32, i8**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
