; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_msg.c_msg_freehdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_msg.c_msg_freehdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i16 }
%struct.msg = type { i64, i64, %struct.msg* }

@msginfo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [30 x i8] c"msghdr->msg_spot out of range\00", align 1
@msgmaps = common dso_local global %struct.TYPE_3__* null, align 8
@free_msgmaps = common dso_local global i16 0, align 2
@nfree_msgmaps = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"msghdr->msg_spot != -1\00", align 1
@free_msghdrs = common dso_local global %struct.msg* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msg*)* @msg_freehdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msg_freehdr(%struct.msg* %0) #0 {
  %2 = alloca %struct.msg*, align 8
  %3 = alloca i16, align 2
  store %struct.msg* %0, %struct.msg** %2, align 8
  br label %4

4:                                                ; preds = %61, %1
  %5 = load %struct.msg*, %struct.msg** %2, align 8
  %6 = getelementptr inbounds %struct.msg, %struct.msg* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %62

9:                                                ; preds = %4
  %10 = load %struct.msg*, %struct.msg** %2, align 8
  %11 = getelementptr inbounds %struct.msg, %struct.msg* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = load %struct.msg*, %struct.msg** %2, align 8
  %16 = getelementptr inbounds %struct.msg, %struct.msg* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @msginfo, i32 0, i32 0), align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14, %9
  %21 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %14
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @msgmaps, align 8
  %24 = load %struct.msg*, %struct.msg** %2, align 8
  %25 = getelementptr inbounds %struct.msg, %struct.msg* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i16, i16* %28, align 2
  store i16 %29, i16* %3, align 2
  %30 = load i16, i16* @free_msgmaps, align 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @msgmaps, align 8
  %32 = load %struct.msg*, %struct.msg** %2, align 8
  %33 = getelementptr inbounds %struct.msg, %struct.msg* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i16 %30, i16* %36, align 2
  %37 = load %struct.msg*, %struct.msg** %2, align 8
  %38 = getelementptr inbounds %struct.msg, %struct.msg* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i16
  store i16 %40, i16* @free_msgmaps, align 2
  %41 = load i32, i32* @nfree_msgmaps, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @nfree_msgmaps, align 4
  %43 = load i16, i16* %3, align 2
  %44 = sext i16 %43 to i64
  %45 = load %struct.msg*, %struct.msg** %2, align 8
  %46 = getelementptr inbounds %struct.msg, %struct.msg* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.msg*, %struct.msg** %2, align 8
  %48 = getelementptr inbounds %struct.msg, %struct.msg* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @msginfo, i32 0, i32 1), align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %22
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @msginfo, i32 0, i32 1), align 8
  %54 = load %struct.msg*, %struct.msg** %2, align 8
  %55 = getelementptr inbounds %struct.msg, %struct.msg* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %56, %53
  store i64 %57, i64* %55, align 8
  br label %61

58:                                               ; preds = %22
  %59 = load %struct.msg*, %struct.msg** %2, align 8
  %60 = getelementptr inbounds %struct.msg, %struct.msg* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %58, %52
  br label %4

62:                                               ; preds = %4
  %63 = load %struct.msg*, %struct.msg** %2, align 8
  %64 = getelementptr inbounds %struct.msg, %struct.msg* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, -1
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %62
  %70 = load %struct.msg*, %struct.msg** @free_msghdrs, align 8
  %71 = load %struct.msg*, %struct.msg** %2, align 8
  %72 = getelementptr inbounds %struct.msg, %struct.msg* %71, i32 0, i32 2
  store %struct.msg* %70, %struct.msg** %72, align 8
  %73 = load %struct.msg*, %struct.msg** %2, align 8
  store %struct.msg* %73, %struct.msg** @free_msghdrs, align 8
  ret void
}

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
