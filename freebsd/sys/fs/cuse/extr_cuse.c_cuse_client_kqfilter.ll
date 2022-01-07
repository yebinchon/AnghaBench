; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_client_kqfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_client_kqfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.knote = type { i32, i32*, %struct.cuse_client* }
%struct.cuse_client = type { i32, %struct.cuse_server* }
%struct.cuse_server = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CUSE_CLI_KNOTE_HAS_READ = common dso_local global i32 0, align 4
@cuse_client_kqfilter_read_ops = common dso_local global i32 0, align 4
@CUSE_CLI_KNOTE_HAS_WRITE = common dso_local global i32 0, align 4
@cuse_client_kqfilter_write_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.knote*)* @cuse_client_kqfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuse_client_kqfilter(%struct.cdev* %0, %struct.knote* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.knote*, align 8
  %6 = alloca %struct.cuse_client*, align 8
  %7 = alloca %struct.cuse_server*, align 8
  %8 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store %struct.knote* %1, %struct.knote** %5, align 8
  %9 = call i32 @cuse_client_get(%struct.cuse_client** %6)
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %8, align 4
  store i32 %13, i32* %3, align 4
  br label %66

14:                                               ; preds = %2
  %15 = call i32 (...) @cuse_lock()
  %16 = load %struct.cuse_client*, %struct.cuse_client** %6, align 8
  %17 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %16, i32 0, i32 1
  %18 = load %struct.cuse_server*, %struct.cuse_server** %17, align 8
  store %struct.cuse_server* %18, %struct.cuse_server** %7, align 8
  %19 = load %struct.knote*, %struct.knote** %5, align 8
  %20 = getelementptr inbounds %struct.knote, %struct.knote* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %54 [
    i32 129, label %22
    i32 128, label %38
  ]

22:                                               ; preds = %14
  %23 = load i32, i32* @CUSE_CLI_KNOTE_HAS_READ, align 4
  %24 = load %struct.cuse_client*, %struct.cuse_client** %6, align 8
  %25 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.cuse_client*, %struct.cuse_client** %6, align 8
  %29 = load %struct.knote*, %struct.knote** %5, align 8
  %30 = getelementptr inbounds %struct.knote, %struct.knote* %29, i32 0, i32 2
  store %struct.cuse_client* %28, %struct.cuse_client** %30, align 8
  %31 = load %struct.knote*, %struct.knote** %5, align 8
  %32 = getelementptr inbounds %struct.knote, %struct.knote* %31, i32 0, i32 1
  store i32* @cuse_client_kqfilter_read_ops, i32** %32, align 8
  %33 = load %struct.cuse_server*, %struct.cuse_server** %7, align 8
  %34 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.knote*, %struct.knote** %5, align 8
  %37 = call i32 @knlist_add(i32* %35, %struct.knote* %36, i32 1)
  br label %56

38:                                               ; preds = %14
  %39 = load i32, i32* @CUSE_CLI_KNOTE_HAS_WRITE, align 4
  %40 = load %struct.cuse_client*, %struct.cuse_client** %6, align 8
  %41 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.cuse_client*, %struct.cuse_client** %6, align 8
  %45 = load %struct.knote*, %struct.knote** %5, align 8
  %46 = getelementptr inbounds %struct.knote, %struct.knote* %45, i32 0, i32 2
  store %struct.cuse_client* %44, %struct.cuse_client** %46, align 8
  %47 = load %struct.knote*, %struct.knote** %5, align 8
  %48 = getelementptr inbounds %struct.knote, %struct.knote* %47, i32 0, i32 1
  store i32* @cuse_client_kqfilter_write_ops, i32** %48, align 8
  %49 = load %struct.cuse_server*, %struct.cuse_server** %7, align 8
  %50 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.knote*, %struct.knote** %5, align 8
  %53 = call i32 @knlist_add(i32* %51, %struct.knote* %52, i32 1)
  br label %56

54:                                               ; preds = %14
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %54, %38, %22
  %57 = call i32 (...) @cuse_unlock()
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load %struct.cdev*, %struct.cdev** %4, align 8
  %62 = load %struct.cuse_client*, %struct.cuse_client** %6, align 8
  %63 = call i32 @cuse_client_kqfilter_poll(%struct.cdev* %61, %struct.cuse_client* %62)
  br label %64

64:                                               ; preds = %60, %56
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %12
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @cuse_client_get(%struct.cuse_client**) #1

declare dso_local i32 @cuse_lock(...) #1

declare dso_local i32 @knlist_add(i32*, %struct.knote*, i32) #1

declare dso_local i32 @cuse_unlock(...) #1

declare dso_local i32 @cuse_client_kqfilter_poll(%struct.cdev*, %struct.cuse_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
