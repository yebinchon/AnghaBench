; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/newkey/extr_generic.c_genkeys.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/newkey/extr_generic.c_genkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROOT = common dso_local global i16 0, align 2
@HEXMODULUS = common dso_local global i32 0, align 4
@KEYSIZE = common dso_local global i32 0, align 4
@BASE = common dso_local global i16 0, align 2
@BASEBITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @genkeys(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i16, align 2
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %18 = call i32* @mp_itom(i16 signext 0)
  store i32* %18, i32** %8, align 8
  %19 = call i32* @mp_itom(i16 signext 0)
  store i32* %19, i32** %9, align 8
  %20 = call i32* @mp_itom(i16 signext -32768)
  store i32* %20, i32** %11, align 8
  %21 = load i16, i16* @PROOT, align 2
  %22 = call i32* @mp_itom(i16 signext %21)
  store i32* %22, i32** %12, align 8
  %23 = load i32, i32* @HEXMODULUS, align 4
  %24 = call i32* @mp_xtom(i32 %23)
  store i32* %24, i32** %13, align 8
  %25 = load i32, i32* @KEYSIZE, align 4
  %26 = sext i32 %25 to i64
  %27 = udiv i64 %26, 15
  %28 = add i64 %27, 1
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %15, align 8
  %30 = alloca i16, i64 %28, align 16
  store i64 %28, i64* %16, align 8
  %31 = bitcast i16* %30 to i8*
  %32 = mul nuw i64 2, %28
  %33 = trunc i64 %32 to i32
  %34 = load i8*, i8** %6, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = call i32 @getseed(i8* %31, i32 %33, i32* %35)
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %65, %3
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = load i32, i32* @KEYSIZE, align 4
  %41 = sext i32 %40 to i64
  %42 = udiv i64 %41, 15
  %43 = add i64 %42, 1
  %44 = icmp ult i64 %39, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %37
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i16, i16* %30, i64 %47
  %49 = load i16, i16* %48, align 2
  %50 = zext i16 %49 to i32
  %51 = srem i32 %50, 32768
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %14, align 2
  %53 = load i16, i16* %14, align 2
  %54 = call i32* @mp_itom(i16 signext %53)
  store i32* %54, i32** %10, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @mp_mult(i32* %55, i32* %56, i32* %57)
  %59 = load i32*, i32** %9, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @mp_madd(i32* %59, i32* %60, i32* %61)
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @mp_mfree(i32* %63)
  br label %65

65:                                               ; preds = %45
  %66 = load i32, i32* %7, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %37

68:                                               ; preds = %37
  %69 = call i32* @mp_itom(i16 signext 0)
  store i32* %69, i32** %10, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @mp_mdiv(i32* %70, i32* %71, i32* %72, i32* %73)
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @mp_mfree(i32* %75)
  %77 = load i32*, i32** %12, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @mp_pow(i32* %77, i32* %78, i32* %79, i32* %80)
  %82 = load i32*, i32** %9, align 8
  %83 = call i8* @mp_mtox(i32* %82)
  store i8* %83, i8** %17, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = load i8*, i8** %17, align 8
  %86 = call i32 @adjust(i8* %84, i8* %85)
  %87 = load i32*, i32** %8, align 8
  %88 = call i8* @mp_mtox(i32* %87)
  store i8* %88, i8** %17, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = load i8*, i8** %17, align 8
  %91 = call i32 @adjust(i8* %89, i8* %90)
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @mp_mfree(i32* %92)
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @mp_mfree(i32* %94)
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @mp_mfree(i32* %96)
  %98 = load i32*, i32** %12, align 8
  %99 = call i32 @mp_mfree(i32* %98)
  %100 = load i32*, i32** %13, align 8
  %101 = call i32 @mp_mfree(i32* %100)
  %102 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %102)
  ret void
}

declare dso_local i32* @mp_itom(i16 signext) #1

declare dso_local i32* @mp_xtom(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @getseed(i8*, i32, i32*) #1

declare dso_local i32 @mp_mult(i32*, i32*, i32*) #1

declare dso_local i32 @mp_madd(i32*, i32*, i32*) #1

declare dso_local i32 @mp_mfree(i32*) #1

declare dso_local i32 @mp_mdiv(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mp_pow(i32*, i32*, i32*, i32*) #1

declare dso_local i8* @mp_mtox(i32*) #1

declare dso_local i32 @adjust(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
