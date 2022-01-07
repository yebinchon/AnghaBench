; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_inetd.c_matchservent.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_inetd.c_matchservent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servent = type { i8*, i8** }

@.str = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @matchservent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matchservent(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.servent*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @strrchr(i8* %15, i8 signext 47)
  store i8* %16, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i8*, i8** %9, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8* %20, i8** %5, align 8
  br label %21

21:                                               ; preds = %18, %14
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @strrchr(i8* %22, i8 signext 47)
  store i8* %23, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8* %27, i8** %6, align 8
  br label %28

28:                                               ; preds = %25, %21
  br label %29

29:                                               ; preds = %28, %3
  %30 = load i8*, i8** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @strcmp(i8* %30, i8* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %69

35:                                               ; preds = %29
  %36 = load i8*, i8** %5, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call %struct.servent* @getservbyname(i8* %36, i8* %37)
  store %struct.servent* %38, %struct.servent** %10, align 8
  %39 = icmp ne %struct.servent* %38, null
  br i1 %39, label %40, label %68

40:                                               ; preds = %35
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.servent*, %struct.servent** %10, align 8
  %43 = getelementptr inbounds %struct.servent, %struct.servent* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strcmp(i8* %41, i8* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 1, i32* %4, align 4
  br label %69

48:                                               ; preds = %40
  %49 = load %struct.servent*, %struct.servent** %10, align 8
  %50 = getelementptr inbounds %struct.servent, %struct.servent* %49, i32 0, i32 1
  %51 = load i8**, i8*** %50, align 8
  store i8** %51, i8*** %8, align 8
  br label %52

52:                                               ; preds = %64, %48
  %53 = load i8**, i8*** %8, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load i8*, i8** %6, align 8
  %58 = load i8**, i8*** %8, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @strcmp(i8* %57, i8* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 1, i32* %4, align 4
  br label %69

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63
  %65 = load i8**, i8*** %8, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i32 1
  store i8** %66, i8*** %8, align 8
  br label %52

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %67, %35
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %62, %47, %34
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local %struct.servent* @getservbyname(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
