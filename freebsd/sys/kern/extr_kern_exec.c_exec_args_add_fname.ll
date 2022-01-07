; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_exec_args_add_fname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_exec_args_add_fname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_args = type { i64, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [23 x i8] c"fname already appended\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"already appending to args\00", align 1
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@exec_map_entry_size = common dso_local global i64 0, align 8
@ARG_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"too little space remaining for arguments %zu < %zu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exec_args_add_fname(%struct.image_args* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.image_args*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.image_args* %0, %struct.image_args** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.image_args*, %struct.image_args** %5, align 8
  %11 = getelementptr inbounds %struct.image_args, %struct.image_args* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.image_args*, %struct.image_args** %5, align 8
  %17 = getelementptr inbounds %struct.image_args, %struct.image_args* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %62

24:                                               ; preds = %3
  %25 = load %struct.image_args*, %struct.image_args** %5, align 8
  %26 = getelementptr inbounds %struct.image_args, %struct.image_args* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.image_args*, %struct.image_args** %5, align 8
  %29 = getelementptr inbounds %struct.image_args, %struct.image_args* %28, i32 0, i32 4
  store i32* %27, i32** %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @UIO_SYSSPACE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %24
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.image_args*, %struct.image_args** %5, align 8
  %36 = getelementptr inbounds %struct.image_args, %struct.image_args* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @PATH_MAX, align 4
  %39 = call i32 @copystr(i8* %34, i32* %37, i32 %38, i64* %9)
  br label %47

40:                                               ; preds = %24
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.image_args*, %struct.image_args** %5, align 8
  %43 = getelementptr inbounds %struct.image_args, %struct.image_args* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @PATH_MAX, align 4
  %46 = call i32 @copyinstr(i8* %41, i32* %44, i32 %45, i64* %9)
  br label %47

47:                                               ; preds = %40, %33
  %48 = phi i32 [ %39, %33 ], [ %46, %40 ]
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @ENAMETOOLONG, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @E2BIG, align 4
  br label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %8, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  store i32 %60, i32* %4, align 4
  br label %91

61:                                               ; preds = %47
  br label %63

62:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %63

63:                                               ; preds = %62, %61
  %64 = load %struct.image_args*, %struct.image_args** %5, align 8
  %65 = getelementptr inbounds %struct.image_args, %struct.image_args* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load %struct.image_args*, %struct.image_args** %5, align 8
  %70 = getelementptr inbounds %struct.image_args, %struct.image_args* %69, i32 0, i32 1
  store i32* %68, i32** %70, align 8
  %71 = load %struct.image_args*, %struct.image_args** %5, align 8
  %72 = getelementptr inbounds %struct.image_args, %struct.image_args* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.image_args*, %struct.image_args** %5, align 8
  %75 = getelementptr inbounds %struct.image_args, %struct.image_args* %74, i32 0, i32 2
  store i32* %73, i32** %75, align 8
  %76 = load i64, i64* @exec_map_entry_size, align 8
  %77 = load i64, i64* %9, align 8
  %78 = sub i64 %76, %77
  %79 = load i64, i64* @ARG_MAX, align 8
  %80 = icmp uge i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i64, i64* @exec_map_entry_size, align 8
  %83 = load i64, i64* %9, align 8
  %84 = sub i64 %82, %83
  %85 = load i64, i64* @ARG_MAX, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = call i32 @KASSERT(i32 %81, i8* %86)
  %88 = load i64, i64* @ARG_MAX, align 8
  %89 = load %struct.image_args*, %struct.image_args** %5, align 8
  %90 = getelementptr inbounds %struct.image_args, %struct.image_args* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %63, %59
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @copystr(i8*, i32*, i32, i64*) #1

declare dso_local i32 @copyinstr(i8*, i32*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
