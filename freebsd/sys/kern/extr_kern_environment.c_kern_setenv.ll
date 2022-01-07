; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_environment.c_kern_setenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_environment.c_kern_setenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dynamic_kenv = common dso_local global i32 0, align 4
@md_env_len = common dso_local global i64 0, align 8
@KENV_CHECK = common dso_local global i32 0, align 4
@KENV_MNAMELEN = common dso_local global i32 0, align 4
@KENV_MVALLEN = common dso_local global i32 0, align 4
@M_KENV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@kenv_lock = common dso_local global i32 0, align 4
@kenvp = common dso_local global i8** null, align 8
@KENV_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_setenv(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @dynamic_kenv, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* @md_env_len, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @setenv_static(i8* %18, i8* %19)
  store i32 %20, i32* %3, align 4
  br label %108

21:                                               ; preds = %14, %2
  %22 = load i32, i32* @KENV_CHECK, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @KENV_MNAMELEN, align 4
  %28 = add nsw i32 %27, 1
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %108

31:                                               ; preds = %21
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @KENV_MVALLEN, align 4
  %37 = add nsw i32 %36, 1
  %38 = icmp sgt i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %108

40:                                               ; preds = %31
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* @M_KENV, align 4
  %45 = load i32, i32* @M_WAITOK, align 4
  %46 = call i8* @malloc(i32 %43, i32 %44, i32 %45)
  store i8* %46, i8** %6, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @sprintf(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %48, i8* %49)
  %51 = call i32 @mtx_lock(i32* @kenv_lock)
  %52 = load i8*, i8** %4, align 8
  %53 = call i8* @_getenv_dynamic(i8* %52, i32* %11)
  store i8* %53, i8** %7, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %71

56:                                               ; preds = %40
  %57 = load i8**, i8*** @kenvp, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %8, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i8**, i8*** @kenvp, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  store i8* %62, i8** %66, align 8
  %67 = call i32 @mtx_unlock(i32* @kenv_lock)
  %68 = load i8*, i8** %8, align 8
  %69 = load i32, i32* @M_KENV, align 4
  %70 = call i32 @free(i8* %68, i32 %69)
  br label %107

71:                                               ; preds = %40
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %80, %71
  %73 = load i8**, i8*** @kenvp, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %7, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %72

83:                                               ; preds = %72
  %84 = load i32, i32* %11, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @KENV_SIZE, align 4
  %89 = icmp sge i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86, %83
  %91 = load i8*, i8** %6, align 8
  %92 = load i32, i32* @M_KENV, align 4
  %93 = call i32 @free(i8* %91, i32 %92)
  %94 = call i32 @mtx_unlock(i32* @kenv_lock)
  store i32 -1, i32* %3, align 4
  br label %108

95:                                               ; preds = %86
  %96 = load i8*, i8** %6, align 8
  %97 = load i8**, i8*** @kenvp, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  store i8* %96, i8** %100, align 8
  %101 = load i8**, i8*** @kenvp, align 8
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %101, i64 %104
  store i8* null, i8** %105, align 8
  %106 = call i32 @mtx_unlock(i32* @kenv_lock)
  br label %107

107:                                              ; preds = %95, %56
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %90, %39, %30, %17
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @setenv_static(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i8* @_getenv_dynamic(i8*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
