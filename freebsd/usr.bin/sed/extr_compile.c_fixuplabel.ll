; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_compile.c_fixuplabel.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_compile.c_fixuplabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_command = type { i32, %struct.s_command*, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { %struct.s_command* }

@appendnum = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%lu: %s: undefined label '%s'\00", align 1
@linenum = common dso_local global i32 0, align 4
@fname = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_command*, %struct.s_command*)* @fixuplabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixuplabel(%struct.s_command* %0, %struct.s_command* %1) #0 {
  %3 = alloca %struct.s_command*, align 8
  %4 = alloca %struct.s_command*, align 8
  store %struct.s_command* %0, %struct.s_command** %3, align 8
  store %struct.s_command* %1, %struct.s_command** %4, align 8
  br label %5

5:                                                ; preds = %55, %2
  %6 = load %struct.s_command*, %struct.s_command** %3, align 8
  %7 = load %struct.s_command*, %struct.s_command** %4, align 8
  %8 = icmp ne %struct.s_command* %6, %7
  br i1 %8, label %9, label %59

9:                                                ; preds = %5
  %10 = load %struct.s_command*, %struct.s_command** %3, align 8
  %11 = getelementptr inbounds %struct.s_command, %struct.s_command* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %54 [
    i32 97, label %13
    i32 114, label %13
    i32 98, label %16
    i32 116, label %16
    i32 123, label %46
  ]

13:                                               ; preds = %9, %9
  %14 = load i32, i32* @appendnum, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @appendnum, align 4
  br label %54

16:                                               ; preds = %9, %9
  %17 = load %struct.s_command*, %struct.s_command** %3, align 8
  %18 = getelementptr inbounds %struct.s_command, %struct.s_command* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.s_command*, %struct.s_command** %3, align 8
  %23 = getelementptr inbounds %struct.s_command, %struct.s_command* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.s_command* null, %struct.s_command** %24, align 8
  br label %54

25:                                               ; preds = %16
  %26 = load %struct.s_command*, %struct.s_command** %3, align 8
  %27 = getelementptr inbounds %struct.s_command, %struct.s_command* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = call %struct.s_command* @findlabel(i32* %28)
  %30 = load %struct.s_command*, %struct.s_command** %3, align 8
  %31 = getelementptr inbounds %struct.s_command, %struct.s_command* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store %struct.s_command* %29, %struct.s_command** %32, align 8
  %33 = icmp eq %struct.s_command* %29, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load i32, i32* @linenum, align 4
  %36 = load i32, i32* @fname, align 4
  %37 = load %struct.s_command*, %struct.s_command** %3, align 8
  %38 = getelementptr inbounds %struct.s_command, %struct.s_command* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36, i32* %39)
  br label %41

41:                                               ; preds = %34, %25
  %42 = load %struct.s_command*, %struct.s_command** %3, align 8
  %43 = getelementptr inbounds %struct.s_command, %struct.s_command* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @free(i32* %44)
  br label %54

46:                                               ; preds = %9
  %47 = load %struct.s_command*, %struct.s_command** %3, align 8
  %48 = getelementptr inbounds %struct.s_command, %struct.s_command* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.s_command*, %struct.s_command** %49, align 8
  %51 = load %struct.s_command*, %struct.s_command** %3, align 8
  %52 = getelementptr inbounds %struct.s_command, %struct.s_command* %51, i32 0, i32 1
  %53 = load %struct.s_command*, %struct.s_command** %52, align 8
  call void @fixuplabel(%struct.s_command* %50, %struct.s_command* %53)
  br label %54

54:                                               ; preds = %9, %46, %41, %21, %13
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.s_command*, %struct.s_command** %3, align 8
  %57 = getelementptr inbounds %struct.s_command, %struct.s_command* %56, i32 0, i32 1
  %58 = load %struct.s_command*, %struct.s_command** %57, align 8
  store %struct.s_command* %58, %struct.s_command** %3, align 8
  br label %5

59:                                               ; preds = %5
  ret void
}

declare dso_local %struct.s_command* @findlabel(i32*) #1

declare dso_local i32 @errx(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
