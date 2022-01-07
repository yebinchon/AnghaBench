; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_send.c_fixhead.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_send.c_fixhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.header = type { i32*, i32*, i32* }
%struct.name = type { i32, i32, %struct.name* }

@GDEL = common dso_local global i32 0, align 4
@GMASK = common dso_local global i32 0, align 4
@GTO = common dso_local global i32 0, align 4
@GCC = common dso_local global i32 0, align 4
@GBCC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fixhead(%struct.header* %0, %struct.name* %1) #0 {
  %3 = alloca %struct.header*, align 8
  %4 = alloca %struct.name*, align 8
  %5 = alloca %struct.name*, align 8
  store %struct.header* %0, %struct.header** %3, align 8
  store %struct.name* %1, %struct.name** %4, align 8
  %6 = load %struct.header*, %struct.header** %3, align 8
  %7 = getelementptr inbounds %struct.header, %struct.header* %6, i32 0, i32 2
  store i32* null, i32** %7, align 8
  %8 = load %struct.header*, %struct.header** %3, align 8
  %9 = getelementptr inbounds %struct.header, %struct.header* %8, i32 0, i32 1
  store i32* null, i32** %9, align 8
  %10 = load %struct.header*, %struct.header** %3, align 8
  %11 = getelementptr inbounds %struct.header, %struct.header* %10, i32 0, i32 0
  store i32* null, i32** %11, align 8
  %12 = load %struct.name*, %struct.name** %4, align 8
  store %struct.name* %12, %struct.name** %5, align 8
  br label %13

13:                                               ; preds = %96, %2
  %14 = load %struct.name*, %struct.name** %5, align 8
  %15 = icmp ne %struct.name* %14, null
  br i1 %15, label %16, label %100

16:                                               ; preds = %13
  %17 = load %struct.name*, %struct.name** %5, align 8
  %18 = getelementptr inbounds %struct.name, %struct.name* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @GDEL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %96

24:                                               ; preds = %16
  %25 = load %struct.name*, %struct.name** %5, align 8
  %26 = getelementptr inbounds %struct.name, %struct.name* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @GMASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @GTO, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %24
  %33 = load %struct.header*, %struct.header** %3, align 8
  %34 = getelementptr inbounds %struct.header, %struct.header* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.name*, %struct.name** %5, align 8
  %37 = getelementptr inbounds %struct.name, %struct.name* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.name*, %struct.name** %5, align 8
  %40 = getelementptr inbounds %struct.name, %struct.name* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @nalloc(i32 %38, i32 %41)
  %43 = call i8* @cat(i32* %35, i32 %42)
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.header*, %struct.header** %3, align 8
  %46 = getelementptr inbounds %struct.header, %struct.header* %45, i32 0, i32 2
  store i32* %44, i32** %46, align 8
  br label %95

47:                                               ; preds = %24
  %48 = load %struct.name*, %struct.name** %5, align 8
  %49 = getelementptr inbounds %struct.name, %struct.name* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @GMASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @GCC, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %47
  %56 = load %struct.header*, %struct.header** %3, align 8
  %57 = getelementptr inbounds %struct.header, %struct.header* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.name*, %struct.name** %5, align 8
  %60 = getelementptr inbounds %struct.name, %struct.name* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.name*, %struct.name** %5, align 8
  %63 = getelementptr inbounds %struct.name, %struct.name* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @nalloc(i32 %61, i32 %64)
  %66 = call i8* @cat(i32* %58, i32 %65)
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.header*, %struct.header** %3, align 8
  %69 = getelementptr inbounds %struct.header, %struct.header* %68, i32 0, i32 1
  store i32* %67, i32** %69, align 8
  br label %94

70:                                               ; preds = %47
  %71 = load %struct.name*, %struct.name** %5, align 8
  %72 = getelementptr inbounds %struct.name, %struct.name* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @GMASK, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @GBCC, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %70
  %79 = load %struct.header*, %struct.header** %3, align 8
  %80 = getelementptr inbounds %struct.header, %struct.header* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.name*, %struct.name** %5, align 8
  %83 = getelementptr inbounds %struct.name, %struct.name* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.name*, %struct.name** %5, align 8
  %86 = getelementptr inbounds %struct.name, %struct.name* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @nalloc(i32 %84, i32 %87)
  %89 = call i8* @cat(i32* %81, i32 %88)
  %90 = bitcast i8* %89 to i32*
  %91 = load %struct.header*, %struct.header** %3, align 8
  %92 = getelementptr inbounds %struct.header, %struct.header* %91, i32 0, i32 0
  store i32* %90, i32** %92, align 8
  br label %93

93:                                               ; preds = %78, %70
  br label %94

94:                                               ; preds = %93, %55
  br label %95

95:                                               ; preds = %94, %32
  br label %96

96:                                               ; preds = %95, %23
  %97 = load %struct.name*, %struct.name** %5, align 8
  %98 = getelementptr inbounds %struct.name, %struct.name* %97, i32 0, i32 2
  %99 = load %struct.name*, %struct.name** %98, align 8
  store %struct.name* %99, %struct.name** %5, align 8
  br label %13

100:                                              ; preds = %13
  ret void
}

declare dso_local i8* @cat(i32*, i32) #1

declare dso_local i32 @nalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
