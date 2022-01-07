; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_console.c_cn_drvinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_console.c_cn_drvinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8* }
%struct.tty = type { i32 }

@ofw_consdev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CN_DEAD = common dso_local global i64 0, align 8
@ofw_ttydevsw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ofwcons\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"/options\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"output-device\00", align 1
@ofw_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cn_drvinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cn_drvinit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [32 x i8], align 16
  %5 = alloca %struct.tty*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ofw_consdev, i32 0, i32 0), align 8
  %7 = load i64, i64* @CN_DEAD, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %39

9:                                                ; preds = %1
  %10 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ofw_consdev, i32 0, i32 1), align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %9
  %16 = call %struct.tty* @tty_alloc(i32* @ofw_ttydevsw, i32* null)
  store %struct.tty* %16, %struct.tty** %5, align 8
  %17 = load %struct.tty*, %struct.tty** %5, align 8
  %18 = call i32 @tty_makedev(%struct.tty* %17, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @OF_finddevice(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %19, i32* %3, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %24 = call i32 @OF_getprop(i32 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %23, i32 32)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %15
  br label %39

27:                                               ; preds = %21
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %29 = call i64 @strlen(i8* %28)
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %struct.tty*, %struct.tty** %5, align 8
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %34 = call i32 @tty_makealias(%struct.tty* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %31, %27
  %36 = load %struct.tty*, %struct.tty** %5, align 8
  %37 = call i32 @tty_getlock(%struct.tty* %36)
  %38 = call i32 @callout_init_mtx(i32* @ofw_timer, i32 %37, i32 0)
  br label %39

39:                                               ; preds = %26, %35, %9, %1
  ret void
}

declare dso_local %struct.tty* @tty_alloc(i32*, i32*) #1

declare dso_local i32 @tty_makedev(%struct.tty*, i32*, i8*, i8*) #1

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @tty_makealias(%struct.tty*, i8*, i8*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32, i32) #1

declare dso_local i32 @tty_getlock(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
