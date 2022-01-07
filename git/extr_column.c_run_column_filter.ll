; ModuleID = '/home/carl/AnghaBench/git/extr_column.c_run_column_filter.c'
source_filename = "/home/carl/AnghaBench/git/extr_column.c_run_column_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8*, %struct.argv_array }
%struct.argv_array = type { i32 }
%struct.column_options = type { i32, i32, i32 }

@fd_out = common dso_local global i32 0, align 4
@column_process = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"column\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"--raw-mode=%d\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"--width=%d\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"--indent=%s\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"--padding=%d\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @run_column_filter(i32 %0, %struct.column_options* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.column_options*, align 8
  %6 = alloca %struct.argv_array*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.column_options* %1, %struct.column_options** %5, align 8
  %7 = load i32, i32* @fd_out, align 4
  %8 = icmp ne i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %73

10:                                               ; preds = %2
  %11 = call i32 @child_process_init(%struct.TYPE_4__* @column_process)
  store %struct.argv_array* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @column_process, i32 0, i32 3), %struct.argv_array** %6, align 8
  %12 = load %struct.argv_array*, %struct.argv_array** %6, align 8
  %13 = call i32 @argv_array_push(%struct.argv_array* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.argv_array*, %struct.argv_array** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @argv_array_pushf(%struct.argv_array* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load %struct.column_options*, %struct.column_options** %5, align 8
  %18 = icmp ne %struct.column_options* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %10
  %20 = load %struct.column_options*, %struct.column_options** %5, align 8
  %21 = getelementptr inbounds %struct.column_options, %struct.column_options* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.argv_array*, %struct.argv_array** %6, align 8
  %26 = load %struct.column_options*, %struct.column_options** %5, align 8
  %27 = getelementptr inbounds %struct.column_options, %struct.column_options* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @argv_array_pushf(%struct.argv_array* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %24, %19, %10
  %31 = load %struct.column_options*, %struct.column_options** %5, align 8
  %32 = icmp ne %struct.column_options* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load %struct.column_options*, %struct.column_options** %5, align 8
  %35 = getelementptr inbounds %struct.column_options, %struct.column_options* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.argv_array*, %struct.argv_array** %6, align 8
  %40 = load %struct.column_options*, %struct.column_options** %5, align 8
  %41 = getelementptr inbounds %struct.column_options, %struct.column_options* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @argv_array_pushf(%struct.argv_array* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %38, %33, %30
  %45 = load %struct.column_options*, %struct.column_options** %5, align 8
  %46 = icmp ne %struct.column_options* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load %struct.column_options*, %struct.column_options** %5, align 8
  %49 = getelementptr inbounds %struct.column_options, %struct.column_options* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.argv_array*, %struct.argv_array** %6, align 8
  %54 = load %struct.column_options*, %struct.column_options** %5, align 8
  %55 = getelementptr inbounds %struct.column_options, %struct.column_options* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @argv_array_pushf(%struct.argv_array* %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %52, %47, %44
  %59 = load i32, i32* @stdout, align 4
  %60 = call i32 @fflush(i32 %59)
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @column_process, i32 0, i32 0), align 8
  %61 = call i8* @dup(i32 1)
  store i8* %61, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @column_process, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @column_process, i32 0, i32 1), align 4
  %62 = call i64 @start_command(%struct.TYPE_4__* @column_process)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 -2, i32* %3, align 4
  br label %73

65:                                               ; preds = %58
  %66 = call i8* @dup(i32 1)
  %67 = ptrtoint i8* %66 to i32
  store i32 %67, i32* @fd_out, align 4
  %68 = call i32 @close(i32 1)
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @column_process, i32 0, i32 0), align 8
  %70 = call i32 @dup2(i32 %69, i32 1)
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @column_process, i32 0, i32 0), align 8
  %72 = call i32 @close(i32 %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %65, %64, %9
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @child_process_init(%struct.TYPE_4__*) #1

declare dso_local i32 @argv_array_push(%struct.argv_array*, i8*) #1

declare dso_local i32 @argv_array_pushf(%struct.argv_array*, i8*, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i8* @dup(i32) #1

declare dso_local i64 @start_command(%struct.TYPE_4__*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
