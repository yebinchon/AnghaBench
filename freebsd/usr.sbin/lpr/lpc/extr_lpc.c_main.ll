; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpc/extr_lpc.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpc/extr_lpc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32, i32 (i32, i8**)*, i32* }

@euid = common dso_local global i32 0, align 4
@uid = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"lpd\00", align 1
@LOG_LPR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"?Ambiguous command\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"?Invalid command\0A\00", align 1
@LPC_PRIVCMD = common dso_local global i32 0, align 4
@LPR_OPER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"?Privileged command\0A\00", align 1
@stdin = common dso_local global i32 0, align 4
@fromatty = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@intr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd*, align 8
  %7 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i32 (...) @geteuid()
  store i32 %8, i32* @euid, align 4
  %9 = call i64 (...) @getuid()
  store i64 %9, i64* @uid, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %7, align 8
  %13 = load i32, i32* @LOG_LPR, align 4
  %14 = call i32 @openlog(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %4, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %78

18:                                               ; preds = %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %20, i8*** %5, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = call %struct.cmd* @getcmd(i8* %21)
  store %struct.cmd* %22, %struct.cmd** %6, align 8
  %23 = load %struct.cmd*, %struct.cmd** %6, align 8
  %24 = icmp eq %struct.cmd* %23, inttoptr (i64 -1 to %struct.cmd*)
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @exit(i32 1) #3
  unreachable

28:                                               ; preds = %18
  %29 = load %struct.cmd*, %struct.cmd** %6, align 8
  %30 = icmp eq %struct.cmd* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i32 @exit(i32 1) #3
  unreachable

34:                                               ; preds = %28
  %35 = load %struct.cmd*, %struct.cmd** %6, align 8
  %36 = getelementptr inbounds %struct.cmd, %struct.cmd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @LPC_PRIVCMD, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = call i64 (...) @getuid()
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i32, i32* @LPR_OPER, align 4
  %46 = call i64 @ingroup(i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %50 = call i32 @exit(i32 1) #3
  unreachable

51:                                               ; preds = %44, %41, %34
  %52 = load %struct.cmd*, %struct.cmd** %6, align 8
  %53 = getelementptr inbounds %struct.cmd, %struct.cmd* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = load %struct.cmd*, %struct.cmd** %6, align 8
  %58 = getelementptr inbounds %struct.cmd, %struct.cmd* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.cmd*, %struct.cmd** %6, align 8
  %61 = getelementptr inbounds %struct.cmd, %struct.cmd* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.cmd*, %struct.cmd** %6, align 8
  %64 = getelementptr inbounds %struct.cmd, %struct.cmd* %63, i32 0, i32 1
  %65 = load i32 (i32, i8**)*, i32 (i32, i8**)** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load i8**, i8*** %5, align 8
  %68 = call i32 @generic(i32* %59, i32 %62, i32 (i32, i8**)* %65, i32 %66, i8** %67)
  br label %76

69:                                               ; preds = %51
  %70 = load %struct.cmd*, %struct.cmd** %6, align 8
  %71 = getelementptr inbounds %struct.cmd, %struct.cmd* %70, i32 0, i32 1
  %72 = load i32 (i32, i8**)*, i32 (i32, i8**)** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = load i8**, i8*** %5, align 8
  %75 = call i32 %72(i32 %73, i8** %74)
  br label %76

76:                                               ; preds = %69, %56
  %77 = call i32 @exit(i32 0) #3
  unreachable

78:                                               ; preds = %2
  %79 = load i32, i32* @stdin, align 4
  %80 = call i32 @fileno(i32 %79)
  %81 = call i32 @isatty(i32 %80)
  store i32 %81, i32* @fromatty, align 4
  %82 = load i32, i32* @fromatty, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* @SIGINT, align 4
  %86 = load i32, i32* @intr, align 4
  %87 = call i32 @signal(i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %78
  br label %89

89:                                               ; preds = %89, %88
  %90 = call i32 (...) @cmdscanner()
  br label %89
}

declare dso_local i32 @geteuid(...) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i32 @openlog(i8*, i32, i32) #1

declare dso_local %struct.cmd* @getcmd(i8*) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @ingroup(i32) #1

declare dso_local i32 @generic(i32*, i32, i32 (i32, i8**)*, i32, i8**) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @cmdscanner(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
