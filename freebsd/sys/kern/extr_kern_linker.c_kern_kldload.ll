; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_kern_kldload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_kern_kldload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@PRIV_KLD_LOAD = common dso_local global i32 0, align 4
@kld_sx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_kldload(%struct.thread* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.thread*, %struct.thread** %5, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @securelevel_gt(i32 %14, i32 0)
  store i32 %15, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %4, align 4
  br label %67

19:                                               ; preds = %3
  %20 = load %struct.thread*, %struct.thread** %5, align 8
  %21 = load i32, i32* @PRIV_KLD_LOAD, align 4
  %22 = call i32 @priv_check(%struct.thread* %20, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %4, align 4
  br label %67

26:                                               ; preds = %19
  %27 = load %struct.thread*, %struct.thread** %5, align 8
  %28 = call i32 @TD_TO_VNET(%struct.thread* %27)
  %29 = call i32 @CURVNET_SET(i32 %28)
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @strchr(i8* %30, i8 signext 47)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @strchr(i8* %34, i8 signext 46)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %26
  %38 = load i8*, i8** %6, align 8
  store i8* %38, i8** %8, align 8
  store i8* null, i8** %9, align 8
  br label %41

39:                                               ; preds = %33
  store i8* null, i8** %8, align 8
  %40 = load i8*, i8** %6, align 8
  store i8* %40, i8** %9, align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = call i32 @sx_xlock(i32* @kld_sx)
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @linker_load_module(i8* %43, i8* %44, i32* null, i32* null, %struct.TYPE_3__** %10)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = call i32 @sx_xunlock(i32* @kld_sx)
  br label %64

50:                                               ; preds = %41
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %7, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %57, %50
  %63 = call i32 @sx_xunlock(i32* @kld_sx)
  br label %64

64:                                               ; preds = %62, %48
  %65 = call i32 (...) @CURVNET_RESTORE()
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %24, %17
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @securelevel_gt(i32, i32) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @TD_TO_VNET(%struct.thread*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @linker_load_module(i8*, i8*, i32*, i32*, %struct.TYPE_3__**) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
