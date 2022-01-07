; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_dnslookup.c_yp_send_dns_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_dnslookup.c_yp_send_dns_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }

@MAXPACKET = common dso_local global i32 0, align 4
@QUERY = common dso_local global i32 0, align 4
@C_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"res_mkquery failed for %s type %d\00", align 1
@_res = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@resfd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"sendto failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32)* @yp_send_dns_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @yp_send_dns_query(i8* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* @MAXPACKET, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = trunc i64 %15 to i32
  %19 = call i32 @bzero(i8* %17, i32 %18)
  %20 = load i32, i32* @QUERY, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* @C_IN, align 4
  %23 = load i32, i32* %5, align 4
  %24 = trunc i64 %15 to i32
  %25 = call i32 @res_mkquery(i32 %20, i8* %21, i32 %22, i32 %23, i32* null, i32 0, i32* null, i8* %17, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %30)
  store i64 0, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %61

32:                                               ; preds = %2
  %33 = bitcast i8* %17 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %9, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ntohs(i32 %36)
  store i64 %37, i64* %12, align 8
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %56, %32
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_res, i32 0, i32 0), align 8
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load i32, i32* @resfd, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_res, i32 0, i32 1), align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = bitcast i32* %48 to %struct.sockaddr*
  %50 = call i32 @sendto(i32 %43, i8* %17, i32 %44, i32 0, %struct.sockaddr* %49, i32 4)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %61

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %38

59:                                               ; preds = %38
  %60 = load i64, i64* %12, align 8
  store i64 %60, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %61

61:                                               ; preds = %59, %53, %28
  %62 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bzero(i8*, i32) #2

declare dso_local i32 @res_mkquery(i32, i8*, i32, i32, i32*, i32, i32*, i8*, i32) #2

declare dso_local i32 @yp_error(i8*, ...) #2

declare dso_local i64 @ntohs(i32) #2

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
