; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_sort_list_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_sort_list_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.sort_list = type { i64, %struct.sort_list_item** }
%struct.sort_list_item = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@sort_opts_vals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sort_list_dump(%struct.sort_list* %0, i8* %1) #0 {
  %3 = alloca %struct.sort_list*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sort_list_item*, align 8
  %8 = alloca %struct.sort_list_item*, align 8
  store %struct.sort_list* %0, %struct.sort_list** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.sort_list*, %struct.sort_list** %3, align 8
  %10 = icmp ne %struct.sort_list* %9, null
  br i1 %10, label %11, label %89

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %89

14:                                               ; preds = %11
  %15 = load i8*, i8** %4, align 8
  %16 = call i32* @openfile(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @err(i32 2, i32* null)
  br label %21

21:                                               ; preds = %19, %14
  %22 = load %struct.sort_list*, %struct.sort_list** %3, align 8
  %23 = getelementptr inbounds %struct.sort_list, %struct.sort_list* %22, i32 0, i32 1
  %24 = load %struct.sort_list_item**, %struct.sort_list_item*** %23, align 8
  %25 = icmp ne %struct.sort_list_item** %24, null
  br i1 %25, label %26, label %85

26:                                               ; preds = %21
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sort_opts_vals, i32 0, i32 1), align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %52, label %29

29:                                               ; preds = %26
  store i64 0, i64* %6, align 8
  br label %30

30:                                               ; preds = %48, %29
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.sort_list*, %struct.sort_list** %3, align 8
  %33 = getelementptr inbounds %struct.sort_list, %struct.sort_list* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load %struct.sort_list*, %struct.sort_list** %3, align 8
  %38 = getelementptr inbounds %struct.sort_list, %struct.sort_list* %37, i32 0, i32 1
  %39 = load %struct.sort_list_item**, %struct.sort_list_item*** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.sort_list_item*, %struct.sort_list_item** %39, i64 %40
  %42 = load %struct.sort_list_item*, %struct.sort_list_item** %41, align 8
  %43 = getelementptr inbounds %struct.sort_list_item, %struct.sort_list_item* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sort_opts_vals, i32 0, i32 0), align 4
  %47 = call i32 @bwsfwrite(i32 %44, i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %36
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %6, align 8
  br label %30

51:                                               ; preds = %30
  br label %84

52:                                               ; preds = %26
  store %struct.sort_list_item* null, %struct.sort_list_item** %7, align 8
  store i64 0, i64* %6, align 8
  br label %53

53:                                               ; preds = %80, %52
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.sort_list*, %struct.sort_list** %3, align 8
  %56 = getelementptr inbounds %struct.sort_list, %struct.sort_list* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ult i64 %54, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %53
  %60 = load %struct.sort_list*, %struct.sort_list** %3, align 8
  %61 = getelementptr inbounds %struct.sort_list, %struct.sort_list* %60, i32 0, i32 1
  %62 = load %struct.sort_list_item**, %struct.sort_list_item*** %61, align 8
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds %struct.sort_list_item*, %struct.sort_list_item** %62, i64 %63
  %65 = load %struct.sort_list_item*, %struct.sort_list_item** %64, align 8
  store %struct.sort_list_item* %65, %struct.sort_list_item** %8, align 8
  %66 = load %struct.sort_list_item*, %struct.sort_list_item** %7, align 8
  %67 = icmp eq %struct.sort_list_item* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %59
  %69 = call i64 @list_coll(%struct.sort_list_item** %7, %struct.sort_list_item** %8)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68, %59
  %72 = load %struct.sort_list_item*, %struct.sort_list_item** %8, align 8
  %73 = getelementptr inbounds %struct.sort_list_item, %struct.sort_list_item* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sort_opts_vals, i32 0, i32 0), align 4
  %77 = call i32 @bwsfwrite(i32 %74, i32* %75, i32 %76)
  %78 = load %struct.sort_list_item*, %struct.sort_list_item** %8, align 8
  store %struct.sort_list_item* %78, %struct.sort_list_item** %7, align 8
  br label %79

79:                                               ; preds = %71, %68
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %6, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %6, align 8
  br label %53

83:                                               ; preds = %53
  br label %84

84:                                               ; preds = %83, %51
  br label %85

85:                                               ; preds = %84, %21
  %86 = load i32*, i32** %5, align 8
  %87 = load i8*, i8** %4, align 8
  %88 = call i32 @closefile(i32* %86, i8* %87)
  br label %89

89:                                               ; preds = %85, %11, %2
  ret void
}

declare dso_local i32* @openfile(i8*, i8*) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i32 @bwsfwrite(i32, i32*, i32) #1

declare dso_local i64 @list_coll(%struct.sort_list_item**, %struct.sort_list_item**) #1

declare dso_local i32 @closefile(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
