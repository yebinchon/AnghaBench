; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_ng_rmhook_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_ng_rmhook_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngm_rmhook = type { i32 }

@NG_PATHSIZ = common dso_local global i32 0, align 4
@NG_HOOKSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"[%x]:\00", align 1
@csock = common dso_local global i32 0, align 4
@NGM_GENERIC_COOKIE = common dso_local global i32 0, align 4
@NGM_RMHOOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_rmhook_id(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ngm_rmhook, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @NG_PATHSIZ, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %6, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %7, align 8
  %12 = getelementptr inbounds %struct.ngm_rmhook, %struct.ngm_rmhook* %5, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* @NG_HOOKSIZ, align 4
  %16 = call i32 @strlcpy(i32 %13, i8* %14, i32 %15)
  %17 = load i32, i32* @NG_PATHSIZ, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @snprintf(i8* %11, i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @csock, align 4
  %21 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %22 = load i32, i32* @NGM_RMHOOK, align 4
  %23 = call i32 @NgSendMsg(i32 %20, i8* %11, i32 %21, i32 %22, %struct.ngm_rmhook* %5, i32 4)
  %24 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %24)
  ret i32 %23
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @NgSendMsg(i32, i8*, i32, i32, %struct.ngm_rmhook*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
