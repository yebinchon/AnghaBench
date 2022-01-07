; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_set_default_descr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_set_default_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"vendor=%#x product=%#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pccard_set_default_descr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pccard_set_default_descr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @pccard_get_vendor_str(i32 %9, i8** %4)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %69

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @pccard_get_product_str(i32 %14, i8** %5)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %69

18:                                               ; preds = %13
  %19 = load i8*, i8** %4, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %44

21:                                               ; preds = %18
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = add nsw i32 %26, %28
  %30 = add nsw i32 %29, 2
  %31 = load i32, i32* @M_DEVBUF, align 4
  %32 = load i32, i32* @M_WAITOK, align 4
  %33 = call i8* @malloc(i32 %30, i32 %31, i32 %32)
  store i8* %33, i8** %8, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %36)
  %38 = load i32, i32* %3, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @device_set_desc_copy(i32 %38, i8* %39)
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* @M_DEVBUF, align 4
  %43 = call i32 @free(i8* %41, i32 %42)
  br label %68

44:                                               ; preds = %21, %18
  %45 = load i32, i32* %3, align 4
  %46 = call i64 @pccard_get_vendor(i32 %45, i32* %6)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %69

49:                                               ; preds = %44
  %50 = load i32, i32* %3, align 4
  %51 = call i64 @pccard_get_product(i32 %50, i32* %7)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %69

54:                                               ; preds = %49
  %55 = load i32, i32* @M_DEVBUF, align 4
  %56 = load i32, i32* @M_WAITOK, align 4
  %57 = call i8* @malloc(i32 100, i32 %55, i32 %56)
  store i8* %57, i8** %8, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @snprintf(i8* %58, i32 100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @device_set_desc_copy(i32 %62, i8* %63)
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* @M_DEVBUF, align 4
  %67 = call i32 @free(i8* %65, i32 %66)
  br label %68

68:                                               ; preds = %54, %24
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %53, %48, %17, %12
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @pccard_get_vendor_str(i32, i8**) #1

declare dso_local i64 @pccard_get_product_str(i32, i8**) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i64 @pccard_get_vendor(i32, i32*) #1

declare dso_local i64 @pccard_get_product(i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
