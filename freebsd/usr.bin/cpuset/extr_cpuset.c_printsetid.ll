; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/cpuset/extr_cpuset.c_printsetid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/cpuset/extr_cpuset.c_printsetid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@level = common dso_local global i64 0, align 8
@CPU_LEVEL_WHICH = common dso_local global i64 0, align 8
@sflag = common dso_local global i32 0, align 4
@CPU_LEVEL_CPUSET = common dso_local global i64 0, align 8
@which = common dso_local global i64 0, align 8
@id = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"getid\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%s %jd%s id: %d\0A\00", align 1
@whichnames = common dso_local global i8** null, align 8
@levelnames = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @printsetid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printsetid() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @level, align 8
  %3 = load i64, i64* @CPU_LEVEL_WHICH, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = load i32, i32* @sflag, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = load i64, i64* @CPU_LEVEL_CPUSET, align 8
  store i64 %9, i64* @level, align 8
  br label %10

10:                                               ; preds = %8, %5, %0
  %11 = load i64, i64* @level, align 8
  %12 = load i64, i64* @which, align 8
  %13 = load i64, i64* @id, align 8
  %14 = call i64 @cpuset_getid(i64 %11, i64 %12, i64 %13, i32* %1)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* @errno, align 4
  %18 = call i32 @err(i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %10
  %20 = load i8**, i8*** @whichnames, align 8
  %21 = load i64, i64* @which, align 8
  %22 = getelementptr inbounds i8*, i8** %20, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = load i64, i64* @id, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32*, i32** @levelnames, align 8
  %27 = load i64, i64* @level, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %23, i32 %25, i32 %29, i32 %30)
  ret void
}

declare dso_local i64 @cpuset_getid(i64, i64, i64, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
