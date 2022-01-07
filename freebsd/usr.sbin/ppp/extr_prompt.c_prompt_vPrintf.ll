; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_prompt.c_prompt_vPrintf.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_prompt.c_prompt_vPrintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prompt = type { i32, i32, i64, i64 }

@LINE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prompt_vPrintf(%struct.prompt* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.prompt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.prompt* %0, %struct.prompt** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.prompt*, %struct.prompt** %4, align 8
  %12 = icmp ne %struct.prompt* %11, null
  br i1 %12, label %13, label %81

13:                                               ; preds = %3
  %14 = load %struct.prompt*, %struct.prompt** %4, align 8
  %15 = getelementptr inbounds %struct.prompt, %struct.prompt* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %81

18:                                               ; preds = %13
  %19 = load i32, i32* @LINE_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %7, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %23 = load %struct.prompt*, %struct.prompt** %4, align 8
  %24 = getelementptr inbounds %struct.prompt, %struct.prompt* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %65

27:                                               ; preds = %18
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @strlen(i8* %28)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %27
  %33 = load i64, i64* %10, align 8
  %34 = sub i64 %20, 1
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %32
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %10, align 8
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 10
  br i1 %43, label %44, label %62

44:                                               ; preds = %36
  %45 = load i64, i64* %10, align 8
  %46 = icmp eq i64 %45, 1
  br i1 %46, label %55, label %47

47:                                               ; preds = %44
  %48 = load i8*, i8** %5, align 8
  %49 = load i64, i64* %10, align 8
  %50 = sub i64 %49, 2
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 13
  br i1 %54, label %55, label %62

55:                                               ; preds = %47, %44
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @strcpy(i8* %22, i8* %56)
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds i8, i8* %22, i64 %58
  %60 = getelementptr inbounds i8, i8* %59, i64 -1
  %61 = call i32 @strcpy(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %9, align 8
  br label %64

62:                                               ; preds = %47, %36, %32, %27
  %63 = load i8*, i8** %5, align 8
  store i8* %63, i8** %9, align 8
  br label %64

64:                                               ; preds = %62, %55
  br label %67

65:                                               ; preds = %18
  %66 = load i8*, i8** %5, align 8
  store i8* %66, i8** %9, align 8
  br label %67

67:                                               ; preds = %65, %64
  %68 = load %struct.prompt*, %struct.prompt** %4, align 8
  %69 = getelementptr inbounds %struct.prompt, %struct.prompt* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %9, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @vfprintf(i32 %70, i8* %71, i32 %72)
  %74 = load %struct.prompt*, %struct.prompt** %4, align 8
  %75 = getelementptr inbounds %struct.prompt, %struct.prompt* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @fflush(i32 %76)
  %78 = load %struct.prompt*, %struct.prompt** %4, align 8
  %79 = getelementptr inbounds %struct.prompt, %struct.prompt* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %80)
  br label %81

81:                                               ; preds = %67, %13, %3
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @vfprintf(i32, i8*, i32) #2

declare dso_local i32 @fflush(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
