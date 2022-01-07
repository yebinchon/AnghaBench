; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/grep/extr_grep.c_add_dpattern.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/grep/extr_grep.c_add_dpattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@dpatterns = common dso_local global i32 0, align 4
@dpattern_sz = common dso_local global i32 0, align 4
@dpattern = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @add_dpattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_dpattern(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @dpatterns, align 4
  %6 = load i32, i32* @dpattern_sz, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load i32, i32* @dpattern_sz, align 4
  %10 = mul nsw i32 %9, 2
  store i32 %10, i32* @dpattern_sz, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dpattern, align 8
  %12 = load i32, i32* @dpattern_sz, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @dpattern_sz, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call %struct.TYPE_4__* @grep_realloc(%struct.TYPE_4__* %11, i32 %16)
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** @dpattern, align 8
  br label %18

18:                                               ; preds = %8, %2
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @grep_strdup(i8* %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dpattern, align 8
  %22 = load i32, i32* @dpatterns, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 %20, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dpattern, align 8
  %28 = load i32, i32* @dpatterns, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %26, i32* %31, align 4
  %32 = load i32, i32* @dpatterns, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @dpatterns, align 4
  ret void
}

declare dso_local %struct.TYPE_4__* @grep_realloc(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @grep_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
