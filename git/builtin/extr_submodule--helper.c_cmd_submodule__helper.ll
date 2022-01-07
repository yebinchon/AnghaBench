; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_cmd_submodule__helper.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_cmd_submodule__helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 (i32, i8**, i8*)* }

@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"git submodule--helper <command>\00", align 1
@commands = common dso_local global %struct.TYPE_3__* null, align 8
@SUPPORT_SUPER_PREFIX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"%s doesn't support --super-prefix\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"'%s' is not a valid submodule--helper subcommand\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_submodule__helper(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load i8**, i8*** %6, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11, %3
  %18 = call i32 @usage(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %11
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %73, %19
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @commands, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %76

25:                                               ; preds = %20
  %26 = load i8**, i8*** %6, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @commands, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strcmp(i8* %28, i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %72, label %37

37:                                               ; preds = %25
  %38 = call i64 (...) @get_super_prefix()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %37
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @commands, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SUPPORT_SUPER_PREFIX, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %40
  %51 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @commands, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @die(i32 %51, i8* %57)
  br label %59

59:                                               ; preds = %50, %40, %37
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @commands, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32 (i32, i8**, i8*)*, i32 (i32, i8**, i8*)** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sub nsw i32 %66, 1
  %68 = load i8**, i8*** %6, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 1
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 %65(i32 %67, i8** %69, i8* %70)
  store i32 %71, i32* %4, align 4
  br label %82

72:                                               ; preds = %25
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %20

76:                                               ; preds = %20
  %77 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i8**, i8*** %6, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @die(i32 %77, i8* %80)
  br label %82

82:                                               ; preds = %76, %59
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @get_super_prefix(...) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
