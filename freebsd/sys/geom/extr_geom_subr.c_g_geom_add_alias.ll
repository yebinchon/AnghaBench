; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_subr.c_g_geom_add_alias.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_subr.c_g_geom_add_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_geom = type { i32 }
%struct.g_geom_alias = type { i8* }

@M_WAITOK = common dso_local global i32 0, align 4
@ga_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_geom_add_alias(%struct.g_geom* %0, i8* %1) #0 {
  %3 = alloca %struct.g_geom*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.g_geom_alias*, align 8
  store %struct.g_geom* %0, %struct.g_geom** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @strlen(i8* %6)
  %8 = add i64 8, %7
  %9 = add i64 %8, 1
  %10 = load i32, i32* @M_WAITOK, align 4
  %11 = call i64 @g_malloc(i64 %9, i32 %10)
  %12 = inttoptr i64 %11 to %struct.g_geom_alias*
  store %struct.g_geom_alias* %12, %struct.g_geom_alias** %5, align 8
  %13 = load %struct.g_geom_alias*, %struct.g_geom_alias** %5, align 8
  %14 = getelementptr inbounds %struct.g_geom_alias, %struct.g_geom_alias* %13, i64 1
  %15 = bitcast %struct.g_geom_alias* %14 to i8*
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strcpy(i8* %15, i8* %16)
  %18 = load %struct.g_geom_alias*, %struct.g_geom_alias** %5, align 8
  %19 = getelementptr inbounds %struct.g_geom_alias, %struct.g_geom_alias* %18, i64 1
  %20 = bitcast %struct.g_geom_alias* %19 to i8*
  %21 = load %struct.g_geom_alias*, %struct.g_geom_alias** %5, align 8
  %22 = getelementptr inbounds %struct.g_geom_alias, %struct.g_geom_alias* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %24 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %23, i32 0, i32 0
  %25 = load %struct.g_geom_alias*, %struct.g_geom_alias** %5, align 8
  %26 = load i32, i32* @ga_next, align 4
  %27 = call i32 @LIST_INSERT_HEAD(i32* %24, %struct.g_geom_alias* %25, i32 %26)
  ret void
}

declare dso_local i64 @g_malloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.g_geom_alias*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
