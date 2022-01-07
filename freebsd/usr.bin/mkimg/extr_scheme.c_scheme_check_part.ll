; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_scheme.c_scheme_check_part.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_scheme.c_scheme_check_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.mkimg_alias* }
%struct.mkimg_alias = type { i32, i32 }
%struct.part = type { i32*, i32, i32 }

@scheme = common dso_local global %struct.TYPE_2__* null, align 8
@ALIAS_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scheme_check_part(%struct.part* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.part*, align 8
  %4 = alloca %struct.mkimg_alias*, align 8
  %5 = alloca i32, align 4
  store %struct.part* %0, %struct.part** %3, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scheme, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.part*, %struct.part** %3, align 8
  %11 = getelementptr inbounds %struct.part, %struct.part* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @scheme_parse_alias(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @ALIAS_NONE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %2, align 4
  br label %70

19:                                               ; preds = %1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scheme, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load %struct.mkimg_alias*, %struct.mkimg_alias** %21, align 8
  store %struct.mkimg_alias* %22, %struct.mkimg_alias** %4, align 8
  br label %23

23:                                               ; preds = %36, %19
  %24 = load %struct.mkimg_alias*, %struct.mkimg_alias** %4, align 8
  %25 = getelementptr inbounds %struct.mkimg_alias, %struct.mkimg_alias* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ALIAS_NONE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.mkimg_alias*, %struct.mkimg_alias** %4, align 8
  %32 = getelementptr inbounds %struct.mkimg_alias, %struct.mkimg_alias* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %39

36:                                               ; preds = %29
  %37 = load %struct.mkimg_alias*, %struct.mkimg_alias** %4, align 8
  %38 = getelementptr inbounds %struct.mkimg_alias, %struct.mkimg_alias* %37, i32 1
  store %struct.mkimg_alias* %38, %struct.mkimg_alias** %4, align 8
  br label %23

39:                                               ; preds = %35, %23
  %40 = load %struct.mkimg_alias*, %struct.mkimg_alias** %4, align 8
  %41 = getelementptr inbounds %struct.mkimg_alias, %struct.mkimg_alias* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ALIAS_NONE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %2, align 4
  br label %70

47:                                               ; preds = %39
  %48 = load %struct.mkimg_alias*, %struct.mkimg_alias** %4, align 8
  %49 = getelementptr inbounds %struct.mkimg_alias, %struct.mkimg_alias* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.part*, %struct.part** %3, align 8
  %52 = getelementptr inbounds %struct.part, %struct.part* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.part*, %struct.part** %3, align 8
  %54 = getelementptr inbounds %struct.part, %struct.part* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %47
  %58 = load %struct.part*, %struct.part** %3, align 8
  %59 = getelementptr inbounds %struct.part, %struct.part* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i64 @strlen(i32* %60)
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scheme, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %61, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %2, align 4
  br label %70

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68, %47
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %66, %45, %17
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @scheme_parse_alias(i32) #1

declare dso_local i64 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
