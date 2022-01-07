; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/compress/extr_zopen.c_getcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/compress/extr_zopen.c_getcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_zstate = type { i32 }

@gbuf = common dso_local global i32* null, align 8
@clear_flg = common dso_local global i64 0, align 8
@roffset = common dso_local global i32 0, align 4
@size = common dso_local global i32 0, align 4
@free_ent = common dso_local global i64 0, align 8
@maxcode = common dso_local global i64 0, align 8
@n_bits = common dso_local global i32 0, align 4
@maxbits = common dso_local global i32 0, align 4
@maxmaxcode = common dso_local global i64 0, align 8
@INIT_BITS = common dso_local global i32 0, align 4
@fp = common dso_local global i32 0, align 4
@rmask = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s_zstate*)* @getcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getcode(%struct.s_zstate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s_zstate*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.s_zstate* %0, %struct.s_zstate** %3, align 8
  %8 = load i32*, i32** @gbuf, align 8
  store i32* %8, i32** %7, align 8
  %9 = load i64, i64* @clear_flg, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @roffset, align 4
  %13 = load i32, i32* @size, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* @free_ent, align 8
  %17 = load i64, i64* @maxcode, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %55

19:                                               ; preds = %15, %11, %1
  %20 = load i64, i64* @free_ent, align 8
  %21 = load i64, i64* @maxcode, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i32, i32* @n_bits, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @n_bits, align 4
  %26 = load i32, i32* @n_bits, align 4
  %27 = load i32, i32* @maxbits, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i64, i64* @maxmaxcode, align 8
  store i64 %30, i64* @maxcode, align 8
  br label %34

31:                                               ; preds = %23
  %32 = load i32, i32* @n_bits, align 4
  %33 = call i64 @MAXCODE(i32 %32)
  store i64 %33, i64* @maxcode, align 8
  br label %34

34:                                               ; preds = %31, %29
  br label %35

35:                                               ; preds = %34, %19
  %36 = load i64, i64* @clear_flg, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @INIT_BITS, align 4
  store i32 %39, i32* @n_bits, align 4
  %40 = call i64 @MAXCODE(i32 %39)
  store i64 %40, i64* @maxcode, align 8
  store i64 0, i64* @clear_flg, align 8
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32*, i32** @gbuf, align 8
  %43 = load i32, i32* @n_bits, align 4
  %44 = load i32, i32* @fp, align 4
  %45 = call i32 @fread(i32* %42, i32 1, i32 %43, i32 %44)
  store i32 %45, i32* @size, align 4
  %46 = load i32, i32* @size, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 -1, i32* %2, align 4
  br label %107

49:                                               ; preds = %41
  store i32 0, i32* @roffset, align 4
  %50 = load i32, i32* @size, align 4
  %51 = shl i32 %50, 3
  %52 = load i32, i32* @n_bits, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sub nsw i32 %51, %53
  store i32 %54, i32* @size, align 4
  br label %55

55:                                               ; preds = %49, %15
  %56 = load i32, i32* @roffset, align 4
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* @n_bits, align 4
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %5, align 4
  %59 = ashr i32 %58, 3
  %60 = load i32*, i32** %7, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %7, align 8
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, 7
  store i32 %64, i32* %5, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %7, align 8
  %67 = load i32, i32* %65, align 4
  %68 = load i32, i32* %5, align 4
  %69 = ashr i32 %67, %68
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %5, align 4
  %71 = sub nsw i32 8, %70
  %72 = load i32, i32* %6, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %5, align 4
  %75 = sub nsw i32 8, %74
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp sge i32 %76, 8
  br i1 %77, label %78, label %90

78:                                               ; preds = %55
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %7, align 8
  %81 = load i32, i32* %79, align 4
  %82 = load i32, i32* %5, align 4
  %83 = shl i32 %81, %82
  %84 = load i32, i32* %4, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 8
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %6, align 4
  %89 = sub nsw i32 %88, 8
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %78, %55
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** @rmask, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %92, %97
  %99 = load i32, i32* %5, align 4
  %100 = shl i32 %98, %99
  %101 = load i32, i32* %4, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* @n_bits, align 4
  %104 = load i32, i32* @roffset, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* @roffset, align 4
  %106 = load i32, i32* %4, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %90, %48
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i64 @MAXCODE(i32) #1

declare dso_local i32 @fread(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
