; ModuleID = '/home/carl/AnghaBench/freebsd/sys/isa/extr_pnp.c_pnp_read_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/isa/extr_pnp.c_pnp_read_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_TEMP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**, i32*, i32*)* @pnp_read_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnp_read_bytes(i32 %0, i32** %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32**, i32*** %7, align 8
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %4
  store i32 1024, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @M_TEMP, align 4
  %26 = load i32, i32* @M_NOWAIT, align 4
  %27 = call i32* @malloc(i32 %24, i32 %25, i32 %26)
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOMEM, align 4
  store i32 %31, i32* %5, align 4
  br label %95

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* %12, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %74

39:                                               ; preds = %33
  store i32 1024, i32* %14, align 4
  br label %40

40:                                               ; preds = %48, %39
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %44, %45
  %47 = icmp sgt i32 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %49, 1024
  store i32 %50, i32* %14, align 4
  br label %40

51:                                               ; preds = %40
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* @M_TEMP, align 4
  %56 = load i32, i32* @M_NOWAIT, align 4
  %57 = call i32* @malloc(i32 %54, i32 %55, i32 %56)
  store i32* %57, i32** %11, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %51
  %61 = load i32, i32* @ENOMEM, align 4
  store i32 %61, i32* %5, align 4
  br label %95

62:                                               ; preds = %51
  %63 = load i32*, i32** %10, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @bcopy(i32* %63, i32* %64, i32 %65)
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* @M_TEMP, align 4
  %69 = call i32 @free(i32* %67, i32 %68)
  %70 = load i32*, i32** %11, align 8
  store i32* %70, i32** %10, align 8
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %62, %33
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @pnp_get_resource_info(i32* %78, i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = load i32, i32* @EINVAL, align 4
  store i32 %84, i32* %5, align 4
  br label %95

85:                                               ; preds = %74
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %13, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = load i32**, i32*** %7, align 8
  store i32* %89, i32** %90, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load i32*, i32** %8, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32*, i32** %9, align 8
  store i32 %93, i32* %94, align 4
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %85, %83, %60, %30
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @pnp_get_resource_info(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
