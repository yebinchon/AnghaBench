; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/daemon/extr_daemon_saver.c_daemon_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/daemon/extr_daemon_saver.c_daemon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@prison0 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ostype = common dso_local global i8* null, align 8
@osrelease = common dso_local global i8* null, align 8
@messagelen = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@message = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s - %s %s\00", align 1
@blanked = common dso_local global i64 0, align 8
@attr_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @daemon_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daemon_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %4 = call i32 @mtx_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prison0, i32 0, i32 1))
  br label %5

5:                                                ; preds = %29, %1
  %6 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prison0, i32 0, i32 0), align 8
  %7 = call i64 @strlen(i8* %6)
  store i64 %7, i64* %3, align 8
  %8 = call i32 @mtx_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prison0, i32 0, i32 1))
  %9 = load i64, i64* %3, align 8
  %10 = add i64 %9, 3
  %11 = load i8*, i8** @ostype, align 8
  %12 = call i64 @strlen(i8* %11)
  %13 = add i64 %10, %12
  %14 = add i64 %13, 1
  %15 = load i8*, i8** @osrelease, align 8
  %16 = call i64 @strlen(i8* %15)
  %17 = add i64 %14, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* @messagelen, align 4
  %19 = load i32, i32* @messagelen, align 4
  %20 = add nsw i32 %19, 1
  %21 = load i32, i32* @M_DEVBUF, align 4
  %22 = load i32, i32* @M_WAITOK, align 4
  %23 = call i32 @malloc(i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* @message, align 4
  %24 = call i32 @mtx_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prison0, i32 0, i32 1))
  %25 = load i64, i64* %3, align 8
  %26 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prison0, i32 0, i32 0), align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %5
  %30 = load i32, i32* @message, align 4
  %31 = load i32, i32* @M_DEVBUF, align 4
  %32 = call i32 @free(i32 %30, i32 %31)
  br label %5

33:                                               ; preds = %5
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* @message, align 4
  %36 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prison0, i32 0, i32 0), align 8
  %37 = load i8*, i8** @ostype, align 8
  %38 = load i8*, i8** @osrelease, align 8
  %39 = call i32 @sprintf(i32 %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %37, i8* %38)
  %40 = call i32 @mtx_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prison0, i32 0, i32 1))
  store i64 0, i64* @blanked, align 8
  store i32 -1, i32* @attr_mask, align 4
  ret i32 0
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
