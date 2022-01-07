; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_ng_connect_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_ng_connect_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngm_connect = type { i32, i32, i32 }

@NG_PATHSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"[%x]:\00", align 1
@NG_HOOKSIZ = common dso_local global i32 0, align 4
@csock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c".:\00", align 1
@NGM_GENERIC_COOKIE = common dso_local global i32 0, align 4
@NGM_CONNECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_connect_id(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ngm_connect, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = getelementptr inbounds %struct.ngm_connect, %struct.ngm_connect* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @NG_PATHSIZ, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @snprintf(i32 %9, i32 %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = getelementptr inbounds %struct.ngm_connect, %struct.ngm_connect* %7, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @NG_HOOKSIZ, align 4
  %17 = call i32 @strlcpy(i32 %14, i8* %15, i32 %16)
  %18 = getelementptr inbounds %struct.ngm_connect, %struct.ngm_connect* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @NG_HOOKSIZ, align 4
  %22 = call i32 @strlcpy(i32 %19, i8* %20, i32 %21)
  %23 = load i32, i32* @csock, align 4
  %24 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %25 = load i32, i32* @NGM_CONNECT, align 4
  %26 = call i32 @NgSendMsg(i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25, %struct.ngm_connect* %7, i32 12)
  ret i32 %26
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @NgSendMsg(i32, i8*, i32, i32, %struct.ngm_connect*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
