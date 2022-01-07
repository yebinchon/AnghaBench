; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_selscan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_selscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.filedesc* }
%struct.filedesc = type { i32 }
%struct.file = type { i32 }

@NFDBITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32**, i32**, i32)* @selscan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selscan(%struct.thread* %0, i32** %1, i32** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.filedesc*, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.thread*, %struct.thread** %6, align 8
  %21 = getelementptr inbounds %struct.thread, %struct.thread* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.filedesc*, %struct.filedesc** %23, align 8
  store %struct.filedesc* %24, %struct.filedesc** %10, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %25

25:                                               ; preds = %92, %4
  %26 = load i32, i32* %16, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %95

29:                                               ; preds = %25
  %30 = load i32, i32* %16, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @NFDBITS, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @imin(i64 %33, i32 %34)
  store i32 %35, i32* %15, align 4
  store i32 1, i32* %12, align 4
  br label %36

36:                                               ; preds = %86, %29
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %91

40:                                               ; preds = %36
  %41 = load i32**, i32*** %7, align 8
  %42 = load i32, i32* %18, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @selflags(i32** %41, i32 %42, i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %86

48:                                               ; preds = %40
  %49 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @getselfd_cap(%struct.filedesc* %49, i32 %50, %struct.file** %11)
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* %19, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %19, align 4
  store i32 %55, i32* %5, align 4
  br label %101

56:                                               ; preds = %48
  %57 = load %struct.thread*, %struct.thread** %6, align 8
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 @selfdalloc(%struct.thread* %57, i8* %60)
  %62 = load %struct.file*, %struct.file** %11, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load %struct.thread*, %struct.thread** %6, align 8
  %65 = getelementptr inbounds %struct.thread, %struct.thread* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.thread*, %struct.thread** %6, align 8
  %68 = call i32 @fo_poll(%struct.file* %62, i32 %63, i32 %66, %struct.thread* %67)
  store i32 %68, i32* %13, align 4
  %69 = load %struct.file*, %struct.file** %11, align 8
  %70 = load %struct.thread*, %struct.thread** %6, align 8
  %71 = call i32 @fdrop(%struct.file* %69, %struct.thread* %70)
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %56
  %75 = load i32**, i32*** %7, align 8
  %76 = load i32**, i32*** %8, align 8
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %13, align 4
  %80 = call i64 @selsetbits(i32** %75, i32** %76, i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* %17, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %17, align 4
  br label %85

85:                                               ; preds = %74, %56
  br label %86

86:                                               ; preds = %85, %47
  %87 = load i32, i32* %12, align 4
  %88 = shl i32 %87, 1
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %16, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %16, align 4
  br label %36

91:                                               ; preds = %36
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %18, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %18, align 4
  br label %25

95:                                               ; preds = %25
  %96 = load i32, i32* %17, align 4
  %97 = load %struct.thread*, %struct.thread** %6, align 8
  %98 = getelementptr inbounds %struct.thread, %struct.thread* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 %96, i32* %100, align 4
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %95, %54
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @imin(i64, i32) #1

declare dso_local i32 @selflags(i32**, i32, i32) #1

declare dso_local i32 @getselfd_cap(%struct.filedesc*, i32, %struct.file**) #1

declare dso_local i32 @selfdalloc(%struct.thread*, i8*) #1

declare dso_local i32 @fo_poll(%struct.file*, i32, i32, %struct.thread*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i64 @selsetbits(i32**, i32**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
