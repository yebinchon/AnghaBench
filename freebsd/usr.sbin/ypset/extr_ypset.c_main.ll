; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypset/extr_ypset.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypset/extr_ypset.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hostent = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"h:d:\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"host %s unknown\0A\00", align 1
@optind = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca %struct.hostent*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = call i32 @yp_get_default_domain(i8** %8)
  %11 = call i32 @bzero(%struct.sockaddr_in* %6, i32 8)
  %12 = load i32, i32* @AF_INET, align 4
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @INADDR_LOOPBACK, align 4
  %15 = call i32 @htonl(i32 %14)
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %49, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @getopt(i32 %19, i8** %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %9, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %50

23:                                               ; preds = %18
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %47 [
    i32 100, label %25
    i32 104, label %27
  ]

25:                                               ; preds = %23
  %26 = load i8*, i8** @optarg, align 8
  store i8* %26, i8** %8, align 8
  br label %49

27:                                               ; preds = %23
  %28 = load i8*, i8** @optarg, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  %30 = call i32 @inet_aton(i8* %28, %struct.TYPE_3__* %29)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load i8*, i8** @optarg, align 8
  %34 = call %struct.hostent* @gethostbyname(i8* %33)
  store %struct.hostent* %34, %struct.hostent** %7, align 8
  %35 = load %struct.hostent*, %struct.hostent** %7, align 8
  %36 = icmp eq %struct.hostent* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i8*, i8** @optarg, align 8
  %39 = call i32 @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %37, %32
  %41 = load %struct.hostent*, %struct.hostent** %7, align 8
  %42 = getelementptr inbounds %struct.hostent, %struct.hostent* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  %45 = call i32 @bcopy(i32 %43, %struct.TYPE_3__* %44, i32 4)
  br label %46

46:                                               ; preds = %40, %27
  br label %49

47:                                               ; preds = %23
  %48 = call i32 (...) @usage()
  br label %49

49:                                               ; preds = %47, %46, %25
  br label %18

50:                                               ; preds = %18
  %51 = load i32, i32* @optind, align 4
  %52 = add nsw i32 %51, 1
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 (...) @usage()
  br label %57

57:                                               ; preds = %55, %50
  %58 = load i8*, i8** %8, align 8
  %59 = load i8**, i8*** %5, align 8
  %60 = load i32, i32* @optind, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @bind_tohost(%struct.sockaddr_in* %6, i8* %58, i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = call i32 @exit(i32 1) #3
  unreachable

68:                                               ; preds = %57
  %69 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @yp_get_default_domain(i8**) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @inet_aton(i8*, %struct.TYPE_3__*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @bcopy(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @bind_tohost(%struct.sockaddr_in*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
