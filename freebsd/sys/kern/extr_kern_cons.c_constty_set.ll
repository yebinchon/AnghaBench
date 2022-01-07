; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cons.c_constty_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cons.c_constty_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"constty_set: NULL tp\00", align 1
@consbuf = common dso_local global i32* null, align 8
@consmsgbuf_size = common dso_local global i32 0, align 4
@M_TTYCONS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@consmsgbuf = common dso_local global i32 0, align 4
@conscallout = common dso_local global i32 0, align 4
@constty = common dso_local global %struct.tty* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @constty_set(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %2, align 8
  %4 = load %struct.tty*, %struct.tty** %2, align 8
  %5 = icmp ne %struct.tty* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @KASSERT(i32 %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** @consbuf, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load i32, i32* @consmsgbuf_size, align 4
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @M_TTYCONS, align 4
  %14 = load i32, i32* @M_WAITOK, align 4
  %15 = call i32* @malloc(i32 %12, i32 %13, i32 %14)
  store i32* %15, i32** @consbuf, align 8
  %16 = load i32*, i32** @consbuf, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @msgbuf_init(i32* @consmsgbuf, i32* %16, i32 %17)
  %19 = call i32 @callout_init(i32* @conscallout, i32 0)
  br label %20

20:                                               ; preds = %10, %1
  %21 = load %struct.tty*, %struct.tty** %2, align 8
  store %struct.tty* %21, %struct.tty** @constty, align 8
  %22 = call i32 @constty_timeout(i32* null)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @msgbuf_init(i32*, i32*, i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @constty_timeout(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
