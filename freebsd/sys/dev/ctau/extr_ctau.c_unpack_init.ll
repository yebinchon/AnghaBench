; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_unpack_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_unpack_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.TYPE_3__*, i8*)* @unpack_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @unpack_init(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %7, i8** %4, align 8
  %8 = load i8, i8* %6, align 1
  %9 = zext i8 %8 to i16
  store i16 %9, i16* %5, align 2
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %4, align 8
  %12 = load i8, i8* %10, align 1
  %13 = zext i8 %12 to i32
  %14 = shl i32 %13, 8
  %15 = load i16, i16* %5, align 2
  %16 = zext i16 %15 to i32
  %17 = or i32 %16, %14
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %5, align 2
  %19 = load i8*, i8** %4, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load i16, i16* %5, align 2
  ret i16 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
