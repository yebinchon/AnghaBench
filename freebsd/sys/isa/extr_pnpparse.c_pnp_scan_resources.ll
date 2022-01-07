; ModuleID = '/home/carl/AnghaBench/freebsd/sys/isa/extr_pnpparse.c_pnp_scan_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/isa/extr_pnpparse.c_pnp_scan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isa_config = type { i32 }

@PNP_TAG_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pnp_scan_resources(i32 %0, i32* %1, i32 %2, %struct.isa_config* %3, i32 %4, i64 (i32, i32, i32*, i32, %struct.isa_config*, i32)** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.isa_config*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64 (i32, i32, i32*, i32, %struct.isa_config*, i32)**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.isa_config* %3, %struct.isa_config** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 (i32, i32, i32*, i32, %struct.isa_config*, i32)** %5, i64 (i32, i32, i32*, i32, %struct.isa_config*, i32)*** %13, align 8
  %17 = load i32*, i32** %9, align 8
  store i32* %17, i32** %14, align 8
  br label %18

18:                                               ; preds = %96, %6
  %19 = load i32, i32* %10, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %104

21:                                               ; preds = %18
  %22 = load i32*, i32** %14, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %14, align 8
  %24 = load i32, i32* %22, align 4
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %15, align 4
  %28 = call i64 @PNP_RES_TYPE(i32 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %64

30:                                               ; preds = %21
  %31 = load i32, i32* %15, align 4
  %32 = call i32 @PNP_SRES_LEN(i32 %31)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %16, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %104

37:                                               ; preds = %30
  %38 = load i64 (i32, i32, i32*, i32, %struct.isa_config*, i32)**, i64 (i32, i32, i32*, i32, %struct.isa_config*, i32)*** %13, align 8
  %39 = load i64 (i32, i32, i32*, i32, %struct.isa_config*, i32)*, i64 (i32, i32, i32*, i32, %struct.isa_config*, i32)** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32*, i32** %14, align 8
  %43 = load i32, i32* %16, align 4
  %44 = load %struct.isa_config*, %struct.isa_config** %11, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i64 %39(i32 %40, i32 %41, i32* %42, i32 %43, %struct.isa_config* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load i32*, i32** %14, align 8
  %50 = load i32, i32* %16, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32* %52, i32** %7, align 8
  br label %105

53:                                               ; preds = %37
  %54 = load i32, i32* %15, align 4
  %55 = call i64 @PNP_SRES_NUM(i32 %54)
  %56 = load i64, i64* @PNP_TAG_END, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32*, i32** %14, align 8
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32* %62, i32** %7, align 8
  br label %105

63:                                               ; preds = %53
  br label %96

64:                                               ; preds = %21
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %65, 2
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %104

68:                                               ; preds = %64
  %69 = load i32*, i32** %14, align 8
  %70 = call i32 @I16(i32* %69)
  store i32 %70, i32* %16, align 4
  %71 = load i32*, i32** %14, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32* %72, i32** %14, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sub nsw i32 %73, 2
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %104

79:                                               ; preds = %68
  %80 = load i64 (i32, i32, i32*, i32, %struct.isa_config*, i32)**, i64 (i32, i32, i32*, i32, %struct.isa_config*, i32)*** %13, align 8
  %81 = load i64 (i32, i32, i32*, i32, %struct.isa_config*, i32)*, i64 (i32, i32, i32*, i32, %struct.isa_config*, i32)** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load i32*, i32** %14, align 8
  %85 = load i32, i32* %16, align 4
  %86 = load %struct.isa_config*, %struct.isa_config** %11, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i64 %81(i32 %82, i32 %83, i32* %84, i32 %85, %struct.isa_config* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %79
  %91 = load i32*, i32** %14, align 8
  %92 = load i32, i32* %16, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32* %94, i32** %7, align 8
  br label %105

95:                                               ; preds = %79
  br label %96

96:                                               ; preds = %95, %63
  %97 = load i32, i32* %16, align 4
  %98 = load i32*, i32** %14, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %14, align 8
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %10, align 4
  %103 = sub nsw i32 %102, %101
  store i32 %103, i32* %10, align 4
  br label %18

104:                                              ; preds = %78, %67, %36, %18
  store i32* null, i32** %7, align 8
  br label %105

105:                                              ; preds = %104, %90, %58, %48
  %106 = load i32*, i32** %7, align 8
  ret i32* %106
}

declare dso_local i64 @PNP_RES_TYPE(i32) #1

declare dso_local i32 @PNP_SRES_LEN(i32) #1

declare dso_local i64 @PNP_SRES_NUM(i32) #1

declare dso_local i32 @I16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
