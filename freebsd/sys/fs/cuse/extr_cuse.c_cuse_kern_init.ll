; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_kern_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_kern_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cuse_server_head = common dso_local global i32 0, align 4
@cuse_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"cuse-mtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@cuse_server_devsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"cuse\00", align 1
@cuse_dev = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Cuse v%d.%d.%d @ /dev/cuse\0A\00", align 1
@CUSE_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cuse_kern_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cuse_kern_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 @TAILQ_INIT(i32* @cuse_server_head)
  %4 = load i32, i32* @MTX_DEF, align 4
  %5 = call i32 @mtx_init(i32* @cuse_mtx, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i32 %4)
  %6 = load i32, i32* @UID_ROOT, align 4
  %7 = load i32, i32* @GID_OPERATOR, align 4
  %8 = call i32 @make_dev(i32* @cuse_server_devsw, i32 0, i32 %6, i32 %7, i32 384, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %8, i32* @cuse_dev, align 4
  %9 = load i32, i32* @CUSE_VERSION, align 4
  %10 = ashr i32 %9, 16
  %11 = and i32 %10, 255
  %12 = load i32, i32* @CUSE_VERSION, align 4
  %13 = ashr i32 %12, 8
  %14 = and i32 %13, 255
  %15 = load i32, i32* @CUSE_VERSION, align 4
  %16 = ashr i32 %15, 0
  %17 = and i32 %16, 255
  %18 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %11, i32 %14, i32 %17)
  ret void
}

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @make_dev(i32*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
