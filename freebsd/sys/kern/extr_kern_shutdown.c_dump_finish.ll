; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_dump_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_dump_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dumperinfo = type { %struct.TYPE_2__*, i64, i64, i32, i32* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.kerneldumpheader = type { i64, i32 }

@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dump_finish(%struct.dumperinfo* %0, %struct.kerneldumpheader* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dumperinfo*, align 8
  %5 = alloca %struct.kerneldumpheader*, align 8
  %6 = alloca i32, align 4
  store %struct.dumperinfo* %0, %struct.dumperinfo** %4, align 8
  store %struct.kerneldumpheader* %1, %struct.kerneldumpheader** %5, align 8
  %7 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %8 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %74

11:                                               ; preds = %2
  %12 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %13 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @compressor_flush(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %11
  %22 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %23 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %24 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %27 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %30 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dump_write(%struct.dumperinfo* %22, i32* %25, i32 0, i64 %28, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %34 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %39 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, %37
  store i64 %41, i64* %39, align 8
  %42 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %43 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %21, %11
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %85

51:                                               ; preds = %46
  %52 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %53 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %56 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %54, %57
  %59 = call i32 @htod64(i64 %58)
  %60 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %5, align 8
  %61 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %5, align 8
  %63 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %5, align 8
  %65 = call i64 @kerneldump_parity(%struct.kerneldumpheader* %64)
  %66 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %5, align 8
  %67 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %69 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @compressor_reset(i32 %72)
  br label %74

74:                                               ; preds = %51, %2
  %75 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %76 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %5, align 8
  %77 = call i32 @dump_write_headers(%struct.dumperinfo* %75, %struct.kerneldumpheader* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %3, align 4
  br label %85

82:                                               ; preds = %74
  %83 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %84 = call i32 @dump_write(%struct.dumperinfo* %83, i32* null, i32 0, i64 0, i32 0)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %82, %80, %49
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @compressor_flush(i32) #1

declare dso_local i32 @dump_write(%struct.dumperinfo*, i32*, i32, i64, i32) #1

declare dso_local i32 @htod64(i64) #1

declare dso_local i64 @kerneldump_parity(%struct.kerneldumpheader*) #1

declare dso_local i32 @compressor_reset(i32) #1

declare dso_local i32 @dump_write_headers(%struct.dumperinfo*, %struct.kerneldumpheader*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
