; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/grep/extr_file.c_grep_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/grep/extr_file.c_grep_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@filebehave = common dso_local global i64 0, align 8
@FILE_MMAP = common dso_local global i64 0, align 8
@buffer = common dso_local global i32* null, align 8
@fsiz = common dso_local global i32 0, align 4
@bufpos = common dso_local global i32* null, align 8
@bufrem = common dso_local global i64 0, align 8
@lnbuf = common dso_local global i32* null, align 8
@lnbuflen = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grep_close(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %3 = load %struct.file*, %struct.file** %2, align 8
  %4 = getelementptr inbounds %struct.file, %struct.file* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @close(i32 %5)
  %7 = load i64, i64* @filebehave, align 8
  %8 = load i64, i64* @FILE_MMAP, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32*, i32** @buffer, align 8
  %12 = load i32, i32* @fsiz, align 4
  %13 = call i32 @munmap(i32* %11, i32 %12)
  store i32* null, i32** @buffer, align 8
  br label %14

14:                                               ; preds = %10, %1
  %15 = load i32*, i32** @buffer, align 8
  store i32* %15, i32** @bufpos, align 8
  store i64 0, i64* @bufrem, align 8
  %16 = load i32*, i32** @lnbuf, align 8
  %17 = call i32 @free(i32* %16)
  store i32* null, i32** @lnbuf, align 8
  store i64 0, i64* @lnbuflen, align 8
  ret void
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @munmap(i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
