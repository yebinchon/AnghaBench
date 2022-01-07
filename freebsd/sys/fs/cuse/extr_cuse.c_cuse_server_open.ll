; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_server_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_server_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.cuse_server = type { i32, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@M_CUSE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cuse_server_free = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Cuse: Cannot set cdevpriv.\0A\00", align 1
@curproc = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"cuse-server-cv\00", align 1
@cuse_mtx = common dso_local global i32 0, align 4
@cuse_server_head = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @cuse_server_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuse_server_open(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.cuse_server*, align 8
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %11 = load i32, i32* @M_CUSE, align 4
  %12 = load i32, i32* @M_WAITOK, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.cuse_server* @malloc(i32 32, i32 %11, i32 %14)
  store %struct.cuse_server* %15, %struct.cuse_server** %10, align 8
  %16 = load %struct.cuse_server*, %struct.cuse_server** %10, align 8
  %17 = icmp eq %struct.cuse_server* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  store i32 %19, i32* %5, align 4
  br label %64

20:                                               ; preds = %4
  %21 = load %struct.cuse_server*, %struct.cuse_server** %10, align 8
  %22 = call i64 @devfs_set_cdevpriv(%struct.cuse_server* %21, i32* @cuse_server_free)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.cuse_server*, %struct.cuse_server** %10, align 8
  %27 = load i32, i32* @M_CUSE, align 4
  %28 = call i32 @free(%struct.cuse_server* %26, i32 %27)
  %29 = load i32, i32* @ENOMEM, align 4
  store i32 %29, i32* %5, align 4
  br label %64

30:                                               ; preds = %20
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curproc, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cuse_server*, %struct.cuse_server** %10, align 8
  %35 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 4
  %36 = load %struct.cuse_server*, %struct.cuse_server** %10, align 8
  %37 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %36, i32 0, i32 6
  %38 = call i32 @TAILQ_INIT(i32* %37)
  %39 = load %struct.cuse_server*, %struct.cuse_server** %10, align 8
  %40 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %39, i32 0, i32 5
  %41 = call i32 @TAILQ_INIT(i32* %40)
  %42 = load %struct.cuse_server*, %struct.cuse_server** %10, align 8
  %43 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %42, i32 0, i32 4
  %44 = call i32 @TAILQ_INIT(i32* %43)
  %45 = load %struct.cuse_server*, %struct.cuse_server** %10, align 8
  %46 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %45, i32 0, i32 3
  %47 = call i32 @TAILQ_INIT(i32* %46)
  %48 = load %struct.cuse_server*, %struct.cuse_server** %10, align 8
  %49 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %48, i32 0, i32 2
  %50 = call i32 @cv_init(i32* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.cuse_server*, %struct.cuse_server** %10, align 8
  %52 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = call i32 @knlist_init_mtx(i32* %53, i32* @cuse_mtx)
  %55 = call i32 (...) @cuse_lock()
  %56 = load %struct.cuse_server*, %struct.cuse_server** %10, align 8
  %57 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.cuse_server*, %struct.cuse_server** %10, align 8
  %61 = load i32, i32* @entry, align 4
  %62 = call i32 @TAILQ_INSERT_TAIL(i32* @cuse_server_head, %struct.cuse_server* %60, i32 %61)
  %63 = call i32 (...) @cuse_unlock()
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %30, %24, %18
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local %struct.cuse_server* @malloc(i32, i32, i32) #1

declare dso_local i64 @devfs_set_cdevpriv(%struct.cuse_server*, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @free(%struct.cuse_server*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @knlist_init_mtx(i32*, i32*) #1

declare dso_local i32 @cuse_lock(...) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.cuse_server*, i32) #1

declare dso_local i32 @cuse_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
