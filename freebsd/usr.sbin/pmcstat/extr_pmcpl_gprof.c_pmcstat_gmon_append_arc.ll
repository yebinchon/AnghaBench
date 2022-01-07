; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_gprof.c_pmcstat_gmon_append_arc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_gprof.c_pmcstat_gmon_append_arc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcstat_image = type { i64 }
%struct.rawarc = type { i32, i64, i64 }
%struct.pmcstat_gmonfile = type { i32*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcstat_image*, i32, i64, i64, i32)* @pmcstat_gmon_append_arc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcstat_gmon_append_arc(%struct.pmcstat_image* %0, i32 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.pmcstat_image*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rawarc, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.pmcstat_gmonfile*, align 8
  store %struct.pmcstat_image* %0, %struct.pmcstat_image** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.pmcstat_image*, %struct.pmcstat_image** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.pmcstat_gmonfile* @pmcstat_image_find_gmonfile(%struct.pmcstat_image* %14, i32 %15)
  store %struct.pmcstat_gmonfile* %16, %struct.pmcstat_gmonfile** %13, align 8
  %17 = icmp eq %struct.pmcstat_gmonfile* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  br label %55

19:                                               ; preds = %5
  %20 = load %struct.pmcstat_gmonfile*, %struct.pmcstat_gmonfile** %13, align 8
  %21 = getelementptr inbounds %struct.pmcstat_gmonfile, %struct.pmcstat_gmonfile* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load %struct.pmcstat_gmonfile*, %struct.pmcstat_gmonfile** %13, align 8
  %26 = getelementptr inbounds %struct.pmcstat_gmonfile, %struct.pmcstat_gmonfile* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @pmcstat_string_unintern(i32 %27)
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = call i32* @fopen(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.pmcstat_gmonfile*, %struct.pmcstat_gmonfile** %13, align 8
  %32 = getelementptr inbounds %struct.pmcstat_gmonfile, %struct.pmcstat_gmonfile* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = icmp eq i32* %30, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %55

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %19
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.pmcstat_image*, %struct.pmcstat_image** %6, align 8
  %39 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %37, %40
  %42 = getelementptr inbounds %struct.rawarc, %struct.rawarc* %11, i32 0, i32 2
  store i64 %41, i64* %42, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.pmcstat_image*, %struct.pmcstat_image** %6, align 8
  %45 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %43, %46
  %48 = getelementptr inbounds %struct.rawarc, %struct.rawarc* %11, i32 0, i32 1
  store i64 %47, i64* %48, align 8
  %49 = load i32, i32* %10, align 4
  %50 = getelementptr inbounds %struct.rawarc, %struct.rawarc* %11, i32 0, i32 0
  store i32 %49, i32* %50, align 8
  %51 = load %struct.pmcstat_gmonfile*, %struct.pmcstat_gmonfile** %13, align 8
  %52 = getelementptr inbounds %struct.pmcstat_gmonfile, %struct.pmcstat_gmonfile* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @fwrite(%struct.rawarc* %11, i32 24, i32 1, i32* %53)
  br label %55

55:                                               ; preds = %36, %34, %18
  ret void
}

declare dso_local %struct.pmcstat_gmonfile* @pmcstat_image_find_gmonfile(%struct.pmcstat_image*, i32) #1

declare dso_local i8* @pmcstat_string_unintern(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fwrite(%struct.rawarc*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
