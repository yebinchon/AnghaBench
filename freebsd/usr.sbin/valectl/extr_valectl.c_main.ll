; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/valectl/extr_valectl.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/valectl/extr_valectl.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"d:a:h:g:l:n:r:C:p:P:m:\00", align 1
@optarg = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"bad option %c %s\00", align 1
@NETMAP_BDG_DETACH = common dso_local global i32 0, align 4
@NETMAP_BDG_ATTACH = common dso_local global i32 0, align 4
@NETMAP_BDG_HOST = common dso_local global i32 0, align 4
@NETMAP_BDG_NEWIF = common dso_local global i32 0, align 4
@NETMAP_BDG_DELIF = common dso_local global i32 0, align 4
@NETMAP_BDG_LIST = common dso_local global i32 0, align 4
@NETMAP_BDG_POLLING_ON = common dso_local global i32 0, align 4
@NETMAP_BDG_POLLING_OFF = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %57, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %58

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 67
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 109
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i8*, i8** @optarg, align 8
  store i8* %24, i8** %9, align 8
  br label %25

25:                                               ; preds = %23, %20, %17
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %27 [
    i32 100, label %33
    i32 97, label %35
    i32 104, label %37
    i32 110, label %40
    i32 114, label %42
    i32 103, label %44
    i32 108, label %45
    i32 67, label %47
    i32 112, label %50
    i32 80, label %52
    i32 109, label %54
  ]

27:                                               ; preds = %25
  %28 = load i32, i32* @stderr, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i8*, i8** @optarg, align 8
  %31 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %29, i8* %30)
  %32 = call i32 @usage(i32 -1)
  br label %57

33:                                               ; preds = %25
  %34 = load i32, i32* @NETMAP_BDG_DETACH, align 4
  store i32 %34, i32* %7, align 4
  br label %57

35:                                               ; preds = %25
  %36 = load i32, i32* @NETMAP_BDG_ATTACH, align 4
  store i32 %36, i32* %7, align 4
  br label %57

37:                                               ; preds = %25
  %38 = load i32, i32* @NETMAP_BDG_ATTACH, align 4
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @NETMAP_BDG_HOST, align 4
  store i32 %39, i32* %8, align 4
  br label %57

40:                                               ; preds = %25
  %41 = load i32, i32* @NETMAP_BDG_NEWIF, align 4
  store i32 %41, i32* %7, align 4
  br label %57

42:                                               ; preds = %25
  %43 = load i32, i32* @NETMAP_BDG_DELIF, align 4
  store i32 %43, i32* %7, align 4
  br label %57

44:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %57

45:                                               ; preds = %25
  %46 = load i32, i32* @NETMAP_BDG_LIST, align 4
  store i32 %46, i32* %7, align 4
  br label %57

47:                                               ; preds = %25
  %48 = load i8*, i8** @optarg, align 8
  %49 = call i8* @strdup(i8* %48)
  store i8* %49, i8** %10, align 8
  br label %57

50:                                               ; preds = %25
  %51 = load i32, i32* @NETMAP_BDG_POLLING_ON, align 4
  store i32 %51, i32* %7, align 4
  br label %57

52:                                               ; preds = %25
  %53 = load i32, i32* @NETMAP_BDG_POLLING_OFF, align 4
  store i32 %53, i32* %7, align 4
  br label %57

54:                                               ; preds = %25
  %55 = load i8*, i8** @optarg, align 8
  %56 = call i32 @atoi(i8* %55)
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %54, %52, %50, %47, %45, %44, %42, %40, %37, %35, %33, %27
  br label %12

58:                                               ; preds = %12
  %59 = load i32, i32* @optind, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 @usage(i32 -1)
  br label %64

64:                                               ; preds = %62, %58
  %65 = load i32, i32* %4, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @NETMAP_BDG_LIST, align 4
  store i32 %68, i32* %7, align 4
  store i8* null, i8** %9, align 8
  br label %69

69:                                               ; preds = %67, %64
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i8*, i8** %10, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i64 @bdg_ctl(i8* %70, i32 %71, i32 %72, i8* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 1, i32 0
  ret i32 %78
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @bdg_ctl(i8*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
