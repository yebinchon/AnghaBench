; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_ebt3000_cf.c_cf_attach_geom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_ebt3000_cf.c_cf_attach_geom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_priv = type { %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_8__*, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.cf_priv* }

@g_cf_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"cf%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @cf_attach_geom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf_attach_geom(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cf_priv*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.cf_priv*
  store %struct.cf_priv* %7, %struct.cf_priv** %5, align 8
  %8 = load %struct.cf_priv*, %struct.cf_priv** %5, align 8
  %9 = getelementptr inbounds %struct.cf_priv, %struct.cf_priv* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @device_get_unit(i32 %10)
  %12 = call %struct.TYPE_8__* @g_new_geomf(i32* @g_cf_class, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.cf_priv*, %struct.cf_priv** %5, align 8
  %14 = getelementptr inbounds %struct.cf_priv, %struct.cf_priv* %13, i32 0, i32 2
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %14, align 8
  %15 = load %struct.cf_priv*, %struct.cf_priv** %5, align 8
  %16 = load %struct.cf_priv*, %struct.cf_priv** %5, align 8
  %17 = getelementptr inbounds %struct.cf_priv, %struct.cf_priv* %16, i32 0, i32 2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  store %struct.cf_priv* %15, %struct.cf_priv** %19, align 8
  %20 = load %struct.cf_priv*, %struct.cf_priv** %5, align 8
  %21 = getelementptr inbounds %struct.cf_priv, %struct.cf_priv* %20, i32 0, i32 2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = load %struct.cf_priv*, %struct.cf_priv** %5, align 8
  %24 = getelementptr inbounds %struct.cf_priv, %struct.cf_priv* %23, i32 0, i32 2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.TYPE_7__* @g_new_providerf(%struct.TYPE_8__* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.cf_priv*, %struct.cf_priv** %5, align 8
  %30 = getelementptr inbounds %struct.cf_priv, %struct.cf_priv* %29, i32 0, i32 0
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %30, align 8
  %31 = load %struct.cf_priv*, %struct.cf_priv** %5, align 8
  %32 = getelementptr inbounds %struct.cf_priv, %struct.cf_priv* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.cf_priv*, %struct.cf_priv** %5, align 8
  %36 = getelementptr inbounds %struct.cf_priv, %struct.cf_priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 4
  %39 = load %struct.cf_priv*, %struct.cf_priv** %5, align 8
  %40 = getelementptr inbounds %struct.cf_priv, %struct.cf_priv* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cf_priv*, %struct.cf_priv** %5, align 8
  %44 = getelementptr inbounds %struct.cf_priv, %struct.cf_priv* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %42, %47
  %49 = load %struct.cf_priv*, %struct.cf_priv** %5, align 8
  %50 = getelementptr inbounds %struct.cf_priv, %struct.cf_priv* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 4
  %53 = load %struct.cf_priv*, %struct.cf_priv** %5, align 8
  %54 = getelementptr inbounds %struct.cf_priv, %struct.cf_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = call i32 @g_error_provider(%struct.TYPE_7__* %55, i32 0)
  ret void
}

declare dso_local %struct.TYPE_8__* @g_new_geomf(i32*, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.TYPE_7__* @g_new_providerf(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @g_error_provider(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
