; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_compile.c_compile_re.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_compile.c_compile_re.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@rflags = common dso_local global i32 0, align 4
@REG_ICASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%lu: %s: RE error: %s\00", align 1
@linenum = common dso_local global i32 0, align 4
@fname = common dso_local global i32 0, align 4
@maxnsub = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i8*, i32)* @compile_re to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @compile_re(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @rflags, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @REG_ICASE, align 4
  %13 = load i32, i32* %7, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %11, %2
  %16 = call %struct.TYPE_6__* @malloc(i32 8)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %5, align 8
  %17 = icmp eq %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %15
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @regcomp(%struct.TYPE_6__* %21, i8* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load i32, i32* @linenum, align 4
  %28 = load i32, i32* @fname, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = call i32 @strregerror(i32 %29, %struct.TYPE_6__* %30)
  %32 = call i32 @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %26, %20
  %34 = load i64, i64* @maxnsub, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* @maxnsub, align 8
  br label %43

43:                                               ; preds = %39, %33
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  ret %struct.TYPE_6__* %44
}

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @regcomp(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @errx(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @strregerror(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
