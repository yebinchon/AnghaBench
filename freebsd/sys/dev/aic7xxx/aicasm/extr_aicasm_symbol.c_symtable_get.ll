; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/aicasm/extr_aicasm_symbol.c_symtable_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/aicasm/extr_aicasm_symbol.c_symtable_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32)*, i64 (%struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32)* }
%struct.TYPE_9__ = type { i32, i32** }

@symtable = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"Symbol table get operation failed\00", align 1
@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Symtable put failed\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Unexpected return value from db get routine\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @symtable_get(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32** @strdup(i8* %9)
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store i32** %10, i32*** %11, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** @symtable, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32)** %16, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @symtable, align 8
  %19 = call i32 %17(%struct.TYPE_10__* %18, %struct.TYPE_9__* %5, %struct.TYPE_9__* %6, i32 0)
  store i32 %19, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = call i32 @perror(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EX_SOFTWARE, align 4
  %27 = call i32 @exit(i32 %26) #3
  unreachable

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %51

31:                                               ; preds = %28
  %32 = load i8*, i8** %3, align 8
  %33 = call i32* @symbol_create(i8* %32)
  store i32* %33, i32** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store i32** %8, i32*** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i32 8, i32* %35, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** @symtable, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i64 (%struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32)*, i64 (%struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32)** %37, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** @symtable, align 8
  %40 = call i64 %38(%struct.TYPE_10__* %39, %struct.TYPE_9__* %5, %struct.TYPE_9__* %6, i32 0)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EX_SOFTWARE, align 4
  %45 = call i32 @exit(i32 %44) #3
  unreachable

46:                                               ; preds = %31
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %48 = load i32**, i32*** %47, align 8
  %49 = call i32 @free(i32** %48)
  %50 = load i32*, i32** %8, align 8
  store i32* %50, i32** %2, align 8
  br label %63

51:                                               ; preds = %28
  %52 = call i32 @perror(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @EX_SOFTWARE, align 4
  %54 = call i32 @exit(i32 %53) #3
  unreachable

55:                                               ; preds = %1
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %57 = load i32**, i32*** %56, align 8
  %58 = call i32 @memcpy(i32** %4, i32** %57, i32 8)
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %60 = load i32**, i32*** %59, align 8
  %61 = call i32 @free(i32** %60)
  %62 = load i32*, i32** %4, align 8
  store i32* %62, i32** %2, align 8
  br label %63

63:                                               ; preds = %55, %46
  %64 = load i32*, i32** %2, align 8
  ret i32* %64
}

declare dso_local i32** @strdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @symbol_create(i8*) #1

declare dso_local i32 @free(i32**) #1

declare dso_local i32 @memcpy(i32**, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
