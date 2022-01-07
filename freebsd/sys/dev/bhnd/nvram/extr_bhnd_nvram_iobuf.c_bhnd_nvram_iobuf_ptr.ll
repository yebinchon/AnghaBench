; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_iobuf.c_bhnd_nvram_iobuf_ptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_iobuf.c_bhnd_nvram_iobuf_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_iobuf = type { i64, i64 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_nvram_iobuf*, i64, i8**, i64, i64*)* @bhnd_nvram_iobuf_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_iobuf_ptr(%struct.bhnd_nvram_iobuf* %0, i64 %1, i8** %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bhnd_nvram_iobuf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  store %struct.bhnd_nvram_iobuf* %0, %struct.bhnd_nvram_iobuf** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8** %2, i8*** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load %struct.bhnd_nvram_iobuf*, %struct.bhnd_nvram_iobuf** %7, align 8
  %15 = getelementptr inbounds %struct.bhnd_nvram_iobuf, %struct.bhnd_nvram_iobuf* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ugt i64 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %6, align 4
  br label %46

20:                                               ; preds = %5
  %21 = load %struct.bhnd_nvram_iobuf*, %struct.bhnd_nvram_iobuf** %7, align 8
  %22 = getelementptr inbounds %struct.bhnd_nvram_iobuf, %struct.bhnd_nvram_iobuf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = sub i64 %23, %24
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %6, align 4
  br label %46

31:                                               ; preds = %20
  %32 = load %struct.bhnd_nvram_iobuf*, %struct.bhnd_nvram_iobuf** %7, align 8
  %33 = getelementptr inbounds %struct.bhnd_nvram_iobuf, %struct.bhnd_nvram_iobuf* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = bitcast i32* %37 to i8*
  %39 = load i8**, i8*** %9, align 8
  store i8* %38, i8** %39, align 8
  %40 = load i64*, i64** %11, align 8
  %41 = icmp ne i64* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i64, i64* %12, align 8
  %44 = load i64*, i64** %11, align 8
  store i64 %43, i64* %44, align 8
  br label %45

45:                                               ; preds = %42, %31
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %45, %29, %18
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
