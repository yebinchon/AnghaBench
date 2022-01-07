; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_main.c_next_files_have_lines.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_main.c_next_files_have_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_flist = type { i32, %struct.s_flist* }

@files = common dso_local global %struct.s_flist* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @next_files_have_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_files_have_lines() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.s_flist*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = load %struct.s_flist*, %struct.s_flist** @files, align 8
  store %struct.s_flist* %5, %struct.s_flist** %2, align 8
  br label %6

6:                                                ; preds = %29, %17, %0
  %7 = load %struct.s_flist*, %struct.s_flist** %2, align 8
  %8 = getelementptr inbounds %struct.s_flist, %struct.s_flist* %7, i32 0, i32 1
  %9 = load %struct.s_flist*, %struct.s_flist** %8, align 8
  store %struct.s_flist* %9, %struct.s_flist** %2, align 8
  %10 = icmp ne %struct.s_flist* %9, null
  br i1 %10, label %11, label %32

11:                                               ; preds = %6
  %12 = load %struct.s_flist*, %struct.s_flist** %2, align 8
  %13 = getelementptr inbounds %struct.s_flist, %struct.s_flist* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32* @fopen(i32 %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %3, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %6

18:                                               ; preds = %11
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @getc(i32* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @EOF, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @ungetc(i32 %24, i32* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @fclose(i32* %27)
  store i32 1, i32* %1, align 4
  br label %33

29:                                               ; preds = %18
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @fclose(i32* %30)
  br label %6

32:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %32, %23
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @ungetc(i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
