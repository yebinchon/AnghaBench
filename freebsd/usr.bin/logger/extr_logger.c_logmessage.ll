; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/logger/extr_logger.c_logmessage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/logger/extr_logger.c_logmessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socks = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"<%d>%s %s %s: %s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"asprintf\00", align 1
@send_to_all = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"sendto\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"sendto: short send - %d bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i8*, %struct.socks*, i32, i8*)* @logmessage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @logmessage(i32 %0, i8* %1, i8* %2, i8* %3, %struct.socks* %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.socks*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.socks* %4, %struct.socks** %12, align 8
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %19 = load i32, i32* %13, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %7
  %22 = load i32, i32* %8, align 4
  %23 = load i8*, i8** %14, align 8
  %24 = call i32 @syslog(i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %89

25:                                               ; preds = %7
  %26 = load i32, i32* %8, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = call i32 @asprintf(i8** %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %26, i8* %27, i8* %28, i8* %29, i8* %30)
  store i32 %31, i32* %16, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = call i32 @errx(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %25
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %36

36:                                               ; preds = %70, %35
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %73

40:                                               ; preds = %36
  %41 = load %struct.socks*, %struct.socks** %12, align 8
  %42 = load i32, i32* %17, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.socks, %struct.socks* %41, i64 %43
  %45 = getelementptr inbounds %struct.socks, %struct.socks* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %15, align 8
  %48 = load i32, i32* %16, align 4
  %49 = load %struct.socks*, %struct.socks** %12, align 8
  %50 = load i32, i32* %17, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.socks, %struct.socks* %49, i64 %51
  %53 = getelementptr inbounds %struct.socks, %struct.socks* %52, i32 0, i32 1
  %54 = call i32 @sstosa(i32* %53)
  %55 = load %struct.socks*, %struct.socks** %12, align 8
  %56 = load i32, i32* %17, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.socks, %struct.socks* %55, i64 %57
  %59 = getelementptr inbounds %struct.socks, %struct.socks* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @sendto(i32 %46, i8* %47, i32 %48, i32 0, i32 %54, i32 %60)
  store i32 %61, i32* %18, align 4
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %40
  %66 = load i32, i32* @send_to_all, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  br label %73

69:                                               ; preds = %65, %40
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %17, align 4
  br label %36

73:                                               ; preds = %68, %36
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* %16, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load i32, i32* %18, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %85

82:                                               ; preds = %77
  %83 = load i32, i32* %18, align 4
  %84 = call i32 @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %82, %80
  br label %86

86:                                               ; preds = %85, %73
  %87 = load i8*, i8** %15, align 8
  %88 = call i32 @free(i8* %87)
  br label %89

89:                                               ; preds = %86, %21
  ret void
}

declare dso_local i32 @syslog(i32, i8*, i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @sendto(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sstosa(i32*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
