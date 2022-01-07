; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_turnstile.c_turnstile_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_turnstile.c_turnstile_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32, i32, i32, i32* }

@TS_EXCLUSIVE_QUEUE = common dso_local global i64 0, align 8
@TS_SHARED_QUEUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"turnstile lock\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@MTX_RECURSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @turnstile_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @turnstile_init(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.turnstile*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @bzero(i8* %8, i32 %9)
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.turnstile*
  store %struct.turnstile* %12, %struct.turnstile** %7, align 8
  %13 = load %struct.turnstile*, %struct.turnstile** %7, align 8
  %14 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @TS_EXCLUSIVE_QUEUE, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = call i32 @TAILQ_INIT(i32* %17)
  %19 = load %struct.turnstile*, %struct.turnstile** %7, align 8
  %20 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @TS_SHARED_QUEUE, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = call i32 @TAILQ_INIT(i32* %23)
  %25 = load %struct.turnstile*, %struct.turnstile** %7, align 8
  %26 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %25, i32 0, i32 2
  %27 = call i32 @TAILQ_INIT(i32* %26)
  %28 = load %struct.turnstile*, %struct.turnstile** %7, align 8
  %29 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %28, i32 0, i32 1
  %30 = call i32 @LIST_INIT(i32* %29)
  %31 = load %struct.turnstile*, %struct.turnstile** %7, align 8
  %32 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %31, i32 0, i32 0
  %33 = load i32, i32* @MTX_SPIN, align 4
  %34 = load i32, i32* @MTX_RECURSE, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @mtx_init(i32* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* null, i32 %35)
  ret i32 0
}

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
