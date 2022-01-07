; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_splash.c_splash_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_splash.c_splash_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@splash_adp = common dso_local global i32* null, align 8
@splash_decoder = common dso_local global i32* null, align 8
@decoders = common dso_local global i32 0, align 4
@decoder_set = common dso_local global i32** null, align 8
@DECODER_ARRAY_DELTA = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @splash_register(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** @splash_adp, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @splash_test(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = load i32*, i32** @splash_decoder, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32*, i32** @splash_adp, align 8
  %19 = call i32 @splash_term(i32* %18)
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @splash_new(i32* %24)
  br label %26

26:                                               ; preds = %23, %20
  br label %27

27:                                               ; preds = %26, %9
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %94

29:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %43, %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @decoders, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load i32**, i32*** @decoder_set, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %46

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %30

46:                                               ; preds = %41, %30
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @decoders, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %87

50:                                               ; preds = %46
  %51 = load i32, i32* @decoders, align 4
  %52 = load i32, i32* @DECODER_ARRAY_DELTA, align 4
  %53 = srem i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %87

55:                                               ; preds = %50
  %56 = load i32, i32* @decoders, align 4
  %57 = load i32, i32* @DECODER_ARRAY_DELTA, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = mul i64 8, %59
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* @M_DEVBUF, align 4
  %63 = load i32, i32* @M_NOWAIT, align 4
  %64 = call i32** @malloc(i32 %61, i32 %62, i32 %63)
  store i32** %64, i32*** %4, align 8
  %65 = load i32**, i32*** %4, align 8
  %66 = icmp eq i32** %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %55
  %68 = load i32, i32* @ENOMEM, align 4
  store i32 %68, i32* %2, align 4
  br label %94

69:                                               ; preds = %55
  %70 = load i32**, i32*** @decoder_set, align 8
  %71 = icmp ne i32** %70, null
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load i32**, i32*** @decoder_set, align 8
  %74 = load i32**, i32*** %4, align 8
  %75 = load i32, i32* @decoders, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 8, %76
  %78 = trunc i64 %77 to i32
  %79 = call i32 @bcopy(i32** %73, i32** %74, i32 %78)
  %80 = load i32**, i32*** @decoder_set, align 8
  %81 = load i32, i32* @M_DEVBUF, align 4
  %82 = call i32 @free(i32** %80, i32 %81)
  br label %83

83:                                               ; preds = %72, %69
  %84 = load i32**, i32*** %4, align 8
  store i32** %84, i32*** @decoder_set, align 8
  %85 = load i32, i32* @decoders, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @decoders, align 4
  store i32 %85, i32* %6, align 4
  br label %87

87:                                               ; preds = %83, %50, %46
  %88 = load i32*, i32** %3, align 8
  %89 = load i32**, i32*** @decoder_set, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  store i32* %88, i32** %92, align 8
  br label %93

93:                                               ; preds = %87
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %67, %27
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @splash_test(i32*) #1

declare dso_local i32 @splash_term(i32*) #1

declare dso_local i32 @splash_new(i32*) #1

declare dso_local i32** @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(i32**, i32**, i32) #1

declare dso_local i32 @free(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
