; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_debug.c_bxe_dump_mbuf_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_debug.c_bxe_dump_mbuf_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.mbuf = type { i32*, i32, %struct.mbuf* }

@bxe_prev_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"++++++++++++ %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"** > \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%03x\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"**   \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"------------ %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bxe_dump_mbuf_data(%struct.bxe_softc* %0, i8* %1, %struct.mbuf* %2, i32 %3) #0 {
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [256 x i8], align 16
  %10 = alloca [32 x i8], align 16
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %13, align 4
  %14 = call i32 @mtx_lock(i32* @bxe_prev_mtx)
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @BLOGI(%struct.bxe_softc* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %95, %4
  %19 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %20 = icmp ne %struct.mbuf* %19, null
  br i1 %20, label %21, label %102

21:                                               ; preds = %18
  %22 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %23 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %11, align 8
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %26 = call i32 @strcpy(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @snprintf(i8* %27, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %32 = call i32 @strcat(i8* %30, i8* %31)
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %34 = call i32 @strcat(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %81

37:                                               ; preds = %21
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %77, %37
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %41 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %80

44:                                               ; preds = %38
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %44
  %48 = load i32, i32* %13, align 4
  %49 = srem i32 %48, 16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %54 = call i32 @BLOGI(%struct.bxe_softc* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %53)
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %56 = call i32 @strcpy(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @snprintf(i8* %57, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %61 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %62 = call i32 @strcat(i8* %60, i8* %61)
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %64 = call i32 @strcat(i8* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %51, %47, %44
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @snprintf(i8* %66, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %68)
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %71 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %72 = call i32 @strcat(i8* %70, i8* %71)
  %73 = load i32*, i32** %11, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %11, align 8
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %65
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %38

80:                                               ; preds = %38
  br label %95

81:                                               ; preds = %21
  %82 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %83 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %84 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @snprintf(i8* %82, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %85)
  %87 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %88 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %89 = call i32 @strcat(i8* %87, i8* %88)
  %90 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %91 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %81, %80
  %96 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %97 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %98 = call i32 @BLOGI(%struct.bxe_softc* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %97)
  %99 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %100 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %99, i32 0, i32 2
  %101 = load %struct.mbuf*, %struct.mbuf** %100, align 8
  store %struct.mbuf* %101, %struct.mbuf** %7, align 8
  br label %18

102:                                              ; preds = %18
  %103 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @BLOGI(%struct.bxe_softc* %103, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %104)
  %106 = call i32 @mtx_unlock(i32* @bxe_prev_mtx)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @BLOGI(%struct.bxe_softc*, i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
