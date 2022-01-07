; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ldd/extr_sods.c_dump_segs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ldd/extr_sods.c_dump_segs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"  Text segment starts at address %lx\0A\00", align 1
@origin = common dso_local global i64 0, align 8
@ex = common dso_local global i32* null, align 8
@EX_DYNAMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"    rel starts at %lx\0A\00", align 1
@sdt = common dso_local global %struct.TYPE_5__* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"    hash starts at %lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"    nzlist starts at %lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"    strings starts at %lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"  Data segment starts at address %lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"    _dynamic starts at %lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"    so_debug starts at %lx\0A\00", align 1
@dyn = common dso_local global %struct.TYPE_6__* null, align 8
@.str.8 = private unnamed_addr constant [23 x i8] c"    sdt starts at %lx\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"    got starts at %lx\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"    plt starts at %lx\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"    rest of stuff starts at %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dump_segs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_segs() #0 {
  %1 = load i64, i64* @origin, align 8
  %2 = load i32*, i32** @ex, align 8
  %3 = load i32, i32* %2, align 4
  %4 = call i64 @N_TXTOFF(i32 %3)
  %5 = add i64 %1, %4
  %6 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %5)
  %7 = load i32*, i32** @ex, align 8
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @N_GETFLAG(i32 %8)
  %10 = load i32, i32* @EX_DYNAMIC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sdt, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sdt, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sdt, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sdt, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %28)
  br label %30

30:                                               ; preds = %13, %0
  %31 = load i64, i64* @origin, align 8
  %32 = load i32*, i32** @ex, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @N_DATOFF(i32 %33)
  %35 = add i64 %31, %34
  %36 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i64 %35)
  %37 = load i32*, i32** @ex, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @N_GETFLAG(i32 %38)
  %40 = load i32, i32* @EX_DYNAMIC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %75

43:                                               ; preds = %30
  %44 = load i64, i64* @origin, align 8
  %45 = load i32*, i32** @ex, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @N_DATOFF(i32 %46)
  %48 = add i64 %44, %47
  %49 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i64 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dyn, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i64 %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dyn, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sdt, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i64 %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sdt, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i64 %65)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sdt, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sdt, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %69, %72
  %74 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i64 %73)
  br label %75

75:                                               ; preds = %43, %30
  ret void
}

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i64 @N_TXTOFF(i32) #1

declare dso_local i32 @N_GETFLAG(i32) #1

declare dso_local i64 @N_DATOFF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
