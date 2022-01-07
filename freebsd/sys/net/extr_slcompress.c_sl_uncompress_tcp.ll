; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_slcompress.c_sl_uncompress_tcp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_slcompress.c_sl_uncompress_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slcompress = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sl_uncompress_tcp(i32** %0, i32 %1, i32 %2, %struct.slcompress* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.slcompress*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.slcompress* %3, %struct.slcompress** %9, align 8
  %14 = load i32**, i32*** %6, align 8
  %15 = icmp ne i32** %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32**, i32*** %6, align 8
  %18 = load i32*, i32** %17, align 8
  br label %20

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i32* [ %18, %16 ], [ null, %19 ]
  store i32* %21, i32** %11, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.slcompress*, %struct.slcompress** %9, align 8
  %27 = call i32 @sl_uncompress_tcp_core(i32* %22, i32 %23, i32 %24, i32 %25, %struct.slcompress* %26, i32** %10, i32* %12)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %80

31:                                               ; preds = %20
  %32 = load i32, i32* %13, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %5, align 4
  br label %80

36:                                               ; preds = %31
  %37 = load i32, i32* %13, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32* %40, i32** %11, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = ptrtoint i32* %44 to i64
  %46 = and i64 %45, 3
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %36
  %49 = load i32, i32* %7, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32*, i32** %11, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = ptrtoint i32* %53 to i64
  %55 = and i64 %54, -4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @BCOPY(i32* %52, i64 %55, i32 %56)
  br label %58

58:                                               ; preds = %51, %48
  %59 = load i32*, i32** %11, align 8
  %60 = ptrtoint i32* %59 to i64
  %61 = and i64 %60, -4
  %62 = inttoptr i64 %61 to i32*
  store i32* %62, i32** %11, align 8
  br label %63

63:                                               ; preds = %58, %36
  %64 = load i32, i32* %12, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = sext i32 %64 to i64
  %67 = sub i64 0, %66
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32* %68, i32** %11, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = ptrtoint i32* %73 to i64
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @BCOPY(i32* %72, i64 %74, i32 %75)
  %77 = load i32*, i32** %11, align 8
  %78 = load i32**, i32*** %6, align 8
  store i32* %77, i32** %78, align 8
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %63, %34, %30
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @sl_uncompress_tcp_core(i32*, i32, i32, i32, %struct.slcompress*, i32**, i32*) #1

declare dso_local i32 @BCOPY(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
