; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hpt27xx/extr_hpt27xx_os_bsd.c_freelist_reserve_dma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hpt27xx/extr_hpt27xx_os_bsd.c_freelist_reserve_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.freelist = type { i32, i8*, i8*, i64, i8*, i8*, %struct.freelist* }
%struct.TYPE_3__ = type { i64, %struct.freelist* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }

@EXT_TYPE_VBUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freelist_reserve_dma(%struct.freelist* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.freelist*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  store %struct.freelist* %0, %struct.freelist** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %11, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @EXT_TYPE_VBUS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %5
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_4__*
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %11, align 8
  br label %24

24:                                               ; preds = %19, %5
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load %struct.freelist*, %struct.freelist** %26, align 8
  %28 = load %struct.freelist*, %struct.freelist** %6, align 8
  %29 = getelementptr inbounds %struct.freelist, %struct.freelist* %28, i32 0, i32 6
  store %struct.freelist* %27, %struct.freelist** %29, align 8
  %30 = load %struct.freelist*, %struct.freelist** %6, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store %struct.freelist* %30, %struct.freelist** %32, align 8
  %33 = load %struct.freelist*, %struct.freelist** %6, align 8
  %34 = getelementptr inbounds %struct.freelist, %struct.freelist* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load %struct.freelist*, %struct.freelist** %6, align 8
  %37 = getelementptr inbounds %struct.freelist, %struct.freelist* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.freelist*, %struct.freelist** %6, align 8
  %40 = getelementptr inbounds %struct.freelist, %struct.freelist* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load %struct.freelist*, %struct.freelist** %6, align 8
  %42 = getelementptr inbounds %struct.freelist, %struct.freelist* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load %struct.freelist*, %struct.freelist** %6, align 8
  %45 = getelementptr inbounds %struct.freelist, %struct.freelist* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
