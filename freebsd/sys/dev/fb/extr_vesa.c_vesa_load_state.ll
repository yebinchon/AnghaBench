; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_vesa_load_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_vesa_load_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i64 }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_9__*, i8*)* }
%struct.TYPE_10__ = type { i64, i32 }

@vesa_adp = common dso_local global %struct.TYPE_9__* null, align 8
@prevvidsw = common dso_local global %struct.TYPE_11__* null, align 8
@vesa_vmem_buf = common dso_local global i32* null, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@V_STATE_SIG = common dso_local global i64 0, align 8
@STATE_LOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*)* @vesa_load_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vesa_load_state(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vesa_adp, align 8
  %12 = icmp ne %struct.TYPE_9__* %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** @prevvidsw, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_9__*, i8*)*, i32 (%struct.TYPE_9__*, i8*)** %15, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 %16(%struct.TYPE_9__* %17, i8* %18)
  store i32 %19, i32* %3, align 4
  br label %90

20:                                               ; preds = %2
  %21 = call i32 (...) @vesa_bios_post()
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @vesa_set_mode(%struct.TYPE_9__* %28, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %20
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @vesa_set_mode(%struct.TYPE_9__* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %38, %20
  %43 = load i32*, i32** @vesa_vmem_buf, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %69

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @VESA_MODE(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** %6, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load i32*, i32** @vesa_vmem_buf, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @bcopy(i32* %60, i8* %61, i64 %62)
  br label %64

64:                                               ; preds = %59, %52
  br label %65

65:                                               ; preds = %64, %48, %45
  %66 = load i32*, i32** @vesa_vmem_buf, align 8
  %67 = load i32, i32* @M_DEVBUF, align 4
  %68 = call i32 @free(i32* %66, i32 %67)
  store i32* null, i32** @vesa_vmem_buf, align 8
  br label %69

69:                                               ; preds = %65, %42
  %70 = load i8*, i8** %5, align 8
  %71 = bitcast i8* %70 to %struct.TYPE_10__*
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @V_STATE_SIG, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %69
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** @prevvidsw, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32 (%struct.TYPE_9__*, i8*)*, i32 (%struct.TYPE_9__*, i8*)** %78, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 %79(%struct.TYPE_9__* %80, i8* %81)
  store i32 %82, i32* %3, align 4
  br label %90

83:                                               ; preds = %69
  %84 = load i32, i32* @STATE_LOAD, align 4
  %85 = load i8*, i8** %5, align 8
  %86 = bitcast i8* %85 to %struct.TYPE_10__*
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @vesa_bios_save_restore(i32 %84, i32 %88)
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %83, %76, %13
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @vesa_bios_post(...) #1

declare dso_local i32 @vesa_set_mode(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @VESA_MODE(i32) #1

declare dso_local i32 @bcopy(i32*, i8*, i64) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @vesa_bios_save_restore(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
