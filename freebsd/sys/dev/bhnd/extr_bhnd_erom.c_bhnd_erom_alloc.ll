; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_erom.c_bhnd_erom_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_erom.c_bhnd_erom_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.bhnd_chipid = type { i64 }
%struct.bhnd_erom_io = type { i32 }

@M_BHND = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"error initializing %s parser at %#jx: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @bhnd_erom_alloc(%struct.TYPE_3__* %0, %struct.bhnd_chipid* %1, %struct.bhnd_erom_io* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.bhnd_chipid*, align 8
  %7 = alloca %struct.bhnd_erom_io*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct.bhnd_chipid* %1, %struct.bhnd_chipid** %6, align 8
  store %struct.bhnd_erom_io* %2, %struct.bhnd_erom_io** %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = ptrtoint %struct.TYPE_3__* %10 to i32
  %12 = load i32, i32* @M_BHND, align 4
  %13 = load i32, i32* @M_WAITOK, align 4
  %14 = load i32, i32* @M_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = call i64 @kobj_create(i32 %11, i32 %12, i32 %15)
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %6, align 8
  %20 = load %struct.bhnd_erom_io*, %struct.bhnd_erom_io** %7, align 8
  %21 = call i32 @BHND_EROM_INIT(i32* %18, %struct.bhnd_chipid* %19, %struct.bhnd_erom_io* %20)
  store i32 %21, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %6, align 8
  %28 = getelementptr inbounds %struct.bhnd_chipid, %struct.bhnd_chipid* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %30, i32 %31)
  %33 = load i32*, i32** %8, align 8
  %34 = ptrtoint i32* %33 to i32
  %35 = load i32, i32* @M_BHND, align 4
  %36 = call i32 @kobj_delete(i32 %34, i32 %35)
  store i32* null, i32** %4, align 8
  br label %39

37:                                               ; preds = %3
  %38 = load i32*, i32** %8, align 8
  store i32* %38, i32** %4, align 8
  br label %39

39:                                               ; preds = %37, %23
  %40 = load i32*, i32** %4, align 8
  ret i32* %40
}

declare dso_local i64 @kobj_create(i32, i32, i32) #1

declare dso_local i32 @BHND_EROM_INIT(i32*, %struct.bhnd_chipid*, %struct.bhnd_erom_io*) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32) #1

declare dso_local i32 @kobj_delete(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
