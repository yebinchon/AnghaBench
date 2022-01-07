; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs.c_autofs_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs.c_autofs_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.autofs_node = type { i64 }

@EINTR = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"trigger interrupted by signal, not retrying\00", align 1
@autofs_retry_attempts = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"trigger failed %d times; returning error %d\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"trigger failed with error %d; will retry in %d seconds, %d attempts left\00", align 1
@autofs_retry_delay = common dso_local global i32 0, align 4
@autofs_softc = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"autofs_retry\00", align 1
@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @autofs_trigger(%struct.autofs_node* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.autofs_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.autofs_node* %0, %struct.autofs_node** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %9

9:                                                ; preds = %51, %3
  %10 = load %struct.autofs_node*, %struct.autofs_node** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @autofs_trigger_one(%struct.autofs_node* %10, i8* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load %struct.autofs_node*, %struct.autofs_node** %5, align 8
  %18 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  store i32 0, i32* %4, align 4
  br label %70

19:                                               ; preds = %9
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @EINTR, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @ERESTART, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23, %19
  %28 = call i32 (i8*, ...) @AUTOFS_DEBUG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.autofs_node*, %struct.autofs_node** %5, align 8
  %30 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %70

32:                                               ; preds = %23
  %33 = load %struct.autofs_node*, %struct.autofs_node** %5, align 8
  %34 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = load %struct.autofs_node*, %struct.autofs_node** %5, align 8
  %38 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @autofs_retry_attempts, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %32
  %43 = load %struct.autofs_node*, %struct.autofs_node** %5, align 8
  %44 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 (i8*, ...) @AUTOFS_DEBUG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %45, i32 %46)
  %48 = load %struct.autofs_node*, %struct.autofs_node** %5, align 8
  %49 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %70

51:                                               ; preds = %32
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @autofs_retry_delay, align 4
  %54 = load i64, i64* @autofs_retry_attempts, align 8
  %55 = load %struct.autofs_node*, %struct.autofs_node** %5, align 8
  %56 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %54, %57
  %59 = call i32 (i8*, ...) @AUTOFS_DEBUG(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %53, i64 %58)
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @autofs_softc, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @sx_xunlock(i32* %61)
  %63 = load i32, i32* @autofs_retry_delay, align 4
  %64 = load i32, i32* @hz, align 4
  %65 = mul nsw i32 %63, %64
  %66 = call i32 @pause(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @autofs_softc, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i32 @sx_xlock(i32* %68)
  br label %9

70:                                               ; preds = %42, %27, %16
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @autofs_trigger_one(%struct.autofs_node*, i8*, i32) #1

declare dso_local i32 @AUTOFS_DEBUG(i8*, ...) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
