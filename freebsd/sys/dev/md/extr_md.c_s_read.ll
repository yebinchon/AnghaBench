; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_s_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_s_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.indir = type { i32, i64* }

@md_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"s_read(%jd)\0A\00", align 1
@NMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.indir*, i32)* @s_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @s_read(%struct.indir* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.indir*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.indir*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.indir* %0, %struct.indir** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @md_debug, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %11, %2
  store i64 0, i64* %8, align 8
  %15 = load %struct.indir*, %struct.indir** %4, align 8
  store %struct.indir* %15, %struct.indir** %6, align 8
  br label %16

16:                                               ; preds = %24, %14
  %17 = load %struct.indir*, %struct.indir** %6, align 8
  %18 = icmp ne %struct.indir* %17, null
  br i1 %18, label %19, label %52

19:                                               ; preds = %16
  %20 = load %struct.indir*, %struct.indir** %6, align 8
  %21 = getelementptr inbounds %struct.indir, %struct.indir* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.indir*, %struct.indir** %6, align 8
  %27 = getelementptr inbounds %struct.indir, %struct.indir* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = ashr i32 %25, %28
  %30 = load i32, i32* @NMASK, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %7, align 4
  %32 = load %struct.indir*, %struct.indir** %6, align 8
  %33 = getelementptr inbounds %struct.indir, %struct.indir* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = inttoptr i64 %39 to %struct.indir*
  store %struct.indir* %40, %struct.indir** %6, align 8
  br label %16

41:                                               ; preds = %19
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @NMASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %7, align 4
  %45 = load %struct.indir*, %struct.indir** %6, align 8
  %46 = getelementptr inbounds %struct.indir, %struct.indir* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %3, align 8
  br label %53

52:                                               ; preds = %16
  store i64 0, i64* %3, align 8
  br label %53

53:                                               ; preds = %52, %41
  %54 = load i64, i64* %3, align 8
  ret i64 %54
}

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
