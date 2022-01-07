; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/find/extr_function.c_c_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/find/extr_function.c_c_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.group = type { i64 }

@FTS_NOSTAT = common dso_local global i32 0, align 4
@ftsoptions = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: %s: no such group\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @c_group(%struct.TYPE_10__* %0, i8*** %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8***, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.group*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i8*** %1, i8**** %4, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = load i8***, i8**** %4, align 8
  %12 = call i8* @nextarg(%struct.TYPE_10__* %10, i8*** %11)
  store i8* %12, i8** %5, align 8
  %13 = load i32, i32* @FTS_NOSTAT, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* @ftsoptions, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* @ftsoptions, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = call %struct.TYPE_9__* @palloc(%struct.TYPE_10__* %17)
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %6, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call %struct.group* @getgrnam(i8* %19)
  store %struct.group* %20, %struct.group** %7, align 8
  %21 = load %struct.group*, %struct.group** %7, align 8
  %22 = icmp eq %struct.group* %21, null
  br i1 %22, label %23, label %63

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 45
  br i1 %29, label %36, label %30

30:                                               ; preds = %23
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 43
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %23
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  br label %39

39:                                               ; preds = %36, %30
  %40 = load i8*, i8** %5, align 8
  %41 = call i64 @atoi(i8* %40)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %53, i8* %54)
  br label %56

56:                                               ; preds = %50, %44, %39
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %9, align 8
  %62 = call i64 @find_parsenum(%struct.TYPE_9__* %57, i32 %60, i8* %61, i32* null)
  store i64 %62, i64* %8, align 8
  br label %67

63:                                               ; preds = %2
  %64 = load %struct.group*, %struct.group** %7, align 8
  %65 = getelementptr inbounds %struct.group, %struct.group* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %8, align 8
  br label %67

67:                                               ; preds = %63, %56
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  ret %struct.TYPE_9__* %71
}

declare dso_local i8* @nextarg(%struct.TYPE_10__*, i8***) #1

declare dso_local %struct.TYPE_9__* @palloc(%struct.TYPE_10__*) #1

declare dso_local %struct.group* @getgrnam(i8*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @errx(i32, i8*, i32, i8*) #1

declare dso_local i64 @find_parsenum(%struct.TYPE_9__*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
