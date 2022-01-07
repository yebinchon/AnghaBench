; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_Notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_Notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EX_REDIAL = common dso_local global i8 0, align 1
@EX_RECONNECT = common dso_local global i8 0, align 1
@LogCHAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Parent notified of %s\0A\00", align 1
@EX_NORMAL = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"failure\00", align 1
@LogERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to notify parent of success\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to notify parent of %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bundle_Notify(%struct.bundle* %0, i8 signext %1) #0 {
  %3 = alloca %struct.bundle*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.bundle* %0, %struct.bundle** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.bundle*, %struct.bundle** %3, align 8
  %7 = getelementptr inbounds %struct.bundle, %struct.bundle* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %68

11:                                               ; preds = %2
  %12 = load %struct.bundle*, %struct.bundle** %3, align 8
  %13 = getelementptr inbounds %struct.bundle, %struct.bundle* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @write(i32 %15, i8* %4, i32 1)
  store i32 %16, i32* %5, align 4
  %17 = load i8, i8* %4, align 1
  %18 = sext i8 %17 to i32
  %19 = load i8, i8* @EX_REDIAL, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %22, label %53

22:                                               ; preds = %11
  %23 = load i8, i8* %4, align 1
  %24 = sext i8 %23 to i32
  %25 = load i8, i8* @EX_RECONNECT, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i32, i32* @LogCHAT, align 4
  %33 = load i8, i8* %4, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8, i8* @EX_NORMAL, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %34, %36
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %40 = call i32 (i32, i8*, ...) @log_Printf(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %39)
  br label %44

41:                                               ; preds = %28
  %42 = load i32, i32* @LogERROR, align 4
  %43 = call i32 (i32, i8*, ...) @log_Printf(i32 %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %31
  %45 = load %struct.bundle*, %struct.bundle** %3, align 8
  %46 = getelementptr inbounds %struct.bundle, %struct.bundle* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @close(i32 %48)
  %50 = load %struct.bundle*, %struct.bundle** %3, align 8
  %51 = getelementptr inbounds %struct.bundle, %struct.bundle* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 -1, i32* %52, align 4
  br label %67

53:                                               ; preds = %22, %11
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* @LogCHAT, align 4
  %58 = load i8, i8* %4, align 1
  %59 = call i8* @ex_desc(i8 signext %58)
  %60 = call i32 (i32, i8*, ...) @log_Printf(i32 %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %59)
  br label %66

61:                                               ; preds = %53
  %62 = load i32, i32* @LogERROR, align 4
  %63 = load i8, i8* %4, align 1
  %64 = call i8* @ex_desc(i8 signext %63)
  %65 = call i32 (i32, i8*, ...) @log_Printf(i32 %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %61, %56
  br label %67

67:                                               ; preds = %66, %44
  br label %68

68:                                               ; preds = %67, %2
  ret void
}

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @ex_desc(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
