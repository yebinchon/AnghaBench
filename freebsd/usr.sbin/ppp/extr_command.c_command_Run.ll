; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_command_Run.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_command_Run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { i32 }
%struct.prompt = type { i32 }
%struct.datalink = type { i32 }

@LogCOMMAND = common dso_local global i32 0, align 4
@LINE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"********\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@Commands = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @command_Run(%struct.bundle* %0, i32 %1, i8** %2, %struct.prompt* %3, i8* %4, %struct.datalink* %5) #0 {
  %7 = alloca %struct.bundle*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.prompt*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.datalink*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.bundle* %0, %struct.bundle** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store %struct.prompt* %3, %struct.prompt** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.datalink* %5, %struct.datalink** %12, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %105

19:                                               ; preds = %6
  %20 = load i32, i32* @LogCOMMAND, align 4
  %21 = call i64 @log_IsKept(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %97

23:                                               ; preds = %19
  %24 = load i32, i32* @LINE_LEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %13, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %14, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load i8*, i8** %11, align 8
  %32 = sub i64 %25, 3
  %33 = trunc i64 %32 to i32
  %34 = call i32 @strncpy(i8* %27, i8* %31, i32 %33)
  %35 = sub i64 %25, 3
  %36 = getelementptr inbounds i8, i8* %27, i64 %35
  store i8 0, i8* %36, align 1
  %37 = call i32 @strcat(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %38 = call i64 @strlen(i8* %27)
  store i64 %38, i64* %16, align 8
  br label %40

39:                                               ; preds = %23
  store i8 0, i8* %27, align 16
  store i64 0, i64* %16, align 8
  br label %40

40:                                               ; preds = %39, %30
  %41 = sub i64 %25, 1
  %42 = getelementptr inbounds i8, i8* %27, i64 %41
  store i8 0, i8* %42, align 1
  store i32 0, i32* %15, align 4
  br label %43

43:                                               ; preds = %90, %40
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %93

47:                                               ; preds = %43
  %48 = load i64, i64* %16, align 8
  %49 = sub i64 %25, 1
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i64, i64* %16, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %16, align 8
  %57 = getelementptr inbounds i8, i8* %27, i64 %55
  store i8 32, i8* %57, align 1
  br label %58

58:                                               ; preds = %54, %51, %47
  %59 = load i8**, i8*** %9, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call i64 @arghidden(i8** %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i64, i64* %16, align 8
  %65 = getelementptr inbounds i8, i8* %27, i64 %64
  %66 = load i64, i64* %16, align 8
  %67 = sub i64 %25, %66
  %68 = sub i64 %67, 1
  %69 = trunc i64 %68 to i32
  %70 = call i32 @strncpy(i8* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %84

71:                                               ; preds = %58
  %72 = load i64, i64* %16, align 8
  %73 = getelementptr inbounds i8, i8* %27, i64 %72
  %74 = load i8**, i8*** %9, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = load i64, i64* %16, align 8
  %80 = sub i64 %25, %79
  %81 = sub i64 %80, 1
  %82 = trunc i64 %81 to i32
  %83 = call i32 @strncpy(i8* %73, i8* %78, i32 %82)
  br label %84

84:                                               ; preds = %71, %63
  %85 = load i64, i64* %16, align 8
  %86 = getelementptr inbounds i8, i8* %27, i64 %85
  %87 = call i64 @strlen(i8* %86)
  %88 = load i64, i64* %16, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %16, align 8
  br label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %15, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %15, align 4
  br label %43

93:                                               ; preds = %43
  %94 = load i32, i32* @LogCOMMAND, align 4
  %95 = call i32 @log_Printf(i32 %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  %96 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %96)
  br label %97

97:                                               ; preds = %93, %19
  %98 = load %struct.bundle*, %struct.bundle** %7, align 8
  %99 = load i32, i32* @Commands, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i8**, i8*** %9, align 8
  %102 = load %struct.prompt*, %struct.prompt** %10, align 8
  %103 = load %struct.datalink*, %struct.datalink** %12, align 8
  %104 = call i32 @FindExec(%struct.bundle* %98, i32 %99, i32 %100, i32 0, i8** %101, %struct.prompt* %102, %struct.datalink* %103)
  br label %105

105:                                              ; preds = %97, %6
  ret void
}

declare dso_local i64 @log_IsKept(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @arghidden(i8**, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @FindExec(%struct.bundle*, i32, i32, i32, i8**, %struct.prompt*, %struct.datalink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
