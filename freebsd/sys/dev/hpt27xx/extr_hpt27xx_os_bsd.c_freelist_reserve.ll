; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hpt27xx/extr_hpt27xx_os_bsd.c_freelist_reserve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hpt27xx/extr_hpt27xx_os_bsd.c_freelist_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.freelist = type { i8*, i8*, i64, i8*, i64, %struct.freelist* }
%struct.TYPE_3__ = type { i64, %struct.freelist* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }

@EXT_TYPE_VBUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freelist_reserve(%struct.freelist* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.freelist*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store %struct.freelist* %0, %struct.freelist** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %9, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @EXT_TYPE_VBUS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_4__*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %9, align 8
  br label %22

22:                                               ; preds = %17, %4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load %struct.freelist*, %struct.freelist** %24, align 8
  %26 = load %struct.freelist*, %struct.freelist** %5, align 8
  %27 = getelementptr inbounds %struct.freelist, %struct.freelist* %26, i32 0, i32 5
  store %struct.freelist* %25, %struct.freelist** %27, align 8
  %28 = load %struct.freelist*, %struct.freelist** %5, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store %struct.freelist* %28, %struct.freelist** %30, align 8
  %31 = load %struct.freelist*, %struct.freelist** %5, align 8
  %32 = getelementptr inbounds %struct.freelist, %struct.freelist* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.freelist*, %struct.freelist** %5, align 8
  %35 = getelementptr inbounds %struct.freelist, %struct.freelist* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.freelist*, %struct.freelist** %5, align 8
  %37 = getelementptr inbounds %struct.freelist, %struct.freelist* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.freelist*, %struct.freelist** %5, align 8
  %40 = getelementptr inbounds %struct.freelist, %struct.freelist* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
