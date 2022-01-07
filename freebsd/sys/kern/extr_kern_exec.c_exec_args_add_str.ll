; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_exec_args_add_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_exec_args_add_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_args = type { i64, i32*, i32* }

@.str = private unnamed_addr constant [21 x i8] c"endp not initialized\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"begin_argp not initialized\00", align 1
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_args*, i8*, i32, i32*)* @exec_args_add_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_args_add_str(%struct.image_args* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.image_args*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.image_args* %0, %struct.image_args** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.image_args*, %struct.image_args** %6, align 8
  %13 = getelementptr inbounds %struct.image_args, %struct.image_args* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.image_args*, %struct.image_args** %6, align 8
  %19 = getelementptr inbounds %struct.image_args, %struct.image_args* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @UIO_SYSSPACE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %4
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.image_args*, %struct.image_args** %6, align 8
  %30 = getelementptr inbounds %struct.image_args, %struct.image_args* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.image_args*, %struct.image_args** %6, align 8
  %33 = getelementptr inbounds %struct.image_args, %struct.image_args* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @copystr(i8* %28, i32* %31, i64 %34, i64* %11)
  br label %45

36:                                               ; preds = %4
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.image_args*, %struct.image_args** %6, align 8
  %39 = getelementptr inbounds %struct.image_args, %struct.image_args* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.image_args*, %struct.image_args** %6, align 8
  %42 = getelementptr inbounds %struct.image_args, %struct.image_args* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @copyinstr(i8* %37, i32* %40, i64 %43, i64* %11)
  br label %45

45:                                               ; preds = %36, %27
  %46 = phi i32 [ %35, %27 ], [ %44, %36 ]
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @ENAMETOOLONG, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @E2BIG, align 4
  br label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %10, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, i32* %5, align 4
  br label %73

59:                                               ; preds = %45
  %60 = load i64, i64* %11, align 8
  %61 = load %struct.image_args*, %struct.image_args** %6, align 8
  %62 = getelementptr inbounds %struct.image_args, %struct.image_args* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load %struct.image_args*, %struct.image_args** %6, align 8
  %67 = getelementptr inbounds %struct.image_args, %struct.image_args* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 %65
  store i32* %69, i32** %67, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %59, %57
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @copystr(i8*, i32*, i64, i64*) #1

declare dso_local i32 @copyinstr(i8*, i32*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
