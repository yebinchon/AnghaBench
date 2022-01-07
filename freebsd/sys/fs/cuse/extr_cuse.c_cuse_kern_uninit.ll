; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_kern_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_kern_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [86 x i8] c"Cuse: Please exit all /dev/cuse instances and processes which have used this device.\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"DRAIN\00", align 1
@hz = common dso_local global i32 0, align 4
@cuse_server_head = common dso_local global i32 0, align 4
@cuse_dev = common dso_local global i32* null, align 8
@cuse_mtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cuse_kern_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cuse_kern_uninit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %4

4:                                                ; preds = %1, %15
  %5 = call i32 @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @hz, align 4
  %7 = mul nsw i32 2, %6
  %8 = call i32 @pause(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = call i32 (...) @cuse_lock()
  %10 = call i8* @TAILQ_FIRST(i32* @cuse_server_head)
  store i8* %10, i8** %3, align 8
  %11 = call i32 (...) @cuse_unlock()
  %12 = load i8*, i8** %3, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %16

15:                                               ; preds = %4
  br label %4

16:                                               ; preds = %14
  %17 = load i32*, i32** @cuse_dev, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32*, i32** @cuse_dev, align 8
  %21 = call i32 @destroy_dev(i32* %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = call i32 @mtx_destroy(i32* @cuse_mtx)
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @cuse_lock(...) #1

declare dso_local i8* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @cuse_unlock(...) #1

declare dso_local i32 @destroy_dev(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
