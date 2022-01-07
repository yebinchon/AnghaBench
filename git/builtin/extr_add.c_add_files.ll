; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_add.c_add_files.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_add.c_add_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_struct = type { i32, i32, %struct.TYPE_4__**, %struct.TYPE_3__** }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8* }

@stderr = common dso_local global i32 0, align 4
@ignore_error = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Use -f if you really want to add them.\0A\00", align 1
@the_index = common dso_local global i32 0, align 4
@ignore_add_errors = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"adding files failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dir_struct*, i32)* @add_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_files(%struct.dir_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.dir_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dir_struct* %0, %struct.dir_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.dir_struct*, %struct.dir_struct** %3, align 8
  %8 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = load i32, i32* @stderr, align 4
  %13 = load i8*, i8** @ignore_error, align 8
  %14 = call i8* @_(i8* %13)
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* %14)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %34, %11
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.dir_struct*, %struct.dir_struct** %3, align 8
  %19 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %16
  %23 = load i32, i32* @stderr, align 4
  %24 = load %struct.dir_struct*, %struct.dir_struct** %3, align 8
  %25 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %26, i64 %28
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %16

37:                                               ; preds = %16
  %38 = load i32, i32* @stderr, align 4
  %39 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* %39)
  store i32 1, i32* %6, align 4
  br label %41

41:                                               ; preds = %37, %2
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %80, %41
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.dir_struct*, %struct.dir_struct** %3, align 8
  %45 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %83

48:                                               ; preds = %42
  %49 = load %struct.dir_struct*, %struct.dir_struct** %3, align 8
  %50 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %51, i64 %53
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i64 @add_file_to_index(i32* @the_index, i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %48
  %62 = load i32, i32* @ignore_add_errors, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %66 = call i32 @die(i8* %65)
  br label %67

67:                                               ; preds = %64, %61
  store i32 1, i32* %6, align 4
  br label %79

68:                                               ; preds = %48
  %69 = load %struct.dir_struct*, %struct.dir_struct** %3, align 8
  %70 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %71, i64 %73
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @check_embedded_repo(i32 %77)
  br label %79

79:                                               ; preds = %68, %67
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %42

83:                                               ; preds = %42
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @add_file_to_index(i32*, i32, i32) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @check_embedded_repo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
