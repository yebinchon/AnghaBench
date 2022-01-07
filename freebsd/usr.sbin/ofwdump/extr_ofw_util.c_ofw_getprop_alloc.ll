; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ofwdump/extr_ofw_util.c_ofw_getprop_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ofwdump/extr_ofw_util.c_ofw_getprop_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofiocdesc = type { i8*, i32, i8*, i32, i32 }

@OFIOCMAXVALUE = common dso_local global i32 0, align 4
@OFIOCGET = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@EX_IOERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ioctl(..., OFIOCGET, ...) failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ofw_getprop_alloc(i32 %0, i32 %1, i8* %2, i8** %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ofiocdesc, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  br label %17

17:                                               ; preds = %78, %6
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @ofw_getproplen(i32 %18, i32 %19, i8* %20)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %15, align 4
  store i32 %25, i32* %7, align 4
  br label %89

26:                                               ; preds = %17
  %27 = load i32*, i32** %12, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* %13, align 4
  %31 = add nsw i32 %29, %30
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %26
  %34 = load i8**, i8*** %11, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i8**, i8*** %11, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @free(i8* %39)
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* @OFIOCMAXVALUE, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32*, i32** %12, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @ofw_malloc(i32 %49)
  %51 = load i8**, i8*** %11, align 8
  store i8* %50, i8** %51, align 8
  br label %52

52:                                               ; preds = %41, %26
  %53 = load i32, i32* %9, align 4
  %54 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %14, i32 0, i32 4
  store i32 %53, i32* %54, align 4
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %14, i32 0, i32 3
  store i32 %56, i32* %57, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %14, i32 0, i32 0
  store i8* %58, i8** %59, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %13, align 4
  %63 = sub nsw i32 %61, %62
  %64 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %14, i32 0, i32 1
  store i32 %63, i32* %64, align 8
  %65 = load i8**, i8*** %11, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %14, i32 0, i32 2
  store i8* %66, i8** %67, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @OFIOCGET, align 4
  %70 = call i32 @ioctl(i32 %68, i32 %69, %struct.ofiocdesc* %14)
  store i32 %70, i32* %16, align 4
  br label %71

71:                                               ; preds = %52
  %72 = load i32, i32* %16, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i64, i64* @errno, align 8
  %76 = load i64, i64* @ENOMEM, align 8
  %77 = icmp eq i64 %75, %76
  br label %78

78:                                               ; preds = %74, %71
  %79 = phi i1 [ false, %71 ], [ %77, %74 ]
  br i1 %79, label %17, label %80

80:                                               ; preds = %78
  %81 = load i32, i32* %16, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* @EX_IOERR, align 4
  %85 = call i32 @err(i32 %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %80
  %87 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %14, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %86, %24
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i32 @ofw_getproplen(i32, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @ofw_malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ofiocdesc*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
