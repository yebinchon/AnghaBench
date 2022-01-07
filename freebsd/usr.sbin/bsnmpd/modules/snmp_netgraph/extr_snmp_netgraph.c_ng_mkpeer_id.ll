; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_ng_mkpeer_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_ng_mkpeer_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngm_mkpeer = type { i32, i32, i32, i32 }
%struct.ngm_name = type { i32, i32, i32, i32 }

@NG_PATHSIZ = common dso_local global i32 0, align 4
@NG_TYPESIZ = common dso_local global i32 0, align 4
@NG_HOOKSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"[%x]:\00", align 1
@csock = common dso_local global i32 0, align 4
@NGM_GENERIC_COOKIE = common dso_local global i32 0, align 4
@NGM_MKPEER = common dso_local global i32 0, align 4
@NGM_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_mkpeer_id(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ngm_mkpeer, align 4
  %15 = alloca %struct.ngm_name, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i32, i32* @NG_PATHSIZ, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = getelementptr inbounds %struct.ngm_mkpeer, %struct.ngm_mkpeer* %14, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* @NG_TYPESIZ, align 4
  %25 = call i32 @strlcpy(i32 %22, i8* %23, i32 %24)
  %26 = getelementptr inbounds %struct.ngm_mkpeer, %struct.ngm_mkpeer* %14, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* @NG_HOOKSIZ, align 4
  %30 = call i32 @strlcpy(i32 %27, i8* %28, i32 %29)
  %31 = getelementptr inbounds %struct.ngm_mkpeer, %struct.ngm_mkpeer* %14, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %11, align 8
  %34 = load i32, i32* @NG_HOOKSIZ, align 4
  %35 = call i32 @strlcpy(i32 %32, i8* %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @csock, align 4
  %39 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %40 = load i32, i32* @NGM_MKPEER, align 4
  %41 = bitcast %struct.ngm_mkpeer* %14 to %struct.ngm_name*
  %42 = call i32 @NgSendMsg(i32 %38, i8* %20, i32 %39, i32 %40, %struct.ngm_name* %41, i32 16)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %70

45:                                               ; preds = %5
  %46 = load i32, i32* %7, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @ng_next_node_id_internal(i32 %46, i32* null, i8* %47, i32 0)
  store i32 %48, i32* %7, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %70

51:                                               ; preds = %45
  %52 = load i8*, i8** %8, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.ngm_name, %struct.ngm_name* %15, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @strcpy(i32 %56, i8* %57)
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @csock, align 4
  %62 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %63 = load i32, i32* @NGM_NAME, align 4
  %64 = call i32 @NgSendMsg(i32 %61, i8* %20, i32 %62, i32 %63, %struct.ngm_name* %15, i32 16)
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %70

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %51
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %70

70:                                               ; preds = %68, %66, %50, %44
  %71 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @NgSendMsg(i32, i8*, i32, i32, %struct.ngm_name*, i32) #2

declare dso_local i32 @ng_next_node_id_internal(i32, i32*, i8*, i32) #2

declare dso_local i32 @strcpy(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
