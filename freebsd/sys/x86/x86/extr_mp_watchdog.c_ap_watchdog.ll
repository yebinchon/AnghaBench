; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mp_watchdog.c_ap_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mp_watchdog.c_ap_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i8* }

@MAXCOMLEN = common dso_local global i32 0, align 4
@watchdog_cpu = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"watchdog started on cpu %d\0A\00", align 1
@curproc = common dso_local global %struct.proc* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"mp_watchdog cpu %d\00", align 1
@watchdog_timer = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Watchdog timer: %d\0A\00", align 1
@watchdog_dontfire = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Watchdog firing!\0A\00", align 1
@watchdog_nmi = common dso_local global i64 0, align 8
@KDB_WHY_WATCHDOG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"mp_watchdog\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"watchdog stopped on cpu %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ap_watchdog(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @MAXCOMLEN, align 4
  %8 = add nsw i32 %7, 1
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i32, i32* @watchdog_cpu, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %73

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.proc*, %struct.proc** @curproc, align 8
  store %struct.proc* %19, %struct.proc** %5, align 8
  %20 = load %struct.proc*, %struct.proc** %5, align 8
  %21 = getelementptr inbounds %struct.proc, %struct.proc* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* @MAXCOMLEN, align 4
  %24 = add nsw i32 %23, 1
  %25 = call i32 @bcopy(i8* %22, i8* %11, i32 %24)
  %26 = load %struct.proc*, %struct.proc** %5, align 8
  %27 = getelementptr inbounds %struct.proc, %struct.proc* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* @MAXCOMLEN, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @snprintf(i8* %28, i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %63, %16
  br label %34

34:                                               ; preds = %33
  %35 = call i32 @DELAY(i32 1000000)
  %36 = load i32, i32* @watchdog_cpu, align 4
  %37 = load i32, i32* %2, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %64

40:                                               ; preds = %34
  %41 = call i32 @atomic_subtract_int(i32* @watchdog_timer, i32 1)
  %42 = load i32, i32* @watchdog_timer, align 4
  %43 = icmp slt i32 %42, 4
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @watchdog_timer, align 4
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i32, i32* @watchdog_timer, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = load i32, i32* @watchdog_dontfire, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* @watchdog_dontfire, align 4
  %55 = load i64, i64* @watchdog_nmi, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 (...) @watchdog_ipi_nmi()
  br label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @KDB_WHY_WATCHDOG, align 4
  %61 = call i32 @kdb_enter(i32 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %57
  br label %63

63:                                               ; preds = %62, %50, %47
  br label %33

64:                                               ; preds = %39
  %65 = load %struct.proc*, %struct.proc** %5, align 8
  %66 = getelementptr inbounds %struct.proc, %struct.proc* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* @MAXCOMLEN, align 4
  %69 = add nsw i32 %68, 1
  %70 = call i32 @bcopy(i8* %11, i8* %67, i32 %69)
  %71 = load i32, i32* %2, align 4
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %64, %15
  %74 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %6, align 4
  switch i32 %75, label %77 [
    i32 0, label %76
    i32 1, label %76
  ]

76:                                               ; preds = %73, %73
  ret void

77:                                               ; preds = %73
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @bcopy(i8*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @DELAY(i32) #2

declare dso_local i32 @atomic_subtract_int(i32*, i32) #2

declare dso_local i32 @watchdog_ipi_nmi(...) #2

declare dso_local i32 @kdb_enter(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
