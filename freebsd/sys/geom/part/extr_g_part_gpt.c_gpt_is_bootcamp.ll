; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_gpt_is_bootcamp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_gpt_is_bootcamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_gpt_table = type { i32* }

@DOSPARTOFF = common dso_local global i32 0, align 4
@DOSPARTSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"GEOM: %s: enabling Boot Camp\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_gpt_table*, i8*)* @gpt_is_bootcamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpt_is_bootcamp(%struct.g_part_gpt_table* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_part_gpt_table*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct.g_part_gpt_table* %0, %struct.g_part_gpt_table** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.g_part_gpt_table*, %struct.g_part_gpt_table** %4, align 8
  %8 = getelementptr inbounds %struct.g_part_gpt_table, %struct.g_part_gpt_table* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* @DOSPARTOFF, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 4
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 238
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 8
  %20 = call i32 @le32dec(i32* %19)
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %2
  store i32 0, i32* %3, align 4
  br label %36

23:                                               ; preds = %17
  %24 = load i32, i32* @DOSPARTSIZE, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 175
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %36

33:                                               ; preds = %23
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %34)
  store i32 1, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %32, %22
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @le32dec(i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
