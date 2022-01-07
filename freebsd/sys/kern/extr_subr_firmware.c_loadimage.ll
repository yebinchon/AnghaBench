; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_firmware.c_loadimage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_firmware.c_loadimage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.priv_fw = type { i32* }

@curthread = common dso_local global %struct.thread* null, align 8
@firmware_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"%s: root not mounted yet, no way to load image\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"%s: could not load firmware image, error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"%s: firmware image loaded, but did not register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @loadimage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loadimage(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.priv_fw*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %10, %struct.thread** %5, align 8
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %6, align 8
  %12 = call i32 @mtx_lock(i32* @firmware_mtx)
  %13 = call i32 @mtx_unlock(i32* @firmware_mtx)
  %14 = load %struct.thread*, %struct.thread** %5, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %60

25:                                               ; preds = %2
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @linker_reference_module(i8* %26, i32* null, i32** %8)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %31, i32 %32)
  br label %60

34:                                               ; preds = %25
  %35 = call i32 @mtx_lock(i32* @firmware_mtx)
  %36 = load i8*, i8** %6, align 8
  %37 = call %struct.priv_fw* @lookup(i8* %36, i32* null)
  store %struct.priv_fw* %37, %struct.priv_fw** %7, align 8
  %38 = load %struct.priv_fw*, %struct.priv_fw** %7, align 8
  %39 = icmp eq %struct.priv_fw* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load %struct.priv_fw*, %struct.priv_fw** %7, align 8
  %42 = getelementptr inbounds %struct.priv_fw, %struct.priv_fw* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %40, %34
  %46 = call i32 @mtx_unlock(i32* @firmware_mtx)
  %47 = load %struct.priv_fw*, %struct.priv_fw** %7, align 8
  %48 = icmp eq %struct.priv_fw* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %49, %45
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @linker_release_module(i8* %53, i32* null, i32* null)
  br label %60

55:                                               ; preds = %40
  %56 = load i32*, i32** %8, align 8
  %57 = load %struct.priv_fw*, %struct.priv_fw** %7, align 8
  %58 = getelementptr inbounds %struct.priv_fw, %struct.priv_fw* %57, i32 0, i32 0
  store i32* %56, i32** %58, align 8
  %59 = call i32 @mtx_unlock(i32* @firmware_mtx)
  br label %60

60:                                               ; preds = %55, %52, %30, %22
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @wakeup_one(i8* %61)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @linker_reference_module(i8*, i32*, i32**) #1

declare dso_local %struct.priv_fw* @lookup(i8*, i32*) #1

declare dso_local i32 @linker_release_module(i8*, i32*, i32*) #1

declare dso_local i32 @wakeup_one(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
