; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/efibootmgr/extr_efibootmgr.c_create_loadopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/efibootmgr/extr_efibootmgr.c_create_loadopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BAD_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i32, i32*, i64, i8*, i32*, i64)* @create_loadopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_loadopt(i32* %0, i64 %1, i32 %2, i32* %3, i64 %4, i8* %5, i32* %6, i64 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i64 %4, i64* %14, align 8
  store i8* %5, i8** %15, align 8
  store i32* %6, i32** %16, align 8
  store i64 %7, i64* %17, align 8
  store i32* null, i32** %18, align 8
  %22 = load i32*, i32** %10, align 8
  store i32* %22, i32** %19, align 8
  store i64 0, i64* %20, align 8
  %23 = load i32*, i32** %16, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %8
  %26 = load i64, i64* %17, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i64, i64* @BAD_LENGTH, align 8
  store i64 %29, i64* %9, align 8
  br label %101

30:                                               ; preds = %25, %8
  %31 = load i32*, i32** %13, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i64, i64* %14, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i64, i64* @BAD_LENGTH, align 8
  store i64 %37, i64* %9, align 8
  br label %101

38:                                               ; preds = %33, %30
  %39 = load i8*, i8** %15, align 8
  %40 = call i32 @utf8_to_ucs2(i8* %39, i32** %18, i64* %20)
  %41 = load i64, i64* %20, align 8
  %42 = add i64 8, %41
  %43 = load i64, i64* %14, align 8
  %44 = add i64 %42, %43
  %45 = load i64, i64* %17, align 8
  %46 = add i64 %44, %45
  store i64 %46, i64* %21, align 8
  %47 = load i64, i64* %21, align 8
  %48 = load i64, i64* %11, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %38
  %51 = load i32*, i32** %18, align 8
  %52 = call i32 @free(i32* %51)
  %53 = load i64, i64* @BAD_LENGTH, align 8
  store i64 %53, i64* %9, align 8
  br label %101

54:                                               ; preds = %38
  %55 = load i32*, i32** %19, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @le32enc(i32* %55, i32 %56)
  %58 = load i32*, i32** %19, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  store i32* %59, i32** %19, align 8
  %60 = load i32*, i32** %19, align 8
  %61 = load i64, i64* %14, align 8
  %62 = call i32 @le16enc(i32* %60, i64 %61)
  %63 = load i32*, i32** %19, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  store i32* %64, i32** %19, align 8
  %65 = load i32*, i32** %19, align 8
  %66 = load i32*, i32** %18, align 8
  %67 = load i64, i64* %20, align 8
  %68 = call i32 @memcpy(i32* %65, i32* %66, i64 %67)
  %69 = load i64, i64* %20, align 8
  %70 = load i32*, i32** %19, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 %69
  store i32* %71, i32** %19, align 8
  %72 = load i32*, i32** %18, align 8
  %73 = call i32 @free(i32* %72)
  %74 = load i32*, i32** %19, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = load i64, i64* %14, align 8
  %77 = call i32 @memcpy(i32* %74, i32* %75, i64 %76)
  %78 = load i64, i64* %14, align 8
  %79 = load i32*, i32** %19, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 %78
  store i32* %80, i32** %19, align 8
  %81 = load i32*, i32** %16, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %94

83:                                               ; preds = %54
  %84 = load i64, i64* %17, align 8
  %85 = icmp ugt i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load i32*, i32** %19, align 8
  %88 = load i32*, i32** %16, align 8
  %89 = load i64, i64* %17, align 8
  %90 = call i32 @memcpy(i32* %87, i32* %88, i64 %89)
  %91 = load i64, i64* %17, align 8
  %92 = load i32*, i32** %19, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 %91
  store i32* %93, i32** %19, align 8
  br label %94

94:                                               ; preds = %86, %83, %54
  %95 = load i32*, i32** %19, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = ptrtoint i32* %95 to i64
  %98 = ptrtoint i32* %96 to i64
  %99 = sub i64 %97, %98
  %100 = sdiv exact i64 %99, 4
  store i64 %100, i64* %9, align 8
  br label %101

101:                                              ; preds = %94, %50, %36, %28
  %102 = load i64, i64* %9, align 8
  ret i64 %102
}

declare dso_local i32 @utf8_to_ucs2(i8*, i32**, i64*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @le32enc(i32*, i32) #1

declare dso_local i32 @le16enc(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
