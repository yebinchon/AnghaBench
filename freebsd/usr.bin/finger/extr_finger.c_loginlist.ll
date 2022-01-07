; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/finger/extr_finger.c_loginlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/finger/extr_finger.c_loginlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32)* }
%struct.TYPE_6__ = type { i32 }
%struct.passwd = type { i32 }
%struct.utmpx = type { i64, i32 }

@kflag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"can't list logins without reading utmp\00", align 1
@USER_PROCESS = common dso_local global i64 0, align 8
@db = common dso_local global %struct.TYPE_7__* null, align 8
@lflag = common dso_local global i64 0, align 8
@R_FIRST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"db seq\00", align 1
@R_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @loginlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loginlist() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_6__, align 4
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca %struct.utmpx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = load i64, i64* @kflag, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @errx(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %0
  %14 = call i32 (...) @setutxent()
  br label %15

15:                                               ; preds = %46, %42, %37, %24, %13
  %16 = call %struct.utmpx* (...) @getutxent()
  store %struct.utmpx* %16, %struct.utmpx** %5, align 8
  %17 = icmp ne %struct.utmpx* %16, null
  br i1 %17, label %18, label %50

18:                                               ; preds = %15
  %19 = load %struct.utmpx*, %struct.utmpx** %5, align 8
  %20 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @USER_PROCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %15

25:                                               ; preds = %18
  %26 = load %struct.utmpx*, %struct.utmpx** %5, align 8
  %27 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32* @find_person(i32 %28)
  store i32* %29, i32** %1, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = load %struct.utmpx*, %struct.utmpx** %5, align 8
  %33 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.passwd* @getpwnam(i32 %34)
  store %struct.passwd* %35, %struct.passwd** %4, align 8
  %36 = icmp eq %struct.passwd* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %15

38:                                               ; preds = %31
  %39 = load %struct.passwd*, %struct.passwd** %4, align 8
  %40 = call i64 @hide(%struct.passwd* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %15

43:                                               ; preds = %38
  %44 = load %struct.passwd*, %struct.passwd** %4, align 8
  %45 = call i32* @enter_person(%struct.passwd* %44)
  store i32* %45, i32** %1, align 8
  br label %46

46:                                               ; preds = %43, %25
  %47 = load %struct.utmpx*, %struct.utmpx** %5, align 8
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @enter_where(%struct.utmpx* %47, i32* %48)
  br label %15

50:                                               ; preds = %15
  %51 = call i32 (...) @endutxent()
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** @db, align 8
  %53 = icmp ne %struct.TYPE_7__* %52, null
  br i1 %53, label %54, label %83

54:                                               ; preds = %50
  %55 = load i64, i64* @lflag, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %83

57:                                               ; preds = %54
  %58 = load i32, i32* @R_FIRST, align 4
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %80, %57
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** @db, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32 (%struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32)** %61, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** @db, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 %62(%struct.TYPE_7__* %63, %struct.TYPE_6__* %3, %struct.TYPE_6__* %2, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %59
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %82

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @memmove(i32** %8, i32 %76, i32 8)
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @enter_lastlog(i32* %78)
  br label %80

80:                                               ; preds = %74
  %81 = load i32, i32* @R_NEXT, align 4
  store i32 %81, i32* %7, align 4
  br label %59

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %54, %50
  ret void
}

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @setutxent(...) #1

declare dso_local %struct.utmpx* @getutxent(...) #1

declare dso_local i32* @find_person(i32) #1

declare dso_local %struct.passwd* @getpwnam(i32) #1

declare dso_local i64 @hide(%struct.passwd*) #1

declare dso_local i32* @enter_person(%struct.passwd*) #1

declare dso_local i32 @enter_where(%struct.utmpx*, i32*) #1

declare dso_local i32 @endutxent(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @memmove(i32**, i32, i32) #1

declare dso_local i32 @enter_lastlog(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
