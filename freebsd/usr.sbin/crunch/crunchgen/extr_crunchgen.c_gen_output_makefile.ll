; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchgen/extr_crunchgen.c_gen_output_makefile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchgen/extr_crunchgen.c_gen_output_makefile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@MAXLINELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"generating %s\00", align 1
@outmkname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@goterror = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"# %s - generated from %s by crunchgen %s\0A\0A\00", align 1
@infilename = common dso_local global i8* null, align 8
@CRUNCH_VERSION = common dso_local global i8* null, align 8
@outhdrname = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c".include \22%s\22\0A\00", align 1
@progs = common dso_local global %struct.TYPE_4__* null, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"\0A# ========\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_output_makefile() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAXLINELEN, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load i32, i32* @MAXLINELEN, align 4
  %11 = load i8*, i8** @outmkname, align 8
  %12 = call i32 @snprintf(i8* %9, i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = call i32 @status(i8* %9)
  %14 = load i8*, i8** @outmkname, align 8
  %15 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %15, i32** %2, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = load i8*, i8** @outmkname, align 8
  %19 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  store i32 1, i32* @goterror, align 4
  store i32 1, i32* %5, align 4
  br label %55

20:                                               ; preds = %0
  %21 = load i32*, i32** %2, align 8
  %22 = load i8*, i8** @outmkname, align 8
  %23 = load i8*, i8** @infilename, align 8
  %24 = load i8*, i8** @CRUNCH_VERSION, align 8
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %21, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %22, i8* %23, i8* %24)
  %26 = load i8*, i8** @outhdrname, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load i32*, i32** %2, align 8
  %33 = load i8*, i8** @outhdrname, align 8
  %34 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %31, %20
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @top_makefile_rules(i32* %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @progs, align 8
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %1, align 8
  br label %39

39:                                               ; preds = %46, %35
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i32*, i32** %2, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %45 = call i32 @prog_makefile_rules(i32* %43, %struct.TYPE_4__* %44)
  br label %46

46:                                               ; preds = %42
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %1, align 8
  br label %39

50:                                               ; preds = %39
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 (i32*, i8*, ...) @fprintf(i32* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @fclose(i32* %53)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %50, %17
  %56 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %5, align 4
  switch i32 %57, label %59 [
    i32 0, label %58
    i32 1, label %58
  ]

58:                                               ; preds = %55, %55
  ret void

59:                                               ; preds = %55
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @status(i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i32 @fprintf(i32*, i8*, ...) #2

declare dso_local i32 @top_makefile_rules(i32*) #2

declare dso_local i32 @prog_makefile_rules(i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
