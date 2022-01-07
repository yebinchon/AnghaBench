; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_ChooseHisAddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_ChooseHisAddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.in_addr = type { i32 }

@LogDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ChooseHisAddr: Check item %ld (%s)\0A\00", align 1
@LogIPCP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Selected IP address %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"ChooseHisAddr: All addresses in use !\0A\00", align 1
@INADDR_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bundle*, i32)* @ChooseHisAddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ChooseHisAddr(%struct.bundle* %0, i32 %1) #0 {
  %3 = alloca %struct.in_addr, align 4
  %4 = alloca %struct.in_addr, align 4
  %5 = alloca %struct.bundle*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.in_addr, align 4
  %8 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  store i32 %1, i32* %8, align 4
  store %struct.bundle* %0, %struct.bundle** %5, align 8
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %51, %2
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.bundle*, %struct.bundle** %5, align 8
  %12 = getelementptr inbounds %struct.bundle, %struct.bundle* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %10, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %9
  %20 = load %struct.bundle*, %struct.bundle** %5, align 8
  %21 = getelementptr inbounds %struct.bundle, %struct.bundle* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = call i32 @iplist_next(%struct.TYPE_7__* %24)
  %26 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = bitcast %struct.in_addr* %3 to i8*
  %28 = bitcast %struct.in_addr* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  %29 = load i32, i32* @LogDEBUG, align 4
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @inet_ntoa(i32 %32)
  %34 = call i32 (i32, i8*, ...) @log_Printf(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %30, i32 %33)
  %35 = load %struct.bundle*, %struct.bundle** %5, align 8
  %36 = getelementptr inbounds %struct.bundle, %struct.bundle* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @ipcp_SetIPaddress(%struct.TYPE_8__* %37, i32 %39, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %19
  %45 = load i32, i32* @LogIPCP, align 4
  %46 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @inet_ntoa(i32 %47)
  %49 = call i32 (i32, i8*, ...) @log_Printf(i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %54

50:                                               ; preds = %19
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %6, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %6, align 8
  br label %9

54:                                               ; preds = %44, %9
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.bundle*, %struct.bundle** %5, align 8
  %57 = getelementptr inbounds %struct.bundle, %struct.bundle* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %55, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %54
  %65 = load i32, i32* @LogDEBUG, align 4
  %66 = call i32 (i32, i8*, ...) @log_Printf(i32 %65, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @INADDR_ANY, align 4
  %68 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %64, %54
  %70 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  ret i32 %71
}

declare dso_local i32 @iplist_next(%struct.TYPE_7__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i64 @ipcp_SetIPaddress(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
