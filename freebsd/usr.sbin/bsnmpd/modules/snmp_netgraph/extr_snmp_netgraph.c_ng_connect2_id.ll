; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_ng_connect2_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_ng_connect2_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngm_connect = type { i8*, i32, i32 }

@NG_PATHSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"[%x]:\00", align 1
@NG_HOOKSIZ = common dso_local global i32 0, align 4
@csock = common dso_local global i32 0, align 4
@NGM_GENERIC_COOKIE = common dso_local global i32 0, align 4
@NGM_CONNECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_connect2_id(i32 %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ngm_connect, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* @NG_PATHSIZ, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %10, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %11, align 8
  %16 = load i32, i32* @NG_PATHSIZ, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @snprintf(i8* %15, i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = getelementptr inbounds %struct.ngm_connect, %struct.ngm_connect* %9, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* @NG_PATHSIZ, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @snprintf(i8* %20, i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = getelementptr inbounds %struct.ngm_connect, %struct.ngm_connect* %9, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* @NG_HOOKSIZ, align 4
  %28 = call i32 @strlcpy(i32 %25, i8* %26, i32 %27)
  %29 = getelementptr inbounds %struct.ngm_connect, %struct.ngm_connect* %9, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* @NG_HOOKSIZ, align 4
  %33 = call i32 @strlcpy(i32 %30, i8* %31, i32 %32)
  %34 = load i32, i32* @csock, align 4
  %35 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %36 = load i32, i32* @NGM_CONNECT, align 4
  %37 = call i32 @NgSendMsg(i32 %34, i8* %15, i32 %35, i32 %36, %struct.ngm_connect* %9, i32 16)
  %38 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %38)
  ret i32 %37
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

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
