; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/finger/extr_net.c_netfinger.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/finger/extr_net.c_netfinger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, i8*, i32, i32, i32 }

@netfinger.hint = internal global %struct.addrinfo zeroinitializer, align 8
@SIGALRM = common dso_local global i32 0, align 4
@cleanup = common dso_local global i32 0, align 4
@TIME_LIMIT = common dso_local global i32 0, align 4
@AI_CANONNAME = common dso_local global i32 0, align 4
@family = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"finger\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"[%s]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netfinger(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca %struct.addrinfo*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i8* @strrchr(i8* %8, i8 signext 64)
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %79

13:                                               ; preds = %1
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %5, align 8
  store i8 0, i8* %14, align 1
  %16 = load i32, i32* @SIGALRM, align 4
  %17 = load i32, i32* @cleanup, align 4
  %18 = call i32 @signal(i32 %16, i32 %17)
  %19 = load i32, i32* @TIME_LIMIT, align 4
  %20 = call i32 @alarm(i32 %19)
  %21 = load i32, i32* @AI_CANONNAME, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.addrinfo, %struct.addrinfo* @netfinger.hint, i32 0, i32 4), align 8
  %22 = load i32, i32* @family, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.addrinfo, %struct.addrinfo* @netfinger.hint, i32 0, i32 3), align 4
  %23 = load i32, i32* @SOCK_STREAM, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.addrinfo, %struct.addrinfo* @netfinger.hint, i32 0, i32 2), align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @getaddrinfo(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.addrinfo* @netfinger.hint, %struct.addrinfo** %7)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %13
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @gai_strerror(i32 %30)
  %32 = call i32 @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %29, i32 %31)
  br label %79

33:                                               ; preds = %13
  %34 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %35 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %4, align 4
  %39 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %40 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  br label %51

46:                                               ; preds = %33
  %47 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %46, %43
  %52 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  store %struct.addrinfo* %52, %struct.addrinfo** %6, align 8
  br label %53

53:                                               ; preds = %70, %51
  %54 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %55 = icmp ne %struct.addrinfo* %54, null
  br i1 %55, label %56, label %75

56:                                               ; preds = %53
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %61 = call i32 @trying(%struct.addrinfo* %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i8*, i8** %2, align 8
  %64 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %65 = call i32 @do_protocol(i8* %63, %struct.addrinfo* %64)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  br label %75

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %72 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.addrinfo*
  store %struct.addrinfo* %74, %struct.addrinfo** %6, align 8
  br label %53

75:                                               ; preds = %68, %53
  %76 = call i32 @alarm(i32 0)
  %77 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %78 = call i32 @freeaddrinfo(%struct.addrinfo* %77)
  br label %79

79:                                               ; preds = %75, %28, %12
  ret void
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @warnx(i8*, i8*, i32) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @trying(%struct.addrinfo*) #1

declare dso_local i32 @do_protocol(i8*, %struct.addrinfo*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
