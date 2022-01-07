; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kbdmap/extr_kbdmap.c_vidcontrol.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kbdmap/extr_kbdmap.c_vidcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x11 = common dso_local global i64 0, align 8
@using_vt = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"vidcontrol -f %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".fnt\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%dx%d%c\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Which font size? %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"vidcontrol -f %s %s\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vidcontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vidcontrol(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i64, i64* @x11, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %74

12:                                               ; preds = %1
  %13 = load i64, i64* @using_vt, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @system(i8* %18)
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @free(i8* %20)
  br label %74

22:                                               ; preds = %12
  %23 = load i8*, i8** %2, align 8
  %24 = call i8* @strdup(i8* %23)
  store i8* %24, i8** %3, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = call i8* @strrchr(i8* %25, i8 signext 45)
  store i8* %26, i8** %4, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %67

29:                                               ; preds = %22
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %29
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %4, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = call i8* @strstr(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %39, i8** %5, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i8*, i8** %5, align 8
  store i8 0, i8* %42, align 1
  br label %43

43:                                               ; preds = %41, %35
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @sscanf(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %8, i32* %8, i8* %7)
  %46 = icmp ne i32 %45, 2
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* @stderr, align 4
  %49 = load i8*, i8** %2, align 8
  %50 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  br label %66

51:                                               ; preds = %43
  %52 = load i8*, i8** %4, align 8
  %53 = load i8*, i8** %2, align 8
  %54 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %52, i8* %53)
  %55 = load i64, i64* @verbose, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* @stderr, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %57, %51
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @system(i8* %62)
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @free(i8* %64)
  br label %66

66:                                               ; preds = %61, %47
  br label %71

67:                                               ; preds = %29, %22
  %68 = load i32, i32* @stderr, align 4
  %69 = load i8*, i8** %2, align 8
  %70 = call i32 @fprintf(i32 %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %67, %66
  %72 = load i8*, i8** %3, align 8
  %73 = call i32 @free(i8* %72)
  br label %74

74:                                               ; preds = %71, %15, %11
  ret void
}

declare dso_local i32 @asprintf(i8**, i8*, i8*, ...) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
