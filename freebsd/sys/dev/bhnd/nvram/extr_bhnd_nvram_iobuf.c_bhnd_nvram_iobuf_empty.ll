; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_iobuf.c_bhnd_nvram_iobuf_empty.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_iobuf.c_bhnd_nvram_iobuf_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_io = type { i32* }
%struct.bhnd_nvram_iobuf = type { i64, i64, %struct.bhnd_nvram_io, i32*, i32 }

@SIZE_MAX = common dso_local global i32 0, align 4
@bhnd_nvram_iobuf_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bhnd_nvram_io* @bhnd_nvram_iobuf_empty(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.bhnd_nvram_io*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bhnd_nvram_iobuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ugt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.bhnd_nvram_io* null, %struct.bhnd_nvram_io** %3, align 8
  br label %68

13:                                               ; preds = %2
  %14 = load i32, i32* @SIZE_MAX, align 4
  %15 = sext i32 %14 to i64
  %16 = sub i64 %15, 40
  %17 = load i64, i64* %5, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  store i64 40, i64* %7, align 8
  br label %23

20:                                               ; preds = %13
  store i32 1, i32* %8, align 4
  %21 = load i64, i64* %5, align 8
  %22 = add i64 40, %21
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %20, %19
  %24 = load i64, i64* %7, align 8
  %25 = call i8* @bhnd_nv_malloc(i64 %24)
  %26 = bitcast i8* %25 to %struct.bhnd_nvram_iobuf*
  store %struct.bhnd_nvram_iobuf* %26, %struct.bhnd_nvram_iobuf** %6, align 8
  %27 = load %struct.bhnd_nvram_iobuf*, %struct.bhnd_nvram_iobuf** %6, align 8
  %28 = icmp eq %struct.bhnd_nvram_iobuf* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store %struct.bhnd_nvram_io* null, %struct.bhnd_nvram_io** %3, align 8
  br label %68

30:                                               ; preds = %23
  %31 = load %struct.bhnd_nvram_iobuf*, %struct.bhnd_nvram_iobuf** %6, align 8
  %32 = getelementptr inbounds %struct.bhnd_nvram_iobuf, %struct.bhnd_nvram_iobuf* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.bhnd_nvram_io, %struct.bhnd_nvram_io* %32, i32 0, i32 0
  store i32* @bhnd_nvram_iobuf_ops, i32** %33, align 8
  %34 = load %struct.bhnd_nvram_iobuf*, %struct.bhnd_nvram_iobuf** %6, align 8
  %35 = getelementptr inbounds %struct.bhnd_nvram_iobuf, %struct.bhnd_nvram_iobuf* %34, i32 0, i32 3
  store i32* null, i32** %35, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load %struct.bhnd_nvram_iobuf*, %struct.bhnd_nvram_iobuf** %6, align 8
  %38 = getelementptr inbounds %struct.bhnd_nvram_iobuf, %struct.bhnd_nvram_iobuf* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.bhnd_nvram_iobuf*, %struct.bhnd_nvram_iobuf** %6, align 8
  %41 = getelementptr inbounds %struct.bhnd_nvram_iobuf, %struct.bhnd_nvram_iobuf* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %30
  %45 = load %struct.bhnd_nvram_iobuf*, %struct.bhnd_nvram_iobuf** %6, align 8
  %46 = getelementptr inbounds %struct.bhnd_nvram_iobuf, %struct.bhnd_nvram_iobuf* %45, i32 0, i32 4
  %47 = load %struct.bhnd_nvram_iobuf*, %struct.bhnd_nvram_iobuf** %6, align 8
  %48 = getelementptr inbounds %struct.bhnd_nvram_iobuf, %struct.bhnd_nvram_iobuf* %47, i32 0, i32 3
  store i32* %46, i32** %48, align 8
  br label %57

49:                                               ; preds = %30
  %50 = load %struct.bhnd_nvram_iobuf*, %struct.bhnd_nvram_iobuf** %6, align 8
  %51 = getelementptr inbounds %struct.bhnd_nvram_iobuf, %struct.bhnd_nvram_iobuf* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i8* @bhnd_nv_malloc(i64 %52)
  %54 = bitcast i8* %53 to i32*
  %55 = load %struct.bhnd_nvram_iobuf*, %struct.bhnd_nvram_iobuf** %6, align 8
  %56 = getelementptr inbounds %struct.bhnd_nvram_iobuf, %struct.bhnd_nvram_iobuf* %55, i32 0, i32 3
  store i32* %54, i32** %56, align 8
  br label %57

57:                                               ; preds = %49, %44
  %58 = load %struct.bhnd_nvram_iobuf*, %struct.bhnd_nvram_iobuf** %6, align 8
  %59 = getelementptr inbounds %struct.bhnd_nvram_iobuf, %struct.bhnd_nvram_iobuf* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.bhnd_nvram_iobuf*, %struct.bhnd_nvram_iobuf** %6, align 8
  %64 = call i32 @bhnd_nv_free(%struct.bhnd_nvram_iobuf* %63)
  store %struct.bhnd_nvram_io* null, %struct.bhnd_nvram_io** %3, align 8
  br label %68

65:                                               ; preds = %57
  %66 = load %struct.bhnd_nvram_iobuf*, %struct.bhnd_nvram_iobuf** %6, align 8
  %67 = getelementptr inbounds %struct.bhnd_nvram_iobuf, %struct.bhnd_nvram_iobuf* %66, i32 0, i32 2
  store %struct.bhnd_nvram_io* %67, %struct.bhnd_nvram_io** %3, align 8
  br label %68

68:                                               ; preds = %65, %62, %29, %12
  %69 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %3, align 8
  ret %struct.bhnd_nvram_io* %69
}

declare dso_local i8* @bhnd_nv_malloc(i64) #1

declare dso_local i32 @bhnd_nv_free(%struct.bhnd_nvram_iobuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
