; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_consport.c_console_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_consport.c_console_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }

@console_handler.opened = internal global i32 0, align 4
@TIOCGETA = common dso_local global i32 0, align 4
@TIOCSETA = common dso_local global i32 0, align 4
@TIOCGWINSZ = common dso_local global i32 0, align 4
@BVM_CONS_SIG = common dso_local global i32 0, align 4
@CAP_EVENT = common dso_local global i32 0, align 4
@CAP_IOCTL = common dso_local global i32 0, align 4
@CAP_READ = common dso_local global i32 0, align 4
@CAP_WRITE = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unable to apply rights for sandbox\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32, i32, i32, i32, i32*, i8*)* @console_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @console_handler(%struct.vmctx* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [3 x i32], align 4
  store %struct.vmctx* %0, %struct.vmctx** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %19 = load i32, i32* @TIOCGETA, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @TIOCSETA, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* @TIOCGWINSZ, align 4
  store i32 %23, i32* %22, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %32

26:                                               ; preds = %7
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @BVM_CONS_SIG, align 4
  %31 = load i32*, i32** %14, align 8
  store i32 %30, i32* %31, align 4
  store i32 0, i32* %8, align 4
  br label %82

32:                                               ; preds = %26, %7
  %33 = load i32, i32* %13, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32*, i32** %14, align 8
  store i32 255, i32* %39, align 4
  store i32 0, i32* %8, align 4
  br label %82

40:                                               ; preds = %35, %32
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 4
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 -1, i32* %8, align 4
  br label %82

44:                                               ; preds = %40
  %45 = load i32, i32* @console_handler.opened, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %71, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @CAP_EVENT, align 4
  %49 = load i32, i32* @CAP_IOCTL, align 4
  %50 = load i32, i32* @CAP_READ, align 4
  %51 = load i32, i32* @CAP_WRITE, align 4
  %52 = call i32 @cap_rights_init(i32* %16, i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* @STDIN_FILENO, align 4
  %54 = call i32 @caph_rights_limit(i32 %53, i32* %16)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* @EX_OSERR, align 4
  %58 = call i32 @errx(i32 %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %47
  %60 = load i32, i32* @STDIN_FILENO, align 4
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %63 = call i32 @nitems(i32* %62)
  %64 = call i32 @caph_ioctls_limit(i32 %60, i32* %61, i32 %63)
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* @EX_OSERR, align 4
  %68 = call i32 @errx(i32 %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %59
  %70 = call i32 (...) @ttyopen()
  store i32 1, i32* @console_handler.opened, align 4
  br label %71

71:                                               ; preds = %69, %44
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = call i32 (...) @ttyread()
  %76 = load i32*, i32** %14, align 8
  store i32 %75, i32* %76, align 4
  br label %81

77:                                               ; preds = %71
  %78 = load i32*, i32** %14, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ttywrite(i32 %79)
  br label %81

81:                                               ; preds = %77, %74
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %81, %43, %38, %29
  %83 = load i32, i32* %8, align 4
  ret i32 %83
}

declare dso_local i32 @cap_rights_init(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @caph_rights_limit(i32, i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @caph_ioctls_limit(i32, i32*, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @ttyopen(...) #1

declare dso_local i32 @ttyread(...) #1

declare dso_local i32 @ttywrite(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
