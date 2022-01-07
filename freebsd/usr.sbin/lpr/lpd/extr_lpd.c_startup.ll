; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_lpd.c_startup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_lpd.c_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer = type { i8* }

@lflag = common dso_local global i64 0, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"lpd startup: work for %s\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"lpd startup: cannot fork for %s\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"lpd startup: printcap entry for %s has errors, skipping\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"<noname?>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @startup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.printer, align 8
  %5 = alloca %struct.printer*, align 8
  store %struct.printer* %4, %struct.printer** %5, align 8
  %6 = load %struct.printer*, %struct.printer** %5, align 8
  %7 = call i32 @firstprinter(%struct.printer* %6, i32* %2)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %51

11:                                               ; preds = %0
  br label %12

12:                                               ; preds = %77, %11
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %78

15:                                               ; preds = %12
  %16 = load %struct.printer*, %struct.printer** %5, align 8
  %17 = call i64 @ckqueue(%struct.printer* %16)
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %48

20:                                               ; preds = %15
  %21 = load i64, i64* @lflag, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* @LOG_INFO, align 4
  %25 = load %struct.printer*, %struct.printer** %5, align 8
  %26 = getelementptr inbounds %struct.printer, %struct.printer* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @syslog(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %23, %20
  %30 = call i32 (...) @fork()
  store i32 %30, i32* %1, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i32, i32* @LOG_WARNING, align 4
  %34 = load %struct.printer*, %struct.printer** %5, align 8
  %35 = getelementptr inbounds %struct.printer, %struct.printer* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @syslog(i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = call i32 @mcleanup(i32 0)
  br label %39

39:                                               ; preds = %32, %29
  %40 = load i32, i32* %1, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = call i32 (...) @lastprinter()
  %44 = load %struct.printer*, %struct.printer** %5, align 8
  %45 = call i32 @printjob(%struct.printer* %44)
  br label %46

46:                                               ; preds = %42, %39
  br label %47

47:                                               ; preds = %75, %46
  br label %48

48:                                               ; preds = %47, %19
  %49 = load %struct.printer*, %struct.printer** %5, align 8
  %50 = call i32 @nextprinter(%struct.printer* %49, i32* %2)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %10
  %52 = load i32, i32* %2, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load i32, i32* @LOG_WARNING, align 4
  %56 = load %struct.printer*, %struct.printer** %5, align 8
  %57 = getelementptr inbounds %struct.printer, %struct.printer* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.printer*, %struct.printer** %5, align 8
  %62 = getelementptr inbounds %struct.printer, %struct.printer* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  br label %65

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %60
  %66 = phi i8* [ %63, %60 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %64 ]
  %67 = call i32 @syslog(i32 %55, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %65, %51
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %3, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %2, align 4
  %74 = icmp ne i32 %73, 0
  br label %75

75:                                               ; preds = %72, %69
  %76 = phi i1 [ false, %69 ], [ %74, %72 ]
  br i1 %76, label %47, label %77

77:                                               ; preds = %75
  br label %12

78:                                               ; preds = %12
  ret void
}

declare dso_local i32 @firstprinter(%struct.printer*, i32*) #1

declare dso_local i64 @ckqueue(%struct.printer*) #1

declare dso_local i32 @syslog(i32, i8*, i8*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @mcleanup(i32) #1

declare dso_local i32 @lastprinter(...) #1

declare dso_local i32 @printjob(%struct.printer*) #1

declare dso_local i32 @nextprinter(%struct.printer*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
