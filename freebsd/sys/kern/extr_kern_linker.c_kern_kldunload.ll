; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_kern_kldunload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_kern_kldunload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.TYPE_4__ = type { i64 }

@PRIV_KLD_UNLOAD = common dso_local global i32 0, align 4
@kld_sx = common dso_local global i32 0, align 4
@FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"kldunload: lf->userrefs=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"kldunload: attempt to unload file that was loaded by the kernel\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_kldunload(%struct.thread* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.thread*, %struct.thread** %5, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @securelevel_gt(i32 %12, i32 0)
  store i32 %13, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %70

17:                                               ; preds = %3
  %18 = load %struct.thread*, %struct.thread** %5, align 8
  %19 = load i32, i32* @PRIV_KLD_UNLOAD, align 4
  %20 = call i32 @priv_check(%struct.thread* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %70

24:                                               ; preds = %17
  %25 = load %struct.thread*, %struct.thread** %5, align 8
  %26 = call i32 @TD_TO_VNET(%struct.thread* %25)
  %27 = call i32 @CURVNET_SET(i32 %26)
  %28 = call i32 @sx_xlock(i32* @kld_sx)
  %29 = load i32, i32* %6, align 4
  %30 = call %struct.TYPE_4__* @linker_find_file_by_id(i32 %29)
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %8, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %64

33:                                               ; preds = %24
  %34 = load i32, i32* @FILE, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @KLD_DPF(i32 %34, i8* %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EBUSY, align 4
  store i32 %46, i32* %9, align 4
  br label %63

47:                                               ; preds = %33
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @linker_file_unload(%struct.TYPE_4__* %52, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %47
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %59, align 8
  br label %62

62:                                               ; preds = %57, %47
  br label %63

63:                                               ; preds = %62, %44
  br label %66

64:                                               ; preds = %24
  %65 = load i32, i32* @ENOENT, align 4
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %64, %63
  %67 = call i32 @sx_xunlock(i32* @kld_sx)
  %68 = call i32 (...) @CURVNET_RESTORE()
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %66, %22, %15
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @securelevel_gt(i32, i32) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @TD_TO_VNET(%struct.thread*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local %struct.TYPE_4__* @linker_find_file_by_id(i32) #1

declare dso_local i32 @KLD_DPF(i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @linker_file_unload(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
