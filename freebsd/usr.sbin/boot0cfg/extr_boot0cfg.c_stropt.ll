; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/boot0cfg/extr_boot0cfg.c_stropt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/boot0cfg/extr_boot0cfg.c_stropt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@nopt = common dso_local global i32 0, align 4
@opttbl = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"%s: Unknown -o option\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*)* @stropt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stropt(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @strdup(i8* %13)
  store i8* %14, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = call i32 @err(i32 1, i32* null)
  br label %18

18:                                               ; preds = %16, %3
  %19 = load i8*, i8** %8, align 8
  store i8* %19, i8** %9, align 8
  br label %20

20:                                               ; preds = %89, %18
  %21 = load i8*, i8** %9, align 8
  %22 = call i8* @strtok(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %90

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %10, align 4
  br i1 %28, label %30, label %33

30:                                               ; preds = %24
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  store i8* %32, i8** %7, align 8
  br label %33

33:                                               ; preds = %30, %24
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %50, %33
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @nopt, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @opttbl, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @strcmp(i8* %39, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %38
  br label %53

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %34

53:                                               ; preds = %48, %34
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @nopt, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %57, %53
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @opttbl, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i32, i32* %10, align 4
  %70 = xor i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %68, %60
  %72 = load i32, i32* %11, align 4
  %73 = sub nsw i32 7, %72
  %74 = shl i32 1, %73
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load i32, i32* %12, align 4
  %79 = xor i32 %78, -1
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %79
  store i32 %82, i32* %80, align 4
  br label %88

83:                                               ; preds = %71
  %84 = load i32, i32* %12, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %84
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %83, %77
  br label %89

89:                                               ; preds = %88
  store i8* null, i8** %9, align 8
  br label %20

90:                                               ; preds = %20
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 @free(i8* %91)
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
