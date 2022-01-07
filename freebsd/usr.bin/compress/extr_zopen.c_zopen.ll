; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/compress/extr_zopen.c_zopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/compress/extr_zopen.c_zopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_zstate = type { i32 }

@BITS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@maxbits = common dso_local global i64 0, align 8
@maxmaxcode = common dso_local global i64 0, align 8
@HSIZE = common dso_local global i32 0, align 4
@hsize = common dso_local global i32 0, align 4
@free_ent = common dso_local global i64 0, align 8
@BLOCK_MASK = common dso_local global i32 0, align 4
@block_compress = common dso_local global i32 0, align 4
@clear_flg = common dso_local global i64 0, align 8
@ratio = common dso_local global i64 0, align 8
@CHECK_GAP = common dso_local global i32 0, align 4
@checkpoint = common dso_local global i32 0, align 4
@in_count = common dso_local global i32 0, align 4
@out_count = common dso_local global i64 0, align 8
@S_START = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@roffset = common dso_local global i64 0, align 8
@size = common dso_local global i64 0, align 8
@fp = common dso_local global i32* null, align 8
@zmode = common dso_local global i8 0, align 1
@zread = common dso_local global i32* null, align 8
@zclose = common dso_local global i32 0, align 4
@zwrite = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @zopen(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.s_zstate*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 114
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 119
  br i1 %19, label %33, label %20

20:                                               ; preds = %14, %3
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @BITS, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %26, %20, %14
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* @errno, align 4
  store i32* null, i32** %4, align 8
  br label %77

35:                                               ; preds = %29
  %36 = call %struct.s_zstate* @calloc(i32 1, i32 4)
  store %struct.s_zstate* %36, %struct.s_zstate** %8, align 8
  %37 = icmp eq %struct.s_zstate* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32* null, i32** %4, align 8
  br label %77

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  br label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @BITS, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = sext i32 %47 to i64
  store i64 %48, i64* @maxbits, align 8
  %49 = load i64, i64* @maxbits, align 8
  %50 = shl i64 1, %49
  store i64 %50, i64* @maxmaxcode, align 8
  %51 = load i32, i32* @HSIZE, align 4
  store i32 %51, i32* @hsize, align 4
  store i64 0, i64* @free_ent, align 8
  %52 = load i32, i32* @BLOCK_MASK, align 4
  store i32 %52, i32* @block_compress, align 4
  store i64 0, i64* @clear_flg, align 8
  store i64 0, i64* @ratio, align 8
  %53 = load i32, i32* @CHECK_GAP, align 4
  store i32 %53, i32* @checkpoint, align 4
  store i32 1, i32* @in_count, align 4
  store i64 0, i64* @out_count, align 8
  %54 = load i32, i32* @S_START, align 4
  store i32 %54, i32* @state, align 4
  store i64 0, i64* @roffset, align 8
  store i64 0, i64* @size, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i32* @fopen(i8* %55, i8* %56)
  store i32* %57, i32** @fp, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %46
  %60 = load %struct.s_zstate*, %struct.s_zstate** %8, align 8
  %61 = call i32 @free(%struct.s_zstate* %60)
  store i32* null, i32** %4, align 8
  br label %77

62:                                               ; preds = %46
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  switch i32 %65, label %76 [
    i32 114, label %66
    i32 119, label %71
  ]

66:                                               ; preds = %62
  store i8 114, i8* @zmode, align 1
  %67 = load %struct.s_zstate*, %struct.s_zstate** %8, align 8
  %68 = load i32*, i32** @zread, align 8
  %69 = load i32, i32* @zclose, align 4
  %70 = call i32* @funopen(%struct.s_zstate* %67, i32* %68, i32* null, i32* null, i32 %69)
  store i32* %70, i32** %4, align 8
  br label %77

71:                                               ; preds = %62
  store i8 119, i8* @zmode, align 1
  %72 = load %struct.s_zstate*, %struct.s_zstate** %8, align 8
  %73 = load i32*, i32** @zwrite, align 8
  %74 = load i32, i32* @zclose, align 4
  %75 = call i32* @funopen(%struct.s_zstate* %72, i32* null, i32* %73, i32* null, i32 %74)
  store i32* %75, i32** %4, align 8
  br label %77

76:                                               ; preds = %62
  store i32* null, i32** %4, align 8
  br label %77

77:                                               ; preds = %76, %71, %66, %59, %38, %33
  %78 = load i32*, i32** %4, align 8
  ret i32* %78
}

declare dso_local %struct.s_zstate* @calloc(i32, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @free(%struct.s_zstate*) #1

declare dso_local i32* @funopen(%struct.s_zstate*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
