; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ksyms/extr_ksyms.c_ksyms_mmap_single.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ksyms/extr_ksyms.c_ksyms_mmap_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.ksyms_softc = type { i32, i32 }

@PROT_READ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i64*, i64, i32*, i32)* @ksyms_mmap_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksyms_mmap_single(%struct.cdev* %0, i64* %1, i64 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ksyms_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = bitcast %struct.ksyms_softc** %12 to i8**
  %16 = call i32 @devfs_get_cdevpriv(i8** %15)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* %14, align 4
  store i32 %20, i32* %6, align 4
  br label %59

21:                                               ; preds = %5
  %22 = load i64*, i64** %8, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %49, label %25

25:                                               ; preds = %21
  %26 = load i64*, i64** %8, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ksyms_softc*, %struct.ksyms_softc** %12, align 8
  %29 = getelementptr inbounds %struct.ksyms_softc, %struct.ksyms_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @round_page(i32 %30)
  %32 = icmp sge i64 %27, %31
  br i1 %32, label %49, label %33

33:                                               ; preds = %25
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.ksyms_softc*, %struct.ksyms_softc** %12, align 8
  %36 = getelementptr inbounds %struct.ksyms_softc, %struct.ksyms_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @round_page(i32 %37)
  %39 = load i64*, i64** %8, align 8
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %38, %40
  %42 = icmp sgt i64 %34, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @PROT_READ, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43, %33, %25, %21
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %6, align 4
  br label %59

51:                                               ; preds = %43
  %52 = load %struct.ksyms_softc*, %struct.ksyms_softc** %12, align 8
  %53 = getelementptr inbounds %struct.ksyms_softc, %struct.ksyms_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @vm_object_reference(i32 %55)
  %57 = load i32, i32* %13, align 4
  %58 = load i32*, i32** %10, align 8
  store i32 %57, i32* %58, align 4
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %51, %49, %19
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i64 @round_page(i32) #1

declare dso_local i32 @vm_object_reference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
