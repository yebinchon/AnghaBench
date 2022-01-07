; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_check_global_conv_flags_eol.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_check_global_conv_flags_eol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.text_stat = type { i64, i64 }

@CONV_EOL_RNDTRP_DIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"CRLF would be replaced by LF in %s\00", align 1
@CONV_EOL_RNDTRP_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [106 x i8] c"CRLF will be replaced by LF in %s.\0AThe file will have its original line endings in your working directory\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"LF would be replaced by CRLF in %s\00", align 1
@.str.3 = private unnamed_addr constant [106 x i8] c"LF will be replaced by CRLF in %s.\0AThe file will have its original line endings in your working directory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.text_stat*, %struct.text_stat*, i32)* @check_global_conv_flags_eol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_global_conv_flags_eol(i8* %0, i32 %1, %struct.text_stat* %2, %struct.text_stat* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.text_stat*, align 8
  %9 = alloca %struct.text_stat*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.text_stat* %2, %struct.text_stat** %8, align 8
  store %struct.text_stat* %3, %struct.text_stat** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.text_stat*, %struct.text_stat** %8, align 8
  %12 = getelementptr inbounds %struct.text_stat, %struct.text_stat* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %5
  %16 = load %struct.text_stat*, %struct.text_stat** %9, align 8
  %17 = getelementptr inbounds %struct.text_stat, %struct.text_stat* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @CONV_EOL_RNDTRP_DIE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @die(i32 %26, i8* %27)
  br label %39

29:                                               ; preds = %20
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @CONV_EOL_RNDTRP_WARN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = call i32 @_(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @warning(i32 %35, i8* %36)
  br label %38

38:                                               ; preds = %34, %29
  br label %39

39:                                               ; preds = %38, %25
  br label %71

40:                                               ; preds = %15, %5
  %41 = load %struct.text_stat*, %struct.text_stat** %8, align 8
  %42 = getelementptr inbounds %struct.text_stat, %struct.text_stat* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %70

45:                                               ; preds = %40
  %46 = load %struct.text_stat*, %struct.text_stat** %9, align 8
  %47 = getelementptr inbounds %struct.text_stat, %struct.text_stat* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %70, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @CONV_EOL_RNDTRP_DIE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @die(i32 %56, i8* %57)
  br label %69

59:                                               ; preds = %50
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @CONV_EOL_RNDTRP_WARN, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = call i32 @_(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @warning(i32 %65, i8* %66)
  br label %68

68:                                               ; preds = %64, %59
  br label %69

69:                                               ; preds = %68, %55
  br label %70

70:                                               ; preds = %69, %45, %40
  br label %71

71:                                               ; preds = %70, %39
  ret void
}

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @warning(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
