; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_debug.c_bxe_dump_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_debug.c_bxe_dump_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@bxe_prev_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"++++++++++++ %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"** 000: \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"** \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%03x\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"------------ %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bxe_dump_mem(%struct.bxe_softc* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [256 x i8], align 16
  %10 = alloca [32 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = call i32 @mtx_lock(i32* @bxe_prev_mtx)
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @BLOGI(%struct.bxe_softc* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %17 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %53, %4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %18
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %22
  %26 = load i32, i32* %11, align 4
  %27 = srem i32 %26, 16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %32 = call i32 @BLOGI(%struct.bxe_softc* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %34 = call i32 @strcpy(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @snprintf(i8* %35, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %40 = call i32 @strcat(i8* %38, i8* %39)
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %42 = call i32 @strcat(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %43

43:                                               ; preds = %29, %25, %22
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @snprintf(i8* %44, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %46)
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %50 = call i32 @strcat(i8* %48, i8* %49)
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %7, align 8
  br label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %18

56:                                               ; preds = %18
  %57 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %59 = call i32 @BLOGI(%struct.bxe_softc* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  %60 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @BLOGI(%struct.bxe_softc* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %61)
  %63 = call i32 @mtx_unlock(i32* @bxe_prev_mtx)
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
