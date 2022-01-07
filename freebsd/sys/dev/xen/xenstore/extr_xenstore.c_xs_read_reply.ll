; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore.c_xs_read_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore.c_xs_read_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.xs_stored_msg = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32, i32 }

@xs = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"xswait\00", align 1
@hz = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4
@M_XENSTORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8**)* @xs_read_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xs_read_reply(i32* %0, i32* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.xs_stored_msg*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = call i32 @mtx_lock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xs, i32 0, i32 0))
  br label %12

12:                                               ; preds = %28, %3
  %13 = call i64 @TAILQ_EMPTY(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xs, i32 0, i32 1))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load i32, i32* @hz, align 4
  %17 = sdiv i32 %16, 10
  %18 = call i32 @mtx_sleep(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xs, i32 0, i32 1), i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xs, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @EWOULDBLOCK, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = call i32 @mtx_unlock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xs, i32 0, i32 0))
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %4, align 4
  br label %59

28:                                               ; preds = %21, %15
  br label %12

29:                                               ; preds = %12
  %30 = call %struct.xs_stored_msg* @TAILQ_FIRST(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xs, i32 0, i32 1))
  store %struct.xs_stored_msg* %30, %struct.xs_stored_msg** %8, align 8
  %31 = load %struct.xs_stored_msg*, %struct.xs_stored_msg** %8, align 8
  %32 = load i32, i32* @list, align 4
  %33 = call i32 @TAILQ_REMOVE(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xs, i32 0, i32 1), %struct.xs_stored_msg* %31, i32 %32)
  %34 = call i32 @mtx_unlock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xs, i32 0, i32 0))
  %35 = load %struct.xs_stored_msg*, %struct.xs_stored_msg** %8, align 8
  %36 = getelementptr inbounds %struct.xs_stored_msg, %struct.xs_stored_msg* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %29
  %43 = load %struct.xs_stored_msg*, %struct.xs_stored_msg** %8, align 8
  %44 = getelementptr inbounds %struct.xs_stored_msg, %struct.xs_stored_msg* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %6, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %29
  %49 = load %struct.xs_stored_msg*, %struct.xs_stored_msg** %8, align 8
  %50 = getelementptr inbounds %struct.xs_stored_msg, %struct.xs_stored_msg* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %9, align 8
  %54 = load %struct.xs_stored_msg*, %struct.xs_stored_msg** %8, align 8
  %55 = load i32, i32* @M_XENSTORE, align 4
  %56 = call i32 @free(%struct.xs_stored_msg* %54, i32 %55)
  %57 = load i8*, i8** %9, align 8
  %58 = load i8**, i8*** %7, align 8
  store i8* %57, i8** %58, align 8
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %48, %25
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @mtx_sleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.xs_stored_msg* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.xs_stored_msg*, i32) #1

declare dso_local i32 @free(%struct.xs_stored_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
