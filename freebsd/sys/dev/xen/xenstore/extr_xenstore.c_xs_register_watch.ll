; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore.c_xs_register_watch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore.c_xs_register_watch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.xs_watch = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%lX\00", align 1
@xs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"watch already registered\00", align 1
@list = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xs_register_watch(%struct.xs_watch* %0) #0 {
  %2 = alloca %struct.xs_watch*, align 8
  %3 = alloca [17 x i8], align 16
  %4 = alloca i32, align 4
  store %struct.xs_watch* %0, %struct.xs_watch** %2, align 8
  %5 = getelementptr inbounds [17 x i8], [17 x i8]* %3, i64 0, i64 0
  %6 = load %struct.xs_watch*, %struct.xs_watch** %2, align 8
  %7 = ptrtoint %struct.xs_watch* %6 to i64
  %8 = call i32 @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %7)
  %9 = call i32 @mtx_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xs, i32 0, i32 0))
  %10 = getelementptr inbounds [17 x i8], [17 x i8]* %3, i64 0, i64 0
  %11 = call i32* @find_watch(i8* %10)
  %12 = icmp eq i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.xs_watch*, %struct.xs_watch** %2, align 8
  %16 = load i32, i32* @list, align 4
  %17 = call i32 @LIST_INSERT_HEAD(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xs, i32 0, i32 1), %struct.xs_watch* %15, i32 %16)
  %18 = call i32 @mtx_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xs, i32 0, i32 0))
  %19 = load %struct.xs_watch*, %struct.xs_watch** %2, align 8
  %20 = getelementptr inbounds %struct.xs_watch, %struct.xs_watch* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [17 x i8], [17 x i8]* %3, i64 0, i64 0
  %23 = call i32 @xs_watch(i32 %21, i8* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @EEXIST, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %1
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = call i32 @mtx_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xs, i32 0, i32 0))
  %33 = load %struct.xs_watch*, %struct.xs_watch** %2, align 8
  %34 = load i32, i32* @list, align 4
  %35 = call i32 @LIST_REMOVE(%struct.xs_watch* %33, i32 %34)
  %36 = call i32 @mtx_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xs, i32 0, i32 0))
  br label %37

37:                                               ; preds = %31, %28
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @find_watch(i8*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.xs_watch*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @xs_watch(i32, i8*) #1

declare dso_local i32 @LIST_REMOVE(%struct.xs_watch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
