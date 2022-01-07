; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_isa_dma.c_isa_dma_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_isa_dma.c_isa_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_DEVBUF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@isa_dma_lock = common dso_local global i32 0, align 4
@dma_bouncebuf = common dso_local global i32** null, align 8
@dma_bouncebufsize = common dso_local global i32* null, align 8
@VALID_DMA_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isa_dma_init(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @M_DEVBUF, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i8* @malloc(i32 %10, i32 %11, i32 %12)
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @isa_dmarangecheck(i8* %17, i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* @M_DEVBUF, align 4
  %25 = call i32 @free(i8* %23, i32 %24)
  store i8* null, i8** %8, align 8
  br label %26

26:                                               ; preds = %22, %16
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %26, %3
  %28 = load i8*, i8** %8, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @M_DEVBUF, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i64 131072, i64 65536
  %39 = trunc i64 %38 to i32
  %40 = call i8* @contigmalloc(i32 %31, i32 %32, i32 %33, i64 0, i32 16777215, i64 1, i32 %39)
  store i8* %40, i8** %8, align 8
  store i32 1, i32* %9, align 4
  br label %41

41:                                               ; preds = %30, %27
  %42 = load i8*, i8** %8, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @ENOMEM, align 4
  store i32 %45, i32* %4, align 4
  br label %81

46:                                               ; preds = %41
  %47 = call i32 @mtx_lock(i32* @isa_dma_lock)
  %48 = load i32**, i32*** @dma_bouncebuf, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %68

54:                                               ; preds = %46
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @M_DEVBUF, align 4
  %61 = call i32 @contigfree(i8* %58, i32 %59, i32 %60)
  br label %66

62:                                               ; preds = %54
  %63 = load i8*, i8** %8, align 8
  %64 = load i32, i32* @M_DEVBUF, align 4
  %65 = call i32 @free(i8* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %57
  %67 = call i32 @mtx_unlock(i32* @isa_dma_lock)
  store i32 0, i32* %4, align 4
  br label %81

68:                                               ; preds = %46
  %69 = load i32, i32* %6, align 4
  %70 = load i32*, i32** @dma_bouncebufsize, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %69, i32* %73, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = bitcast i8* %74 to i32*
  %76 = load i32**, i32*** @dma_bouncebuf, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  store i32* %75, i32** %79, align 8
  %80 = call i32 @mtx_unlock(i32* @isa_dma_lock)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %68, %66, %44
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i64 @isa_dmarangecheck(i8*, i32, i32) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i8* @contigmalloc(i32, i32, i32, i64, i32, i64, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @contigfree(i8*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
