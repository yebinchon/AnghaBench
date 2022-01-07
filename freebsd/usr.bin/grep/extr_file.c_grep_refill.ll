; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/grep/extr_file.c_grep_refill.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/grep/extr_file.c_grep_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@filebehave = common dso_local global i64 0, align 8
@FILE_MMAP = common dso_local global i64 0, align 8
@buffer = common dso_local global i32 0, align 4
@bufpos = common dso_local global i32 0, align 4
@bufrem = common dso_local global i64 0, align 8
@MAXBUFSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @grep_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grep_refill(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %5 = load i64, i64* @filebehave, align 8
  %6 = load i64, i64* @FILE_MMAP, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

9:                                                ; preds = %1
  %10 = load i32, i32* @buffer, align 4
  store i32 %10, i32* @bufpos, align 4
  store i64 0, i64* @bufrem, align 8
  %11 = load %struct.file*, %struct.file** %3, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @buffer, align 4
  %15 = load i32, i32* @MAXBUFSIZ, align 4
  %16 = call i64 @read(i32 %13, i32 %14, i32 %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %22

20:                                               ; preds = %9
  %21 = load i64, i64* %4, align 8
  store i64 %21, i64* @bufrem, align 8
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %20, %19, %8
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @read(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
