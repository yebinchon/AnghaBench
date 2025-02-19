; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsdinstall/partedit/extr_scripted.c_parse_disk_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsdinstall/partedit/extr_scripted.c_parse_disk_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Malformed partition setup string: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Unknown directive: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_disk_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_disk_config(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  br label %8

8:                                                ; preds = %63, %23, %1
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load i8*, i8** %3, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %11, %8
  %17 = phi i1 [ false, %8 ], [ %15, %11 ]
  br i1 %17, label %18, label %64

18:                                               ; preds = %16
  %19 = load i8*, i8** %3, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i64 @isspace(i8 signext %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %3, align 8
  br label %8

26:                                               ; preds = %18
  %27 = load i8*, i8** %3, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  switch i32 %29, label %47 [
    i32 123, label %30
  ]

30:                                               ; preds = %26
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %3, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = call i8* @strchr(i8* %33, i8 signext 125)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* @stderr, align 4
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %39)
  store i32 1, i32* %2, align 4
  br label %85

41:                                               ; preds = %30
  %42 = load i8*, i8** %7, align 8
  store i8 0, i8* %42, align 1
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  store i8* %44, i8** %4, align 8
  %45 = load i8*, i8** %3, align 8
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %4, align 8
  store i8* %46, i8** %3, align 8
  br label %63

47:                                               ; preds = %26
  %48 = load i8*, i8** %5, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %51, i8** %5, align 8
  br label %62

52:                                               ; preds = %47
  %53 = load i8*, i8** %6, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %56, i8** %6, align 8
  br label %61

57:                                               ; preds = %52
  %58 = load i32, i32* @stderr, align 4
  %59 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %60 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  store i32 1, i32* %2, align 4
  br label %85

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %50
  br label %63

63:                                               ; preds = %62, %41
  br label %8

64:                                               ; preds = %16
  br label %65

65:                                               ; preds = %75, %64
  %66 = load i8*, i8** %3, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i8*, i8** %3, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br label %73

73:                                               ; preds = %68, %65
  %74 = phi i1 [ false, %65 ], [ %72, %68 ]
  br i1 %74, label %75, label %76

75:                                               ; preds = %73
  br label %65

76:                                               ; preds = %73
  %77 = load i8*, i8** %5, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i8*, i8** %5, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @part_config(i8* %80, i8* %81, i8* %82)
  store i32 %83, i32* %2, align 4
  br label %85

84:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %79, %57, %37
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @part_config(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
