; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ctags/extr_tree.c_pfnote.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ctags/extr_tree.c_pfnote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i8*, i64, i64, i8* }

@MAXTOKEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"too many entries to sort\00", align 1
@head = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"out of space\00", align 1
@xflag = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@curfile = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"M%s\00", align 1
@EOS = common dso_local global i8 0, align 1
@lbuf = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfnote(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @MAXTOKEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %7, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %8, align 8
  %13 = call i64 @malloc(i32 48)
  %14 = inttoptr i64 %13 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %5, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %2
  %17 = call i32 @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @head, align 8
  %19 = call i32 @put_entries(%struct.TYPE_7__* %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @head, align 8
  %21 = call i32 @free_tree(%struct.TYPE_7__* %20)
  %22 = call i64 @malloc(i32 48)
  %23 = inttoptr i64 %22 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** @head, align 8
  %24 = icmp ne %struct.TYPE_7__* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  %26 = call i32 @errx(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %16
  br label %28

28:                                               ; preds = %27, %2
  %29 = load i32, i32* @xflag, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %60, label %31

31:                                               ; preds = %28
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %60, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** @curfile, align 8
  %37 = call i8* @strrchr(i8* %36, i8 signext 47)
  store i8* %37, i8** %6, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** @curfile, align 8
  store i8* %40, i8** %6, align 8
  br label %44

41:                                               ; preds = %35
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %6, align 8
  br label %44

44:                                               ; preds = %41, %39
  %45 = trunc i64 %10 to i32
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @snprintf(i8* %12, i32 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  %48 = call i8* @strrchr(i8* %12, i8 signext 46)
  store i8* %48, i8** %6, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %44
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i8, i8* @EOS, align 1
  %58 = load i8*, i8** %6, align 8
  store i8 %57, i8* %58, align 1
  br label %59

59:                                               ; preds = %56, %51, %44
  store i8* %12, i8** %3, align 8
  br label %60

60:                                               ; preds = %59, %31, %28
  %61 = load i8*, i8** %3, align 8
  %62 = call i8* @strdup(i8* %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  %65 = icmp ne i8* %62, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %60
  %67 = call i32 @err(i32 1, i32* null)
  br label %68

68:                                               ; preds = %66, %60
  %69 = load i8*, i8** @curfile, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 4
  store i64 0, i64* %78, align 8
  %79 = load i8*, i8** @lbuf, align 8
  %80 = call i8* @strdup(i8* %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  store i8* %80, i8** %82, align 8
  %83 = icmp ne i8* %80, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %68
  %85 = call i32 @err(i32 1, i32* null)
  br label %86

86:                                               ; preds = %84, %68
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** @head, align 8
  %88 = icmp ne %struct.TYPE_7__* %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %90, %struct.TYPE_7__** @head, align 8
  br label %95

91:                                               ; preds = %86
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** @head, align 8
  %94 = call i32 @add_node(%struct.TYPE_7__* %92, %struct.TYPE_7__* %93)
  br label %95

95:                                               ; preds = %91, %89
  %96 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %96)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @warnx(i8*) #2

declare dso_local i32 @put_entries(%struct.TYPE_7__*) #2

declare dso_local i32 @free_tree(%struct.TYPE_7__*) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @err(i32, i32*) #2

declare dso_local i32 @add_node(%struct.TYPE_7__*, %struct.TYPE_7__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
