; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_ng_connect2_tee_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_ng_connect2_tee_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngm_connect = type { i8*, i32, i32 }

@NG_PATHSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tee\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"[%x]:\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@NG_HOOKSIZ = common dso_local global i32 0, align 4
@csock = common dso_local global i32 0, align 4
@NGM_GENERIC_COOKIE = common dso_local global i32 0, align 4
@NGM_CONNECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_connect2_tee_id(i32 %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ngm_connect, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i32, i32* @NG_PATHSIZ, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @ng_mkpeer_id(i32 %19, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %21, i32* %13, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %46

24:                                               ; preds = %4
  %25 = load i32, i32* @NG_PATHSIZ, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @snprintf(i8* %18, i32 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = getelementptr inbounds %struct.ngm_connect, %struct.ngm_connect* %10, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* @NG_PATHSIZ, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @snprintf(i8* %29, i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = getelementptr inbounds %struct.ngm_connect, %struct.ngm_connect* %10, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NG_HOOKSIZ, align 4
  %36 = call i32 @strlcpy(i32 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = getelementptr inbounds %struct.ngm_connect, %struct.ngm_connect* %10, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* @NG_HOOKSIZ, align 4
  %41 = call i32 @strlcpy(i32 %38, i8* %39, i32 %40)
  %42 = load i32, i32* @csock, align 4
  %43 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %44 = load i32, i32* @NGM_CONNECT, align 4
  %45 = call i32 @NgSendMsg(i32 %42, i8* %18, i32 %43, i32 %44, %struct.ngm_connect* %10, i32 16)
  store i32 %45, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %46

46:                                               ; preds = %24, %23
  %47 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %47)
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ng_mkpeer_id(i32, i32*, i8*, i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @NgSendMsg(i32, i8*, i32, i32, %struct.ngm_connect*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
