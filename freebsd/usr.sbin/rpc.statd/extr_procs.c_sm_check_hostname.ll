; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.statd/extr_procs.c_sm_check_hostname.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.statd/extr_procs.c_sm_check_hostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_2__ = type { i64 }

@VIS_WHITE = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"sm_stat: client %s hostname %s contained invalid characters.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sm_check_hostname(%struct.svc_req* %0, i8* %1) #0 {
  %3 = alloca %struct.svc_req*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i8*, align 8
  store %struct.svc_req* %0, %struct.svc_req** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strlen(i8* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = mul nsw i32 4, %12
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i8* @malloc(i32 %15)
  store i8* %16, i8** %9, align 8
  %17 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %18 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_2__* @svc_getrpccaller(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.sockaddr*
  store %struct.sockaddr* %23, %struct.sockaddr** %8, align 8
  store i32 1, i32* %7, align 4
  %24 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %25 = icmp eq %struct.sockaddr* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i8*, i8** %9, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %2
  store i32 0, i32* %7, align 4
  br label %44

30:                                               ; preds = %26
  %31 = load i8*, i8** %9, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* @VIS_WHITE, align 4
  %34 = call i32 @strvis(i8* %31, i8* %32, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load i32, i32* @LOG_ERR, align 4
  %39 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %40 = call i32 @from_addr(%struct.sockaddr* %39)
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @syslog(i32 %38, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %40, i8* %41)
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %37, %30
  br label %44

44:                                               ; preds = %43, %29
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local %struct.TYPE_2__* @svc_getrpccaller(i32) #1

declare dso_local i32 @strvis(i8*, i8*, i32) #1

declare dso_local i32 @syslog(i32, i8*, i32, i8*) #1

declare dso_local i32 @from_addr(%struct.sockaddr*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
