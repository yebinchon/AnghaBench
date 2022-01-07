; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fifolog/lib/extr_fifolog_int.c_fifolog_int_findend.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fifolog/lib/extr_fifolog_int.c_fifolog_int_findend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fifolog_file = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Read error, first record\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Read error while searching\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fifolog_int_findend(%struct.fifolog_file* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fifolog_file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fifolog_file* %0, %struct.fifolog_file** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.fifolog_file*, %struct.fifolog_file** %4, align 8
  %12 = call i32 @fifolog_int_file_assert(%struct.fifolog_file* %11)
  store i32 0, i32* %6, align 4
  %13 = load %struct.fifolog_file*, %struct.fifolog_file** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @fifolog_int_read(%struct.fifolog_file* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %74

19:                                               ; preds = %2
  %20 = load %struct.fifolog_file*, %struct.fifolog_file** %4, align 8
  %21 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @be32dec(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  store i8* null, i8** %3, align 8
  br label %74

29:                                               ; preds = %19
  %30 = load %struct.fifolog_file*, %struct.fifolog_file** %4, align 8
  %31 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %32, 2
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %68, %29
  %35 = load %struct.fifolog_file*, %struct.fifolog_file** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add i32 %36, %37
  %39 = call i32 @fifolog_int_read(%struct.fifolog_file* %35, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %74

43:                                               ; preds = %34
  %44 = load %struct.fifolog_file*, %struct.fifolog_file** %4, align 8
  %45 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @be32dec(i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = add i32 %49, %50
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %43
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = add i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %53, %43
  %59 = load i32, i32* %7, align 4
  %60 = udiv i32 %59, 2
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.fifolog_file*, %struct.fifolog_file** %4, align 8
  %63 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ult i32 %61, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  br label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %7, align 4
  %70 = icmp ugt i32 %69, 0
  br i1 %70, label %34, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = load i32*, i32** %5, align 8
  store i32 %72, i32* %73, align 4
  store i8* null, i8** %3, align 8
  br label %74

74:                                               ; preds = %71, %42, %26, %18
  %75 = load i8*, i8** %3, align 8
  ret i8* %75
}

declare dso_local i32 @fifolog_int_file_assert(%struct.fifolog_file*) #1

declare dso_local i32 @fifolog_int_read(%struct.fifolog_file*, i32) #1

declare dso_local i32 @be32dec(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
