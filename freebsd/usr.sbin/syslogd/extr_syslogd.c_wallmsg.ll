; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_wallmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_wallmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filed = type { i64, i32** }
%struct.iovec = type { i32 }
%struct.utmpx = type { i64, i32, i32 }

@wallmsg.reenter = internal global i32 0, align 4
@USER_PROCESS = common dso_local global i64 0, align 8
@F_WALL = common dso_local global i64 0, align 8
@TTYMSGTIME = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@MAXUNAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.filed*, %struct.iovec*, i32)* @wallmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wallmsg(%struct.filed* %0, %struct.iovec* %1, i32 %2) #0 {
  %4 = alloca %struct.filed*, align 8
  %5 = alloca %struct.iovec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.utmpx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.filed* %0, %struct.filed** %4, align 8
  store %struct.iovec* %1, %struct.iovec** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @wallmsg.reenter, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @wallmsg.reenter, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %95

14:                                               ; preds = %3
  %15 = call i32 (...) @setutxent()
  br label %16

16:                                               ; preds = %92, %44, %25, %14
  %17 = call %struct.utmpx* (...) @getutxent()
  store %struct.utmpx* %17, %struct.utmpx** %7, align 8
  %18 = icmp ne %struct.utmpx* %17, null
  br i1 %18, label %19, label %93

19:                                               ; preds = %16
  %20 = load %struct.utmpx*, %struct.utmpx** %7, align 8
  %21 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @USER_PROCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %16

26:                                               ; preds = %19
  %27 = load %struct.filed*, %struct.filed** %4, align 8
  %28 = getelementptr inbounds %struct.filed, %struct.filed* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @F_WALL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load %struct.iovec*, %struct.iovec** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.utmpx*, %struct.utmpx** %7, align 8
  %36 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @TTYMSGTIME, align 4
  %39 = call i8* @ttymsg(%struct.iovec* %33, i32 %34, i32 %37, i32 %38)
  store i8* %39, i8** %9, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  store i64 0, i64* @errno, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @logerror(i8* %42)
  br label %44

44:                                               ; preds = %41, %32
  br label %16

45:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %89, %45
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @MAXUNAMES, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %92

50:                                               ; preds = %46
  %51 = load %struct.filed*, %struct.filed** %4, align 8
  %52 = getelementptr inbounds %struct.filed, %struct.filed* %51, i32 0, i32 1
  %53 = load i32**, i32*** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %50
  br label %92

62:                                               ; preds = %50
  %63 = load %struct.filed*, %struct.filed** %4, align 8
  %64 = getelementptr inbounds %struct.filed, %struct.filed* %63, i32 0, i32 1
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.utmpx*, %struct.utmpx** %7, align 8
  %71 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @strcmp(i32* %69, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %88, label %75

75:                                               ; preds = %62
  %76 = load %struct.iovec*, %struct.iovec** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.utmpx*, %struct.utmpx** %7, align 8
  %79 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @TTYMSGTIME, align 4
  %82 = call i8* @ttymsg_check(%struct.iovec* %76, i32 %77, i32 %80, i32 %81)
  store i8* %82, i8** %9, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  store i64 0, i64* @errno, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 @logerror(i8* %85)
  br label %87

87:                                               ; preds = %84, %75
  br label %92

88:                                               ; preds = %62
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %46

92:                                               ; preds = %87, %61, %46
  br label %16

93:                                               ; preds = %16
  %94 = call i32 (...) @endutxent()
  store i32 0, i32* @wallmsg.reenter, align 4
  br label %95

95:                                               ; preds = %93, %13
  ret void
}

declare dso_local i32 @setutxent(...) #1

declare dso_local %struct.utmpx* @getutxent(...) #1

declare dso_local i8* @ttymsg(%struct.iovec*, i32, i32, i32) #1

declare dso_local i32 @logerror(i8*) #1

declare dso_local i32 @strcmp(i32*, i32) #1

declare dso_local i8* @ttymsg_check(%struct.iovec*, i32, i32, i32) #1

declare dso_local i32 @endutxent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
