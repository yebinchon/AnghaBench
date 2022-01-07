; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_exec_copyin_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_exec_copyin_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_args = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exec_copyin_args(%struct.image_args* %0, i8* %1, i32 %2, i8** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.image_args*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.image_args* %0, %struct.image_args** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %15 = load %struct.image_args*, %struct.image_args** %7, align 8
  %16 = call i32 @bzero(%struct.image_args* %15, i32 4)
  %17 = load i8**, i8*** %10, align 8
  %18 = icmp eq i8** %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @EFAULT, align 4
  store i32 %20, i32* %6, align 4
  br label %93

21:                                               ; preds = %5
  %22 = load %struct.image_args*, %struct.image_args** %7, align 8
  %23 = call i32 @exec_alloc_args(%struct.image_args* %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %6, align 4
  br label %93

28:                                               ; preds = %21
  %29 = load %struct.image_args*, %struct.image_args** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @exec_args_add_fname(%struct.image_args* %29, i8* %30, i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %89

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %59, %36
  %38 = load i8**, i8*** %10, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i32 1
  store i8** %39, i8*** %10, align 8
  %40 = ptrtoint i8** %38 to i32
  %41 = call i32 @fueword(i32 %40, i64* %12)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @EFAULT, align 4
  store i32 %45, i32* %14, align 4
  br label %89

46:                                               ; preds = %37
  %47 = load i64, i64* %12, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %60

50:                                               ; preds = %46
  %51 = load %struct.image_args*, %struct.image_args** %7, align 8
  %52 = load i64, i64* %12, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = load i32, i32* @UIO_USERSPACE, align 4
  %55 = call i32 @exec_args_add_arg(%struct.image_args* %51, i8* %53, i32 %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %89

59:                                               ; preds = %50
  br label %37

60:                                               ; preds = %49
  %61 = load i8**, i8*** %11, align 8
  %62 = icmp ne i8** %61, null
  br i1 %62, label %63, label %88

63:                                               ; preds = %60
  br label %64

64:                                               ; preds = %86, %63
  %65 = load i8**, i8*** %11, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i32 1
  store i8** %66, i8*** %11, align 8
  %67 = ptrtoint i8** %65 to i32
  %68 = call i32 @fueword(i32 %67, i64* %13)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* @EFAULT, align 4
  store i32 %72, i32* %14, align 4
  br label %89

73:                                               ; preds = %64
  %74 = load i64, i64* %13, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %87

77:                                               ; preds = %73
  %78 = load %struct.image_args*, %struct.image_args** %7, align 8
  %79 = load i64, i64* %13, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = load i32, i32* @UIO_USERSPACE, align 4
  %82 = call i32 @exec_args_add_env(%struct.image_args* %78, i8* %80, i32 %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %89

86:                                               ; preds = %77
  br label %64

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %87, %60
  store i32 0, i32* %6, align 4
  br label %93

89:                                               ; preds = %85, %71, %58, %44, %35
  %90 = load %struct.image_args*, %struct.image_args** %7, align 8
  %91 = call i32 @exec_free_args(%struct.image_args* %90)
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %89, %88, %26, %19
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @bzero(%struct.image_args*, i32) #1

declare dso_local i32 @exec_alloc_args(%struct.image_args*) #1

declare dso_local i32 @exec_args_add_fname(%struct.image_args*, i8*, i32) #1

declare dso_local i32 @fueword(i32, i64*) #1

declare dso_local i32 @exec_args_add_arg(%struct.image_args*, i8*, i32) #1

declare dso_local i32 @exec_args_add_env(%struct.image_args*, i8*, i32) #1

declare dso_local i32 @exec_free_args(%struct.image_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
